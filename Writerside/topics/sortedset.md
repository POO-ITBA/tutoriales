# Gema SortedSet

## Motivo

En la materia utilizaremos la colección **SortedSet** que modela a una **colección con orden sin repetidos** 
_(similar a TreeSet en Java)_. 

<code-block lang="plantuml">
    <![CDATA[
        @startuml
        Set <|-- SortedSet
        hide members
        @enduml
    ]]>
</code-block>

Como la misma no es parte de la biblioteca estándar de Ruby (_a diferencia de Array, Set y Hash_) es necesario descargar
esta librería externa o **gema** para poder utilizarla en nuestros códigos.

## Instalación

Para instalar la gema 
<a href="https://github.com/knu/sorted_set">SortedSet</a>
utilizaremos el gestor de gemas <code>gem</code> que ya viene instalado con Ruby

Basta con correr el siguiente comando

<code-block lang="console">gem install sorted_set</code-block>

Para asegurarse de que se instaló correctamente verificar que

<code-block lang="console">gem list -i "^sorted_set$"</code-block>

imprime <code>true</code> en la terminal

## Uso

En los códigos de Ruby donde desee utilizar la colección SortedSet es necesario que primero realice el 
<code>require</code>
correspondiente
<code-block lang="ruby">require 'sorted_set'</code-block>

Por ejemplo para el siguiente programa de prueba

<code-block lang="ruby" src="sorted_set_tester.rb"></code-block>

debe obtener la siguiente salida

<code-block lang="console">
    1
    3
    5
</code-block>

<note>
    <p>
        Listo! Ya cuenta con la gema SortedSet instalada correctamente.
    </p>
</note>