<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Tienda Ecommerce</title>

    <style type="text/css">
        * {
            font-family: Verdana, Arial, sans-serif;
        }

        table {
            font-size: x-small;
        }

        tfoot tr td {
            font-weight: bold;
            font-size: x-small;
        }

        .gray {
            background-color: lightgray
        }

        img {
            width: 60px;
        }

    </style>

</head>

<body>

    <table width="100%">
        <tr>
            <td align="center">
                <h2 style="padding: 0; margin: 0">Reporte de Ordenes</h2>
            </td>
        </tr>
        <tr>
            <td align="center">{{ $f_inicial }} a {{ $f_final }}</td>
        </tr>
        <tr>
            <td align="center"> @if ($tipo == 1) RESUMEN @else DETALLADO @endif</td>
        </tr>

    </table>

    <br />

    @if ($tipo == 1)
        <table width="100%">
            <thead style="background-color: lightgray;">
                <tr>
                    <th>REPORTE REALIZADO POR</th>
                    <th>CANTIDAD DE REGISTROS</th>
                    <th>ESTADOS</th>
                    <th>TOTAL</th>
                </tr>
            </thead>
            <tbody>
                @if ($orders > 0)
                <tr>
                    <td>{{ Auth::user()->name }}</td>
                    <th scope="row">{{ $orders }}</th>
                    <td>{{ $status }}</td>
                    <td align="right"> Bs. {{ number_format((float)$total, 2, '.', ' ') }}</td>
                </tr>
                @else
                    <tr>
                        <td colspan="4"><center><h2>SIN REGISTROS</h2></center></td>
                    </tr>
                @endif
            </tbody>
        </table>
    @else
        <table width="100%">
            <thead style="background-color: lightgray;">
                <tr>
                    <th>Cod</th>
                    <th>Fecha y Hora</th>
                    <th>Usuario</th>
                    <th>Estado</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $total = 0;
                @endphp
                @forelse ($orders as $item)
                    @php
                        $subtotal = $item->shipping_cost + $item->total;
                        $total += $subtotal;
                    @endphp
                    <tr>
                        <td scope="row">{{ $item->id }}</td>
                        <td>{{ $item->created_at }}</td>
                        <td>{{ $item->user->name }}</td>
                        <td>
                            @switch($item->status)
                                @case(1)
                                    PENDIENTE
                                @break
                                @case(2)
                                    RECIBIDO
                                @break
                                @case(3)
                                    ENVIADO
                                @break
                                @case(4)
                                    ENTREGADO
                                @break
                                @case(0)
                                    ANULADO
                                @break
                            @endswitch
                        </td>
                        <td align="right">Bs. {{ number_format((float) $subtotal, 2, '.', ' ') }}</td>
                    </tr>
                @empty
                    <tr>
                        <td colspan="5"><center><h2>SIN REGISTROS</h2></center></td>
                    </tr>
                @endforelse
                <tr>
                    <td colspan="4" align="right">Total vendido en el periodo establecido: </td>
                    <td align="right" class="gray">Bs. {{ number_format((float) $total, 2, '.', ' ') }}</td>
                </tr>
            </tbody>
        </table>
    @endif
    <br><br>

    <table width="100%" style="background-color: #43348a;color:white">
        <tr>
            <td>
                <center><strong>© Copyright 2021. Tienda eCommerce todos los derechos reservados.</strong></center>
            </td>
        </tr>
        <tr>
            <td>
                <center><strong>Este es un documento sin valor legal.</strong></center>
            </td>
        </tr>

    </table>

</body>

</html>
