# Diagramas PlantUML

Para realizar los **diagramas de clase** recomendamos la herramienta 
<a href="https://plantuml.com/es/">PlantUML</a>.

## Uso de PlantUML desde el navegador

Puede generar los diagramas PlantUML sin necesidad de instalar ninguna herramienta accediendo al 
<a href="https://editor.plantuml.com/uml/">Online Server</a>. 

<tip>El sitio web contiene anuncios</tip>

## Uso de PlantUML con Docker + Dev Container

En cualquiera de los **Dev Container** de los repositorios de las guías de ejercicios
como `laboratorio_java` o `laboratorio_ruby` ya cuenta con PlantUML instalado.

También cuenta con la extensión de Visual Studio Code correspondiente.

<tip>
Utilizar el enlace ubicado en <b>Campus ITBA</b> para conseguir acceso al repositorio.
</tip>

## Uso de PlantUML desde IntelliJ IDEA

Puede generar los diagramas PlantUML **sin conexión a internet** y obtener una
**visualización en tiempo real** descargando el **plugin**
<a href="https://plugins.jetbrains.com/plugin/7017-plantuml-integration">PlantUML Integration</a>
para **IntelliJ IDEA**.

Antes de instalar el plugin es necesario **instalar la librería GraphViz**.

### Instalación de GraphViz

<tldr>
<tabs>
<tab title="macOS">

<warning>
    <p>
        Es necesario contar con el gestor de paquetes
        <a href="https://brew.sh/es/">Homebrew</a> 
    </p>
    <p>
        Consulte el sitio web para su instalación.
    </p>
</warning>

<p>Abrir la terminal y ejecutar los siguientes comandos:</p>

<code-block lang="console">
brew install libtool
brew link libtool
brew install graphviz
brew link --overwrite graphviz
</code-block>

</tab>
<tab title="Linux">

<p>Abrir la terminal y ejecutar el siguiente comando:</p>

<code-block lang="console">
sudo apt install graphviz
</code-block>

</tab>
<tab title="Windows">
<note>
    <p>
        No es necesaria la instalación de GraphViz en Windows
    </p>
</note>
</tab>
</tabs>
</tldr>

Una vez instalado GraphViz, para **instalar el plugin** presione el engranaje de la esquina superior derecha y luego 
<shortcut>Plugins</shortcut>

<img src="plantuml-0.png" alt="PlantUML" width="200"/>

Seleccione la solapa **Marketplace** y en el cuadro de búsqueda escriba 
<code>plantuml</code>. Presione <shortcut>Install</shortcut> para instalar el plugin **PlantUML Integration**. 
IntelliJ le solicitará reiniciar el IDE para poder finalizar la instalación del plugin.

<img src="plantuml-1.png" alt="PlantUML 1" width="600"/>

<tip>Para más información respecto a la instalación de plugins puede consultar:
<a href="https://www.jetbrains.com/help/idea/managing-plugins.html">Install plugins</a>
</tip>

Una vez reiniciado el IntelliJ IDEA ya puede **crear un archivo de tipo PlantUML** de la misma forma crea una clase de Java.

Desde el árbol de archivos de la sección 
<shortcut>Project</shortcut>
presionar click derecho, 
<shortcut>New</shortcut> y luego 
<shortcut>PlantUML File</shortcut>.

<img src="plantuml-2.png" alt="PlantUML 2" width="200"/>

En el menú emergente indique el **nombre del archivo**, en este ejemplo es 
<code>Date</code> y el tipo de diagrama de ejemplo deseado.
En nuestro caso siempre será **Class** porque únicamente realizaremos diagramas de clase.

<img src="plantuml-3.png" alt="PlantUML 3" width="200"/>

Se creará en el proyecto un archivo llamado 
<code>Date.puml</code> que cuenta con un ejemplo de diagrama de clase que muestra por
ejemplo una clase <code>ArrayList</code> que extiende a una clase abstracta <code>AbstractArrayList</code>.
Cualquier cambio que haga en el archivo se verá reflejado automáticamente en el diagrama generado.

<img src="plantuml-4.png" alt="PlantUML 4" width="600"/>

<warning>En caso de obtener <b>errores sobre GraphViz o Dot</b> consultar 
<a href="https://plantuml.com/es/graphviz-dot">GraphViz</a>
</warning>

