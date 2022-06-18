<x-guest-layout>
    <x-jet-authentication-card>
        <x-slot name="logo">
            <x-jet-authentication-card-logo />
        </x-slot>

        <x-jet-validation-errors class="mb-4" />

        {{-- <form method="POST" action="#" id="formulario"> --}}
        <form method="POST" action="{{ route('register') }}" id="formulario">
            @csrf

            <div>
                <x-jet-label for="name" value="Nombre completo" />
                <x-jet-input id="name" class="block mt-1 w-full" type="text" name="name" :value="old('name')" required autofocus autocomplete="name" />
                <p class="msg_name hidden">El usuario tiene que ser de 4 a 16 dígitos y solo puede contener numeros, letras y guion bajo.</p>
            </div>

            <div class="mt-4">
                <x-jet-label for="email" value="Correo" />
                <x-jet-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required />
            </div>

            <div class="mt-4">
                <x-jet-label for="password" value="{{ __('Password') }}" />
                <x-jet-input id="password" class="block mt-1 w-full" type="password" name="password" required autocomplete="new-password" />
            </div>

            <div class="mt-4">
                <x-jet-label for="password_confirmation" value="{{ __('Confirm Password') }}" />
                <x-jet-input id="password_confirmation" class="block mt-1 w-full" type="password" name="password_confirmation" required autocomplete="new-password" />
            </div>

            @if (Laravel\Jetstream\Jetstream::hasTermsAndPrivacyPolicyFeature())
            <div class="mt-4">
                <x-jet-label for="terms">
                    <div class="flex items-center">
                        <x-jet-checkbox name="terms" id="terms" />

                        <div class="ml-2">
                            {!! __('I agree to the :terms_of_service and :privacy_policy', [
                            'terms_of_service' => '<a target="_blank" href="'.route('terms.show').'" class="underline text-sm text-gray-600 hover:text-gray-900">'.__('Terms of Service').'</a>',
                            'privacy_policy' => '<a target="_blank" href="'.route('policy.show').'" class="underline text-sm text-gray-600 hover:text-gray-900">'.__('Privacy Policy').'</a>',
                            ]) !!}
                        </div>
                    </div>
                </x-jet-label>
            </div>
            @endif

            <div class="flex items-center justify-end mt-4">
                <a class="underline text-sm text-gray-600 hover:text-gray-900" href="{{ route('login') }}">
                    {{ __('Already registered?') }}
                </a>

                <x-jet-button class="ml-4">
                    {{ __('Register') }}
                </x-jet-button>
            </div>
        </form>
    </x-jet-authentication-card>
    <script>
    //     const formulario = document.getElementById('formulario');
    //     const inputs = document.querySelectorAll('#formulario input');

    //     const expresiones = {
    //         // usuario: /^[a-zA-Z0-9\_\-]{4,16}$/, // Letras, numeros, guion y guion_bajo
    //         name: /^[a-zA-ZÀ-ÿ\s]{3,40}$/, // Letras y espacios, pueden llevar acentos.
    //         password: /^.{4,12}$/, // 4 a 12 digitos.
    //         correo: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/,
    //         numero: /^\d{7,14}$/ // 7 a 14 numeros.
    //     }

    //     const campos = {
    //         // usuario: false,
    //         name: false,
    //         password: false,
    //         correo: false,
    //         // telefono: false
    //     }

    //     const validarFormulario = (e) => {
    //         switch (e.target.name) {
    //             // case "usuario":
    //             //     validarCampo(expresiones.usuario, e.target, 'usuario');
    //             //     break;
    //             case "name":
    //                 validarCampo(expresiones.name, e.target, 'name');
    //                 break;
    //             case "password":
    //                 validarCampo(expresiones.password, e.target, 'password');
    //                 validarPassword2();
    //                 break;
    //             case "password_confirmation":
    //                 validarPassword2();
    //                 break;
    //             case "correo":
    //                 validarCampo(expresiones.correo, e.target, 'correo');
    //                 break;
    //             // case "telefono":
    //             //     validarCampo(expresiones.telefono, e.target, 'telefono');
    //             //     break;
    //         }
    //     }

    //     const validarCampo = (expresion, input, campo) => {
    //         if (expresion.test(input.value)) {
    //             document.getElementById(`${campo}`).classList.remove('focus:border-indigo-300','focus:ring-indigo-200');
    //             document.getElementById(`${campo}`).classList.remove('focus:border-red-300','focus:ring-red-200');
    //             document.getElementById(`${campo}`).classList.add('focus:border-green-300','focus:ring-green-200');
    //             document.getElementsByClassName('msg_name').classList.remove('hidden')
    //             // document.getElementById(`grupo__${campo}`).classList.remove('formulario__grupo-incorrecto');
    //             // document.getElementById(`grupo__${campo}`).classList.add('formulario__grupo-correcto');
    //             // document.querySelector(`#grupo__${campo} i`).classList.add('fa-check-circle');
    //             // document.querySelector(`#grupo__${campo} i`).classList.remove('fa-times-circle');
    //             // document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.remove('formulario__input-error-activo');
    //             campos[campo] = true;
    //         } else {
    //             document.getElementById(`${campo}`).classList.remove('focus:border-indigo-300','focus:ring-indigo-200');
    //             document.getElementById(`${campo}`).classList.remove('focus:border-green-300','focus:ring-green-200');
    //             document.getElementById(`${campo}`).classList.add('focus:border-red-300','focus:ring-red-200');
    //             // document.getElementById(`grupo__${campo}`).classList.remove('formulario__grupo-correcto');
    //             // document.querySelector(`#grupo__${campo} i`).classList.add('fa-times-circle');
    //             // document.querySelector(`#grupo__${campo} i`).classList.remove('fa-check-circle');
    //             // document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.add('formulario__input-error-activo');
    //             document.getElementsByClassName('msg_name').classList.add('hidden')
    //             campos[campo] = false;
    //         }
    //     }

    //     const validarPassword2 = () => {
    //         const inputPassword1 = document.getElementById('password');
    //         const inputPassword2 = document.getElementById('password_confirmation');

    //         if (inputPassword1.value !== inputPassword2.value) {
    //             document.getElementById(`grupo__password2`).classList.add('formulario__grupo-incorrecto');
    //             document.getElementById(`grupo__password2`).classList.remove('formulario__grupo-correcto');
    //             document.querySelector(`#grupo__password2 i`).classList.add('fa-times-circle');
    //             document.querySelector(`#grupo__password2 i`).classList.remove('fa-check-circle');
    //             document.querySelector(`#grupo__password2 .formulario__input-error`).classList.add('formulario__input-error-activo');
    //             campos['password'] = false;
    //         } else {
    //             document.getElementById(`grupo__password2`).classList.remove('formulario__grupo-incorrecto');
    //             document.getElementById(`grupo__password2`).classList.add('formulario__grupo-correcto');
    //             document.querySelector(`#grupo__password2 i`).classList.remove('fa-times-circle');
    //             document.querySelector(`#grupo__password2 i`).classList.add('fa-check-circle');
    //             document.querySelector(`#grupo__password2 .formulario__input-error`).classList.remove('formulario__input-error-activo');
    //             campos['password'] = true;
    //         }
    //     }

    //     inputs.forEach((input) => {
    //         input.addEventListener('keyup', validarFormulario);
    //         input.addEventListener('blur', validarFormulario);
    //     });

    //     formulario.addEventListener('submit', (e) => {
    //         e.preventDefault();

    //         const terminos = document.getElementById('terminos');
    //         if (campos.usuario && campos.nombre && campos.password && campos.correo && campos.telefono) {
    //             formulario.reset();

    //             document.getElementById('formulario__mensaje-exito').classList.add('formulario__mensaje-exito-activo');
    //             setTimeout(() => {
    //                 document.getElementById('formulario__mensaje-exito').classList.remove('formulario__mensaje-exito-activo');
    //             }, 5000);

    //             document.querySelectorAll('.formulario__grupo-correcto').forEach((icono) => {
    //                 icono.classList.remove('formulario__grupo-correcto');
    //             });
    //         } else {
    //             document.getElementById('formulario__mensaje').classList.add('formulario__mensaje-activo');
    //         }
    //     });
    // </script>
</x-guest-layout>
