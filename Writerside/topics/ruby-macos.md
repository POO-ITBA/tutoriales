# Instalación de Ruby 3

<tip>
    <p>
        Si bien macOS ya cuenta con una versión de Ruby esta no es la más reciente y no permite ciertas modificaciones
        que necesitamos para poder ejecutar y debuggear código usando RubyMine.
    </p>
</tip>

## Homebrew

<warning>
    <p>
        Es necesario contar con el gestor de paquetes
        <a href="https://brew.sh/es/">Homebrew</a> 
    </p>
    <p>
        Consulte el sitio web para su instalación.
    </p>
</warning>

Puede verificar la instalación de **HomeBrew** utilizando el siguiente comando

<code-block lang="console">brew -v</code-block>

donde debería obtener una salida como la siguiente

<code-block lang="console">Homebrew 4.2.2</code-block>

## Instalación de paquetes ruby-build y rbenv

A continuación debe instalar los paquetes
<code>ruby-build</code> 
y
<code>rbenv</code>.

Ambos paquetes permiten mantener varias versiones distintas de Ruby instaladas en un mismo sistema, con la posibilidad
de cambiar de versión cuando se lo desea.

Instale los paquetes con los siguientes comandos

<code-block lang="console">brew install ruby-build</code-block>
<code-block lang="console">brew install rbenv</code-block>

## Listar las versiones disponibles

Consulte las versiones de Ruby disponibles para su instalación

<code-block lang="console">ruby-build -l</code-block>

Debería ver una salida similar a la siguiente

<code-block lang="console">
3.0.6
3.1.4
3.2.2
3.3.0
jruby-9.4.5.0
mruby-3.2.0
picoruby-3.0.0
truffleruby-23.1.1
truffleruby+graalvm-23.1.1
</code-block>

Identifique en la salida una versión 
<shortcut>3.3.X</shortcut> o superior, en este ejemplo es la <code>3.3.0</code>

## Instalación de Ruby

Instale la versión de Ruby identificada usando
<code>rbenv</code>, en este ejemplo es la <code>3.3.0</code>

<code-block lang="console">rbenv install 3.3.0</code-block>

### Configuración de rbenv

Una vez instalada, debe configurar esa versión de Ruby como
<code>shell</code>. 
Esto hará que cuando utilice la terminal se utilice esa versión de Ruby y no otra. 
Puede cambiarla más adelante si lo desea.

Para ello es necesario modificar el archivo 
<code>~/.zshrc</code> para que incluya la siguiente línea

<code-block lang="plain text">eval "$(rbenv init - zsh)"</code-block>

<tip>
    <p>
        Si el archivo <code>~/.zshrc</code> no existe debe crearlo.
    </p>
    <p>
        Por ejemplo puede utilizar <code>vim ~/.zshrc</code> para crear o modificar el archivo, luego copiar la línea
        en cuestión y por último guardar los cambios.
    </p>
</tip>

Reinicie la terminal para que se reflejen los cambios

Desde ahora
<code>rbenv</code> se ejecutará cada vez que se abre una terminal

Puede setear la versión deseada

<code-block lang="console">rbenv shell 3.3.0</code-block>

Finalmente verifique que al invocar a 
<code>ruby</code> desde la terminal ejecuta la versión deseada

<code-block lang="console">ruby -v</code-block>

donde debe obtener una salida similar a la siguiente

<code-block lang="console">
ruby 3.3.0 (2023-12-25 revision 5124f9ac75) [arm64-darwin23]
</code-block>

<note>
    <p>
        Listo! Ya cuenta con Ruby 3.3 instalado correctamente.
    </p>
</note>