# Modelos

### Modelo Jerarquico

Asociaciones Complejas, Almacenamiento de informacion de forma jerarquica se alcanca mediante alamacenamiento en multiples arboles.

SI SE ALMACENA PERO CON REDUNDANCIA (mucha).

- no permite asociaciones complejas
- insercion y eliminacion compleja
- en eliminacion se puede perder informacion
- no es encillo hacer consultas simetricas

cuatro operaciones principales

- INSERT
- DELETE
- REPLACE 
- GET

Implementaciones

adabas, ims, focus, hoy dia xml o json (ahora orientado a objetos).

### DBMSs en Red

herramientas

usuarios de sistea

construccion de un modelo prciso y util

basado en necesidades reales



Por primera vez se menciona una especie de llave primaria, colocar identificador de una entidad a otra cuando haya una asociacion y si existe una asciacion de muchos a muchos transformarla.

Menciona tablas internas, se utilizaron archivos secuenciales, hash, acceso directo, estructuras de anillos.

Implementaciones

DBMS/10, DMS/1100, EDMS, IDS, Pholas.

Muy cercano al modelo relacional.



### Orientado a Objetos

Aparece cuando c++ alcanza fama, 1985 se basa en almacenaiento de datos y asociaciones mediante objetos.

Normalmente utiliza diagrama de clases UML.

algunos de los conceptos orientados a objetos fueron abosrbidos por el estandar de sql de 1999.

postgres en su version 9.5 ofrece manipulacionesn no relacionales utilizando json.



Implemntaciones 

InterSystem Caché (multimodelo), Versant Object DAtabase, ObjectStore, Db4o (opensourse), Matisse.



##### Desventajas de Db4o (y en general)

no tiene indices fulltext (busca caena larga exacta)

no tiene indices para cadenas

no tiene lenguaje de consultas general (existen varios lenguajes)

no tiene replicacion (como existen en memoria, solo crearia distintas instancias de lo mismo)

la eliminacion no es inmediata (lo hace sobre el garbage collector, problemas en accesos y transacciones)

no tiene soporte de xml/json





### Modelo LLave - Valor

Implementaciones 

Redis (multimodelo), Amazon DynamoDB (multimodelo), Microsoft Azure Cosmos DB (multimodelo), Memcached, Hazelcast.



Redis

Creado en 2009, es como una tabla hash



### Modelos Documentales

Antiguos,ahora se considera subc0onjuto de llave valor

Un registro cosniste en una coleccion de pares llave-valor mas una carga o documento.

cada documento tiene llave unica, se utlizan xml y json.

MongoDB es la base de datos mas popultar de este tipo.

Implementaciones

MongoDB, Amazon DynamoDB, CouchBase, Microsoft Azure, CouchDB.