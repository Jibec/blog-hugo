---
title: What's a good translation platform?
date: '2016-09-08'
type: 'post'
categories: ['Localization']
tags: ['fedora-fr', 'traduction', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

I consider that translation tools have three main functional areas,
technical interaction capabilities, teamwork support capabilities, and
translation support capabilities.

The technical part includes:

* supported file formats
* synchronization with the source repository
* automation support tools
* the interface possibilities

Support for teamwork, which could also be called "community animation"
includes:

* Monitoring changes (by a translator, on a project...)
* Follow-up on updates pushed by projects
* The display of the state of the situation
* The ability to enable or not the review and validation steps
* Assistance in discussion between translators (from the same team and
  inter-languages)
* Assistance with discussion with the project maintainer
* The possibility to communicate globally on the platform (news, etc.)

Translation assistance includes:

* A clear and ergonomic interface
* A limited number of steps to find your project and start working
* A simple ability to read the flow between translation and distribution
* Access to a translation memory machine
* The enrichment of a glossary

When we look at these few points, there are finally no big differences with
a source code management platform on the first two perimeters. I even
suspect that the last point is largely valid for source code. However, the
data handled is quite different and users are often much less technically
sophisticated than developers, although they are much more numerous.

Now let's look at the ones that are the best for me, the GNOME platform:

* Their site contains both the organization of the teams and the translation
  platform. We see who is responsible and the roles in the team. Everything is
  concentrated in a few screens.
* It's easy to find what to work on, but you quickly realize that you'll have
  to use files that you download to your computer and then send back once
  modified. It's not very sexy, but the logic is easy to understand.
* We send the file back, it potentially sends an alert to the mailing
  list. The following steps are known and the translation can be easily
  discussed at the global level (but not comment on a sentence).

This may sound surprising, but it is the best translation platform with 297
languages and a clear percentage of progress, both on basic sentences and
advanced menus and documentation. Coupled with a predictable Gnome release
schedule, everything is there to work well. It is because they have focused
on a tool that promotes community work.

If we now look at the practices of the Debian translation team, which has
been doing a good job for years translating unimaginable content for Fedora
(especially news), we see that they have a highly codified translation
process, based exclusively on emails with manual push in the
repositories. They too have put everything into the process rather than the
tools, and despite the considerable energy that this seems to me to require,
it seems to have been working for years, while being among the leading group
of languages!

My perception is that the challenge of a successful translation platform is
not based on the ability to make the unitary (Technical, Translate), but on
the ability to structure the translation team by helping it to support its
processes, this is what gives it sustainability.

It is the production processes that are the most important to structure a
team, by putting them together correctly, each newcomer easily understands
how it works, registers, appropriates them and then explains how it works to
the next ones.

To build a sustainable community, it is therefore necessary: first of all a
tool that helps collaborative work, then only to be interested in usability.

To quickly obtain translations on a project, all you need is an ergonomic
interface.

This explanation will explain my frustration with the Zanata tool, which is
technically efficient, interface efficient, but so poor when it comes to
helping to structure our community.
