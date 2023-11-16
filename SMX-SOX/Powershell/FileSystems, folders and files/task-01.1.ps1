$param = [string]$args[0]


$cantidadArgs = $args.count

if ( $cantidadArgs -eq 1 ){
    if ( $param -inotmatch "[0-9]" ){
        if ( $param -imatch "^./" ){
           Write-Host " ** "$param" : Es una ruta relativa de la carpeta en la que esta"
        }else{
            write-host " ** "$param" : No es una ruta relativa de la carpeta en la que esta"

        }
        if ( $param -imatch "^../" ){
           Write-Host " ** "$param" : Es una ruta relativa de la carpeta anterior"
        }else{
            write-host " ** "$param" : No es una ruta relativa de la carpeta anterior"
        }

    }
}else{
    write-host "No has puesto ningun argumento"
}