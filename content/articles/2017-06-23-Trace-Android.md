---
title: 'Fournir une trace lors du plantage d’une application Android'
date: '2017-06-23'
type: 'post'
categories: ['Régionalisation']
tags: ['fedora-fr', 'traduction', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

Tout comme les logiciels de son ordinateur, fournir un rapport de bug est une contribution importante dans le logiciel libre. Voici les quelques étapes à mener pour un téléphone sur Android. J’utilise Fedora, mais il n’y a pas de raison que cela fonctionne très différemment sur une autre distribution.

Parfois un plantage m’est égal car c’est mineur ou tellement rare que je ne saurais pas le reproduire, d’autre c’est vraiment gênant ou fréquent, dans ce cas je dois le signaler. Dans mon cas ce sont les applications [OpenFoodFacts](https://fr.openfoodfacts.org), [OpenBeautyFacts](https://fr.openbeautyfacts.org) et [OpenPetFoodFacts](https://fr.openpetfoodfacts.org) qui m’ont posé problème.

J’utilise rarement ces applications, mais j’aime leur principe et quelques fois par ans je parcours tout ce qui sort de mes sacs de course pour apporter ma petite contribution à leurs projets. Cependant, j’avais des plantages communs à plusieurs applications et triviaux à reproduire, j’ai donc décrit ce que je rencontrais sur le [dépôt github du projet](https://github.com/openfoodfacts/openfoodfacts-androidapp/issues/574)

La source du problème, c’est probablement le fait que mon Fairphone utilse une version désormais un peu ancienne d’Android (4.2), et même si les développeurs font attention à ne pas exclure trop rapidement ces terminaux en choisissant correctement les API sur lesquels ils s’appuient (merci !), ils peuvent ne pas avoir le matériel pour produire localement le plantage. Dans ce cas, ils demandent une trace du plantage, globalement c’est l’ensemble de la chaîne explicative, qui permet de dire : « depuis l’interface, ce bouton a appelé telle fonction qui s’appuie sur telle autre qui a provoqué telle erreur ». Les Anglais parlent aussi de backtrace.

Bon, c’est très simple :

1. Activez l’option « Débogage USB » dans la partie Options pour les développeurs des paramètres de votre téléphone

    En cas d’absence de ce menu « Options pour les développeurs" : allez dans les Paramètres généraux, ouvrez « À propos de l’appareil ». Puis tapotez par quatre fois le « Numéro de Build » pour débloquer les « Options pour les développeurs ».

2. Installer adb via « sudo dnf install adb »
3. Branchez votre téléphone à votre ordinateur
4. Lancer la comment « adb devices » devrait le détecter

    Si ne montre rien échoue, assurez-vous que votre téléphone détecte bien qu’il est branché en USB, et qu’il marque que la connexion est en mode « Déboguage USB »).


Pour extraire les journaux (logs), rien de plus simple puisqu’il faut saisir « adb logcat » dans son terminal.

Vous découvrirez probablement que votre téléphone est très bavard ! Restreindre la sortie est heureusement possible via la commande : « adb logcat "*: E" ».

Pensez à signaler vos problèmes ! (et à être gentil :))
