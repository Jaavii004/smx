wuauclt.exe /detectnow
wuauclt.exe /updatenow
$pregunta = read-host "Quieres reiniciar?(si o no)"

if ( $pregunta -eq "si" ) {
    Restart-Computer -Force
}