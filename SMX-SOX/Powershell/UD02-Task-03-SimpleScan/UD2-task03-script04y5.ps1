$comprobacion = (Get-ItemProperty HKCU:\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\http\UserChoice -Name ProgId).ProgId

$b = 0
$a = 'ChromeHTML', 'MSEdgeHTM', 'FirefoxHTML-308046B0AF4A39C'

Write-Output $a | ForEach-Object {
    $hola = Write-Output $a[$b]
    if ( $hola -eq "ChromeHTML" ) {
        $navegador = " ** Google Chrome is not the default **"
        $pre = "Google Chrome"
    }
    if  ( $hola -eq "MSEdgeHTM" ) {
        $navegador = " ** Microsoft Edge is not the default ** "
        $pre = "Microsoft Edge"
    }
    if ( $hola -eq "FirefoxHTML-308046B0AF4A39C" ) {
        $navegador = " ** Mozilla Firefox is not the default **"
        $pre = "Mozilla Firefox"
    }
    $hola = Write-Output $a[$b]
    $b += 1
    if ( $hola -eq $comprobacion ) {
        Write-Host -BackgroundColor Green ( "  **  $pre is a default ** " )
    }else{
        Write-host -BackgroundColor red ( " $navegador " )
    }
}