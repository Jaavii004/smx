
$a = 'h', 'angel', 'casa', 'informacion', 'mascara', 'mac'
$explicacion = 'h', 'crear un directorio en /users llamado Angel', 'Te lleva a la carpeta de Downloads', 'Te dira tu direccion IP', 'Nos dira la mascara que tenemos', 'Te dire la mac que tiene tu dispositivo'

$max = $args[0]

if ( $max -ge 1 -and $max -le 5 ) {
    Write-Host
    for (($i = 1); $i -le $max; $i++){
        Write-Host " ** La variable de entorno:"$a[$i]" -- Al ejecutar hara: "$explicacion[$i]
        Write-Host
    }
}else{
    Write-Host "No has puesto un numero correecto tiene que estar entre 1 y 5."
}
