#!/bin/bash

### In this script, I want to set up the running elasticsearch instance with the dictionary data.
### This involves the following steps:

### 1. install hunspell dictionaries
mkdir -p /usr/share/elasticsearch/config/hunspell/rm_sursilv
curl -L https://github.com/korero/korero-spell/raw/master/rules/rm_sursilv.aff > /usr/share/elasticsearch/config/hunspell/rm_sursilv/rm_sursilv.aff
curl -L https://github.com/korero/korero-spell/raw/master/rules/rm_sursilv.dic > /usr/share/elasticsearch/config/hunspell/rm_sursilv/rm_sursilv.dic
chown elasticsearch:elasticsearch /usr/share/elasticsearch/config/hunspell/rm_sursilv/rm_sursilv.aff
chown elasticsearch:elasticsearch /usr/share/elasticsearch/config/hunspell/rm_sursilv/rm_sursilv.dic
mkdir -p /usr/share/elasticsearch/config/hunspell/de_CH
curl -L https://github.com/wooorm/dictionaries/raw/master/dictionaries/de-CH/index.aff > /usr/share/elasticsearch/config/hunspell/de_CH/de_CH.aff
curl -L https://github.com/wooorm/dictionaries/raw/master/dictionaries/de-CH/index.dic > /usr/share/elasticsearch/config/hunspell/de_CH/de_CH.dic
chown elasticsearch:elasticsearch /usr/share/elasticsearch/config/hunspell/de_CH/de_CH.aff
chown elasticsearch:elasticsearch /usr/share/elasticsearch/config/hunspell/de_CH/de_CH.dic

### 2. set up the index
curl -X DELETE "localhost:9200/pledarix" > /dev/null

curl -X PUT "localhost:9200/pledarix?pretty" -H 'Content-Type: application/json' -d'
{
    "settings": {
        "analysis" : {
            "filter" : {
                "sursilvan" : {
                    "type" : "hunspell",
                    "locale" : "rm_sursilv",
                    "dedup" : true
                },
                "german" : {
                    "type" : "hunspell",
                    "locale" : "de_CH",
                    "dedup" : true
                }
            },
            "analyzer" : {
                "sursilvan" : {
                    "tokenizer" : "standard",
                    "filter" : [ "lowercase", "sursilvan" ]
                },
                "german" : {
                    "tokenizer" : "standard",
                    "filter" : [ "lowercase", "german" ]
                }
            }
        }
    }
}
'

curl -X PUT "localhost:9200/pledarix/_mapping/_doc?pretty" -H 'Content-Type: application/json' -d'
{
    "properties": {
        "sursilvan_search": {
            "type":     "text",
            "analyzer": "sursilvan"
        },
        "german_search": {
            "type":     "text",
            "analyzer": "german"
        }
    }
}
'

### 3. bulk load the data
init/loadPledarix.py
