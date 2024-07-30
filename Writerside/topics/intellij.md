# Instalación de IntelliJ IDEA

En este tutorial se cubre la instalación del IDE IntelliJ IDEA que permite descargar el kit de desarrollo
para Java (JDK) desde el mismo IDE.

<warning>
Si desea utilizar Java 
<b>con otro IDE</b> o desde la línea de comando puede descargar manualmente el JDK desde 
<a href="https://jdk.java.net/22/">OpenJDK JDK 22.0.2 General-Availability Release</a>
</warning>

## Registro y Licencia

**IntelliJ IDEA Ultimate** requiere una licencia. Los alumnos pueden registrarse en
<a href="https://www.jetbrains.com/shop/eform/students">**Productos JetBrains para el aprendizaje**</a>
con su mail **@itba.edu.ar** y así obtener una **licencia gratuita** para utilizar IntelliJ IDEA Ultimate y demás aplicaciones
de JetBrains de forma gratuita.

<tip>
También puede descargar la versión 
<b>gratuita</b> denominada
<b>IntelliJ IDEA Community Edition</b>
que no requiere licencia.
</tip>

<!--
<note>
IntelliJ IDEA Community Edition está
<b>disponible en
<a href="https://itbacloud.cloud.com/Citrix/StoreWeb/#/home">ITBA Workspace</a>
</b>
</note>
-->

## Instalación de IntelliJ IDEA usando ToolBox App

Para instalar **IntelliJ IDEA** recomendamos utilizar **Toolbox App**.

Puede consultar el siguiente tutorial:

<a href="https://www.jetbrains.com/help/idea/installation-guide.html#toolbox">Install using the Toolbox App</a>.

## Primer proyecto y descarga de JDK

Una vez instalado **IntelliJ IDEA** necesita descargar el Java Development Kit (JDK).
Podrá hacerlo en la ventana de creación de un nuevo proyecto.

Abrir **IntelliJ IDEA** y elegir 
<shortcut>New Project</shortcut>.

<img src="intellij-1.png" alt="IntelliJ 1" width="600"/>

En la ventana debe completar el nombre del proyecto y elegir una carpeta.
En **Language** elegir **Java**. En **Build system** asegurarse de elegir **IntelliJ**.

<img src="intellij-2.png" alt="IntelliJ 2" width="600"/>

Ahora es momento de descargar un JDK. En **JDK** abrir el menú contextual y elegir la opción
<shortcut>Download JDK</shortcut>.
Aparecerá una ventana emergente. Elegir **Oracle OpenJDK 21** o superior. 

Para este ejemplo se elige **Oracle OpenJDK 21.0.2**.

<img src="intellij-3.png" alt="IntelliJ-3" width="600"/>

<tip>En caso de haber más de una opción la misma versión de Oracle OpenJDK revisar de
elegir la correspondiente a la 
<b>arquitectura del sistema operativo</b>.

En este ejemplo se elige la versión 
<b>aarch64</b> 
que es la correspondiente a los ordenadores Mac con Apple Sillicon (M1 o superior)
</tip>

Una vez completada la descarga, de vuelta en la ventana de **New Project**, elegir el JDK descargado
y presionar 
<shortcut>Create</shortcut>.

<img src="intellij-4.png" alt="IntelliJ-4" width="600"/>

<note>
    <p>
        Listo! Ya cuenta con IntelliJ IDEA y Java instalado correctamente.
    </p>
</note>

<tip>Para más información consultar:
<a href="https://www.jetbrains.com/help/idea/run-for-the-first-time.html">
Run IntelliJ IDEA for the first time</a>.
</tip>
