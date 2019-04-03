---
title: Relire des traductions
date: 2019-04-03
type: post
categories: ['Régionalisation']
tags: ['fedora-fr', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

Après la traduction d’un logiciel, c’est une bonne pratique que de faire une 
relecture d’ensemble.

Ce type de travail n’apporte rien au fonctionnement du logiciel, mais vise à fournir 
une expérience plus harmonieuse à l’utilisateur.

Voici quelques exemples, avec en plus le nombre d’occurences que j’ai détecté.

# Ma méthode

Lors de ma traduction, je note les mots ou tournures de phrases qui me semblent 
étrangent ou mêmes fausses. Mais je ne m’arrête pas pour corriger.

Je tiens à jour une liste de mots/sujets/citations que je traiterai sur l’ensemble 
de la traduction.

Ici, je vous donne un exemple de liste que j’ai utilisé sur les traductions des 
logiciels [Cockpit](https://cockpit-project.org) et [virt-manager](https://virt-manager.org).

Le format est le suivant :

 * Mot anglais -> ce que j’ai vu / ce que je suggère

J’ai utilisé cette liste et autre sur deux logiciels significatifs :

 * Virt-manager qui est en deux parties : 
   * le cœur du logiciel : 7973 mots dans 1563 chaînes (virt-manager)
   * l’interface : 891 mots dans 191 chaînes (virt-viewer)
 * Cockpit : 8005 mots dans 2201 chaînes (dans la branche master uniquement, il y a 4 branches)

## Quelques mots clefs

 * specified -> spécifié / renseigné (4 erreurs dans Cockpit) 
 * backing -> support / de sauvegarde
 * support -> support / prise en charge (10 erreurs dans Cockpit)
 * locate -> localiser ? 
 * failed -> impossible / Échec de (4 erreurs dans Cockpit)
 * can't -> impossible / ne pas pouvoir
 * unable -> impossible / incapable, ne pas pouvoir (21 erreurs dans Cockpit)
 * refresh -> rafraîchir / recharger, actualiser (1 erreurs dans Cockpit)
 * Unspecified -> non indiquée / indéterminée, inconnue
 * through -> à travers / via ?
 * container -> containeur / conteneur (1 erreurs dans Cockpit)
 * package -> package / paquet (5 erreurs dans Cockpit)
 * graphics -> graphique / affichage (Exemple : Spice GL nécessite que les graphismes virtio soient configurés avec accel3d)
 * appliance -> appliance / ?
 * ex : -> / par exemple
 * transient -> transient / ?
 * unattended -> inattendue
 * change -> changer / modifier (10 erreurs dans Cockpit)
 * credentials -> information d’authentification ou d’identification / identifiants (6 erreurs dans Cockpit)
 * upload -> téléverser
 * download -> télécharger (1 erreur dans Cockpit)
 * password -> mot de passe
 * login -> identifiant ou connexion/connecté (2 erreurs dans Cockpit)
 * logout -> déconnexion

## Les touches de clavier

 * Shift -> Shift / Maj (1 erreur dans Cockpit)
 * Insert -> Insert / Inser (10 erreurs dans Cockpit)

## Les horreurs

 * (e) -> rien ! soit on trouve le genre, soit on met une forme épicène, soit c’est masculin, soit on ouvre un ticket pour avoir le contexte
 * (s) -> rien ! soit on trouve le contexte, soit c’est plurieil, soit on ouvre un ticket pour avoir le pluriel
 * CPUs -> CPUs -> CPU ! Les Anglais prononcent le S à l’oral pour un sigle, donc ils l’inscrivent, nous non, donc pas de S.

# Belles surprises trouvées

 * one of -> Un parmi
 * Passthrough -> relais

## Ponctuation

Sauf exception, cette partie est généralement un carnage. Sans un bon outil de 
remplacement (dans mon cas Zanata), ce travail est une galère.

 * points de suspension ->… ->… (39 erreurs dans Cockpit, erreurs d’espacements incluses)
 * double points -> 
 * apostrophes -> ' -> ’ (inutile de compter les erreurs, par contre ça permet de détecter des guillemets manquants)
 * guillements -> "" ou '' -> «» (parfois inutiles après un double point, ne pas hésiter à adapter)
 * espaces insécable -> (je ne fais jamais ce travail, mais un jour peut-être)

## Utile

Cherchez « credits », parfois il y a une zone dédiée aux traducteurs ! N’oubliez pas de vous faire reconnaître !

# Conclusion

Il y a beaucoup d’astuces pour s’en sortir, mais aucun outil pour nous aider dans ce travail de mise en cohérence. La règle est simple, soyez systématiques et ouvrez des tickets. Et si vous détectez des erreurs dans ce que j’écris, c’est du logiciel libre, vous avez le droit d’améliorer.

Pour vous aider, sachez qu’il existe quelques guides de traduction :

 * [le guide de traduction RedHat](https://fedoraproject.org/wiki/File:Guide_stylistique_de_traduction_EN-FR_24NOV14.pdf)
 * [le guide de traduction de Mozilla-fr](https://github.com/mozfr/besogne/wiki/Guide-stylistique-pour-la-traduction)
 * [le guide de traduction de SUN](https://web.archive.org/web/20160821182818/http://frenchmozilla.org/FTP/TEMP/guide_stylistique_December05.pdf)
