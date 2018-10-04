---
title: 'Profiter de Fedora 26 pour utiliser le client Nextcloud'
date: '2017-07-12'
type: 'post'
categories: ['Régionalisation']
tags: ['fedora-fr', 'traduction', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

Si vous utilisez Nextcloud via l’auto-hébergement tel [YunoHost](yunohost.org) ou l’un des [fournisseurs proposés par nextcloud.com](https://nextcloud.com/providers/), vous serez intéressés de savoir que depuis le 23 novembre 2016, soit le lendemain de la sortie Fedora 25, le client de synchronisation de fichier Nextcloud est arrivé sur Fedora.

On peut voir quelques informations dans la base de données des [paquets Fedora](https://admin.fedoraproject.org/pkgdb/package/rpms/nextcloud-client/). Et comme Fedora 26 est sortie hier... C’est le moment !

## Passer du client Owncloud à Nextcloud

Pour changer de logiciel, il suffit de le désinstaller puis d’installer le nouveau.

1. Faire un clic-droit l’icône d’owncloud et quitter, [point n°7 sur l’image](https://en.wikipedia.org/wiki/GNOME_Shell)
2. Désinstaller _owncloud-client_
3. Installer _nextcloud-client_ et _nextcloud-client-nautilus_ soit via DNF ou via Logiciels

L’interface de nextcloud-client proposera de réutiliser un dossier existant ou d’en créer un nouveau. Je l’ai fait aujourd’hui, c’était super simple et cela a fonctionné sans aucune perte. Ce qui fut le bon moment pour renommer le nom du dossier pour quelque chose de plus pertinent 😏.

Le menu contextuel dans Fichiers (Nautilus) arrive une fois que la synchronisation est active, ça a pris quelques minutes chez moi vu le volume à synchroniser.

Jusqu’à présent, les deux clients sont compatibles, mais mieux vaut prévenir que guérir, Nextcloud évolue assez vite.

## Où contribuer à la traduction ?

Le code du client est disponible sur [GitHub](https://github.com/nextcloud/client_theming) qui point vers le dépôt [Owncloud](https://github.com/owncloud/client/) qui lui-même parle avec Transifex.

Il y a deux projets de traductions : [Nextcloud sur Transifex](https://www.transifex.com/nextcloud/nextcloud/translate/) et [Owncloud sur Transifex](https://www.transifex.com/owncloud-org/owncloud/dashboard/) avec [une équipe unique de traduction pour les deux outils](https://framagit.org/owncloud-l10n-fr/traductions).
