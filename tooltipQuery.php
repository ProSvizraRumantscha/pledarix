<?php
include "config.php";
include "SqlQueryGenerator.php";

$pled = @$_GET['pled'];
$direcziun = @$_GET['direcziun'];
$modus = @$_GET['modus'];

$colligiaziun = mysqli_connect("localhost", $mysql_user, $mysql_pass, $mysql_db);
$SQLString = SqlQueryGenerator::generateDeQuery($pled, $direcziun, $modus);

$Ergebnis = mysqli_query($colligiaziun, $SQLString);

$field = $Ergebnis->fetch_array();

if (is_null($field)) {
	$modus = "entschatta";
	$SQLString = SqlQueryGenerator::generateDeQuery($pled, $direcziun, $modus);
	$Ergebnis = mysqli_query($colligiaziun, $SQLString);	
	$field = $Ergebnis->fetch_array();
}

print json_encode($field); 

?>