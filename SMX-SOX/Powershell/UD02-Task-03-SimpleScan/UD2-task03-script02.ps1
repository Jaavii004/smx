# Segundo en powershell

$encontrado = "False";
$version = "False";
$msiSciteinstaller = "C:\Users\javier\Downloads\scite-5.3.1x86.msi";

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
    if ( $version -eq "False" ) {
        Write-Host -BackgroundColor Red ( " ** La version es inferior a 5 ** " );
        white-host -BackgroundColor Blue ( " ** Vamos a instalar ** " );
        msiexec -i $msiSciteinstaller;
        Get-WmiObject -Class win32_product | ForEach-Object {
            if ( $_.Name -eq "SciTE Text Editor" ) {
                if ( $_.Version -lt 5 ) {
                    white-host -BackgroundColor ( " ** Pulsa remove para desistalar ** " );
                    msiexec -i $msiSciteinstaller;
                }
            }
        }
    }else{
        Write-Host -BackgroundColor Green (" ** La versión es 5 o superior ** ");
    }
}