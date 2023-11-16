$param = [string]$args[0]


$cantidadArgs = $args.count

if ( $cantidadArgs -eq 1 ){
    if ( $param -inotmatch "[0-9]" ){
        if ( $param -imatch "^C\:" ){
            Write-Host " ** "$param" : Es una ruta absoluta "
        }else{
            write-host " ** "$param" : No es una ruta absoluta "
        }
    }else{
        write-host "Tienes que poner un argumento que no sea un numero"
    }
}else{
    write-host "No has puesto ningun argumento"
}