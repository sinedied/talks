exclude: true

<!--
D&D map: chaotics neutral good evil, OSS/closed source/ SCRUM etc

Witcher references (chaos)

Embracing chaos for more efficient projects
Une touche de chaos pour plus d'efficacité

What do young parents and open source softwares have in common? Not much at first sight, yet either way surviving in the midst of daily chaos will force you to be more efficient at managing tasks. From onboarding to deployment, common tasks of development cycle are rarely optimized in enterprise projects and consume a lot of time and energy! But then how do open source projects deliver regular updates and quality code on a voluntary basis? Part of the secret lies in the necessity born out of chaos.

With my triple hat of dad, open source maintainer, and enterprise developer, I will share my experience, the mistakes I made and everything I learnt from it for the benefit of prioritization, time management and tools for different projects.

### Benefits

- Understand the intrinsic functioning of open source projects
- Discover simple ways to automate often manual tasks (onboarding, documentation, updating dependencies, writing a changelog, sorting the backlog...)
- Find new sources of inspiration to remove/modernize/simplify the dev cycle
- Know how to wisely introduce a little chaos into your project, to stimulate the creativity and efficiency of the team :)

# 1. Intro

- Can you do this?

## Me before
## Me after kids
## Making plan -> ~~Plans~~

## Why am I telling you my life?
- Au dela de la vie perso, avoir des contraintes fortes sur le temps, c'est le cas dans le monde du travail
  * avec une difference: on a pas le choix sur certains aspects (kids), le reste c'est: ce qu'on a envie de faire
  WANT TO / NEED TO progress bar

- Projet logiciel

## Need to      / ## Want to



## Context: research/esn/startup/microsoft/oss

## Some OSS dev tasks
* comment issues
* switch back to project context/env
* fix bugs
* add features
* update packages
  * dependencies
  vs writing your own code
* review PRs
* run tests
* define version
* build/package
* create/update infra
* release
* update changelog
* **Oops, something broke!**
* go to step 1

# 2. Time vs efficiency
## More time, less efficiency
Ex du dessin Spiderman

## Fake study
micro -> small -> big -> gafam
self organized -> agile -> hard scrum -> self organized teams

## (A litlle) Chaos can do good
## More time =/= better

- 

## 3. Demo

## 4. Tools
- dev containers, cloud dev env
- conventional commits
  * + git rebase/squash workflow
  * + commitizen
  * beware generated commits!
- semantic release
  * gen changelog
  * bump version
- CI
- CD
- Issue templates
- MVD - Minimum Viable Documentation
  * write for yourself
  * what you'll probably forgot in a few months!


Ref: cathédrale et le bazaar

-->

---
title: Highly available, distributed & resilient software... team
class: animation-fade
layout: true

.twitter-handle[
  @sinedied
]

---

class: hide-handle, middle, full
background-image: url(images/chaos-bg.jpg)

.full-layer.with-margins[
.w-15.responsive[![](images/agile-gre.png)]
]

.title-new[
# .baseline.light-text.sketch.bit-larger[Embracing .alt-text[chaos]<br>for more efficient projects]
<!-- <br>&nbsp; -->
]

.full-layer.who.text-right.small.middle.light-text.darkened[
  .ms.responsive[![](images/ms-full-logo.svg)]
  |
  Yohan Lasorsa
  |
  @sinedied
]

---

class: middle, center, hide-handle
# .large.sketch[About me]

.table.row.middle[
.col-4.center[
  .w-70.responsive.avatar.tada.animated[![](images/me.jpg)]
]
.col-8.bit-larger.left.middle[

.responsive[
<object data="images/me.svg"></object>
]
]
]

???
Et vous?
Qui est dev dans la salle?
Qui est chef de projet, lead ou assimilé?

---

class: big-text, all-sketch, clist, center

# My experience
- Research team
- IT service company
- Startup
- Big tech company
- Open source (maintainer & contributor)
--

- .dad.relative[**Dad 🍼**]

<script>
rough('.dad', { type: 'highlight', color: '#fd4' })
</script>

---

class: big-text, all-sketch, middle, center

.col-6.float-left[
  &nbsp;
]
.col-6.float-left.space-left[
...and everything changed
]

.full-layer.full-left.no-margin.left[
  .w-50.responsive[![](images/oliver.jpg)]
]
???

Ceci n'est pas talk sur la parentalité!

---

class: huge-text, all-sketch, middle, center, no-animation
.nothing[Free time]

.hidden[Free schedule]

.hidden[Plans]

---

class: huge-text, all-sketch, middle, center, no-animation
.striked[Free time]

.hidden[Free schedule]

.hidden[Plans]

<script>
rough('.striked', { type: 'strike-through', color: '#f22', strokeWidth: 4 }, 0);
</script>

---

class: huge-text, all-sketch, middle, center, no-animation
.strikedfast[Free time]

.nothing[Free schedule]

.hidden[Plans]

<script>
rough('.strikedfast', { type: 'strike-through', color: '#f22', strokeWidth: 4, animate: false }, 0);
</script>

---