En la esquina superior izquierda cuenta con tres botones para **ocultar el visor** del diagrama, para **mostrarlo a la derecha**
del editor de texto o para **mostrarlo debajo** del editor de texto.

<img src="plantuml-5.png" alt="PlantUML 5" width="200"/>

## Documentación de PlantUML

Dejamos a continuación **algunos ejemplos breves** de la sintaxis de PlantUML para generar los **diagramas de clase**
más comunes que utilizaremos en la materia.

### Clase

Donde:
- <path>day</path>, <path>month</path> y <path>year</path> son **variables de instancia privadas** de <path>Date</path>
- <path>Date</path> es el **constructor público** de <path>Date</path>
- <path>getDay</path> y <path>setDay</path> son **métodos de instancia públicos** de <path>Date</path>
- <path>format</path> es una **variable de clase privada** de <path>Date</path>

<code-block lang="plantuml">
    <![CDATA[
        @startuml
        class Date {
            - int day
            - int month
            - int year
            - {static} String format
            + Date(int day, int month, int year)
            + int getDay()
            + void setDay(int day)
        }
        @enduml
    ]]>
</code-block>

<code-block lang="plain text" collapsible="true">
    <![CDATA[
        @startuml
        class Date {
            - int day
            - int month
            - int year
            - {static} String format
            + Date(int day, int month, int year)
            + int getDay()
            + void setDay(int day)
        }
        @enduml
    ]]>
</code-block>

### Herencia

Donde:
- <path>method1</path> es un **método de instancia público abstracto** en <path>AbstractClass</path>
- <path>method2</path> es un **método de instancia protegido** en <path>AbstractClass</path>
- <path>ConcreteClass</path> **es un** <path>AbstractClass</path> (Herencia)

<code-block lang="plantuml">
    <![CDATA[
        @startuml
        abstract AbstractClass {
            - int x
            - int y
            + {abstract} void method1()
            # void method2()
        }
        class ConcreteClass {
            - int z
            + void method1()
        }
        AbstractClass <|-- ConcreteClass
        @enduml
    ]]>
</code-block>

<code-block lang="plain text" collapsible="true">
    <![CDATA[
        @startuml
        abstract AbstractClass {
            - int x
            - int y
            + {abstract} void method1()
            # void method2()
        }
        class ConcreteClass {
            - int z
            + void method1()
        }
        AbstractClass <|-- ConcreteClass
        @enduml
    ]]>
</code-block>

### Composición

Donde:
- <path>Appointment</path> **tiene un** <path>Date</path>

<code-block lang="plantuml">
    <![CDATA[
        @startuml
        class Date {
            - int day
            - int month
            - int year
        }
        class Appointment {
            - String name
            - Date date
            + Appointment(String name, Date date)
        }
        Appointment *-- Date
        @enduml
    ]]>
</code-block>

<code-block lang="plain text" collapsible="true">
    <![CDATA[
        @startuml
        class Date {
            - int day
            - int month
            - int year
        }
        class Appointment {
            - String name
            - Date date
            + Appointment(String name, Date date)
        }
        Appointment *-- Date
        @enduml
    ]]>
</code-block>

<tip>
Para 
<b>más ejemplos de diagramas de clase</b>
consultar
<a href="https://plantuml.com/es/class-diagram">Diagrama de clase</a>.
</tip>

## Estilos de PlantUML

Puede **personalizar** el estilo de los diagramas eligiendo un **Theme** con la sintaxis 
<code>!theme</code>. 

Por ejemplo usando 
<code>!theme cyborg</code> se obtiene el siguiente diagrama:

<code-block lang="plantuml">
    <![CDATA[
        @startuml
        !theme cyborg
        class Date {
            - int day
            - int month
            - int year
        }
        @enduml
    ]]>
</code-block>

<code-block lang="plain text" collapsible="true">
    <![CDATA[
        @startuml
        !theme cyborg
        class Date {
            - int day
            - int month
            - int year
        }
        @enduml
    ]]>
</code-block>

Puede consultar el **catálogo de temas disponibles** en 
<a href="https://the-lum.github.io/puml-themes-gallery/">puml-themes-gallery</a>
