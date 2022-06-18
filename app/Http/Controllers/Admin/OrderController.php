<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use PDF;

class OrderController extends Controller
{
    public function index(Request $request) {
        if (auth()->user()->can('order.index')) {
            if (isset($request->status)) {
                $orders = Order::where('status', "$request->status")->paginate(10)->appends(request()->query());
            } else {
                $orders = Order::paginate(10)->appends(request()->query());
            }

            $pendiente = Order::where('status', '1')->count();
            $recibido = Order::where('status', '2')->count();
            $enviado = Order::where('status', '3')->count();
            $entregado = Order::where('status', '4')->count();
            $anulado = Order::where('status', '0')->count();

            return view('admin.orders.index', compact('orders', 'pendiente', 'recibido', 'enviado', 'entregado', 'anulado'));
        } else {
            abort(403);
        }
    }

    public function show(Order $order){
        if (auth()->user()->can('order.show')) {
            return view('admin.orders.show', compact('order'));
        } else {
            abort(403);
        }
    }

    public function pdf(Request $request) {
        if ($request->tipo == 1) {
            # RESUMEN
            if ($request->estado == 'todos') {
                $orders = Order::whereBetween("created_at", [$request->f_inicial, $request->f_final])->count();
                $total = DB::select("SELECT SUM(shipping_cost)+SUM(total) AS total FROM `orders` WHERE created_at BETWEEN '$request->f_inicial' AND '$request->f_final'");
                $data = [
                    'tipo' => $request->tipo,
                    'orders' => $orders,
                    'total' => $total[0]->total,
                    'status' => 'TODOS LOS ESTADOS',
                    'f_inicial' => $request->f_inicial,
                    'f_final' => $request->f_final
                ];
            } else {
                switch ($request->status) {
                    case 1:
                        $status = "PENDIENTE";
                        break;
                    case 2:
                        $status = "RECIBIDO";
                        break;
                    case 3:
                        $status = "ENVIADO";
                        break;
                    case 4:
                        $status = "ENTREGADO";
                        break;
                    case 0:
                        $status = "ANULADO";
                        break;
                }
                $orders = Order::where('status', $request->status)->whereBetween("created_at", [$request->f_inicial, $request->f_final])->count();
                $total = DB::select("SELECT SUM(shipping_cost)+SUM(total) AS total FROM `orders` WHERE 'status'='$request->status' AND created_at BETWEEN '$request->f_inicial' AND '$request->f_final'");
                $data = [
                    'tipo' => $request->tipo,
                    'orders' => $orders,
                    'total' => $total[0]->total,
                    'status' => $status,
                    'f_inicial' => $request->f_inicial,
                    'f_final' => $request->f_final
                ];
            }
        } else {
            # DETALLADO
            if ($request->estado == 'todos') {
                $orders = Order::whereBetween("created_at", [$request->f_inicial, $request->f_final])->get();
            } else {
                $orders = Order::where('status', $request->estado)->whereBetween("created_at", [$request->f_inicial, $request->f_final])->orderBy('created_at','ASC')->get();
            }
            $data = [
                'tipo' => $request->tipo,
                'orders' => $orders,
                'f_inicial' => $request->f_inicial,
                'f_final' => $request->f_final
            ];
        }
        $pdf = PDF::loadView('admin.orders.report', $data);
        return $pdf->stream();
    }
}
