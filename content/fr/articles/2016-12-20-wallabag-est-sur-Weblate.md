---
title: 'Wallabag est sur Weblate !'
date: '2016-12-20'
type: 'post'
categories: ['Régionalisation']
tags: ['fedora-fr', 'traduction', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

[Wallabag](https://www.wallabag.org) utilise la plateforme de traduction [Weblate](https://hosted.weblate.org) !

Avant, Wallabag attendait de ses traducteurs des demandes d’intégration. Mon avis c’est que je n’aime pas avoir de commentaire sur ses demandes d’intégration, mon travail n’est pas de contrôler l’intégrité du fichier et corriger les virgules, mais de fournir une traduction contextualisée de qualité.

### À l’origine

J’ai été dérangé par quelques traductions incomplètes ou pas tout à fait à mon goût sur mon installation de Wallabag (grâce au système [YunoHost](https://yunohost.org)).

En me rendant sur le [dépôt du projet](https://github.com/wallabag/wallabag), je me suis rendu compte que tout était dans des fichiers YAML…

Naïvement, j’ai tenté de modifier dans GitHub le fichier puis fait une demande d’intégration (je ne sais pas vraiment utiliser Git pour ça et je trouve anormal de devoir l’apprendre pour traduire). Cependant, j’ai trouvé l’expérience laborieuse, [voir le détail de ma demande d’intégration](https://github.com/wallabag/wallabag/pull/2519).

Finalement, peut-être par désespoir devant mon inaptitude, c’est Jérémy Benoist, un des mainteneurs du projet qui a finalisé la demande et l’a intégré dans le reste du code…

Le mécanisme d’avis technique sur les demandes d’intégration me semble être inapproprié pour un traducteur, qui doit pouvoir se focaliser sur la langue.

### La demande

Comme tout utilisateur de logiciel libre devrait le faire, j’ai créé un [ticket pour exprimer mon souhait d’utilisation de Weblate](https://github.com/wallabag/wallabag/issues/2511). Jérémy, peut-être sensibilisé par nos échanges sur la demande d’intégration a tout de suite compris l’intérêt et y a été favorable.

Vous pouvez donc aller [traduire Wallabag sur cette plateforme Weblate](https://hosted.weblate.org/projects/wallabag/)

On voit environ qu’il y a eu [2000 modifications](https://hosted.weblate.org/projects/wallabag/#activity) depuis la création du projet et qu’il y a maintenant un support complet de l’anglais, du français, de l’allemand et du japonais. De nombreuses autres langues sont disponibles, mais en dessous de 80 %, j’ai le sentiment que c’est un peu trop incomplet pour parler de support.

Voilà, il faut prendre son temps, mais dans le logiciel libre, il suffit parfois de présenter les besoins des traducteurs pour obtenir satisfaction ! La partie outillage est terminée, maintenant il faut passer aux aspects organisationnels afin de coordonner efficacement les traducteurs avant une sortie, mais là c’est au projet de se saisir du sujet.
