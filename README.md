# Constructora App

# 1.	Introducción
Debido al crecimiento de la constructora J&amp;J, se tiene la necesidad de desarrollar un software que permita, administrar todo el proceso de registro y venta de un departamento en un proyecto inmobiliario. El cliente desde la página web donde se muestra fotos, videos, información, etc sobre el proyecto enviará una solicitud para brindar mayor información. Esta solicitud será recibida por un asesor de ventas quien se contará con el cliente para brindarle toda la información y guiar en el proceso de compra.


# 2.	Historias de Usuario

##  HU01. Solicitud de cotización: 
* El cliente desde la página web puede enviar una solicitud de cotización.

| Cuando:                                                                 | Espero:                                                    | 
| ------------------------------------------------------------------------|:----------------------------------------------------------:| 
| Hace clic en el botón cotizar, se abre un formulario que solicita.      | * Confirmación del registro.                               | 
| *	DNI                                                                   | * Mensaje de error si no se ingresan los datos requeridos. |
| *	Nombres                                                               |                                                            |
| *	Apellidos                                                             |                                                            |
| *	Correo                                                                |                                                            |
| *	Teléfono                                                              |                                                            |


##  HU02. Registrar usuarios del sistema: 
* El administrador tiene la posibilidad de registrar nuevos usuarios para acceder al sistema: Los perfiles de los usuarios pueden ser: Administrador, Gerente, Asesor.

| Cuando:                                                                 | Espero:                                                    | 
| ------------------------------------------------------------------------|:----------------------------------------------------------:| 
| Para el registro de un nuevo usuario se solicita.                       | * Confirmación de creación.                                | 
| *	DNI                                                                   | * Mensaje de error si no se ingresan los datos requeridos. |
| *	Nombres                                                               | * Mostrar error si el DNI ya esta registrado               |
| *	Apellidos                                                             |                                                            |
| *	Perfil                                                                |                                                            |
                                                

##  HU03. Registro de un nuevo proyecto: 
* Como administrador debo registrar un nuevo proyecto.

| Cuando:                                                                 | Espero:                                                    | 
| ------------------------------------------------------------------------|:----------------------------------------------------------:| 
| Para registrar un nuevo proyecto se solicita:                           | * Confirmación del registro.                               | 
| *	Nombre del proyecto                                                   | * Mensaje de error si no se ingresan los datos requeridos. |
| *	Ubicación                                                             |                                                            |
| *	Precio base por metro cuadrado                                        |                                                            |

##  HU04. Registro de tipos de departamento: 
* Como administrador, para cada proyecto registrado se debe registrar los tipos de departamento.

| Cuando:                                                                 |Espero:                                                     | 
| ------------------------------------------------------------------------|:----------------------------------------------------------:| 
| Para registrar los tipos de departamento se requiere:                   | * Confirmación del creación.                               | 
| *	Nombre del tipo                                                       | * Mensaje de error si no se ingresan los datos requeridos. |
| *	Área en metros cuadrados.                                             |                                                            |
| *	Piso                                                                  |                                                            |

##  HU05. Administración de citas: 
* Luego que un cliente envía la solicitud de cotización mediante la web, el sistema de forma automática asigna a un asesor para su atención, el sistema verifica el asesor que tiene menor cantidad de clientes por atender y es a quien asigna el nuevo cliente.

| Cuando:                                                                 | Espero:                                                    | 
| ------------------------------------------------------------------------|:----------------------------------------------------------:| 
| Cuando el asesor ingresa al sistema debe listar todas las solicitudes de cotización que fueron asignadas a su persona. El asesor será el encargado de contactar por teléfono al cliente y verificar si los datos son reales y si el cliente está interesado en registrar una cita, de ser el caso el asesor debe registrar la fecha y hora de la cita, si los datos no son reales o el cliente no está interesado el asesor debe colocar como atendido.                                        | * Listado de clientes que solicitaron cotización.          |                                                                           | * Confirmación de Registro de citas.                       |
                                                                          | * Confirmación de atendido.                                |

