# Instalación de Ruby en Windows

## Uso de RubyInstaller

Ir al sitio de 
<a href="https://rubyinstaller.org/downloads/">RubyInstaller</a>
y descargar una versión <shortcut>4.X</shortcut> o superior del **Ruby+Devkit**. Elija la versión correspondiente a su
arquitectura (x86 o x64).

<warning>
    <p>
        Importante: Es necesario que la versión incluya el Devkit de lo contrario no podrá utilizar funciones de
        debug en el RubyMine
    </p>
</warning>

Al momento de crear este tutorial los instaladores son:

- **Ruby+Devkit 4.0.1-1 (arm)**
- **Ruby+Devkit 4.0.1-1 (x64)**

<tip>
    <p>
        Si aparece un mensaje de SmartScreen elegir la opción Ejecutar de todas formas. También puede antes aparecer una
        advertencia en el navegador Microsoft Edge al descargar el archivo.
    </p>
</tip>

Luego ejecute el instalador. Recomendamos seleccionar la opción **Install for me only**.

Asegurarse de tildar todas las opciones

<img src="ruby-win-1.png" alt="Instalación Paso 1" width="600" border-effect="line"/>

En el siguiente paso también asegurarse de tildar todas las opciones

<img src="ruby-win-2.png" alt="Instalación Paso 2" width="600" border-effect="line"/>

Antes de finalizar el asistente asegurarse de dejar tildada la opción
<shortcut>Run 'ridk install'</shortcut>

<img src="ruby-win-3.png" alt="Instalación Paso 3" width="600" border-effect="line"/>

Aparecerá una ventana de la consola con un menú de tres opciones. 
Ingresar un 
<shortcut>3</shortcut>
y presionar
<shortcut>Enter</shortcut>.

<img src="ruby-win-4.png" alt="Instalación Paso 4" width="600" border-effect="line"/>

Por último debe ver en la terminal un mensaje como:

<code-block lang="console">Install MSYS2 and MINGW development toolchain succeeded</code-block>

Aparecerá nuevamente el mismo menú. Puede presionar
<shortcut>Enter</shortcut>
para salir de la terminal y finalizar la instalación.

<note>
    <p>
        Listo! Ya cuenta con Ruby 4 instalado correctamente.
    </p>
</note>