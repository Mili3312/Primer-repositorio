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

### Base de Datos para un Gabinete de Abogados

Entidades:

Asuntos
Cliente
Procurador
Atributos:

Asuntos:

Número de expediente
Período
Estado (en trámite, archivado)
Cliente:

DNI
Nombre
Dirección
Procurador:

Datos personales (DNI, nombre, dirección, etc.)

#### Base de Datos para una Compañía Aérea

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

##### Base de Datos para Concesionarios de Automóviles

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

file:///C:/Users/USUARIO/Downloads/primer%20repositorio/entidadatributo.pdf


# Sistema de un Centro Cultural

Un centro cultural quiere desarrollar un sistema para mantener y consultar la información de la historia de la música. Para esto se organiza la información por épocas, de las cuales se sabe el nombre único, diferentes características relevantes, el período (año de comienzo y año final) y los géneros musicales de la época. A su vez, de cada género, se quiere saber su nombre único, diversas características, sus orígenes, los músicos asociados a ese género y los instrumentos que intervenían en la ejecución de ese género.

Sabemos que una época tiene varios géneros, pero que un género pertenece a una sola época. De cada músico, se sabe el nombre único, fecha de nacimiento, fecha de muerte y una historia de su vida. Un género tiene varios músicos, pero un músico pertenece a un solo género. De cada instrumento musical se tiene el nombre único, una foto, el lugar donde se creó, quién fue el creador, el tipo de instrumento (viento, teclado, etc.) y los materiales con que se hace. En un género se usan varios instrumentos, y un instrumento aparece en varios géneros. Adicionalmente, se quiere conocer la lista de obras famosas que se hicieron dentro de un género. De las obras famosas, se conoce un nombre único, el año en que se hizo, los músicos autores y la partitura. Tenga en cuenta que una obra famosa pertenece a un solo género, que una obra famosa la componen varios músicos y que un músico compone varias obras.

 entidad:
 epoca 
 genero
 música
 instrumento 
 obra famosa

 epoca:
 NOMBRE UNICO ID
AÑO DE COMIENZO
AÑO FINAL
GENERO MUSICAL

 genero:
 NOMBRE UNICO ID
ORIGEN
MUSICOS ASOCIADOS A ESE GÉNERO

 música:
 NOMBRE UNICO ID
FECHA DE NACIMIENTO
FECHA DE MUERTE
HISTORIA DE VIDA

 instrumento :
 NOMBRE UNICO ID
FOTO
LUGAR DONDE SE CREÓ
CREADOR
TIPO DE INSTRUMENTO
MATERIALES CON QUE SE HACE.

 obra famosa:
 NOMBRE UNICO ID
AÑO
AUTOR
PARTITURA 





## Biblioteca

Una reconocida Biblioteca se encuentra en la etapa de modelado de su base de datos. A continuación se enumeran los datos considerados al llevar adelante su diseño. Los libros son uno de los componentes más importantes. De cada uno de ellos nos interesa registrar su título (único entre todos los libros) y género al que pertenece. Además posee un conjunto de reseñas, que se encuentran conformadas por la revista donde apareció, la fecha y su texto descriptivo. Todo autor escribe al menos un libro, y a su vez todo libro tiene al menos un autor. De ellos interesa saber su nombre (que es único, no hay dos autores con el mismo nombre), su nacionalidad y año de nacimiento. Un libro tiene además al menos una edición. De ellas interesa el año, el ISBN (un identificador único entre ediciones de libros), y además su idioma. Las ediciones tienen como mínimo una copia, aunque las más demandadas tienen varias copias. Cada copia se diferencia por su número, aunque este número por sí solo no basta para diferenciarla: es necesario conocer además la edición a la que pertenecen. Finalmente, las copias son las que serán pedidas en préstamo por los usuarios. Un usuario pide prestada una copia en una fecha específica, y en ese momento se le asigna una fecha de devolución. Del usuario se conoce el DNI (que lo identifica de otros usuarios), su nombre, su apellido y un email. Un usuario puede no pedir copias. A su vez, puede que una copia nunca sea pedida en préstamo.

