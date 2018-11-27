<?php
include "config.php";
include "SqlTooltipQueryGenerator.php";

$pled = @$_GET['pled'];
$search = @$_GET['search'];
$display = @$_GET['display'];
$modus = @$_GET['modus'];
header('Content-type: application/json');

$SQLString = SqlTooltipQueryGenerator::getQuery($search, $display);
if (!is_null($SQLString) && trim($str) !== $pled) {
	$colligiaziun = mysqli_connect("localhost", $mysql_user, $mysql_pass, $mysql_db);

	$stmt = $colligiaziun->prepare($SQLString);
	$stmt->bind_param('s', $pled);
	$stmt->execute();

	$res = $stmt->get_result();

	$field = $res->fetch_assoc();

	print json_encode($field);
	$stmt->close();
	$colligiaziun->close();
} else {
	print json_encode('unable to query');
}

?>
