
$param = [string]$args[0]
$cantidadArgs = $args.count

if ( $cantidadArgs -eq 1 ){
    if ( $param -inotmatch "[0-9]" ){
        $exist = (Test-Path $param)
        if ( $exist ){
            Write-Host " ** "$param" : existe el archivo "
            (Get-Acl -Path $param).Access
        }else{
            write-host " ** "$param" : No existe el archivo "
        }
    }else{
        write-host "Tienes que poner un argumento que no sea un numero"
    }
}else{
    write-host "No has puesto ningun argumento"
}

 
