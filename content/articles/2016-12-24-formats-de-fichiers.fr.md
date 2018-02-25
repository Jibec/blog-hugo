---
title: 'Les fichiers po c’est pas si mal !'
date: '2016-12-24'
type: 'post'
categories: ['Régionalisation']
tags: ['fedora-fr', 'traduction', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

Selon ma petite expérience de traducteur, les fichiers po, c’est souvent le moins mauvais format, et pourquoi donc ?

### L’ordinateur vs les applications en ligne

Les applications qui s’installent sur le poste de travail utilisent déjà quasiment toutes les fichiers po via gettext et les fichiers ts (monde de Qt). Et presque personne ne vient critiquer fortement ce format. C’est souvent le choix naturel, sauf pour les amis de Mozilla qui ont inventé mieux que tout le monde avec un fichier L20N. Malheureusement je n’ai pas eu l’occasion de comprendre les tenants et aboutissants ni ce que celui-ci apportait.

Là où ça semble plus compliqué, c’est pour les applications web, peut-être du fait que l’arborescence du disque est probablement moins contraignante, ou peut-être est-ce lié à une évolution plus rapide des techniques ? Dans tous les cas, la façon d’internationaliser une application en ligne est vraiment différente, on trouve un peu de tout, et ma petite expérience ne m’a pas permis de trouver une tendance évidente autre qu’une faible présence de gettext.

Le cas des applications mobile est plus simple, Android a son format, je suppose que pour iOS et Windows phone la situation est quasiment la même.

### Les formats que j’ai pu voir sur les applications en ligne

Très souvent, ce sont des fichiers mono-langues, c’est-à-dire qui utilisent un mécanisme de clef-valeur. On indique la clef dans l’interface, puis une bibliothèque JavaScript ira chercher la valeur correspondante dans la langue de l’utilisateur, puis par défaut l’anglais.

On peut voir notamment des fichiers :

* JSON, le JavaScript aimerait bien ce format, c’est la mode,
* YAML, souvent vu dans des fichiers de configurations, plus léger à lire
* XML… pas d’explications ;)
* etc.

Parfois des fichiers multi-langues, c’est-à-dire qui incluent dans chaque fichier de traduction la chaîne source et la chaîne cible. On indique simplement dans l’interface que la phrase doit être traduisible, et celle-ci sera remplacée à la génération du site ou à la volée par sa traduction.

À part les fichiers gettext (po), et rarement un fichier XML, je ne connais pas d’emploi.

Pour avoir plus d’information sur la tête de ces fichiers, on peut utiliser la [documentation de Weblate](https://docs.weblate.org/en/latest/formats.html#formats) pour voir quelques exemples ou celle du [translate-toolkit](https://docs.translatehouse.org/projects/translate-toolkit/en/latest/formats/index.html) sur laquelle cet outil s’appuie.

### Quelle différence pour le traducteur ?

Pour le traducteur, le fichier po :

* comporte et la phrase source anglaise et sa traduction :
    * Les autres formats imposent d’avoir les de faire des comparaisons entre deux fichiers, ce qui est peu pratique.
* indique où se trouve la phrase originelle :
    * L’absence de cette information impose de faire des recherches, si tenté qu’on sache le faire.
* laisse le contenu original inchangé :
    * La lecture du contexte est plus simple

Enfin, il existe divers outils permettant de modifier des fichiers po sur sa machine (je connais Poedit et Lokalize), pour lancer des règles qualité (Dennis, Pology, Translate-toolkit, etc.).

Amis développeurs, prenez dès le début le format de fichier le plus standard, cela facilite la vie de tout le monde. Non les fichiers po ne sont pas parfait, mais ils possèdent des qualités indéniables.

Il parait que les Moziliens ont créé encore mieux, ça s’appelle L20N, mais je n’ai pas encore compris ce que ça apportait, ne l’ayant jamais vu utilisé…
