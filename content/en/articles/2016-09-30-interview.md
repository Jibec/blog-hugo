---
title: 'Interview avec Bastien Guerry'
date: '2016-09-30'
type: 'post'
categories: ['Régionalisation']
tags: ['fedora-fr', 'traduction', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

questionnaire
=============
Rencontre avec Jean-Baptiste (Holcroft) autour de la traduction de la
plate-forme Fedora

Le but de l’échange n’est pas de redire ce que tu as déjà dit ici pour
Debian
https://jibecfed.fedorapeople.org/blog/comment-fonctionne-la-traduction-de-debian.html
ou là pour les plates-formes de traduction
https://jibecfed.fedorapeople.org/blog/quest-ce-quune-bonne-plateforme-de-traduction.html
mais de

— comprendre comment tu en es venu à traduire — la part de compétences
techniques requises pour se lancer — les suggestions ou désirs éventuels que
tu aurais pour la suite

… le tout avec l’idée de donner envie à d’autres de se lancer :)

Le tout sera publié sous la licence libre de ton choix, of course.

Je te mets les questions en vrac, tu peux ajouter celles que tu veux pour
rendre le tout cohérent.

### Bonjour Jean-Baptiste. Comment te présenter ? Tu es développeur et traducteur pour des distributions GNU/Linux ?
--------------------------------------------------------------------------------------------------------------------
Je suis principalement utilisateur de Linux, traducteur de quelques projets,
coordinateur de l’équipe de traduction francophone de Fedora et j’aide aussi
à la coordination globale de la traduction Fedora. Notre équipe compte 4~6
personnes actives mais ayant une contribution très variable dans le temps vu
les autres contributions en parallèle, par exemple dans l’association
Borsalinux (l’association française de Fedora), le président Charles-Antoine
Couret, aka Renault est impliqué dans le marketing, tandis que le secrétaire
Emmanuel Seyman, aka Eseyman est notamment mainteneur de paquets Perl. Par
ailleurs mes compétences en développement sont très rudimentaires, mon
métier s’il est lié à l’informatique reste principalement appuyé sur des
outils de bureautique.

### En quoi consiste la (ou les) tâche(s) de traduction, sous Fedora par exemple ?
----------------------------------------------------------------------------------
Fedora est une plate-forme, une distribution comportant le fruit du travail
de milliers de personne et tout autant de projets différents. Nous essayons
de renforcer l’expérience utilisateur globale, quel que soit le projet
source utilisé.  Évidemment, nous traduisons en priorité les sites Fedora,
ses outils (l’installateur, etc.) et la documentation de Fedora via une
plateforme assez ergonomique : Zanata. Nous allons également à titre
personnel donner un coup de main sur des projets quand on détecte un manque
ou une erreur. Nous traduisons principalement ce que nous utilisons, ou des
projets pour lesquels nous avons une appétence ou que nous souhaitons
soutenir.

Pour la traduction d’un logiciel de la communauté Fedora, il faut se rendre
sur fedora.zanata.org, sélectionner son projet, sa branche, puis une
interface graphique tout à fait ergonomique permet de travailler et de
s’appuyer sur les traductions déjà réalisées (via mémoire de traduction) ou
le glossaire.

Concernant la coordination, mon travail consiste en quelques tâces clef :
* Comprendre quels sont les projets à traduire (nouveaux projets importants,
  nouvelles versions, etc) et où aller réaliser le travail (chaque projet peut
  avoir son outil ou s’être greffé à une plate-forme),
* Informer les contributeurs et traduire avec eux,
* Contrôler que notre travail atteint bien l’utilisateur final

### Quels sont les aspects agréables… ou ingrats de cet exercice ?
------------------------------------------------------------------
Les traducteurs sont des citoyens du monde qui aiment leur langue, celle-ci
est le vecteur de la culture et donc contribuer à la traduction c’est
contribuer concrètement à son extension. On rencontre donc fréquemment des
personnes qui connaissent les autres langues, leurs défis dans l’écriture,
dans les règles typographiques et qui prennent plaisir à aller découvrir la
culture des autres. Derrière chaque sigle, on découvre une nouvelle
histoire, récemment j’ai découvert le Kannada, au delà de l’histoire, même
les formes et la hauteur des caractères présente des défis radicalement
différents d’une écriture latine et invitent à s’intéresser à cette culture
: ಫೆಡೋರ ಮಾಧ್ಯಮ. Nous essayons également d’être plus rigoureux sur le bon
usage des mots afin de nous assurer d’abord d’une bonne compréhension par
l’utilisateur, puis ensuite d’éviter les anglicismes faciles qui nous
tendent les bras (oui, nous utilisons le courriel).

