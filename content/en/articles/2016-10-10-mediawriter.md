---
title: '20 langues pour Fedora Media Writer !'
date: '2016-10-10'
type: 'post'
categories: ['Régionalisation']
tags: ['fedora-fr', 'traduction', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

Le logiciel Fedora Media Writer est sur le point de devenir la méthode
d’installation offerte par défaut aux nouveaux utilisateurs. Le 28 septembre
dernier un appel à traduction a été réalisé, et ce sont maintenant 20
langues qui sont complètes ! J’en déduis donc que nous avons au moins 20
équipes de traduction actives dans la communauté Fedora !

En quelques mots, Fedora Media Writer est un outil qui permet de mettre
l’image contenant le système d’exploitation sur une clef USB (on parle alors
de fichier ISO). Si l’outil est personnalisé pour notre distribution, il
peut tout aussi bien servir pour créer les médias d’installation pour Debian
ou n’importe quel autre distribution.

Le 28 septembre dernier, à l’occasion d’un balayage des traductions
françaises, j’ai réalisé que le logiciel Fedora Media Writer était très peu
traduit et qu’il méritait plus de visibilité. Dans [mon appel à
traduction](https://lists.fedoraproject.org/archives/list/trans@lists.fedoraproject.org/message/EUYECEEEL6CPKU2A7CC5ECLCI77YYVAA/)
sur la liste des traducteurs, on retrouve les quelques informations clefs
sont fournies : où traduire, l’effort à produire, l’échéance à respecter et
la motivation de la traduction.

Rapidement, un contributeur est venu annoncer l’accomplissement du travail
pour sa langue, puis plusieurs autres personnes l’ont imité. Cela démontre
que **les équipes ont réllement besoin d’être informées** sur les priorités,
les nouveautés et de sentir qu’elles font partie d’une grande communauté de
traducteurs !

## Des améliorations à faire dans le projet

Après avoir attendu quelques jours qu’un contributeur français se dévoue (je
voulais laisser la priorité aux nouveaux), José s’est chargé de traduire,
mais j’ai détecté quelques erreurs dans les sources du logiciel qui gênaient
la capacité à correctement traduire :
https://github.com/MartinBriza/MediaWriter/issues/18

* **Amis développeurs**, pensez à ne pas couper vos phrases, mais si cela semble facile à faire en anglais et éventuellement élégant dans votre code, le plus souvent c’est contre-productif pour nous !

En même temps, j’ai découvert que quelques phrases des sites Fedora étaient
réutilisées telles-quelles ! Réduisant d’autant notre travail de mise à
jour : le détail est [en
commentaire](https://github.com/MartinBriza/MediaWriter/commit/2a3c87337f80b004c942e24aa8a672030de26a85#commitcomment-19283133).

Enfin, le mainteneur du paquet est disponible et disposé à faire quelques
actualisations nécessaires pour la promotion des langues étrangères : le
détail est [en
commentaire](https://github.com/MartinBriza/MediaWriter/commit/651e2eed8728538007afe5d08584c5b89d602292#commitcomment-19265136).

## Qu’en retenir ?

* La communauté Fedora est large et ne demande parfois qu’à être prévenue des
  travaux à mener. Je pense d’ailleurs que nous devrions avoir quelqu’un à
  plein temps pour mieux coordonner les équipes de traducteurs, nous avons
  besoin d’une personne qui donne le rythme !
* Les développeurs sont souvent plus accessibles qu’il n’y parait, mais il
  faut bien analyser en question ce qu’on traduit et oser aller leur
  parler. L’inverse est vrai aussi, si votre projet est assez imbriqué dans la
  distribution, venez nous prévenir que vous faites de nombreux changements !
