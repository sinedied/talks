title: Become an OSS contributor
class: animation-fade
layout: true

<!--
Contribuer à l'Open Source

# Open source c'est quoi?
- definition
- paysage OSS, licences
- OSS != gratuit

# pourquoi contribuer?
* Philisophie
- Utilisé partout en entreprise
* Personnel
- Apprentissage: 
  * tech
  * collaboration
  * review

Slides cercles communication

* Visibilité
- Recrutement
- Faire valoir Technique
- Portfolio

# Contribuer
- don't fear!
- docs, bugs, tests, code, articles, resources...

# Pratique
- good first issue
- contributor guide, CLA
- code of conduct
- chats: slack, gitter...

# Créer un projet OSS
- licence
- README
- contributor guide
- code of conduct
- tests, env with VSCode remote dev
- CI

events: hacktoberfest
 -->

.twitter-handle[
  @sinedied
]

---

class: middle, center, hide-handle, full
background-image: url(images/seeds.jpg)
background-position: center center

## How to become an
# .bit-larger[**Open Source Contributor**]


.full-layer.who.text-right.small.middle.light-text[
  .ms.responsive[![](images/ms-full-logo-light.svg)]
  |
  Yohan Lasorsa
  |
  @sinedied
]

???

---
exclude: true

class: middle, center, hide-handle
# .large[Who am I?]

.table.row.middle[
.col-4.center[
  .w-70.responsive.avatar.tada.animated[![](images/photo.jpg)]
]
.col-8.bit-larger.left[
  .e[Yohan Lasorsa]<br>
  .bit-larger[\[ Cloud Developer Advocate .mini-img[![](images/ms.png)] \]]<br>
  .small.em-text[Web tech geek, OSS maintainer, DIY lover]<br>
]
]
.center.bit-larger[
.large.em-text[{]
.fab.fa-twitter[] .fab.fa-github[] .fab.fa-dev[]
.large.em-text[}] .e[@sinedied]<br>
]

---
class: middle, center
# What is Open Source Software?
???
Quelqu'un peut me donner une definition?
--

<br>

.quote.baseline[
> Open source software is a software whose .alt-text[source code] is released under a .alt-text[license] which grants anyone the rights to inspect, modify, and distribute it for any purpose.
]
???
- opposition a logiciel fermé, propriétaire
- = logiciel libre

---
class: middle, center
# .large[⚠️<br>Open Source ≠ Free]
### (as in free 🍺)
???
- OSS != gratuit
- OSS -> Eviter la confusion sur free
- Christine Peterson
---

# Popular OSS licenses
???
- Qu'est ce que vous connaissez comme licences?
--

.full-layer.right[
.w-30[
  <div style="height: 1.5em"></div>
  .center[
  ### .bit-larger[[opensource.org](https://opensource.org)]
  .responsive[![](images/osi.png)]&nbsp;&nbsp;&nbsp;&nbsp;
  ]
]
.w-5[]
]

## Permissive licenses

