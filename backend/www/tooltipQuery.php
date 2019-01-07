<?php

require 'vendor/autoload.php';
use Elasticsearch\ClientBuilder;
$client = ClientBuilder::create()
                    ->setHosts(['elastic'])
                    ->build();

$pled = trim(@$_GET['pled']);
$search = @$_GET['search'].'_search';
$display = @$_GET['display'].'_display';
header('Content-type: application/json');

if (!is_null($pled)) {
	$searchQuery = [
		'index' => 'pledarix',
		'type' => '_doc',
		'body' => [
			'_source' => $display,
			'query' => [
				'bool' => [
					'must' => [
						[ 'match' => [ $search => $pled ] ],
						[ 'wildcard' => [ $display => '*' ] ]
					]
				]
			]
		]
	];
	$searchResult = $client->search($searchQuery);
	$result = ['translation' => $searchResult['hits']['hits'][0]['_source'][$display]];
	print json_encode($result);
} else {
	print json_encode('unable to query');
}

?>
