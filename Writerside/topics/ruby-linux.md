# Instalación de Ruby en Linux

<warning>
    <p>
        Es necesario contar con el gestor de paquetes <a href="https://snapcraft.io"><b>Snap</b></a> 
    </p>
</warning>

## Uso de snap

Para instalar la versión estable más reciente de Ruby ejecute el siguiente comando

<code-block lang="console">sudo snap install ruby --classic --channel=latest/stable</code-block>

Debería ver una salida similar a la siguiente

<code-block lang="plain text">
ruby 4.0.0 from Ruby core team (rubylang) installed
</code-block>

Finalmente verifique que al invocar a
<code>ruby</code> desde la terminal ejecuta la versión deseada

<code-block lang="console">ruby -v</code-block>

donde debe obtener una salida similar a la siguiente

<code-block lang="plain text">
ruby 4.0.0 (2025-12-25 revision 553f1675f3) +PRISM [aarch64-linux]
</code-block>

<note>
    <p>
        Listo! Ya cuenta con Ruby 4 instalado correctamente.
    </p>
</note>