- [MIT license (MIT)](https://opensource.org/licenses/MIT)
- [Apache License 2.0 (Apache-2.0)](https://opensource.org/licenses/Apache-2.0)
- [3-clause BSD license (BSD-3-Clause)](https://opensource.org/licenses/BSD-3-Clause)

## Copyleft licenses

- [GNU General Public License (GPL)](https://opensource.org/licenses/gpl-license)
- [GNU Lesser General Public License (LGPL)](https://opensource.org/licenses/lgpl-license)
- [Mozilla Public License 2.0 (MPL-2.0)](https://opensource.org/licenses/MPL-2.0)

???
- C'est quoi une licence?
  * un ensemble de droits et de restrictions
- OSI Open Source Initiative
- Qui connait la particularité des licenses copyleft?

---

class: impact
# Why contribute?

---

class: center, middle
# .baseline[OSS drives .alt-text[**YOUR**] (next) company]
???
- Vous utilisez deja beaucoup de logiciels OSS au quotidien:
  * PC, smartphone, TV, voiture, frigo...

- Vous allez travaillez et gagner de l'argent grace a l'open source:
  * en tant que dev c'est notre quotidien
  * l'ecosysteme startup et l'évolution tech depuis 2000 est possible grace a l'open source 

---
class: middle
.responsive[![](images/oss-knife.jpg)]

???
L'open source est une culture, qui sert de pilier à beaucoup de domaine et qui ouvre beaucoup de porte.
---

class: big-text, clist, center, no-bullet, middle
# .baseline.small[Why .alt-text[YOU] should contribute?]
--

- .eb[❤️] Love the philosophy
--

- .eb[📚] Learn and hone your skills
???
- tech, collaboration, review, 
--

- .eb[🤝] Build your network
???
- rencontrer des gens qui partagent vos valeurs et centres d'intérets
- trouver votre prochain boulot
--

- .eb[🙂] Fun!

---

class: middle, center

.w-30.responsive[![](images/dev-com-code.svg)]

???

Certes, un dev doit communiquer avec des machines

---

class: center
# .baseline[Development is .alt-text[Communication]]

.no-margin[
<br>
]
.col-5.responsive[![](images/dev-com-full.svg)]

???
Mais pas que!
- machines
- autres devs
- utilisateurs
- PMs
- toutes parties prenantes

---

class: center
# .baseline[Development is .alt-text[Communication]]

.no-margin[
<br>
]
.col-5.responsive.animation-fade-in.fade-in-delayed[![](images/dev-com-project.svg)]

???
Et ca c'est pour le 1er cercle (projet)

---

class: center
# .baseline[Development is .alt-text[Communication]]

.no-margin[
<br>
]
.side-layer.no-margin[
.col-5.responsive.zoom-out-circle[![](images/dev-com-project.svg)]
]
.col-5.responsive.animation-fade.fade-in-delayed[![](images/dev-com-circles.svg)]

???
- projet
- entreprise(s) (/autres projets)
- communautés (OSS, confs, meetups...)

! important pour éviter l'effect "echo chamber"
* only positive feedback from people close, because of habits and proximity...

---

class: contain, full, overlay-dark, middle, center
background-image: url(images/profile.png)
# .baseline[Contributions gives .alt-text[visibility]]

???
- portfolio
- faire-valoir technique
- aide au recrutement

---

class: cover, full
background-image: url(images/ok.jpg)

---

.center[
# Making your first contribution
]

.w-35.float-left.margin-right.space-right[
.responsive.rounded[![](images/no-fear.jpg)]
]
--
<br>
.large[You...]

- .large[**don't** have to be an expert]
--

- .large[**don't** have to write code]
--

- .large[**don't** have to ask permission]
--

- .large[**should** start small]
--

- .large[**should** not give up]

---

class: center
# **Step 1** - Choose a project
<br>
.large[.fab.fa-github[] &nbsp; [aka.ms/first-contrib](https://aka.ms/first-contrib)]

--

or 

.large[.fas.fa-terminal[] &nbsp; `npx good-first-issue` (requires [Node.js](https://nodejs.org))]

--

or

.large[.fas.fa-search[] &nbsp; On [GitHub.com](), look for .middle.mini-img[![](images/good-first-issue.png)]]

--
.do.ib[
> **#ProTip**: check project activity first!&nbsp;
]

---

class: center, clist
# **Step 2** - Work on the project
.large[Try it ➡️ .fab.fa-github[] &nbsp;[aka.ms/first-pr](https://aka.ms/first-pr)]

1. **Fork** project repository .large.middle.mini-img[![](images/fork.png)]
2. `git clone <your-project-fork>`
3. **Add or change** something
4. `git add <files> && git commit -m "<message>"`
5. `git push`
6. **Open PR** on GitHub .large.middle.mini-img[![](images/pr.png)]

--

.do.ib.no-margin[
> **#ProTip**: if you chose an open issue, assign it to yourself!&nbsp;
]

???
- Fixing docs, writing tutorial or just reporting bugs are contributions too!
- Adding tests

---

class: center, clist
# **Step 3** - Submit a Pull Request (PR)

.big-text[
1. Read contributions **guidelines** before submitting
2. Describe your changes and **motivation**
3. Be **patient** and open to feedback
]
--
.w-40.rounded.up.responsive[![](images/waiting.jpg)]

---
class: clist, hide-handle
.side-layer.right.space-right[
  <div style="height: 1em"></div>
  .w-45.responsive[![](images/helping.jpg)]
]

# Different ways to help

.bit-larger.w-50.no-margin[
- Promote the project
- Help answering questions
- Fix typos in documentation
- Write tutorials
- Translate documentation
- Report bugs
- Write unit tests
- Design a nice logo
- **You name it!**
]

---
class: contain, dark
background-image: url(images/why2.gif)
???
ca ne marche pas a tous les coups

---
class: contain, dark
background-image: url(images/success.gif)
???
ne vous découragez pas!




<!--
# Pratique
- contributor guide, CLA
- code of conduct
- chats: slack, gitter...

# Créer un projet OSS
- licence
- README
- contributor guide
- code of conduct
- tests, env with VSCode remote dev
- CI

events: hacktoberfest
 -->
---
class: full, center
background-image: url(images/hacktoberfest.png)

---
class: center, bottom, contain
background-image: url(images/os-friday.png)
background-position: center 15%
.large[[opensourcefriday.com](https://opensourcefriday.com/)]

---
exclude: true
class: impact
## .large[Making your .alt-text[OWN] OSS project]

---
exclude: true
# Your own OSS project

- 👉 [choosealicense.com](https://choosealicense.com)
- 🗒 Write a good **README.md**
- ❓ Add a contributor guide
- 👮 Add a [Code of Conduct](https://www.contributor-covenant.org)
- 🤖 Write automated tests
- 📢 Let the world know about it!

---

class: hide-handle, middle

# Thank you!

.side-layer.right.through.no-margin[
  <div style="height: .5em"></div>
  .w-15.responsive[![](images/bit-learning.png)]
]

.baseline[
- .w-35[[aka.ms/howto-oss](https://aka.ms/howto-oss)] → How to contribute to Open Source guide
- .w-35[[aka.ms/howto-github](https://aka.ms/howto-github)] → Free video course on GitHub OSS
- .w-35[[aka.ms/first-contrib](https://aka.ms/first-contrib)] → Find a good first contribution
- .w-35[[aka.ms/first-pr](https://aka.ms/git-azdo)] → Make your first PR in 5 min!
]
<hr class="hr-right more-space">

.col-4.small.text-left.float-left[
<div style="height: .5em"></div><br>
Slides:<br>
.large[bit.ly/contribute-oss]
]
.col-3.float-left[
  .responsive[![](images/bit-octocat.png)]
]
.col-5.right.large.middle.float-left[
.large.em-text[{]
.fab.fa-twitter[] .fab.fa-github[] .fab.fa-dev[]
.large.em-text[}] .e[@sinedied]<br>
]
