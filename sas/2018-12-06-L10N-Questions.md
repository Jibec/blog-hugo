---
title: Questions-réponses sur la traduction
date: 2018-12-06
type: post
categories: ['Régionalisation']
tags: ['fedora-fr', 'flock', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

J'ai la chance de participer modestement à la communauté Fedora, et d'avoir essayé par divers moyens d'améliorer ce qui touche de près ou de loin à l'expérience utilisateur dans les langues autres que l'anglais.

À ce titre, on m'a posé des tas de questions récemment, pour être sûr d'avoir une bonne compréhension du périmètre.

## Avant Zanata, Fedora utilisant Transifex, à quel point la migration a-t-elle été complexe ?

Le changement de plateforme de traduction dépend du niveau d'imbrication entre la plateforme et le projet.
Si la plateforme nécessite des outils dédiés, et une automatisation spécifique, alors le coût de mise en place est élevé, et le coût de migration également.

Fondamentalement, les plateformes Transifex et Zanata ont le même fonctionnement, elles nécessitent des outils dédiés pour échanger avec la plateforme.

On rouve sur le wiki deux migrations passées :

* la migration du transifex de Fedora à Transifex.com à l'époque de Fedora 15: https://fedoraproject.org/wiki/Migration_to_Transifex.com
* la migration de Transifex.com vers Zanata à l'époque de Fedora 22: https://fedoraproject.org/wiki/L10N_Move_To_Zanata

C'est un peu près le moment auquel j'ai rejoint l'équipe de traduction de Fedora. Nous sommes déjà à Fedora 29. Le temps passe vraiment vite.

On voit bien les fichiers de configurations à prendre en charge et les commandes à utiliser :
https://docs.transifex.com/projects/uploading-content
http://docs.zanata.org/en/release/client/commands/push/

La conséquence est de demander à chaque équipe projet de modifier ses scripts, et j'imagine que l'équipe de traduction n'avait pas beaucoup de moyens pour aider à la migration.

Pour la migration à Fedora, Noriko devrait être le bon contact, tandis que pour la précédente, on pourra contacter Kévin Raymond.

> 5. What are the challenges you see in the Fedora translation
> community?  Can/Should we try to get them more visibly active outside
> of their language subprojects to the whole community?

There are many of them!

The first one is at a strategic level: there is an ambiguous position between the goal of Fedora and Localization. For many, the goal of Fedora is to help the free software movement and provide a tool for contributors. Those contributors speaks English.

The issue is with the reason why we do localization: for people who don't speak English. So many in our contributors don't understand they could be an interest of translating what we do. Many don't see language improvement and culture support as an innovation.

I submitted a suggestion regarding this matter, but the FAD never happened:
https://lists.fedoraproject.org/archives/list/trans@lists.fedoraproject.org/message/2POY44VT4D7O5UALMLCWDLW6KWKJ3KTX/


We should definitely try to make the Fedora Localization community more active. Unfortunately, even before that, we should revive it and encourage the development of local communities. Because local communities brings translators and translated content brings users to local communities.



Let's give you some already existing work.

1. Attachment:a proposition I did to Red Hat 12 or 18 month ago.
2. While at flock2015@Krakow, I worked with Zoltan and other contributors to try to write down road-map of what we need/want. https://fedoraproject.org/wiki/User:Jibecfed/Localization_proposal-Help_languages
3. Again while at flock2015@Krakow, I tried to write donw one major issue we have and an alternative workflow: https://fedoraproject.org/wiki/User:Jibecfed/Localization_proposal-Horizontal_distribution