##  HU06. Mantenimiento de citas: 
* Las citas pueden ser modificadas, por que muchas de las veces los clientes tienen improvistos y cambian la fecha y hora de la cita.

| Cuando:                                                                   | Espero:                                                  | 
| --------------------------------------------------------------------------|:--------------------------------------------------------:| 
| El asesor debe realizar la búsqueda de la cita y realizar la modificación.| * Confirmación del registro.                             | 
|                                                                           | * Mensaje de error si no se ingresan los datos requeridos| 

##  HU07. Generación de proformas: 
* Luego que el asesor brinda toda la información sobre el proyecto al cliente, se genera una proforma.

| Cuando:                                                                 | Espero:                                                     
| ------------------------------------------------------------------------|:----------------------------------------------------------:| 
| Para la proforma se debe visualizar todos los datos del cliente, y el sistema debe calcular el costo del departamento en base a:  
                                                                          | * Confirmación del registro.                               |                                                                           |* Mensaje de error si no se ingresan los datos requeridos.  |
| Costo = Precio base por metro cuadrado * Área del departamento          |                                                            |
|                                                                         |                                                            |
| Adicional se genera un descuento dependiendo el piso:                   |                                                            |
| 1er piso: no hay descuento                                              |                                                            |
| 2do piso: 1%                                                            |                                                            |
| 3er piso: 2%                                                            |                                                            |
| 4to piso: 3%..........                                                  |                                                            |

##  HU08.  Separar un departamento:
* El cliente puede realizar la separación de un departamento con 1500 soles, esta separación bloquea el departamento de las subidas de precio y ya no puede ser elegido por otro cliente. La separación es un proceso que se realiza mientras el banco evalúa si el cliente accede al crédito hipotecario, y si la compra es al contado, la separación sirve mientras que se hace el depósito y/o transferencia del monto a la cuenta de la constructora.

| Cuando:                                                                 | Espero:                                                    | 
| ------------------------------------------------------------------------|:----------------------------------------------------------:| 
| Para la separación se debe buscar el departamento e ingresar la información del voucher y el monto depositado.         
                                                                          | * Confirmación del registro.                               | 
                                                                          | * Mensaje de error si no se ingresan los datos requeridos. |

##  HU09. Registrar ventas: 
* Para la venta, el asesor registrar si la compra se realizará al contado, o financiado mediante el banco.

| Cuando:                                                                 | Espero:                                                    | 
| ------------------------------------------------------------------------|:----------------------------------------------------------:| 
| Para el caso de la compra al contado, se debe registrar los datos de la operación bancaria y el monto, se debe descontar la cantidad que se utilizó en la separación. Si la compra es financiada, se debe registrar el pago del 10% que debe realizar el cliente y el monto que será financiado por el banco.                                         | * Confirmación del registro.                               |                                                                           |* Mensaje de error si no se ingresan los datos requeridos.  |


##  HU10. Reporte:
* Para el gerente es importante contar con un reporte.

| Cuando:                                                                 | Espero:                                                    | 
| ------------------------------------------------------------------------|:----------------------------------------------------------:| 
| Indique la opción de reporte.                                           | * Listado de los departamentos por proyecto.               | 
| Se debe listar todos los departamentos y su estado.                     |                                                            |
| Poder filtrar por disponibles, separados y vendidos.                    |                                                            |
| Para los vendidos listar el monto recaudado                             |                                                            |

##  HU11. Administrar precio base: 
* Conforme pasa el tiempo y la construcción avanza el costo del precio base puede cambiar. 

| Cuando:                                                                 | Espero:                                                    | 
| ------------------------------------------------------------------------|:----------------------------------------------------------:| 
| Selecciona un proyecto indica el precio base por metro cuadrado, el cual puede ser modificado| Confirmación del registro.
|                                                                         | Mensaje de error si no se ingresan los datos requeridos.   |
