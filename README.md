# ABMWeb_garcia_arcija

Descripcion:
Esta aplicacion solo puede ser utilizada con autenticacion y autorizacion del usuario. 
Una vez logueado el usuario, se determina a que recursos puede acceder.

Dentro del sistema se puede observar un listado completo de los usuarios registrados en la base de datos. Otra caracteristica que posee es permitir analizar con mas detalles la informacion propia de un usuario de la base de datos. En caso de que el usuario posea permisos ABM, podra realizar: la creacion de un nuevo usuario en la base de datos, la modificacion de los datos de un determinado usuario ya almacenado en la base de datos, y tambien podra eliminar a un usuario de la base de datos.

Configuracion previa:
Para comenzar a utilizar esta aplicacion es necesario:
Ejecutar las consultas SQL contenidas en el archivo script_garcia.sql
 
Luego se debe configurar la conexion al esquema usuarios dentro de <GlobalNamingResources> en el archivo server.xml de apache-tomcat/conf 
```xml
<GlobalNamingResources>
    	<Resource name="jdbc/fichadas" auth="Container"
          	type="javax.sql.DataSource" driverClassName="org.postgresql.Driver"
          	url= "jdbc:postgresql://localhost:5432/web"  	 
          	username= "postgres" password= "123"
          	maxTotal= "20" maxIdle= "10" maxWaitMillis="-1"/>
</GlobalNamingResources>
```

En el archivo tomcat-users.xml de apache-tomcat/conf se deben establecer los roles ver y ABM y usuarios Admin e Invitado
```xml
<role rolename="ver"/>
<role rolename="abm"/>

<user username="Admin" password="123" roles="ver"/>
<user username="Invitado" password="123" roles="ver,abm"/>
```
