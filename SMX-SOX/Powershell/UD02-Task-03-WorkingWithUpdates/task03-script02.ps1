#javier puertas 
$per = $args[0]
if ( $per -eq $value ){

}else{
    wmic qfe | Select-String "$per" |  Select-String "Update" 
}