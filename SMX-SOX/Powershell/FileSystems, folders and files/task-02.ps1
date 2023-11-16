$param = [string]$args[0]


$cantidadArgs = $args.count

if ( $cantidadArgs -eq 1 ){
    if ( $param -inotmatch "[0-9]" ){
        $exist = (Test-Path $param)
        if ( $exist ){
            Write-Host " ** "$param" : Existe  "
        }else{
            write-host " ** "$param" : No existe"
        }
    }else{
        write-host "Tienes que poner un argumento que no sea un numero"
    }
}else{
    write-host "No has puesto ningun argumento"
}