Cependant, nous sommes réellement à l’age de pierre de la traduction. Les
producteurs sont des communautés linguistiques, tandis que la distribution
est structurée par projet, ajoutant des délais énormes à chaque
correction. Si je trouve une erreur dans un petit logiciel tel que Zim - le
wiki de bureau - je corrige sur leur plate-forme, puis j’attends la
prochaine publication du logiciel ou j’en provoque une moi-même en le
demandant au projet. Une fois celle-ci disponible, je demande au mainteneur
du paquet de ma distribution de mettre à disposition cette nouvelle
version. C’est seulement après ces deux étapes que l’utilisateur final peut
recevoir la mise à jour… après 3 semaines au mieux, et plus fréquemment
quelques mois. Sauf qu’entre temps la traduction est fausse ou incomplète,
pour peu que le projet soit un peu vivant de nouvelles phrases seront
apparues et seront de nouveau à compléter… Imaginez maintenant qu’il y a 97
langues par défaut sur Zanata, 198 pour GNOME… nous sommes donc face à un
problème d’indépendance des communautés linguistiques. Comme les français
sont nombreux et qu’ils produisent beaucoup de bons logiciels libres c’est
souvent transparent, mais cela reste fortement inneficace !

### Est-ce qu’il s’agit seulement de volontaires, ou bien travaillez-vous aussi avec des traducteurs professionnels ?
---------------------------------------------------------------------------------------------------------------------
Si le professionnel sera à priori meilleur en anglais, l’exercice régulier
lui apporte de bons réflexes et une expérience certaine, mais le plus
important c’est de bien chercher à comprendre le sens et le contexte de la
phrase. J’ai autant confiance dans chacun des deux profils, ce sont des
contributeurs et ils sont les bienvenus.  Quelques employés Red Hat font de
la traduction française (ils fournissent d’ailleurs un guide de bonne
pratique et un lexique), mais je vois surtout la contribution de Red Hat sur
l’infrastructure, l’internationalisation (polices, méthodes de saisie), la
production d’outils (installateur, plate-forme de traduction), la
documentation et les sites internet.

### Comment vois-tu évoluer la traduction pour les distributions libres dans les années à venir ?
-------------------------------------------------------------------------------------------------
Mon sentiment est que nous avons perdu une génération de contributeurs et de
pratiques, les archives des listes de diffusion, des Wikis et autres sont
très éclairantes sur ce que je perçois comme une petite baisse de régime.

J’ai plusieurs souhaits pour l’avenir :
* disposer d’outils de mesure/suivi qualité globaux à l’échelle de l’ensemble
  de la plate-forme Fedora (Pology, Transvision, Grammalecte, etc.),
* créer un canal de diffusion simplifié des traductions, ayant un couplage
  moins fort avec la création de paquet.

Les changements actuels concernant l’empaquetage des logiciels ne me semble
pas pouvoir influer sur les traductions, mais peut-être suis-je complètement
dans l’erreur 😏.

### Est-ce que c’est une expérience que tu arrives à valoriser ailleurs que dans « le libre » ?
-----------------------------------------------------------------------------------------------
Je n’arrive pas encore à valoriser cette expérience à titre professionnel,
mais j’y travaille ! Dans tous les cas, l’engagement associatif est
enrichissant et toujours bien vu, surtout que traduire implique de découvrir
de nombreuses fonctionnalités et outils que l’on peut ensuite utiliser et
promouvoir.

### Un dernier mot pour encourager des futurs contributeurs ?
-------------------------------------------------------------
Nelson Mandela disait : « If you talk to a man in a language he understands,
that goes to his head. If you talk to him in his language, that goes to his
heart. » Contribuez aux projets que vous utilisez mais surtout, vous pouvez
traduire des milliers de mots, mais il faut pouvoir les maintenir dans le
temps, de petites traductions régulières ont énormément de valeur. Ce n’est
jamais vraiment difficile de traduire, il faut surtout trouver où le
faire ;)  Utilisez votre langue et écrivez avec elle, même si votre sujet
est pointu, même si votre auditoire est probablement plus restreint que
l’anglais.
