---
title: 'Libération des traducteurs : Weblate est sur YunoHost'
date: '2017-10-05'
type: 'post'
categories: ['Régionalisation']
tags: ['fedora-fr', 'traducteurs', 'YunoHost', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

Un traducteur n’est pas forcément un expert en technologies, mais la
barrière pour l’utilisation de certains logiciels est parfois bien trop
haute. Weblate est maintenant disponible pour YunoHost, vous pouvez
difficilement l’héberger plus facilement !

C’est même dans la [documentation
officielle](https://docs.weblate.org/en/latest/admin/deployments.html#weblate-in-yunohost),
un bouton, quelques questions et c’est parti !

J’ai préparé ce paquet pour aider à la migration l’infrastructure de
YunoHost sur YunoHost, naturellement j’ai activé la possibilité de se
connecter avec un compte Fedora (FAS), OpenSuse ou Ubuntu via OpenID. Les
autres connecteurs (GitHub, Google, Facebook, etc.) ne sont pas activés,
c’est par conviction, mais vous pouvez le faire si besoin.

[Weblate est une plateforme de traduction](https://weblate.org), peut-être
pas la meilleure, mais elle a le mérite de parler directement avec les
dépôts de code source, et d’avoir un mécanisme d’alertes pour les
traducteurs pour être informé des changements. Cela en fait le meilleur
outil à recommander aux projets. Seuls les plus gros verront un intérêt dans
des outils de type Pontoon ou Pootle, et quelques sociétés aimeront Zanata.

Déployer un serveur YunoHost est simple, je vous invite simplement à lire la
documentation, par exemple [pour Debian
8](https://yunohost.org/#/install_on_debian_fr). Pour information, la prise
en charge de Debian 9 est en cours, cela devrait venir prochainement.

Il n’y a plus de raison de ne pas vous lancer dans la traduction d’un projet
qui n’utilise que Git, vous installez votre serveur YunoHost, vous ajoutez
l’application Weblate, puis vous créez un composant. Je vous conseille
chaleureusement de bien [lire les paramètres d’un
composant](https://docs.weblate.org/en/weblate-2.16/admin/projects.html#component)
pour que ça marche du premier coup.

Pour les gens voulant voir le code, tout est là :
[https://github.com/YunoHost-Apps/weblate_ynh](https://github.com/YunoHost-Apps/weblate_ynh).

# Où contribuer à la traduction ?

Pour Weblate : [https://hosted.weblate.org](https://hosted.weblate.org)

Pour YunoHost :
[https://translate.yunohost.org](https://translate.yunohost.org) (oui, cela
ne fonctionne plus, c'est le crash de notre serveur qui nous a incité à
migrer sur YunoHost… 😳)