class: huge-text, all-sketch, middle, center, no-animation
.strikedfast[Free time]

.striked[Free schedule]

.hidden[Plans]

<script>
rough('.strikedfast', { type: 'strike-through', color: '#f22', strokeWidth: 4, animate: false }, 0);
rough('.striked', { type: 'strike-through', color: '#f22', strokeWidth: 4 }, 0);
</script>

---

class: huge-text, all-sketch, middle, center, no-animation
.strikedfast[Free time]

.strikedfast[Free schedule]

.nothing[Plans]

<script>
rough('.strikedfast', { type: 'strike-through', color: '#f22', strokeWidth: 4, animate: false }, 0);
rough('.striked', { type: 'strike-through', color: '#f22', strokeWidth: 4 }, 0);
</script>

---

class: huge-text, all-sketch, middle, center, no-animation
.strikedfast[Free time]

.strikedfast[Free schedule]

.striked[Plans]

<script>
rough('.strikedfast', { type: 'strike-through', color: '#f22', strokeWidth: 4, animate: false }, 0);
rough('.striked', { type: 'strike-through', color: '#f22', strokeWidth: 4 }, 0);
</script>

---

class: all-sketch, middle, center
.quote.large[
> Life is nothing without a little .dark-text.gradient-text[chaos] to make it interesting.<br><br>
> ― Amelia Atwater-Rhodes
]

---

class: huge-text, all-sketch, middle, center

.circled[Open-source projects ?!]

<script>
rough('.circled', { type: 'circle', color: '#f22', strokeWidth: 4, padding: 50, animationDuration: 2000 }, 1000);
</script>

???
- Envie de continuer!
- Mais... comment?

---

class: cover
background-image: url(images/look.jpg)

???
- Si on regarde en arrière, comment ca s'est fini?
- Retournons au context de notre talk!

---

class: all-sketch, middle, center
# .striked[Time management]

.w-95.responsive[![](images/time-management.png)]

.small.em-text[https://xkcd.com/874/]

<script>
rough('.striked', { type: 'crossed-off', color: '#f22', strokeWidth: 4 }, 2000);
</script>

???

- Ceci n'est pas un talk sur la gestion du temps!
- Je serais incapable de vous donner des conseils là-dessus!

---

class: impact, big-text, all-sketch, middle, clist, center
# .alt-text[Agenda]

1. Context and project tasks
2. .a[Impact of .chaos[chaos]]
2. Demos
3. Tools and tips

???
## Why am I telling you my life?
- Au dela de la vie perso, avoir des contraintes fortes sur le temps, c'est le cas dans le monde du travail
  * avec une difference: on a pas le choix sur certains aspects (kids), le reste c'est: ce qu'on a envie de faire
  WANT TO / NEED TO progress bar

## Chaos at work, work-life ⚖️ and efficiency impact

---

class: impact, big-text, all-sketch, middle, clist, center
# .alt-text[Agenda]

1. Context and project tasks
2. .a[Impact of .chaos[chaos]]
2. Demos
3. Tools and tips

<script>
rough('.chaos', { type: 'underline', color: '#FFB900', strokeWidth: 4 }, 0);
</script>

???
## Why am I telling you my life?
- Au dela de la vie perso, avoir des contraintes fortes sur le temps, c'est le cas dans le monde du travail
  * avec une difference: on a pas le choix sur certains aspects (kids), le reste c'est: ce qu'on a envie de faire
  WANT TO / NEED TO progress bar

## Chaos at work, work-life ⚖️ and efficiency impact

---

class: all-sketch, center
# Company types vs methodologies

.w-70.responsive[
<object data="images/methodologies.svg"></object>
]<br>
.small.em-text[Inspired by https://blog.pragmaticengineer.com/project-management-at-big-tech/]

???

- Attention, tentative de vulgarisation!
- General idea, not a ground thruth
- What about OSS? (see next slide)

---

class: all-sketch, center
# Company types vs methodologies

.w-70.responsive[
<object data="images/methodologies-full.svg"></object>
]<br>
.small.em-text[Inspired by https://blog.pragmaticengineer.com/project-management-at-big-tech/]

---

class: all-sketch, center

# Project development cycle
.w-95.responsive[
<object data="images/dev-cycle.svg"></object>
]

---

class: all-sketch, center

# Is it worth the time?

.w-55.responsive[![](images/worth.png)]<br>
.small.em-text[https://xkcd.com/1205/]

---

class: all-sketch, center

# Time vs results

.w-70.responsive[![](images/time-vs-quality.jpg)]<br>
.small.em-text[Mo Selim Art - https://youtu.be/x9wn633vl_c]

---

class: alt, big-text, all-sketch, middle, clist, center

# .light-text[DEMO]

<script>
rough('.light-text', { type: 'underline', color: '#f22', padding: 10, strokeWidth: 4 });
</script>

???

Repo: TODO
- Codespaces
- Update dependencies
- Create PR
- Update infra
- Conventional commits
- Semantic release
- Release in GH

---

class: middle, center, hide-handle

.w-70.responsive[
<object data="images/thanks.svg"></object>
]