<x-admin-layout>

    <div class="container py-12">

        <section class="grid grid-cols-4 gap-6 text-white">
            <a href="{{ route('admin.orders.index', ['status'=> 2]) }}" class="bg-gray-500 bg-opacity-75 rounded-lg px-12 pt-8 pb-4 lg:col-span-1 col-span-4">
                <p class="text-center text-2xl">
                    {{$recibido}}
                </p>
                <p class="uppercase text-center">Recibido</p>
                <p class="text-center text-2xl mt-2">
                    <i class="fas fa-credit-card"></i>
                </p>
            </a>

            <a href="{{ route('admin.orders.index', ['status'=> 3]) }}" class="bg-yellow-500 bg-opacity-75 rounded-lg px-12 pt-8 pb-4 lg:col-span-1 col-span-4">
                <p class="text-center text-2xl">
                    {{$enviado}}
                </p>
                <p class="uppercase text-center">Enviado</p>
                <p class="text-center text-2xl mt-2">
                    <i class="fas fa-truck"></i>
                </p>
            </a>

            <a href="{{ route('admin.orders.index', ['status'=> 4]) }}" class="bg-green-500 bg-opacity-75 rounded-lg px-12 pt-8 pb-4 lg:col-span-1 col-span-4">
                <p class="text-center text-2xl">
                    {{$entregado}}
                </p>
                <p class="uppercase text-center">Entregado</p>
                <p class="text-center text-2xl mt-2">
                    <i class="fas fa-check-circle"></i>
                </p>
            </a>

            <a href="{{ route('admin.orders.index', ['status'=> 0]) }}" class="bg-red-500 bg-opacity-75 rounded-lg px-12 pt-8 pb-4 lg:col-span-1 col-span-4">
                <p class="text-center text-2xl">
                    {{$anulado}}
                </p>
                <p class="uppercase text-center">Anulado</p>
                <p class="text-center text-2xl mt-2">
                    <i class="fas fa-times-circle"></i>
                </p>
            </a>
        </section>

        @if ($orders->count())

            <section class="bg-white shadow-lg rounded-lg px-12 py-8 mt-12 text-gray-700" x-data="{ showModal1: false}" :class="{'overflow-y-hidden': showModal1}">
                <h1 class="text-2xl mb-4">Pedidos recientes</h1>
                <button class="bg-red-600 font-semibold text-white p-2 w-72 rounded-full hover:bg-red-700 focus:outline-none focus:ring shadow-lg hover:shadow-none transition-all duration-300 m-2" @click="showModal1 = true">Reporte Ordenes</button>
                <div
                    class="fixed inset-0 w-full h-full z-20 bg-black bg-opacity-50 duration-300 overflow-y-auto hidden" :class="{ 'block' : showModal1 , 'hidden' : !showModal1}"
                    x-show="showModal1"
                    x-transition:enter="transition duration-300"
                    x-transition:enter-start="opacity-0"
                    x-transition:enter-end="opacity-100"
                    x-transition:leave="transition duration-300"
                    x-transition:leave-start="opacity-100"
                    x-transition:leave-end="opacity-0"
                >
                    <div class="relative sm:w-3/4 md:w-2/3 lg:w-2/3 mx-2 sm:mx-auto my-10 opacity-100">
                        <div class="relative bg-white shadow-lg rounded-md text-gray-900 z-20" @click.away="showModal1 = false"
                            x-show="showModal1"
                            x-transition:enter="transition transform duration-300"
                            x-transition:enter-start="scale-0"
                            x-transition:enter-end="scale-100"
                            x-transition:leave="transition transform duration-300"
                            x-transition:leave-start="scale-100"
                            x-transition:leave-end="scale-0"
                        >
                            <header class="flex items-center justify-between p-2">
                                <h2 class="font-semibold">Header</h2>
                                <button class="focus:outline-none p-2" @click="showModal1 = false">
                                    <svg class="fill-current" xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18">
                                        <path
                                        d="M14.53 4.53l-1.06-1.06L9 7.94 4.53 3.47 3.47 4.53 7.94 9l-4.47 4.47 1.06 1.06L9 10.06l4.47 4.47 1.06-1.06L10.06 9z"
                                        ></path>
                                    </svg>
                                </button>
                            </header>
                            <main class="p-2">
                                <form id="f-report" action="{{ route('admin.orders.pdf') }}" method="post">
                                    @csrf
                                    <div class="grid grid-cols-2 gap-3">
                                        <div class="col-span-1">
                                            <x-jet-label>
                                                Fecha de inicio
                                            </x-jet-label>
                                            <x-jet-input type="date" name="f_inicial" id="f_inicial" class="w-full mt-1" required="required"/>
                                        </div>
                                        <div class="col-span-1">
                                            <x-jet-label>
                                                Fecha de final
                                            </x-jet-label>
                                            <x-jet-input type="date" name="f_final" id="f_final" class="w-full mt-1" required="required"/>
                                        </div>
                                        <div class="col-span-1">
                                            <x-jet-label value="Tipo" />
                                            <select class="form-control w-full" name="tipo">
                                                <option value="1" selected>RESUMEN</option>
                                                <option value="2" >DETALLADO</option>
                                            </select>
                                        </div>
                                        <div class="col-span-1">
                                            <x-jet-label value="Estado" />
                                            <select class="form-control w-full" name="estado">
                                                <option value="todos">TODOS</option>
                                                <option value="1">PENDIENTE</option>
                                                <option value="2" >RECIBIDO</option>
                                                <option value="3" >ENVIADO</option>
                                                <option value="4" >ENTREGADO</option>
                                                <option value="0" >ANULADO</option>
                                            </select>
                                        </div>
                                        <div class="col-span-2 text-center">
                                            <button type="button" onclick="FormReport()" class="bg-green-500 rounded-full text-white p-2">Generar reporte</button>
                                        </div>
                                        <script>
                                            const FormReport = () => {
                                                let f_i = document.getElementById('f_inicial').value;
                                                let f_f = document.getElementById('f_final').value;
                                                if (f_i != '' && f_f != '') {
                                                    if (f_i < f_f) {
                                                        document.getElementById('f-report').submit()
                                                    } else {
                                                        alert("La Fecha inicial no puede ser mayor que la Fecha final");
                                                    }
                                                } else {
                                                    alert('Complete todos los campos');
                                                }
                                            }
                                        </script>
                                    </div>
                                </form>
                            </main>
                            <footer class="flex justify-center p-2">
                                <button class="bg-red-600 font-semibold text-white p-2 w-32 rounded-full hover:bg-red-700 focus:outline-none focus:ring shadow-lg hover:shadow-none transition-all duration-300" @click="showModal1 = false">Cerrar</button>
                            </footer>
                        </div>
                    </div>
                </div>
                <ul>
                    @foreach ($orders as $order)
                        <li>
                            <a href="{{route('admin.orders.show', $order)}}" class="flex items-center py-2 px-4 hover:bg-gray-100">
                                <span class="w-12 text-center">
                                    @switch($order->status)
                                        @case(1)
                                            <i class="fas fa-business-time text-blue-500 opacity-50"></i>
                                            @break
                                        @case(2)
                                            <i class="fas fa-credit-card text-gray-500 opacity-50"></i>
                                            @break
                                        @case(3)
                                            <i class="fas fa-truck text-yellow-500 opacity-50"></i>
                                            @break
                                        @case(4)
                                            <i class="fas fa-check-circle text-green-500 opacity-50"></i>
                                            @break
                                        @case(0)
                                            <i class="fas fa-times-circle text-red-500 opacity-50"></i>
                                            @break
                                        @default

                                    @endswitch
                                </span>

                                <span>
                                    Orden: {{$order->id}}
                                    <br>
                                    {{$order->created_at->format('d/m/Y')}}
                                </span>

                                <div class="ml-auto text-rigth">
                                    <span class="font-bold">
                                        @switch($order->status)
                                            @case(1)

                                                Pendiente

                                                @break
                                            @case(2)

                                                Recibido

                                                @break
                                            @case(3)

                                                Enviado

                                                @break
                                            @case(4)

                                                Entregado

                                                @break
                                            @case(0)

                                                Anulado

                                                @break
                                            @default

                                        @endswitch
                                    </span>

                                    <br>

                                    <span class="text-sm text-rigth">
                                        Bs. {{$order->total}}
                                    </span>
                                </div>

                                <span>
                                    <i class="fas fa-angle-right ml-6"></i>
                                </span>

                            </a>
                        </li>
                    @endforeach
                </ul>
               <div class="mt-4">
                    {{ $orders->appends(request()->query())->links() }}
               </div>
            </section>
        @else
            <div class="bg-white shadow-lg rounded-lg px-12 py-8 mt-12 text-gray-700">
                <span class="font-bold text-lg">
                    No existe registros de ordenes
                </span>
            </div>
        @endif

    </div>

</x-admin-layout>
