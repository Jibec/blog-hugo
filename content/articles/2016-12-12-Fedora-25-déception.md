---
title: 'Migration Fedora 25 et l’expérience utilisateur non anglophone'
date: '2016-12-12'
type: 'post'
categories: ['Régionalisation']
tags: ['fedora-fr', 'traduction', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

Fedora 25 est une réussite, c’est stable, ça tient les promesses concernant ses nouvelles fonctionnalités de GNOME, de Wayland, les émoticônes, mais je vais vous parler d’expérience utilisateur concernant la migration depuis Fedora 24.
J’ai profité du fait d’avoir deux machines pour tenter les deux migrations recommandées :
mon ordinateur fixe avec Gnome Logiciels, c’est la migration la plus simple pour l’utilisateur non spécialiste,
mon ordinateur portable avec dnf system-update, c’est la migration ligne de commande, pour les geeks amateurs ou avancés.

### Avec Gnome Logiciels

Gnome Logiciels m’a correctement signalé que Fedora 25 était disponible et que je pouvais cliquer sur un bouton pour migrer. Si l’information sur la disponibilité de Fedora était en français, l’explication pour la mise à jour était en anglais, tout comme la description des logiciels. Tout le reste était écrit en anglais pour passer à l’étape suivante, les explications, etc. Un lien était donné vers le Fedora magazine, qui évidemment est en anglais et la documentation qu’on ne peut pas toujours traduire faute de capacité à faire de l’équipe de documentation (ou même d’être sûr qu’on traduit le bon contenu).
Après un long téléchargement de plusieurs Gio, l’écran se grise pour poser la fatidique question ultime : c’est votre dernière possibilité avant de faire demi-tour, on y va ? Eh bien, ce texte est aussi en anglais !

{{< figure src="/images/2016-11-25-Textes-Gnome-Logiciels.png" title="Messages de GNOME Software en anglais" >}}
{{< figure src="/images/2016-11-25-Message-validation-ultime.png" title="Message de validation en anglais" >}}

### Avec DNF

Sur le portable, en ligne de commande donc, c’était un peu mieux en termes de qualité de régionalisation puisque la quasi-totalité des informations était en français. Mais une fois arrivé sur Fedora 25, je veux virer le dépôt adobe que je n’utilise plus depuis des mois, je lance l’aide et je constate qu’une phrase sur deux de l’aide des commandes DNF est en anglais, alors que cela fait 6 mois que nous avons intégralement traduit le logiciel et ses extensions… Donc notre travail n’est pas parvenu à l’utilisateur final…

### Conclusion

Nous ne sommes pas trop mauvais dans l’expérience générale, car la communauté française est vaste, mais globalement nous sommes loin d’être bons dans la régionalisation de Linux, il y a du travail ! On pourrait par exemple envisager d’avoir une traduction automatique pour combler les manques, ou simplement avoir des alertes quand des chaînes aussi critiques sont manquantes…
