# primero en powershell

$encontrado = "False";
$version = "False";

Get-WmiObject -Class win32_product | ForEach-Object {
    if ( $_.Name -eq "SciTE Text Editor") {
         $encontrado = "True";
        if ( $_.Version -ge 5) {
            $version = "True";
        }
    }
}

if ( $encontrado -eq "False"){
    Write-Host -BackgroundColor Red ( " ** No esta instalado ** " );
}else{
    Write-Host ( " ** Esta instalado ** " );

    if ( $version -eq "False"){
        Write-Host -BackgroundColor Red ( " ** La version es inferior a 5 ** " );
    }else{
        Write-Host -BackgroundColor Green (" ** La versión es 5 o superior ** ");
    }
}
