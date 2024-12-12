# GRUPO-13-ECOMMERCE
# Caso: Gestión de la operación de un E-Commerce

Una nueva empresa de ventas en línea busca gestionar sus operaciones a través de un sistema que permita registrar y consultar información sobre sus clientes, sus productos (y el stock de los mismos), los pedidos que se generan, sus envíos y los pagos, así como de la tienda/almacén desde donde se gestionará la entrega/despacho. Se considera que tendrá más de una tienda/almacén, distintas categorías donde ofrecerán una gran variedad de productos, así como la opción de pago en línea.

### Requerimientos:

#### Clientes:
Se debe almacenar datos personales del cliente que se registre: nombre (apellidos por separado), tipo de documento, número de documento, correo electrónico, teléfono, dirección (especificando ciudad y departamento), fecha de nacimiento (que no será dato obligatorio), fecha de registro, verificando que el DNI no se pueda repetir para asegurar que es un registro único.

#### Productos:
Existe un catálogo de productos que estarán disponibles en ciertas ubicaciones (tienda/almacén), organizados por categorías y con información relevante como nombre, descripción, precio, stock.

#### Pedidos:
Se va a crear un pedido al proceder con la compra. La información relevante de un pedido debe contener la tienda/almacén desde donde se gestionará, la fecha y estado del pedido, así como el importe total.

#### Detalle del pedido:
Incluirá el detalle de los productos seleccionados (cantidades, precios).

#### Tiendas:
Incluirá la información de la tienda, como nombre del local/almacén, dirección, ciudad y departamento.

#### Pago del pedido:
Incluirá información del pago: método de pago, importe pagado, fecha de transacción y estado del pago (procesado o rechazado), considerando que se realizará el pago total al momento de la operación.

#### Envío del pedido:
Cuando se paga y confirma el pedido, se generarán datos como dirección de envío, ciudad, departamento, referencia, estado del envío (será PENDIENTE al inicio y se debe ir actualizando), fecha de envío y fecha de entrega (vacío hasta que se confirme la entrega y cambie el estado).

## Modelo Entidad-Relación
![image](https://github.com/user-attachments/assets/6b17ffeb-dec4-4f42-a2a1-18f17acf1d8c)

## Modelo Lógico
![image](https://github.com/user-attachments/assets/01f411d9-d82e-4973-937d-d1f9a02dc4bc)

## Modelo Físico
![image](https://github.com/user-attachments/assets/9d9ce1bb-947b-4172-9848-a7382da25501)



