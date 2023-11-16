$argumento = ($Args[0]);
$fecha = (Get-Date);
$NumActualizaciones = (wmic qfe | where {$_-match "Update" }).count;

if ( $argumento ){
    if ( $argumento -inotmatch "^[a-z]$" ) {
        if ( $argumento -gt 2 -and $argumento -le 100 ){
            write-host ( "ES UN NUMERO COMPRENDIDO ENTRE EL 3 Y EL 100" );
            if ( $NumActualizaciones -eq $argumento ){
                Write-Host ( "El numero de actualizaciones es $NumActualizaciones igual que el numero introducido $argumento" );
            }
            if ( $NumActualizaciones -gt $argumento ){
                Write-Host ( "El numero de actualizaciones es $NumActualizaciones mayor que el numero introducido $argumento" );
            }
            if ( $NumActualizaciones -lt $argumento ){
                Write-Host ( "El numero de actualizaciones es $NumActualizaciones menor que el numero introducido $argumento" );
            }
        }else{
            Write-Host -BackgroundColor Red ( "El numero debe estar comprendido entre el 3 y 100" ) 
        }
    }else{
        Write-Host -BackgroundColor Red ( "Debes de introducir un NUMERO" );
    }
}else{
    Write-Host -BackgroundColor Red ( "Debes introducir un argumento" );

}
Write-Host ( "La fecha actual es: $fecha" );