<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Tienda Ecommerce</title>

<style type="text/css">
    * {
        font-family: Verdana, Arial, sans-serif;
    }
    table{
        font-size: x-small;
    }
    tfoot tr td{
        font-weight: bold;
        font-size: x-small;
    }
    .gray {
        background-color: lightgray
    }
    img{
        width: 60px;
    }
</style>

</head>
<body>

  <table width="100%">
    <tr>
        <td valign="top"><img src="{{ public_path('img/logo.jpg') }}" alt="">
        </td>
        <td align="right">
            <h3>Recibo de compra virtual - {{ $id }}</h3>
            <pre>
                ECOMMERCE
            </pre>
        </td>
    </tr>

  </table>

  <table width="100%">
    <tr>
        <td><strong>Nombre(s) apellidos:</strong> {{ $name }} {{ $lastname }}</td>
        <td><strong>CI:</strong> {{ $ci }}</td>
        <td><strong>Celular:</strong> {{ $cellphone }}</td>
    </tr>
    <tr>
        <td><strong>Razón social:</strong> {{ $razon_social }}</td>
        <td><strong>NIT:</strong> {{ $nit }}</td>
        <td><strong>Email:</strong> {{ $email }}</td>
    </tr>
    <tr>
        <td colspan="3"><strong>Método de pago:</strong> {{ $pago_type }}</td>
    </tr>
    <tr>
        <td colspan="3"><strong>Método de envío:</strong> {{ $envio_type }} - {{ $address }} </td>
    </tr>

  </table>

  <br/>

  <table width="100%">
    <thead style="background-color: lightgray;">
      <tr>
        <th>#</th>
        <th>Producto</th>
        <th>Cantidad</th>
        <th>Precio</th>
        <th>Total</th>
      </tr>
    </thead>
    <tbody>
        @foreach ($items as $item)
            <tr>
                <th scope="row">{{ $item->id }}</th>
                <td>{{ $item->name }}</td>
                <td align="right">{{ $item->qty }}</td>
                <td align="right"> Bs. {{ number_format((float)$item->price, 2, '.', ' ') }}</td>
                <td align="right">Bs. {{ number_format((float)$item->qty * $item->price, 2, '.', ' ') }}</td>
            </tr>
        @endforeach
    </tbody>

    <tfoot>
        <tr>
            <td colspan="3"></td>
            <td align="right">Subtotal</td>
            <td align="right">Bs. {{ number_format((float)$total - $shipping_cost, 2, '.', ' ') }}</td>
        </tr>
        <tr>
            <td colspan="3"></td>
            <td align="right">Costo de envío</td>
            <td align="right">Bs. {{ number_format((float)$shipping_cost, 2, '.', ' ') }}</td>
        </tr>
        <tr>
            <td colspan="3"></td>
            <td align="right">Total </td>
            <td align="right" class="gray">Bs. {{ number_format((float)$total, 2, '.', ' ') }}</td>
        </tr>
    </tfoot>
  </table>

  <br><br>

  <table width="100%" style="background-color: #113e66;color:white">
    <tr>
        <td><center><strong>© Copyright 2021. Tienda eCommerce todos los derechos reservados.</strong></center></td>
    </tr>
    <tr>
        <td><center><strong>Este es un documento sin valor legal.</strong></center></td>
    </tr>

  </table>

</body>
</html>
