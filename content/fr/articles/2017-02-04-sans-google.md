---
title: 'Mon ordiphone sans outils Google'
date: '2017-02-04'
type: 'post'
categories: ['Régionalisation']
tags: ['fedora-fr', 'traduction', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

Ce qu’on appelait avant un téléphone cellulaire, puis portable puis Smartphone, est avant tout pour moi un ordinateur avec des fonctionnalités de téléphone (d’où l’usage provocateur du terme « ordiphone »). Le problème avec Android, ce sont les outils propriétaires de Google, placés comme un point de passage obligatoire pour presque tout. Avec le Fairphone et YunoHost, j’ai réussi à faire un pas de plus vers la liberté et c’était très simple.

### Les outils propriétaires de Google

Google impose ce qu’on appelle les Google Apps, ensemble de logiciels indispensables pour installer la logithèque « Android Market », cependant ces outils ont tous les droits sur le système, à un tel point que tout ce qui est fait sur le téléphone peut potentiellement être capturé puis envoyé à Google. Allant jusqu’à la saisie des touches.
C’est un peu comme cette fonction Management Engine des processeurs Intel : c’est une petite boite noire qui peut tout faire sans vous demander votre avis. C’est l’archétype de ce qu’il faut éviter pour être libre, ces boites noires, c’est précisément pour cette raison que j’utilise Fedora sur mon système en plus d’être très proche des producteurs de logiciels.

Je me souviens d’une conférence de Richard Stallman, si votre outil installe des choses sans votre consentement, alors c’est un malware/maliciel ! Avec cette définition, Windows était pour lui à cette époque un maliciel et si on cherche, je suppose qu’il dirait la même chose sur ces outils imposés par Google sur Android. Souvent je me retrouvais avec des mises à jour automatiques d’application que je ne pouvais pas supprimer et que je n’utilisais pas.

### Le Fairphone

Focalisé sur le thème du développement durable, cette entreprise laisse beaucoup de liberté à ses utilisateurs, notamment celle de choisir d’avoir ou non les Google Apps sur son téléphone en ne les installant pas par défaut. Le produit en ma possession est le FP1, donc leur toute première version. Il est perfectible mais l’ayant déjà cassé et réparé, la promesse de durabilité est jusqu’à présent tenue. J’apprécie surtout un système qui sur une prise USB 1 ampère (majorité des voitures) continue à se charger même en utilisation, permettant de continuer à avoir son logiciel de navigation fonctionnel même quand on rentre dans sa voiture avec deux pourcents de batterie.

### Mon serveur YunoHost

Système d’exploitation serveur, [YunoHost](http://yunohost.org) est une surcouche de configuration d’applications afin qu’elles utilisent toutes les mécanismes de sécurité et ressources du système de façon cohérente (notamment l’annuaire LDAP et le portail). Avec lui, héberger sa messagerie et ses services principaux est simple, le tout avec des certificats HTTPS fournis par [Let's Encrypt](https://letsencrypt.org) (la [version 2.5 de YunoHost](https://forum.yunohost.org/t/sortie-de-yunohost-2-5-chelsea-manning-yunohost-2-5-release-chelsea-manning/2393) est sortie le 2 février dernier)

### Le résultat

[F-droid](https://f-droid.org) comme logithèque, k9mail pour la messagerie, ttrss pour les flux RSS, Conversations et Telegram pour la messagerie instantanée, DAVdroid pour la synchronisation des contacts et des agendas, QuickDic pour le dictionnaire, nextcloud pour la sauvegarde automatique des photos/vidéos, LibreOffice Viewer et Document Viewer pour les fichiers de bureautique, OpenFoodFact pour l’analyse du contenu de mes produits, Wikipédia pour l’encyclopédie, OSMAnd pour les données géographiques, etc.

Tous ces outils fournissent les services de base dont j’ai besoin, ils fonctionnent souvent en mise à jour sur demande, économisant les ressources de tout le monde et sont très pratiques en mobilité.

Vous voulez me parler de cet article ? Contactez-moi sur le salon « traducteurs » de jabberfr.org (client XMPP javascript disponible en bas de chaque page).
