title: The fast and the furious developer
class: animation-fade
layout: true

<!--
"Comment peut-on aller plus vite?" - Qui n'a jamais entendu et subi les travers de cette question dans un projet?

Les développeurs sont pourtant très efficaces dans leur coeur de métier qui est la production de code, mais une grande partie de cette efficacité se perd très souvent au milieu des nombreux process et meetings intermédiaires. La communication reste pourtant un point crucial de ces process, un développeur devant communiquer avec presque tout le monde: le produit, les designers, les autres développeurs, les manageurs, etc.

En tant que développeur, je souhaite partager les pièges et fausses bonnes idées que j'ai pu entendre et subir dans différents projets. Nous analyserons tous cela ensemble pour découvrir comment éviter de faire perdre du temps aux développeurs (et les rendre furieux au passage), pour leur permettre d'exploiter leur plein potentiel et redevenir rapides et efficaces.

Make your developers fast again!

Bénéfices de la session :
- Mieux comprendre les points de stress quotidien d'un dev au sein d'un process Agile
- Découvrir les pièges fréquents à éviter qui font perdre du temps (et de l'argent) à vos équipes
- S'approprier les liens indissociables entre temps de développement et qualité logicielle
- Accepter l'impact technique de l'organisation et du planning projet, et inversement
 -->

.twitter-handle[
  @sinedied
]

---

class: bottom, left, hide-handle
background-image: url(images/fast-dev.jpg)
background-position: center center


.full-layer.who.text-right.small.middle.light-text[
  .w-10.responsive[![](images/agile-gre.png)]<br>.bottom.bit-larger[**Agile Grenoble 2019**]<br><br>
  .ms.responsive[![](images/ms-full-logo-light.svg)]
  |
  Yohan Lasorsa
  |
  @sinedied
]

---

class:  center, middle
# .large[Developer time]

???
Parlons de l'utilisation du temps d'un dev
- A quoi passe-t-il son temps?

---

class:  center, middle
# .large[Developer time]

.devtime[
.w-100.tbar.progress[100% Writing code]
]

???
- Beaucoup voient un dev ideal comme quelqu'un qui ecrit juste du code
- Qui pense comme ca?

Si vous arriver a trouver un dev comme ca, vous etes surement tombé sur...

---

class:  center, middle
# .large[The<br>.large[.big[**10x**]]<br>Developer]

???
- Qui a deja entendu parlé de 10x developer/engineer?

- PS: je ne fais pas de disctinction dev/engineer

---

class:  center, middle
# .large.baseline[The .animated.swing.ib.alt-text.small[(mythical)]<br>.large[.big[**10x**]]<br>Developer]

???
- Vous en avez peut etre deja vu ou non,

- Il a eu beaucoup de debat sur twitter ces derniers temps sur ce sujet

---

class: middle, center, hide-handle, dark, light-text

.w-60.responsive[![](images/10x-tweet.png)]

.small[https://twitter.com/skirani/status/1149302828420067328]

???
- Vous avez peut etre deja vu ce thread?
- Si non, je vous invite a aller le lire un peu plus tard...

- Il decrit les carac d'un dev 10x:
  * pas de meeting
  * travaillent en solo
  * du code de qualité qui n'a pas besoin d'etre refactoré
  * regardent jamais la doc (connaissent par coeur)

---

class: center, middle
# But it's all wrong.

???
On reste dans le cliché du dev geek solo dans son coin...

Ma présentation d'aujourdhui est en partie la pour metter un bon coup de pied a tout ca,
et voir vraiment ce qui est important pour qu'un dev soit efficace... dans une EQUIPE.

---

class: primary, light-text, center, middle
# .baseline.light-text[Development is all about]<br>.alt-text.large[**communication**]

???
- Le developpement c'est du teamplay
- Meme pour le side projects perso (github, twitter etc...)

---

class: dark, contain
background-image: url(images/why2.gif)

???

Ne prenez pas peur, on va prendre le temps de détailler tout ca...

---

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

???

- For the last 10 years, I've worked as a dev in:
* research, many ESN projects, product team

- j'ai experimenté toutes sortes de methodes Agiles: SCRUM, Kanban, Lean, La Rache(tm)

Now I started working as a dev advocate, and I'll do just that: advocate for developers :)

---

class: left, middle
# Why "solo-style" development is bad?
.bit-larger[
- Product communication (estimates, specs, feedback)
- Dev communication (knowledge sharing, tech decisions)
- Code quality (reviews, breaking changes, conflicts)
]

---

class: cover, impact, middle, center
background-image: url(images/tunnel.jpg)

<br><br><br><br><br><br><br><br>
## Tunnel effect

???

Effet tunnel
Anecdote du gars qui s'est enfermé 3 semaines pour coder une API estimée a 3 mois par son équipe

---

class: middle, center

.w-30.responsive[![](images/dev-com-code.svg)]

---

class: center
# .baseline[Development is .alt-text[Communication]]

.no-margin[
<br>
]
.col-5.responsive[![](images/dev-com-full.svg)]

???
- with machine
- with other devs
- with stakeholders
- with end-users
- with PMs

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
- entreprise
- communautés

En general, plus un dev prend de l'experience, plus son cercle de communication s'agrandit

! important pour éviter l'effect "echo chamber"
* only positive feedback from people close, because of habits and proximity...

- Dev vs conferences
Ce n'est pas que pour aller boire des bieres

---

class: middle, light-all, light-text
.full-layer.full-left.v-center-flex.w-30[
  .responsive[![](images/angry.jpg)]
]
.full-layer.v-center-flex.full-right.w-70.red.space.big-text[
  # #angry
  « Black hole » projects &nbsp;&nbsp; .ib.rotating[![](images/bhole.png)]
]

???
- All in, nothing out
- Aucune contribution/echange externe au projet

---

class:  center, middle
# .large[Developer time]

.devtime[
.w-50.tbar[50% Coding].w-50.tbar.alt[50% Communication]
]

???

- Moitié echange, moitié du temps aux activités de codage
- Non exclusif: pair programming = les 2 en meme temps
- Maintain: (refactor, update, fix...)
- “Indeed, the ratio of time spent reading versus writing is well over 10 to 1. We are constantly reading old code as part of the effort to write new code. ...making it easy to read makes it easier to write.”

Robert C. Martin, Clean Code: A Handbook of Agile Software Craftsmanship

---

class: full, center, middle, cover, overlay-dark
background-image: url(images/teamplay.jpg)

## .large[Development<br> = <br>.alt-text[Communication]<br> + <br>.red-text[Teamplay]] 

???
* code communities (OSS...)
* stakeholders
* clients, end-users
* manager

---

class: impact
# .ib.animated.zoomIn[Team size]

---

class: contain, hide-handle
background-image: url(images/lines-com.jpg)

???
- Plus de gens, plus de lignes de communications
- Plus de chance que la com se deteriore et que les infos circulent mal

---

class: middle

# Brooks' law
<br>

.quote.large[
> Adding human resources to a late software project makes it later.
]

???
Frederick Brooks
- Il faut savoir quand faire entrer des nouvelles personnes sur un projet
- Plus de gens ne veut pas dire plus rapide/efficace

---

class: middle, light-all, light-text
.full-layer.full-left.v-center-flex.w-30[
  .responsive[![](images/angry.jpg)]
]
.full-layer.v-center-flex.full-right.w-70.red.space.big-text[
  # #angry &nbsp; .w-50.responsive[![](images/lemmings.gif)]
  Don't add new devs and expect your team to figure it out
]

???
- il faut planifier
- prevoir le ramp-up et la dispo des autres
- ne pas imaginer qu'un dev va etre immediatement efficace (ex criteo)

---

class: center, middle

# Microservices, Microfrontends
--

# .large.alt-text.animated.ib.bounceIn[.large[MICROTEAMS]]

???
- microservices, microfrontends?
  * split responsibilities, reduce team size

Si votre projet n'avance pas assez vite, commencez par voir si il n'y a pas trop de gens...

Pas intuitif, et pourtant!!!

---

class: cover, full, hide-handle, middle
background-image: url(images/balance.jpg)

## .large[Team balance]
<div style="height: .9em"></div>

???
composition d'equipe

---

class: cover, center
background-image: url(images/junior.jpg)
# You need senior devs

???
- Need to learn
- Quality
- Senior != I'm always right
- Senior = teach, mentor, guide (& learn)
- Key is open discussion, everyone with equal weight

---

class: cover, full, hide-handle, center, bottom, bg-offset-bottom
background-image: url(images/senior.jpg)
# But you also need juniors

???
- Seniors devs (with project legacy) tend to overestimate
- Juniors devs tend to underestimate
- Faites tourner vos equipes

---

class: impact
## Don't forget the most important thing...

---

class: full, middle, overlay-dark
background-image: url(images/trust.jpg)

.no-margin[
Everything depends on
# .large[.large[Trust]]
]

???
Ne pas oublier la CONFIANCE!
- recoder derriere son collegue
- "surveiller" son equipe / micromanagement
- avoir confiance dans les choix produits/UX

MAIS ca fonctionne dans les 2 sens

---

class: middle, light-all, light-text
.full-layer.full-left.v-center-flex.w-30[
  .responsive[![](images/angry.jpg)]
]
.full-layer.v-center-flex.full-right.w-70.red.space.big-text[
  # #angry &nbsp; .w-40.responsive.rounded[![](images/big-brother.jpg)]
  - Daily standup as report duty
  - Micro management
  - No work flexibility
]

???
- agile = reporting
- flexible work
twweet shirley teletravail

---

class: impact
## .large[Estimate & deliver]

---

class: middle, center, hide-handle, dark, light-text

.w-80.responsive[![](images/ddd.png)]

.small[https://twitter.com/nick_craver/status/1180624053805240326]

???
Deadline-driven development

---

class: middle, center
.baseline[
# .bit-larger[Planning with estimations]
.ib.left.no-margin.big-text[
- Aknowledge **uncertainty**
- Need to refine? **Split** up
- Don't **micro-estimate**
]
]

???
- senior vs junior, balance your teams

---

class: middle, center

# .sketch.large[Estimation tips]
.ib.left.no-margin.larger[
- Roadmaps: use **buckets**
- Sprints: split and use **points**
- Do **short sessions** (1-2h)
- Unclear about spec/tech? **put aside**
]

.w-60.responsive[![](images/buckets.jpg)]

???
- roadmap: 3-6 month -> buckets
- sprint -> split + points
- short sessions 1-2h MAX
- if unclear or subject to (tech) debate

---

class: contain, hide-handle, dark, center
background-image: url(images/man-month.png)
# .light-text[Man month drama]

???
Mythical Man Month
- more people, more complexity != more speed

---

class: contain, dark, light-text
background-image: url(images/story-points.png)

???
Tout le monde connait bien ca j'imagine
- rule of 3 = days \o/
- Pressure and irrealistic goals!!!
* impact morale
* perverse negative effects (= estimation overhead, quality loss)

---

class: contain, dark, light-text
background-image: url(images/spent-time.jpg)

---

class: cover, full, light-text, bottom, overlay-dark, center
background-image: url(images/sad.jpg)

# Estimates in hours/days impact **morale**
<br>
???
You will never win...

---

class: middle
.baseline.big-text.no-bullet[
# Estimate vs time spent
- .eb[😱] **Under** > bye bye tests & quality
- .eb[🤫] **Slightly over** > let's catch up UT/refactoring
- .eb[😎] **Way over** > what's next story?
]

---

class: middle, center, big-text, full, cover
background-image: url(images/underwater.jpg)
# .small[Leave room for breathing]

--
& define sprint **goals**

---

class: middle
.quote.large[
> It's just a [button]?

.right[
— *Every product owner*
]
]

???
- Existing code vs Design vs Data vs Constraints vs Tests

---

class: center, botton, contain
background-image: url(images/button1.png)

---

class: center, botton, contain
background-image: url(images/button2.png)

---

class: middle, center, clist
# Don't challenge to **retrofit** your backlog
--

.big-text[
- Ask about tech difficulties
- Aim lower and adapt
]

---

class: cover, full, center
background-image: url(images/measure.jpg)
## .large[.large[Measure]]
Otherwise it's just a lucky guess

???
ce qui est important c'est de mesurer l'avancement,
pas de

---

.col-6.ib.left[
# .green-text[We measure (KPI)]

.no-margin.no-hmargin[
### Usage
- Acquisition
- Engagement / Satisfaction / Churn
- Feature usage
<br><br>
]
.no-margin.no-hmargin[
### Velocity
- Time to build / test / deploy / learn
<br><br>
]
.no-margin.no-hmargin[
### Production health
- Time to detect / inform / mitigate
- Customer impact
- SLA per customer
]
]
--
.col-6.float-right.space-left.left[
# .red-text[We don't watch]

.no-margin.no-hmargin[
### Useless metrics
- Original estimate
- Completed hours
- Team capacity / velocity
- Burndown
- \# of bugs found
- Lines of code
<br><br>
]
.center.large[.large[.large[🙅‍♀️]]]
]

???
Measure what's meaningful to you

---

class: impact
## .large[Growth culture]

---

class: full, center, over
background-image: url(images/grow.jpg)

# Learn & share

???
- Et si machin se casse une jambe?
- La connaissance doit etre partagée
- Prevoyez du temps de partage! doc, meeting, pair
- Pair programming
- Voyager

---

class: center, middle
# .baseline[.red-text[Test,] .green-text[code,] refactor]

???
- pas seulement un mantra du TDD, c'est pour le bien de VOS APPS
- refactoring = dette, qui se paye a chaque nouvelle feature

---

class: right, full, cover, big-text, no-bullet, overlay-dark, light-text
background-image: url(images/tools.jpg)

# **Tools**
--

- "We only use **OSS**" .small[(because it's free 😓)]

--

## .alt-text[You should consider]

- Premium tools for **productivity**
--

- **Off-the-shelf** before homemade
--

- Tailored **helper tools**

???
## TOOLS
- OSS tools vs premium tools
- Lib licences
- Recode your own thing vs on-the-shelf
- Invest in your own tooling!

---

# "We tried, but nobody listens..."
--

.large[Potential gain: **15 min/day** for **500€ yearly** license]<br><br>

--
.float-left.w-30.space-right.no-margin[
  .responsive[![](images/calc.jpg)]
]

--
.float-left[
### Cost of *not having* this license
- Minute cost: 500€ / (8 * 60) = __1.04€__
- Yearly cost: 200 \* 15 * 1.04 = __3120€__

]
--

.float-left[
### Gain of *buying* licences for the team
- 5 devs * (3120 - 500) = __13100€__

]

---

class: middle, light-all, light-text
.full-layer.full-left.v-center-flex.w-30[
  .responsive[![](images/angry.jpg)]
]
.full-layer.v-center-flex.full-right.w-70.red.space.big-text[
  # #angry
  - Pair prog. is a waste of time
  - Refactoring is a waste of time
  - Wasting time with unsuited tools
]

---

class: cover, center, full, big-text
background-image: url(images/focus.jpg)

# Focus

---

class: contain, dark, no-handle
background-image: url(images/interrupt.jpg)

???
La zone!
- interruptions are bad => we need continuous focus time
- context switching COST A LOT
- open (shouting) spaces
- plan ahead (we are agile)

---

class: big-text, center, clist, middle, no-bullet
# Improve focus
.baseline[
- .eb[🤝] Focus days/meeting days
- .eb[🧹] Interrupt chore (with rotation)
- .eb[💬] Async messaging: Slack, Teams...
- .eb[🏠] Remote work
]

???
- "Hey t'as vu mon message sur slack?"
- Etiquette Slack
- Presentiel, rester tard = bien vu

---

class: middle, light-all, light-text
.full-layer.full-left.v-center-flex.w-30[
  .responsive[![](images/angry.jpg)]
]
.full-layer.v-center-flex.full-right.w-70.red.space.big-text[
  # #angry
  - Open shouting spaces
  - Headphones = please come later
  - Hey, did you see my email?
]

???
- Hey, t'en es ou sur la tache XXX?

---

class: impact
## .large[Wrapping up]

---

class:  center, middle
# .large[Developer time]

.devtime[
.w-50.tbar[50% Coding].w-50.tbar.alt[50% Communication]
]

.w-50.float-left.no-bullet.baseline[
.left[
- .w-20.ibar[.s[20%]] Read code
- .w-10.ibar[.s[10%]].w-10[] Write feature code
- .w-10.ibar[.s[10%]].w-10[] Write test code
- .w-10.ibar[.s[10%]].w-10[] Fix, update, refactor code
]
]
.w-50.float-left.no-bullet.baseline[
.left[
- .w-20.ibar.alt[.s[20%]] Design, estimate, challenge
- .w-15.ibar.alt[.s[15%]].w-5[] Learn, share
- .w-10.ibar.alt[.s[10%]].w-10[] Read docs, specs
- .w-5.ibar.alt[.s[5%]].w-15[] Write docs
]
]

---

class: big-text, center
# .small[How to keep your devs fast?]
Refine **communication flows**<br>
--
Allow them to **focus**<br>
--
Invest in **good tools**<br>
--
Don't **micro-manage**<br><br>
--
.large[**Trust** them.]

---

class: center, middle
### Otherwise...
.w-50.responsive[![](images/rageface.png)]

???
Devs content = 12% plus productifs

---

class: middle, hide-handle

.big-text.no-bg.baseline[
As a **developer**,<br>
I want to **THANK YOU**<br>
Because **of your presence**.
]
.large.baseline[
Slides: [bit.ly/fastdev](https://bit.ly/fastdev)
]
<hr class="hr-right more-space">
.right.large[
.large.em-text[{]
.fab.fa-twitter[] .fab.fa-github[] .fab.fa-dev[]
.large.em-text[}] .e[@sinedied]<br>
]

<!--
# Wrapping up

Dev = Understand, Challenge, Design, Estimate, Build, Test, Learn, Write docs, Deliver, Maintain

1. Write feature code
2. Rewrite existing code (maintain, fix, perf...)   | write other code
2. Write tests                                      |
3. Read code, docs, specs                           | understand & learn
3. Learn: pair, docs, share                         |
4. Write docs                                       | collaborate
4. Discuss: challenge, design, estimate, share      |
-->
