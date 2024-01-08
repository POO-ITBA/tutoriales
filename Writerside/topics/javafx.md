# JavaFX

<tip>
    <p>
        JavaFX es necesario para la implementación del TPE Final de la materia.
    </p>
</tip>

## Descarga de JavaFX 21

Ir al sitio
<a href="https://jdk.java.net/javafx21/">jdk.java.net</a>
y descargar el **SDK** correspondiente al sistema operativo que está utilizando

<img src="javafx-1.png" alt="Paso 1 JavaFX" width="600"/>

<tip>
    <p>
        Para utilizar JavaFX 21 es necesario contar con Java 17 o superior.
    </p>
</tip>

En este caso se descargará el SDK macOS/AArch64 (_que es el correspondiente para las Mac con procesadores M1 y similares_)
y el archivo se llama 
<code>openjfx-21.0.1_macos-aarch64_bin-sdk.tar.gz</code>

Descomprimirlo en un directorio. Para este ejemplo la ruta será

<code-block lang="console">/Users/fmeola/javafx-sdk-21.0.1/</code-block>

## Configuración de la librería global de JavaFX en IntelliJ IDEA

Abrir **IntelliJ IDEA** y seleccionar **New Project**.

<tip>
    <p>
        No elegir la opción JavaFX sino la opción New Project por defecto.
    </p>
</tip>

<img src="javafx-2.png" alt="Paso 2 JavaFX" width="600"/>

Presionar **Create**

Luego ir a **Project Structure** desde el engranaje de la esquina superior derecha

<img src="javafx-3.png" alt="Paso 3 JavaFX"/>

En **Platform Settings -> Global Libraries** presionar el botón **+** para la opción 
**New Global Library -> Java**

Se abrirá una ventana para elegir archivos. Seleccionar todos los archivos de extensión 
<code>.jar</code> que están presentes en la carpeta 
<code>lib/</code>. 
Siguiendo con el ejemplo sería el directorio
<code>/Users/fmeola/javafx-sdk-21.0.1/lib</code>.

<img src="javafx-4.png" alt="Paso 4 JavaFX" width="600"/>

En el diálogo **Choose Modules** elegir el único módulo disponible

Ahora **la librería global ya se encuentra configurada para futuros proyectos**. 
Debería ver una ventana similar a la que aparece a continuación:

<img src="javafx-5.png" alt="Paso 5 JavaFX" width="600"/>

## Configuración de la librería JavaFX en un proyecto en IntelliJ IDEA

Para utilizar la librería global en este o en cualquier otro proyecto de IntelliJ IDEA debe ir a
**Project Structure** desde el engranaje de la esquina superior derecha
luego **Project Settings -> Modules** y presionar la tab **Dependencies**

Luego con el botón **+** elegir la opción **Library...** y luego la librería global desde **Global Libraries**. 
En este caso <code>javafx-swt</code>. Presionar **Add Selected** para agregarla.

<img src="javafx-6.png" alt="Paso 6 JavaFX" width="300"/>

Debería ver la librería <code>javafx-swt</code> agregada al módulo.

<img src="javafx-7.png" alt="Paso 7 JavaFX" width="600"/>

Presionar **OK** para guardar los cambios.

## Ejecución de una aplicación con JavaFX en IntelliJ IDEA

A continuación se presenta un **código fuente para probar** la correcta ejecución de JavaFX.

<code-block lang="java" src="MyBrowser.java"></code-block>

Copiarlo en el directorio 
<code>src/</code> 

<tip>
    <p>
        Como cualquier otro .java mueva el archivo al package deseado o modifique la sentencia package.
    </p>
</tip>

Presionar
<img src="app.actions.execute.svg" alt="Botón Play"/>
y en el menú contextual elegir **Modify Run Configuration**

<img src="javafx-8.png" alt="Paso 8 JavaFX" width="300"/>

Elegir **Modify Options** y en el menú elegir **Add VM Options**

<img src="javafx-9.png" alt="Paso 9 JavaFX" width="300"/>

Por último agregar los siguientes flags que indican la ruta de la carpeta 
<code>lib/</code> del directorio de JavaFX y mencionan las librerías necesarias.

<code-block lang="console">
--module-path /Users/fmeola/javafx-sdk-21.0.1/lib
--add-modules=javafx.swt,javafx.base,javafx.controls,javafx.fxml,javafx.graphics,javafx.media,javafx.swing,javafx.web
</code-block>

Finalmente presionar **OK** y ejecutar el código fuente con <img src="app.actions.execute.svg" alt="Botón Play"/>.

<note>
    <p>
        Listo! Si al ejecutar el main ve una pantalla en blanco ya cuenta con JavaFX instalado correctamente. 
    </p>
</note>