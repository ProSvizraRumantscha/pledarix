#!/bin/python36

# scratched together from following sources:
# https://stackoverflow.com/questions/16283799/how-to-read-a-csv-file-from-a-url-with-python
# https://elasticsearch-py.readthedocs.io/en/master/helpers.html
# https://github.com/elastic/elasticsearch-py/blob/master/example/load.py#L76-L130

import csv
from urllib.request import urlopen
from elasticsearch import Elasticsearch
from elasticsearch.helpers import bulk
import codecs

url = 'https://github.com/ProSvizraRumantscha/pledarix/raw/master/data/pledariJoined.csv'
csvStream = urlopen(url)
csvReader = csv.reader(codecs.iterdecode(csvStream, 'utf-8'), delimiter=';')
linesSeen = 0

def dictionaryFetcher():
    global linesSeen
    # skip first line
    csvReader.__next__()
    for csvLine in csvReader:
        linesSeen += 1
        if linesSeen % 400 == 0:
            print("seen %d lines so far" % linesSeen)
        yield {
            "grischun_display": csvLine[1],
            "grischun_search": csvLine[2],
            "sursilvan_display": csvLine[3],
            "sursilvan_search": csvLine[4],
            "sutsilvan_display": csvLine[5],
            "sutsilvan_search": csvLine[6],
            "surmiran_display": csvLine[7],
            "surmiran_search": csvLine[8],
            "puter_display": csvLine[9],
            "puter_search": csvLine[10],
            "vallader_display": csvLine[11],
            "vallader_search": csvLine[12],
            "german_display": csvLine[13],
            "german_search": csvLine[14],
            "french_display": csvLine[15],
            "french_search": csvLine[16],
            "italian_display": csvLine[17],
            "italian_search": csvLine[18],
            "english_display": csvLine[19],
            "english_search": csvLine[20]
        }

# instantiate es client, connects to localhost:9200 by default
es = Elasticsearch()
success, _ = bulk(es, dictionaryFetcher(), index='pledarix', chunk_size=50, doc_type="_doc")
print('Performed %d inserts' % success)

 # we can now make docs visible for searching
es.indices.refresh(index='pledarix')

# and now we can count the documents
print(es.count(index='pledarix')['count'], 'documents in index')
