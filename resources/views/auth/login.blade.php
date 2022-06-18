<x-guest-layout>
    <div class="grid grid-cols-2">
        <div class="md:col-span-1 col-span-2 md:block hidden bg-blue-200 flex justify-center items-center">
            <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
            <lottie-player src="https://assets9.lottiefiles.com/packages/lf20_5tkzkblw.json"  background="transparent"  speed="1"  style="width: calc(100%); height: calc(100%)"  loop autoplay></lottie-player>
        </div>
        <div class="md:col-span-1 col-span-2 z-10">
            <x-jet-authentication-card>
                <!-- <x-slot name="logo">
                    <x-jet-authentication-card-logo />
                </x-slot> -->

                <x-jet-validation-errors class="mb-4" />

                @if (session('status'))
                    <div class="mb-4 font-medium text-sm text-green-600">
                        {{ session('status') }}
                    </div>
                @endif

                <form method="POST" action="{{ route('login') }}">
                    @csrf

                    <div>
                        <x-jet-label for="email" value="{{ __('Email') }}" />
                        <x-jet-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autofocus />
                    </div>

                    <div class="mt-4">
                        <x-jet-label for="password" value="{{ __('Password') }}" />
                        <x-jet-input id="password" class="block mt-1 w-full" type="password" name="password" required autocomplete="current-password" />
                    </div>

                    <div class="block mt-4">
                        <label for="remember_me" class="flex items-center">
                            <x-jet-checkbox id="remember_me" name="remember" />
                            <span class="ml-2 text-sm text-gray-600">{{ __('Remember me') }}</span>
                        </label>
                    </div>

                    <div class="flex items-center justify-end mt-4">
                        @if (Route::has('password.request'))
                            <a class="underline text-sm text-gray-600 hover:text-gray-900" href="{{ route('password.request') }}">
                                {{ __('Forgot your password?') }}
                            </a>
                        @endif

                        <x-jet-button class="ml-4">
                            {{ __('Log in') }}
                        </x-jet-button>
                        <a class="mx-2 px-2 py-1 bg-blue-900 rounded-xl text-white" href="{{ route('register')}}">Registrarse</a>
                    </div>
                </form>
            </x-jet-authentication-card>
        </div>
    </div>
    
</x-guest-layout>
