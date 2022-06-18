# eCommerce

<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>

## Preparacion de Assets

1. Para preparar los assets del proyecto ubique primero el archivo comprimido en la raiz del proyecto llamado ``image-test.zip``.
2. Descomprima el archivo en la carpeta de ``storage/app``.
3. Ejecute el siguiente comando para completar el procedimiento.

    ```sh
        php artisan storage:link
    ```

4. Verifique que se haya creado una carpeta de tipo **Acceso directo** con el nombre de ``storage`` en la carpeta public ubicada en la raiz del proyecto.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
