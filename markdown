# Temario

## 1. Base de Datos para un Gabinete de Abogados

Se quiere diseñar una base de datos relacional para almacenar información sobre los asuntos 
que lleva un gabinete de abogados. Cada asunto tiene un número de expediente que lo identifica 
y corresponde a un solo cliente. Del asunto se debe almacenar el período 
(fecha de inicio y fecha de archivo o finalización), su estado (en trámite, archivado, etc.),
 así como los datos personales del cliente al que pertenece (DNI, nombre, dirección, etc.). 
 Algunos asuntos son llevados por uno o varios procuradores, de los que también nos interesa los datos personales.

## 2. Base de Datos para una Compañía Aérea

Se desea almacenar la información de una compañía aérea en una base de datos relacional. 
La compañía aérea tiene tres recursos principales: aviones, pilotos y miembros de tripulación.
De cada piloto se desea conocer su código, nombre y horas de vuelo. 
De los miembros de tripulación solo mantendremos su código y nombre.
Todos ellos (pilotos y miembros) tienen una base a la que regresan después de los vuelos de una jornada. 
Un vuelo que va desde un origen a un destino y a una hora determinada tiene un número de vuelo
(por ejemplo, el vuelo de Tucumán a Buenos Aires de las 13:50 es el vuelo IB-8830). 
De cada vuelo que se va a realizar durante los próximos tres meses, así como de los vuelos que ya se han realizado,
se desea saber el avión en que se va a hacer o en el que se ha hecho,
el piloto y cada uno de los miembros de la tripulación. Cada avión tiene un código, 
 es de un tipo (por ejemplo, BOEING-747) y tiene una base donde es sometido a las revisiones periódicas de mantenimiento.

## 3. Base de Datos para Concesionarios de Automóviles

Se desea diseñar una base de datos que sea de utilidad para concesionarios de automóviles.
 Un concesionario puede vender automóviles de varias marcas (por ejemplo, Audi y Volkswagen).
Sobre los automóviles se desea mantener la siguiente información: marca, modelo, precio, descuento (si es que lo tiene)
 y los datos técnicos (potencia, cilindrada, etc.). 
 Para cada modelo de automóvil se quiere conocer las características de su equipamiento de serie 
 (por ejemplo: airbag conductor y cierre centralizado), así como los extras que se pueden incluir 
 (aire acondicionado, airbag acompañante, pintura metalizada, etc.) y el precio de cada uno de ellos.
  Notar que lo que son características del equipamiento de serie de algunos modelos son extras para otros modelos.
   Por ejemplo, hay modelos que llevan el airbag de serie mientras que otros lo tienen como un posible extra.

El concesionario tiene siempre automóviles de varios modelos en stock (cada uno se identifica por su número de bastidor).
 Éstos se pueden encontrar en su mismo local, o bien, en cualquiera de los servicios oficiales que dependen de él. 
 Un servicio oficial es también una tienda de automóviles,
  pero depende de un concesionario que es el que le presta los automóviles para su exposición, y también se los vende.
   De cada servicio oficial se conoce el nombre, domicilio y CUIT. 
Cuando se vende un automóvil se quiere saber quién lo ha vendido: puede ser uno de los vendedores del concesionario 
o bien un servicio oficial. 
También se desea saber el precio que se ha cobrado por él y el modo de pago: al contado o mediante financiera. 
También se guardará información sobre los extras que se han incluido, precio de cada uno, la fecha de entrega, 
matrícula y si era de stock o se ha tenido que encargar a fábrica. De los vendedores se almacenarán los datos personales
 (nombre, DNI, domicilio, etc.) y las ventas realizadas.

###Base de Datos para un Gabinete de Abogados

Entidades:

Asuntos
Clientes
Procuradores
Atributos:

Asuntos:

Número de expediente
Período
Estado (en trámite, archivado)
Clientes:

DNI
Nombre
Dirección
Procuradores:

Datos personales (DNI, nombre, dirección, etc.)

####Base de Datos para una Compañía Aérea

Entidades:

Aviones
Pilotos
Miembros de Tripulación
Vuelos
Atributos:

Aviones:

Código
Tipo
Base de mantenimiento
Pilotos:

Código
Nombre
Horas de vuelo
Miembros de Tripulación:

Código
Nombre
Vuelos:

Número de vuelo
Origen y destino
Hora de salida
Avión
Piloto
Miembros de Tripulación

#####Base de Datos para Concesionarios de Automóviles

Entidades:

Automóviles
Marcas
Modelos
Concesionarios
Servicios Oficiales
Vendedores
Ventas
Atributos:

Automóviles:

Número de chasis
Marca
Modelo
Precio
Descuento
Marcas:

Nombre
Modelos:

Nombre
Características de equipamiento de serie
Extras y precios
Concesionarias:

Nombre
Dirección
Vendedores:

Datos personales (nombre, DNI, domicilio, etc.)
Ventas:

Automóvil vendido
Vendedor
Precio
Modo de pago
Extras incluidos
Fecha de entrega
Matrícula

