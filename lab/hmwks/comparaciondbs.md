Fernando Josué Flores Valdez, 20150438
Sistemas de Bases de Datos 1
Vacaciones Diciembre 2019

------

## Tarea 1

# DBMS's Relacionales

Una base de datos relacional no es más que un repositorio de datos que almacena información en tablas estructuradas con filas y columnas. Como los datos se almacenan de forma estructurada, se pueden recuperar utilizando un lenguaje de consulta que comprende la estructura de la tabla.

## MySQL

#### Casos de uso y alcance de implementación

En empresas grandes es utilizado de vez en cuando, en empresas pequeñas puede implementarse como la solución de base de datos que requiere una base de datos relacional. Usualmente es utilizado por todo el equipo, integrado en la cadena de producción, la mayoria de veces es utilizado para pruebas, modificaciones más pequeñas en el modelo de datos o cuando se instala para un entorno de desarrollo localizado.

| Pros                                                         | Cons                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| Almacenar datos relacionales.<br />Gestión rápida.<br/>Integración con diferentes herramientas de desarrollo. | Requisito de SQL.<br/>Difícil de encontrar soporte para casos especiales. |

#### Donde la Utilizaria

Al ser codigo abierto, su implementación seria util en proyectos donde el presupuesto es limitado, cuenta con una gran comunidad de soporte y es bastante eficiente e intuitiva. ***En proyectos personales, proyectos pequeños o entornos de desarrollo de pruebas locales es una solucion útil.***



## Oracle

Es Uitlizado para almacenar información de modulos críticos y pesados, oracle puede manejar cargas de trabajo vairables, manteniendo el rendimiento en momentos criticos. Al ser una Base de Datos antigua es lógico que muchas compañias confien en ella y sus sistemas esten desarrollados haciendo uso de la misma como su dbms, es robusto y confiable. tiene la capacidad de escalar para admitir cargas de trabajo intensivas.

#### Donde la utilizaria

En definitiva es un dbms diseñado para proyectos y compañias solidas y grandes, proporciona herramientas que garantizan el buen manejo de grandes cantidades de datos, manteniendo la integridad de los mismos.



## PostgreSQL

PostgreSQL cumple la función de un motor de almacenamiento de datos dedicado y / o por aplicación o solución. Su versatilidad y flexibilidad combinadas con el excepcional soporte de la comunidad de usuarios hacen un producto sobresaliente. La integración o migración con AWS Redshift es fácil y perfecta. PostgreSQL tiene una implementación de lenguaje ANSI SQL casi completa que lo hace muy útil para la extracción de datos y análisis.

#### Donde la utilizaria

En cuanto a las funciones, Postgres tiene todo lo que MySQL tiene y más (incluso si algunas funciones tienen una sintaxis diferente en los dos db), y muchas funciones, como el soporte JSON, podrian ser factores que influyan en la eleccion de cual de los dos elegir, debido a que ambos son open source los factores de decicion probablemente sean la logica de negocios, escalabilidad que pueda tener o la forma en que se deseeen almacenar.

La utilizaria si mi intencion es realizar pruebas sobre un nuevo modelo de base de datos, y tomando en cuenta requerimientos del proyecto.

# DBMS's No Relacionales

## Cassandra

Cassandra es una base de datos NoSQL que se utiliza para almacenar una gran cantidad de datos rápidamente. Tiene una velocidad de escritura muy rápida, lo que permite un gran volumen de almacenamiento de datos en poco tiempo. Es sintonizable y se puede utilizar para almacenar datos. Es más adecuado para almacenar datos planos en lugar de datos relacionales.

#### Donde la utilizaria

Debido a que es muy adecuada para almacenar un gran volumen de datos en un período de tiempo muy pequeño, relativamente rápida y ademas se puede interactuar con el uso de CQL (lenguaje de consulta Cassandra), que es similar a SQL, y por lo tanto la transición es más fácil, la utilizaria en casos donde el modelo requerido es no relacional y el equipo de desarrollo se encuentra aun bastante familiarizado con lenguajes de consulta relacionales, esto agilizaria los tiempos de desarrollo.

## Redis

Redis es una gran herramienta para el almacenamiento en caché distribuido y la sincronización / bloqueo en sistemas con múltiples instancias. También funciona bien para datos no persistentes que no crecen con el tiempo, por ejemplo, es posible que desee utilizar Redis para administrar una cola. Es una opción particularmente buena para los datos que se actualizan con frecuencia.

Por el contrario, debido al precio / datos, no recomendaría Redis para datos persistentes o de acceso poco frecuente.

#### Donde la utilizaria

Ya que es una base de datos diseñada para el acceso y actualizacion de información frecuente, lo ideal seria implementarla en proyectos que como principal caracteriztica tengan transacciones todo el tiempo, con esto solventariamos tiempos de respuesta y de actualizacion de datos sin ningun problema, ademas de contemplar los costos de las mismas.

## MongoDB

MongoDB utilizando JSON como documentos en un sistema de base de datos. Además, es un software de código abierto. Es muy flexible en comparación con otro software relacionado con la base de datos. Ayuda a almacenar una gran cantidad de datos perfectamente. Proporciona alto rendimiento, disponibilidad y escalabilidad. Es una base de datos NoSql.

Pero la principal desventaja de este producto es que no podemos usarlo para las funcionalidades de transacción.

#### Donde la utilizaria

Debido a su principal desventaja, el proyecto o compañia donde la implemtaría, debe de ser una en la cual los datos que se desean alamacenar son persistentes y no se require realizar actualizaciones con frecuencia, de lo contrario esta opcion dejaria de ser la mas optima y deberia descartarse al instante.