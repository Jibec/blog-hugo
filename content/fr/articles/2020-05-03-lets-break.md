---
title: Faire une pause
date: 2020-05-03
type: post
categories: ['Régionalisation']
tags: ['fedora-fr', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

J’ai décidé de faire une pause dans mon implication vis-à-vis du projet Fedora. Peut-être quelques semaines, le temps d’une release peut-être.

## Travail sur les outils du traducteur

Depuis plusieurs années, j’ai lutté contre l’outil [Zanata](fedora.zanata.org), inapproprié pour une
communauté de traducteur efficiente, et l’a remplacé un quelques mois par une
plateforme de traduction moderne : [Weblate - https://translate.fedoraproject.org](https://translate.fedoraproject.org).

Le [plan de migration](https://fedoraproject.org/wiki/L10N_Move_to_Weblate)
implique de contacter chaque mainteneur de projet, puis de
lui demander d'enregistrer les traductions, puis de me donner le feu vert pour 
configurer Weblate.

De nombreux projets:

* ne stockent pas les traductions dans leur dépôt, de peur de surcharger leur dépôt git
* ne récupèrent les traductions qu'à la création du paquet
* ont des mécanismes étranges nécessitant la présence de signatures
* ont des fichiers po énormes car ne veulent pas découper en plusieurs fichiers po
* ...

C'est long, compliqué et peu valorisant.
Chacun voit son besoin propre et peu s'adaptent vraiment.
Mais malgré tout, en résolvant un problème à la fois, la migration se passe bien.
Les traducteurs sont satisfaits et la plateforme est adoptée sans réserve.

Mais il n'est toujours pas possible de publier l'activité des traducteurs sur le [fedmsg](https://fedmsg.readthedocs.io/en/stable/),
lieu unique de mesure de l'activité de notre communauté, et moyen de mesure pour
récompenser les utilisateurs sous forme de [badge](https://badges.fedoraproject.org).

Le développeur de Weblate a fait le nécessaire [en une semaine](https://pagure.io/fedora-infrastructure/issue/8291)
pour que Weblate puisse publier sur notre infrastructure, mais l'interconnexion
n'est toujours pas possible.

Il semble que ce soit lié au fait que Weblate n'est pas dans l'infrastructure de Fedora,
et ce scénario n'avait pas été envisagé. Compréhensible, mais comme tout
problème sur lequel on ne peut rien faire : frustrant.

Mécaniquement, on ne sait pas comment bien exploiter les données pour créer des
badges. Cela bloque la progression de l'objectif : mesurer la santé de notre
communauté de traducteurs et valoriser les contributeurs et leur donnant des badges.

## Travail sur le contenu donné aux utilisateurs

Je lutte depuis plusieurs années pour une meilleure diffusion de l'information
auprès des utilisateurs non anglophones.

C'était au début en traduisant les documentations utilisant l'ancien format DocBook, avec José, nous avions documenté
le processus pour [générer des DocBook régionalisés](https://fedoraproject.org/wiki/L10N/how_to_build_a_translated_book_from_translated_files_on_Zanata).
Mais notre travail, des dizaines d'heures de traduction, de relecture, de discussion
et de documentation n'a jamais été publié. Car personne ne savait le publier.

Brian Exelbierd a migré les outils vers asciidoc puis nous avons fait un POC en 2017
pour la prise en charge lingustique. Cette démonstration lors du Flock fut un succès.
Malheureusement l'outil de documentation a encore changé pour adopter Antora. Brian
faisait autre chose, personne ne connaissait vraiment le fonctionnement de l'outil.

Le POC a redémarré fin 2018, mais cela piétinnait, donc nous avons fait quelques journées
dédiées avec Adam, seul expert de notre système de documentation. Nous sommes 
maintenant en avril 2019. Depuis, notre expérimentation a été affinée, ajustée, optimisée.
Mais toujours pas de mise en production, et chacune de mes demandes prenait plusieurs mois
avant d'avoir une réponse. Je me retrouve en face d'une difficulté majeure : je sais
tester et vérifier mon système, il est prêt mais personne ne peut l'automatiser.

En Février 2020, lors du FOSDEM, j'en parle à Misc qui me propose gentillement son aide.
Nous arrivons rapidement à avoir un [mécanisme qui fonctionne](https://pagure.io/fedora-docs/translations-scripts/)
, lancé chaque jour.
Il s'agit de cloner 71 dépôts de documentation, de convertir leur contenu en fichiers pot
puis de récupérer les traductions pour voir un contenu traduit au format asciidoc.

Ça représente [presque 2000 pages de contenu](https://pagure.io/fedora-docs/translated-sources/),
traduites dans [plusieurs dizaines de langues](https://pagure.io/fedora-docs/translated-sources/commits/master).
Les traducteurs contribuent sur [Weblate](https://translate.fedoraproject.org/projects/),
c'est perfectible, mais ça fonctionne bien.

Sauf que le travail des traducteurs ne va que sur https://docs.stg.fedoraproject.org 
et pas sur https://docs.fedoraproject.org ... Donc les utilisateurs ne le voient pas.

Pour quelle raison ? Les scripts de [publication sont prêts](https://pagure.io/fedora-docs/docs-fp-o/blob/stg/f/build-scripts),
mais la seule et unique personne est indisponible depuis des mois... En mettant son chef en copie,
finalement on a un signe de vie, mais il temporise et nous rattons la release.

Son script, il m'est possible de le lire mais pas de le lancer sur mon poste de travail.
La raison ? Une absence de documentation, un fichier Docker non fonctionnel,
une consommation de ressources scandaleuse (mon pc de confinement est
un modeste X201 qui fête ses dix ans cette année)...

Cela bloque la progression de l'objectif de fournir aux utilisateurs un contenu
dans leur langue.

## Une communauté trop anglophone

Étrangement, le projet Fedora nous parle de diversité, mais on ne s'étonne pas
de n'avoir que des personnes dont l'anglais est la langue maternelle en tant 
que direction du projet : Project Leader, Program Manager et Community Manager.

Notre page d'accueil est uniquement en anglais : https://start.fedoraproject.org
Notre blog communautaire est uniquement en anglais : https://communityblog.fedoraproject.org
Notre magazine est uniquement en anglais : https://fedoramagazine.org

Nos utilisateurs sont-ils uniquement anglophones ? J'en doute.
Mais les nouvelles statistiques ne nous l'apprendront pas. Aucune information
de locale n'est rappatriée.

Et il semble que depuis plusieurs année, nous n'essayons plus de collecter
des statistiques de fréquentation (avec ou sans la locale de l'utilisateur)...
Il existe pourtant des tas d'outils permettant de collecter cette information de
façon plus ou moins intrusive.

Cela bloque la possibilité de mesurer un besoin d'internationalisation et un usage
de ces contenus traduits.

## La solitude

Le logiciel libre est un lieu de débrouille, en tant que contributeur vous devez
vous débrouiller pour apprendre à utiliser les outils, à savoir expliquer un bug,
apprendre à te retrouver entre upstream, downstream (et leurs faux amis), savoir 
demander de l'aide de façon claire et contructive.

Il faut s'y comporter correctement, encourager et remercier. Pratiquer la critique
constructive. Les freins potentiels sont nombreux et découragent. Ces freins sont
des murs à la contribution.

Un mur peut être créé par des personnes non sensible à votre cause.
Un mur peut être créé par des outils trop complexes.
Un mur peut être créé par des restrictions d'accès sur les systèmes.
Un mur peut être créé par des compétences que vous n'avez pas.

Cela rend certaines personnes trop importantes, vous rendant malgré-eux tributaire
de leur disponibilité (et donc de leur bon vouloir).

Le logiciel libre est génial, au contraire d'une entreprise ou de la société,
aucun de ces murs n'est incassable.
La connaissance et la collaboration vous permet de casser chacun de ces murs.

Mais quand vous êtes tout seul, chaque mur à passer décuple la consommation de
votre énergie. Quand vous avez passé trois heures à casser l'un d'entre eux,
ça veut dire que vous avez passé trois heures à vous détourner de votre objectif immédiat.

Au bout d'un moment, vous avez la tête dure, vous savez avancer mais à quel prix ?
Vous avez mal à la tête et vous avez plus de douleur que de satisfaction. 

La satisfaction s'obtient par des projets qui atteignent leur but.
Par des petits coup de main qui montrent que ce qu'on fait est utile.
Par des réponses aux questions et la présence à des points de synchronisation.
Par des petits cadeaux d'encouragement (chez Fedora ce sont des cookies).

J'ai reçu divers encouragements, de l'aide de Misc, mais malheureusement je
n'arrive pas à faire aboutir mes projets. Mes questions et réunions semblent
tomber dans le néant, sans que je n'arrive à infléchir la barre.

J'ai vu et je vois régulièrement divers contributeurs se décourager pour des raisons
qui me semblent proches.

Toute personne motivée devrait être encouragée, supportée et accompagnée.
Mais finalement, dans l'énorme mécanique mondiale qu'est le logiciel libre, se
faire mal est assez facile.

Peut-être simplement que mes objectifs sont trop larges et qu'ils devraient être
portés globalement par la communauté ?

Peut-être que cette pause apportera la réponse.
