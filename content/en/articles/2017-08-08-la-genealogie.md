---
title: 'La généalogie avec Linux'
date: '2017-08-08'
type: 'post'
categories: ['Régionalisation']
tags: ['fedora-fr', 'traduction', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

Ayant des difficultés à comprendre qui-est-qui dans les arbres familiaux, un
dessin m’est souvent bien utile. Voici la solution que j’ai trouvée pour
avoir un arbre généalogique avec des logiciels libres.

Ayant ma belle-famille en Europe de l’Est, s’ajoute à ma difficulté de
compréhension des relations familiales, les termes utilisés et les surnoms
qui sont légions. Étant également un contributeur OpenStreetMap, j’aime
positionner sur une carte les branches familiales.

En interrogeant Logiciels (_Gnome-Software_), je trouve le logiciel
[Gramps](http://gramps-project.org). Comme il semble développé depuis 2004,
évoluer régulièrement depuis et être une réécriture d’un logiciel plus
ancien encore. En plus, il est traduit en français, tous les bons signes.

# Le logiciel Gramps

Ma recommandation est de partir d’un _individu_, de renseigner son genre et
son type (Alias, inconnu, nom de naissance, nom marital).

Ensuite, dans cette même fenêtre, on ajoutera un évènement pour sa
naissance, éventuellement pour sa mort. On notera qu’un mariage est un
évènement familial, et donc que cela n’est pas renseigné sur l’individu mais
la _famille_.

On ira ensuite sur ce que je considère à ce stade comme l’onglet magique :
*Relations*. On y ajoutera les parents avec le bouton du menu supérieur «
Ajouter un couple de parents ». On pourra ajouter des frères et sœurs
éventuels. Et cetera.

Cet onglet permet très facilement de naviguer d’un membre à l’autre de
l’arbre généalogique, c’est l’onglet pour moi le plus pratique.

## Les évènements

Il semble que de très nombreux éléments sont considérés comme des évènements
pour Gramps. On y trouvera en plus du triptyque classique
naissance-mariage-décès, les étapes religieuses (baptême, première
communion, confirmation, bar-mitzvah, etc.) mais aussi ce qui touche à la
vocation (profession, retraite, élection…), au voyage (émigration,
immigration, naturalisation), au domaine académique (niveau d’instruction,
diplôme ou certificat, remise de diplôme), etc. La liste est assez complète
!

À l’image des individus ou des familles, chaque évènement peut contenir tout
un ensemble d’informations, des citations, des attributs libres, des notes
et une galerie de médias.

Vous pouvez donc avoir une photo liée à une _famille_ et lier à l’évènement
_mariage_ une photo de mariage.

## Que faire ensuite ?

La page principale indique tous les manques dans les données. En ayant passé
seulement quelques heures, la page d’accueil m’indique 37 individus
comprenant 9 noms de famille différents et le bloc « Et maintenant ? » me
liste les dates de naissances manquantes, les lieux de naissance, les dates
de mariage, etc. Le tri semble être fait par branche puis par ascendance
croissante. Rendant la résolution plus facile. C’est évidemment infini,
chacun déterminera jusqu’où il souhaitera aller.

## Les lieux

Il est possible de définir des lieux liés à des évènements ou des personnes,
cependant l’interface est très pauvre de ce côté... J’y reviendrai peut-être
un jour si je trouve comment en tirer parti efficacement.

## Les exports

Les possibilités sont nombreuses et à ce stade, vu le caractère superficiel
des données en ma possession, je n’ai pas encore fortement creusé cet
aspect. Les quelques essais d’exports textuels, pdf, postscript et html, me
semblent donner des résultats pertinents. Mais malheureusement la traduction
n’existe pas pour ce pays dont l’export sera en français ou en anglais.

# Sources de données

## L’histoire locale

Il ne semble pas y avoir de centralisation de l’état civil dans ce pays, la
recherche d’information semblera passer par les églises
orthodoxes. Cependant, le premier pope interrogé m’a déjà prévenu que chez
lui : avant 1970, aucune archive et pas de centralisation des registres du
passé !?! J’espère que tout ceci sera plus simple qu’il n’y parait et que
ces hypothèses sont fausses.

Je suppose qu’il doit rester des archives liées au communisme, mais que
celles-ci n’ont pas forcément été conservées avec beaucoup d’entrain… Bref…
Il va falloir creuser, et ça prendra du temps !

## Les bases en ligne

Si jamais vous lanciez vos propres recherches, Wikipédia nous donne [une
liste de base de données liées à la
généalogie](https://en.wikipedia.org/wiki/List_of_genealogy_databases), il
faudra que je creuse.

# Où contribuer à la traduction ?

La traduction du logiciel en lui-même utilise le mécanisme bien éprouvé
Gettext [voici
l’aide](http://www.gramps-project.org/wiki/index.php?title=Translating_Gramps),
en deux mots, il faudra envoyer le fichier sur Github.

Pour l’aide en ligne, il s’agit d’un mécanisme non-assisté via des modèles
dans le wiki, pour lequel une aide est [également
disponible](http://www.gramps-project.org/wiki/index.php?title=Translating_the_Gramps_User_manual).
