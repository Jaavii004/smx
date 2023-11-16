$maldicion = 0
$TotalCachorros = 0
$mal = 0
for (($i = 1); $i -le 365; $i++){
    $NumCachorros = Get-Random -Minimum 1 -Maximum 9
    $tres = $NumCachorros % 3 -eq 0
    $LunaLlena = $i % 28 -eq 0
    $TotalCachorros = ($TotalCachorros + $NumCachorros)
   
    if ( $i -eq 1 ){
        Write-Host -BackgroundColor Green "SALVADOS POR LA CABRA,SALVADOS POR SHUB-NIGGURATH"
    }else{
        if ( $tres ) {
            Write-Host ( " - La negra cabra: $NumCachorros" )
            $maldicion = ($maldicion + 1)
        }
    }
    if ( $LunaLlena ){
        Write-Host -BackgroundColor Green "SALVADOS POR LA CABRA,SALVADOS POR SHUB-NIGGURATH"
    }else{
        if ( $tres ) {
            Write-Host ( " - La negra cabra: $NumCachorros" )
            $maldicion = ($maldicion + 1)
        }
    }
}
Write-Host
Write-Host ( " - Numero de veces que a ocurrido la maldicion: $maldicion" )
Write-Host ( " - Numero total de cachorros que nacen: $TotalCachorros" )