---
title: 'NextCloud 12 est disponible sur YunoHost'
date: '2017-08-07'
type: 'post'
categories: ['Régionalisation']
tags: ['traduction', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

Il y a trois mois maintenant, nous apprenions la sortie de la [version 12 de
Nextcloud](https://nextcloud.com/blog/welcome-to-nextcloud-12/). Celle-ci
est désormais disponible sur [YunoHost](http://yunohost.org) !

La fonctionnalité la plus pratique pour moi est l’amélioration du partage de
fichier dont je fais un usage intensif, le reste concerne l’amélioration de
l’intégration des contacts dans l’interface, des appels vidéos et de la
sécurité.

Cependant je ne gère pas mes contacts avec NextCloud (mais Baikal), j’ai un
doute sur la qualité d’appels vidéos avec une connexion ADSL et enfin, pour
la sécurité, YunoHost me protège déjà des attaques par force brute.

Je ne saurais pas l’objectiver, mais en 2G, l’interface me semble plus
réactive.

## Bugs

YunoHost est encore un jeune projet, il reste donc des points à
perfectionner, vous pourriez être impactés par :

* ce problème de migration : [Upgrade to Nextcloud 12.0 fails: "PHP Fatal
  error: Class '\OC\Memcache\APC' not found in
  /var/www/nextcloud/lib/private/Memcache/Factory.php on line 116"
  ](https://github.com/YunoHost-Apps/nextcloud_ynh/issues/50)
* ce problème d’affichage : [le premier chargement de la page est vide, à
  cause d’un soucis dans les règles
  ContentSecurityPolicy](https://github.com/YunoHost-Apps/nextcloud_ynh/issues/18)

## Où contribuer à la traduction ?

### YunoHost

Le projet dispose de son [instance auto-hébergée de
Weblate](https://translate.yunohost.org), sur laquelle vous trouverez
l’interface web, mais aussi les outils en ligne de commande. La liste de
discussion est
[contrib@list.yunohost.org](https://list.yunohost.org/cgi-bin/mailman/listinfo),
venez y contribuer, surtout si vous parlez une autre langue que le Français
ou l’Anglais !

### NextCloud

Pour ce projet, tout est déjà écrit dans l’article [Profiter de Fedora 26
pour utiliser le client
Nextcloud](https://jibecfed.fedorapeople.org/blog/profiter-de-fedora-26-pour-utiliser-le-client-nextcloud.html).
