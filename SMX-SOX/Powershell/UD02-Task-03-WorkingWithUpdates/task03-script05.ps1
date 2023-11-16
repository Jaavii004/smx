
$msi = (Get-ChildItem C:\MrYellow\Installers | where {$_-match ".msi$"}).count;
$total = (Get-ChildItem C:\MrYellow\Installers ).count;
$comprobarDirectorio = (Test-Path "C:\MrYellow\Installers");

if ( $comprobarDirectorio ){
    write-host -BackgroundColor Green ( "El directorio C:\MrYellow\Installers existe" );
    if ( $msi -eq $total ) {
        write-host -BackgroundColor Green ( "Todos los archivos del directorio C:\MrYellow\Installers son .msi" );
    }else{
        write-host -BackgroundColor red ( "Todos los archivos del directorio C:\MrYellow\Installers no son .msi" );
    }
}else{
    write-host -BackgroundColor Red ( "El directorio C:\MrYellow\Installers no existe vamos a crearlo" );
    mkdir C:\MrYellow\Installers
}