entidades:
 libro
 edición 
 copia
 autor 
 usuario 
 reseña
 prestamo

libro:
TITULO
AUTOR
EDICIÓNIIDIOMA
GENERO
 
 edición: 
 AÑO
ISBN
IDIOMA
NUMERODECOPIAS
 
 copia:
 NUMERO ID 
EDICION

 autor :
 
LIBRO
NOMBRE
NACIONALIDAD
AÑO DE NACIMIENTO

 usuario :
 DNI
NOMBRE
APELLIDO
EMAIL

 reseña:
 REVISTAS
FECHA
TEXTO DESCRIPTIVO

 prestamo:
FECHA DE  INICIO
FECHA DE DEVOLUCION 
USUARIO
COPIA
### Qatar 2022

Una página web de estadísticas deportivas desea realizar una base de datos para manejar la información de los partidos, equipos e hinchas que visitaron Qatar durante el mundial en el 2022. Sabemos que los partidos tienen un ID que los identifica en el sistema, así como también la instancia del torneo que se jugó en dicho partido (fase de grupos, octavos, etc.), la duración y la fecha en la que se jugó, compuesta por el día y la hora, el árbitro que dirigió ese partido y los equipos que jugaron el mismo. De los árbitros conocemos su pasaporte, de qué país son, el año en el que inició la actividad y su nombre y apellido, como también que árbitro reemplaza a cuál en caso de lesión o enfermedad; sabemos que un árbitro puede ser reemplazado por varios y que un árbitro reemplaza solo a uno. De los equipos que participan en los partidos conocemos el nombre de la selección, que es único entre el resto de las selecciones, el nombre del DT de esa selección, el lugar donde entrena y el cuerpo técnico que la compone, también conocemos los distintos jugadores que forman parte de las selecciones, de los que sabemos su número de camiseta, que los distingue dentro de un equipo, la posición que ocupan en la cancha, su nombre y apellido y el apodo de cada uno; es sabido que durante un mundial un jugador representa a un solo país y que en distintas selecciones puede haber jugadores con el mismo número. Al ser un mundial, un equipo puede jugar como mínimo tres partidos (quedó eliminado en fase de grupos) o llegar hasta siete (llegó a la final). En este sistema los estadios son sede de distintos partidos, de los mismos conocemos su nombre, la ciudad en la que se encuentran, su capacidad máxima y también la capacidad habitada y la cantidad de policías que se hacen presente en cada partido; también sabemos que los distintos hinchas pueden visitar los estadios (a los que llegan en distintos medios de transporte), los cuales reciben una gran cantidad de hinchas por partido, de ellos conocemos el número de ticket de cada uno, la vestimenta y la ubicación (compuesta de zona, fila y número de asiento) que tiene cada uno. Adicionalmente, sabemos que un partido se juega solo en un estadio y que en un estadio pueden jugarse muchos partidos.

entidad:
partido
arbitro
equipo
jugadores
estadios 
inchas

partido:
ID
INSTANCIA
DURACION
FECHA
ARBITRO 
EQUIPO

arbitro:
PASAPORTE
NACIONALIDAD
AÑO DE INICIO DE ACTICIDAD
NOMBRE Y APELLIDO

equipo:
NOMBRE
DT
LUGAR DE ENTRETENIMIENTO
CUERPO TECNICO

jugadores:
NUMERO DE CAMISETA 
POSICION QUE OCUPAN
NOMBRE 
APELLIDO 
APODO

estadios :
NUMERO DE CAMISETA 
POSICION QUE OCUPAN
NOMBRE 
APELLIDO 
APODO

inchas:
N TICKET
VESTIMENTA
UBICACION


https://app.diagrams.net/#G1TOiR69OqpgGRg604rc5sy9MPNe0deQFm
