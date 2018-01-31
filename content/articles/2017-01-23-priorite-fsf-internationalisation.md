---
title: 'L’internationalisation : une priorité de la FSF'
date: '2017-01-23'
type: 'post'
categories: ['Régionalisation']
tags: ['fedora-fr', 'traduction', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

Comme le pointe [Jehan sur Linuxfr](http://linuxfr.org/users/jehan/journaux/flash-est-en-phase-terminale), la FSF a [revu sa liste des priorités](http://www.fsf.org/news/fsf-announces-a-major-overhaul-of-free-software-high-priority-projects-list) et l’internationalisation en fait désormais partie !

### Pourquoi est-ce important ?

Comme l’indique la page de ce [projet prioritaire – internationalisation](https://www.fsf.org/campaigns/priority-projects/internationalization), quand nous régionalisons un logiciel, nous le rendons plus accessible et étendons les cas d’utilisation possibles dans le monde. Au contraire d’un logiciel non libre qui doit rentabiliser le coût de chaque traduction par des clients en faisant effectivement usage, l’ajout d’une langue est un coût négligable voire nul pour le projet.

D’ailleurs, on remarque que dans la liste des logiciels libres éditée par le gouvernement français, le fait que le logiciel est complètement traduit est mis en avant.

### Le coût de l’internationalisation

Prendre en compte la charge de travail dans la conception du logiciel est fondammental pour un projet libre. Cela va demander de maintenir du code spécifique, des chaînes de compilation et des étapes supplémentaires dans la publication de chaque version.

La première étape est de choisir dès le début des technologies qui le permettent, et des formats compatibles. Si pour les logiciels s’installant sur le poste de travail c’est souvent parfaitement standardisé, mais gare aux outils web ! Faire de l’internationalisation de sites n’est pas disponible avec tous les cadriciels et devoir changer d’outils de développement est très coûteux !

Pensez également à :

* favoriser des formats standards tel le «.po » de gettext [que je trouve plutôt bon](https://jibecfed.fedorapeople.org/blog/les-fichiers-po-cest-pas-si-mal.html) !
* choisir une plateforme, pour la majorité des besoins, [Weblate](http://weblate.org) est un bon choix !

### Et pourquoi pas globalisation ?

Dans le projet Fedora, l’internationalisation et la régionalisation sont en cours de regroupement sous le terme générique de « globalisation ». À moins qu’il s’agisse d’un faux ami de traduction, globaliser c’est une simplification, une harmonisation vers le bas dans laquelle je ne m’inscris pas.

Je parlerais plutôt d’une pluralisation, d’une déclinaison des logiciels vers divers langues, cultures et écritures. Qui me semble plus proche de la réalité.
