---
title: 'Comment fonctionne la traduction de Debian ?'
date: '2016-09-15'
type: 'post'
categories: ['Régionalisation']
tags: ['fedora-fr', 'traduction', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

Ma quête sur l’organisation de la traduction se poursuit, cette fois-ci en
regardant ce que fait l’équipe de traduction française de Debian.

Pour faire simple : un outillage existe, les traductions passent toutes par
la liste de diffusion qui est synchronisé avec le site en ligne grâce à une
codification précise des intitulés.

S’il n’y avait que deux pages à connaître, la première [décrit la traduction
Debian](https://www.debian.org/international/l10n/) tandis que la seconde
présente [l’équipe
francophone](https://www.debian.org/international/french/)

On y trouve presque tout et rien que pour ça cela vaut le détour en termes
de documentation d’équipe !

## Quel est le périmètre des équipes de traduction Debian ?

*   la traduction des [sites](https://www.debian.org/devel/website/stats/fr),
*   la traduction des [logiciels créés par et pour
    Debian](https://www.debian.org/international/l10n/po/),
    *   Note : l’équipe francophone ne fait pas usage massif de cet outil mais gère
        plutôt du cas par cas, le détail est expliqué dans [cette
        page](https://www.debian.org/international/french/po#a-traduire).
*   les documentations,
    *   Elles sont gérées comme des paquets logiciels.
*   l’installateur a [sa page
    dédiée](https://d-i.debian.org/l10n-stats/translation-status.html),
    *   C’est l’équivalent d’Anaconda pour le monde Fedora.
*   la traduction des [descriptions des paquets
    (.deb)](https://www.debian.org/international/l10n/ddtp),
    *   Grâce à leur outil de statistiques popcon (POPularity CONtest), ils
        établissent une liste de priorités, et extraient des statistiques de
        traductions par langue. Une interface permet de réaliser la traduction en
        ligne et de porter la validation à deux niveaux avant la publication aux
        utilisateurs.
*   la traduction des
    [debconf](https://www.debian.org/international/l10n/po-debconf/fr) (la liste
    des questions posées à l’utilisateur lors d’une installation de paquet).

## Comment traduire ?

Je ne saurai faire mieux que la
[documentation](https://www.debian.org/international/french/po#a-traduire),
couplée à la [description des
acronymes](https://www.debian.org/international/l10n/pseudo-urls)

*   [taf] po ://paquet/fr.po _Ce message est envoyé par un des coordinateurs (en
    général, Christian Perrier). Ne les envoyez pas vous-même ! Il signale que
    le paquet renseigné dans le sujet est spécifique à Debian et qu’il n’est pas
    encore traduit. Un traducteur peut donc s’en occuper._
*   [itt] po ://paquet/fr.po _Suite à la réception d’un taf, vous avez décidé de
    traduire ce paquet, et vous l’annoncez à la liste._
*   [rfr] po ://paquet/fr.po _Vous avez traduit ce document, et vous demandez
    des relectures._
*   [lcfc] po ://paquet/fr.po _Vous avez intégré les relectures, et vous pensez
    que cette traduction est finie._
*   [bts] po ://paquet/fr.po #NNNNNN _Vous avez envoyé un rapport de bogue au
    responsable du paquet, et le numéro du bogue est NNNNNN. Le numéro de bogue
    est défini automatiquement par le système de suivi des bogues, et vous sera
    donné lors de la soumission du rapport._

Il semble que cette plate-forme a été mise en place par un Français ☺, voici
ce que m’indique Baptiste Jammet de l’équipe Debian : « Les équipes
d’internationalisation (i18n) et de localisation (l10n) de Debian ont fait
un gros travail de mise en place de l’infrastructure il y a quelques années
:
[Vidéos](http://meetings-archive.debian.net/pub/debian-meetings/2006/debconf6/theora-small/2006-05-20/tower/State_of_the_art_for_Debian_i18n_l10n-Christian_Perrier__Javier_Fernandez_Sanguino.ogg)
et toutes les présentations et BoF de Christian Perrier sur l’i18n aux
DebConf suivantes. »

## Comment rejoindre l’équipe ?

La seule exigence est de s’inscrire sur la liste de diffusion. Aucun compte
supplémentaire n’est nécessaire.

## Qu’en conclure ?

Sur les trois axes de la plate-forme de traduction (cf [mon
billet](https://jibecfed.fedorapeople.org/blog/quest-ce-quune-bonne-plateforme-de-traduction.html))
:

1.  _Technique_ : bonne infrastructure robuste de pilotage, publication avec des
    processus de publication clairs.
2.  _Équipe_ : un processus manuel mais unique pour toutes les contributions,
    dépendant de la rigueur du coordinateur et des équipes.
3.  _Traduction_ : un outillage minimaliste et rudimentaire chaque contributeur
    utilise l’outil qu’il souhaite et envoie un fichier ou les différences avec
    la contribution précédente.

En termes de pilotage global, je trouve très intéressant de constater que
les statistiques globales de traduction de la plate-forme Debian soient
disponibles et actualisées quotidiennement ! Ces données sont d’ailleurs
croisées avec une notion de priorité, basée sur la collecte anonyme de
paquets. C’est donc un outillage d’aide au pilotage du support de la langue
à l’échelle de la plate-forme, ce qui est très intéressant et que j’aimerais
avoir sur Fedora ! Je l’indique d’ailleurs dans [ma proposition
Fedora](https://fedoraproject.org/wiki/User:Jibecfed/Localization_proposal-Help_languages).

Leur processus est à mon goût assez technique, mais clair et facile à suivre
pour tout un chacun. Le caractère harmonieux sur l’ensemble des traductions
et le fait que des alertes soient diffusées régulièrement à la liste de
diffusion pour transmettre l’état des lieux des travaux à réaliser donnent
une impression d’ensemble très constructive : tu as envie d’y
contribuer. C’est d’ailleurs probablement pour cette raison qu’il est très
facile de rejoindre l’équipe !

Je suis très impressionné par la capacité des traducteurs Debian à couvrir
un spectre si large de données, allant jusqu’aux alertes de sécurité dont le
nombre est soutenu et le contenu souvent très technique !

Cependant, le manque d’outillage d’édition est dommage, mais à part [Damned
Lies](https://l10n.gnome.org/), je ne connais pas d’outils qui leur
permettrait de supporter leur processus de revue. Je ne saurais pas dire
quel est le calendrier de Debian vis-à-vis de la traduction. Peu importe,
malgré cela l’équipe de traduction francophone semble robuste et très bien
classée, voire la meilleure sur la plate-forme.
