#tercero en powershell

$encontrado = "False";
$version = "False";
$msiSciteinstaller = "C:\Users\javier\Downloads\scite-5.3.1x86.msi";

$Version2 = Read-Host " ¿Cual es la version de SciTE que tienes instalada? ";

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
    if ( $Version2 -ge 5 ) {
        white-host -BackgroundColor Green ( "Vamos a reinstalar SciTE" )
        msiexec -i $msiSciteinstaller;
    }

}

