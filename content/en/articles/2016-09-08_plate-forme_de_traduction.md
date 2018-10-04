---
title: 'Qu’est ce qu’une bonne plateforme de traduction ?'
date: '2016-09-08'
type: 'post'
categories: ['Régionalisation']
tags: ['fedora-fr', 'traduction', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

Je considère que les outils de traduction ont trois grands domaines de
fonctionnalités, les capacités d’interactions techniques, les capacités de
support au travail d’équipe, les capacités d’aide à la traduction.

La technique comprend :

* les formats de fichiers supportés
* la synchronisation avec le dépôt source
* l’outillage d’aide à l’automatisation
* les possibilités d’interfaçage

Le support au travail d’équipe, qu’on pourrait aussi appeler « animation de
la communauté » comprend :

* Le suivi les modifications (par un traducteur, sur un projet…)
* Le suivi les mises à jour poussées par les projets
* L’affichage de l’état des lieux
* La capacité de positionner ou non des étapes de relecture et validation
* L’aide à la discussion entre traducteurs (d’une même équipe et
  inter-langues)
* L’aide à la discussion avec le mainteneur du projet
* La possibilité de communiquer globalement sur la plateforme (actualités,
  etc.)

L’aide à la traduction comprend :

* Une interface claire et ergonomique
* Un nombre d’étapes limité pour trouver son projet et commencer à travailler
* Une capacité simple de lecture du flux entre la traduction et la diffusion
* L’accès à une mémoire de traduction
* L’enrichissement d’un glossaire

Quand on regarde ces quelques points, il n’y a finalement pas de grandes
différences avec une plateforme de gestion de code source sur les deux
premiers périmètres. Je soupçonne même que le dernier point est en grande
partie tout à fait valide pour du code source. Cependant la donnée manipulée
est assez différente et les utilisateurs sont souvent bien moins pointus en
technique que les développeurs tout en étant bien plus nombreux.

Regardons maintenant ceux qui pour moi sont les meilleurs, la plateforme
GNOME :

* Leur site contient tant l’organisation des équipes que la plateforme de
  traduction. On voit qui est responsable et les rôles dans l’équipe. Tout est
  concentré en quelques écrans.
* On trouve facilement sur quoi travailler, mais on se rend rapidement compte
  qu’il va falloir utiliser des fichiers qu’on télécharge sur son poste, puis
  qu’on renvoie une fois modifié. C’est pas très sexy, mais la logique est
  facile à comprendre.
* On renvoie le fichier, ça transmet potentiellement une alerte sur la liste
  de discussion. Les étapes suivantes sont connues et on peut échanger sur la
  traduction facilement à l’échelle de l’ensemble (mais pas commenter une
  phrase).

Cela paraîtra étonnant, mais c’est la meilleure plateforme de traduction
avec 297 langues et un pourcentage d’avancement clair, tant sur les phrases
fondamentales que les menus avancés et la documentation. Couplé à un
calendrier de diffusion prédictible de Gnome, tout est là pour bien
fonctionner. C’est qu’ils ont mis l’accent sur un outil qui favorise le
travail communautaire.

Si on regarde maintenant les pratiques de l’équipe de traduction de Debian,
qui fait du bon travail depuis des années en traduisant des contenus
inimaginables sur Fedora (notamment actualités), on constate qu’ils ont un
processus de traduction très codifié, appuyé exclusivement sur les courriels
avec une sauvegarde manuelle dans les dépôts. Eux aussi ont dont tout misé
sur le processus plus que sur l’outillage, et malgré l’énergie considérable
que cela me semble nécessiter, cela semble fonctionner depuis des années,
tout en étant dans le peloton de tête des langues !

Ma perception est que l’enjeu de la réussite d’une plateforme de traduction
n’est pas basé sur la capacité à faire de l’unitaire (Technique, Traduire),
mais sur la capacité à structurer l’équipe de traduction en l’aidant à
porter ses processus, c’est ce qui lui apporte de la pérennité.

Ce sont les processus de production qui sont les plus importants pour
structurer une équipe, en les constituant correctement, chaque nouvel
arrivant comprend facilement le fonctionnement, s’y inscrire, se les
approprier puis expliquer le fonctionnement aux suivants.

Pour construire une communauté pérenne, il faut donc : en priorité un outil
qui aide le travail collaboratif, puis seulement s’intéresser à l’ergonomie.

Pour obtenir rapidement des traductions sur un projet, il faut simplement
une interface ergonomique.

On comprendra par cette explication ma frustration vis-à-vis de l’outil
Zanata, performant sur l’angle technique, performant sur l’interface, mais
tellement pauvre quand il s’agit d’aider à la structuration de notre
communauté.
