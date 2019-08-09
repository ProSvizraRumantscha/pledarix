# Pledarix

Pledarix es disponibel sco [supplement per Firefox](https://addons.mozilla.org/firefox/addon/pledarix/).

Pledarix is now available as a [Firefox Add-On](https://addons.mozilla.org/firefox/addon/pledarix/).

*Project started at the [Forum Helveticum Hackathon](https://hack.opendata.ch/event/22), 23./24.11.2018*

Have a look at the [presentation](https://hack.opendata.ch/project/274/star)!

# Idea

Get a translation tooltip at your mouse pointer everywhere in the net.

The tooltip accesses the database of [pledari.ch](http://pledari.ch), which offers translation between Rumantsch and the four languages German, French, Italian and English. Moreover, pledari.ch also offers translation from one ["idiom"](https://de.wikipedia.org/wiki/Idiom_(B%C3%BCndnerromanisch)) to another.

# Implementation

The tooltip is implemented as browser plugin. 

The plugin, if activated, adds a footer to any website to define the direction of translation. Next, the plugin tracks mouseover for words and directs a query to the database of pledari.ch, which returns exact matches based on the language selection made in the footer. Currently, the exact match is returned as a simple tooltip with a word. 

The backend for the plugin is available on [GitHub](https://github.com/ProSvizraRumantscha/pledari.ch).

# Documentation / data

This repository includes...
* `/data`: the data source as sql exports from the original database at pledari.ch
* `/webExtension`: the browser plugin
* `/backend`: as an alternative to the SQL backend, a dockerized environment based on Elasticsearch (see [README file](backend/README.md) in the backend subfolder) is provided. It makes use of Hunspell dictionaries so as to translate the stems of the words to be translated.
* `/sql_scripts`: Some queries used to manipulate the source data

# Team

The people behind this project/prototype are:

* [cdermont](https://github.com/cdermont)
* Flurin Bundi
* [gion-andri](https://github.com/gion-andri)
* [hitgoeb](https://github.com/hitgoeb)
* Karin Stephan
* [koluidi](https://github.com/koluidi)
* [ocaduff](https://github.com/ocaduff)
* [sammy770](https://github.com/sammy770)
* [sievilombriser](https://github.com/sievilombriser)
* Uolf Candrian

# A project initiated and supported by [Pro Svizra Rumantscha](http://rumantsch.ch)
