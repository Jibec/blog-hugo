---
title: Relecture de la traduction de Funkwhale
date: 2019-02-15
type: post
categories: ['Régionalisation']
tags: ['fedora-fr', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

Il y a maintenant un an, j’expliquais qu’[une traduction à 100 % ne signifie pas un travail parfait]({{< ref "2016-12-13-Weblate-100pour100.md" >}}).

# Ce qui a attiré mon attention : « Mélanger votre queue »

Dans ce type de logiciel contenant votre musique, vous avez un ensemble de regroupements, des permanents (ex : albums), des semi-permanents (ex : bibliothèques) et des temporaires (ex : une file d’attente).

Dans un regroupement temporaire, typiquement la liste de lecture, on peut souhaiter mélanger les titres.

Sauf que, voici ce que j’ai trouvé :

> Shuffle queue =» Mélanger votre file d’attente

> Shuffle your queue =» Mélanger votre queue

# Mon mode opératoire

Trouver le lieu de traduction : https://translate.funkwhale.audio/

Aller sur le projet qui nous intéresse : https://translate.funkwhale.audio/projects/funkwhale/front/fr/

Télécharger au format CSV : https://translate.funkwhale.audio/download/funkwhale/front/fr/?format=csv

Le CSV, couplé avec LibreOffice fait parfaitement l’affaire pour les recherches de cohérence.

On filtre sur les messages d’origines ou les messages traduits en quelques clics, et on a la traduction orthographique de [Grammalecte](https://grammalecte.net).
Simple et efficace pour de la relecture.

# Quelques points d’attention

Bon, Funkwhale, c’est un outil de gestion de bibliothèque musicale, commençons par chercher les mots clefs importants.

J’identifie donc :

* Queue : la file d’attente
* Playlist : à priori « la liste de lecture », mais Elio et Troll souhaitent conserver Playlist.
* Play : lire
* Libraries : bibliothèques
* Follow : suivre ?
* Funkwhale : Funkwhale, c’est un nom propre, ça prend une majuscule

À la demande de l’auteur, il faut penser à rendre inclusif :

* User
* Artist

Puis surveiller les classiques :

* Email : courriel (on avait majoritairement le mot email)
* Download : téléchargé (pas d’occurrence)
* Upload : téléversé (27 valeurs, on avait le mot « uploadés »)
* Login, logout, password

Et prendre en compte les points chiants :

* points de suspension
* apostrophes typographiques
* ponctuation

# Le bénéfice caché

En parcourant ces quelques points, on est forcé de relire tout ou partie de la traduction.

On trouve souvent des traductions étranges, voici un exemple :

> Source : Removes uploaded tracks that could not be processed by the server completely, adding the corresponding data to your quota.

> Traduction : Les pistes téléversées mais pas encore complètement traitées pas le serveur seront supprimées. L’espace de stockage correspondant vous sera restitué.

Puis on regarde ce que dirait Deepl :

> Supprime les pistes téléchargées qui n’ont pas pu être entièrement traitées par le serveur, en ajoutant les données correspondantes à votre quota.

OK, donc Deepl confirme que je ne suis pas fou, mais ça m’évoque également une erreur dans la phrase anglaise, confirmée par Eliot via Mastodon.

# Conclusion

Une traduction mérite systématiquement une relecture et une discussion avec d’autres contributeurs pour trouver des consensus. Un glossaire peut aider ce travail, mais ne fera pas de miracles.

# Un mois après

J’ai débuté cet article il y a un mois, puis l’ai laissé tombé faute de temps.

Maintenant je vois que plusieurs dizaines de modifications ont été faites, et que certains mots qu’on avait choisi de ne pas traduire ont été traduits (ici « playlist ») et que des traductions ont été fortement changés.

Une plateforme de traduction simplifie la contribution, notamment la première contribution et le suivi, mais cela ne doit pas occulter qu’il faut créer une communauté de traducteur qui échangent ensemble.
