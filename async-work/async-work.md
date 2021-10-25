title: Highly available, distributed & resilient software... team
class: animation-fade
layout: true

<!--
Design patterns for building distributed, resilient, and scalable web applications are well known today. However, setting up a project organization to build them effectively remains a challenge, especially when the team itself is distributed. The "human" factor is a source of problems that are difficult to predict.

What would happen if you could take inspiration from the architecture of your applications to improve the communication of your teams?

Microservices, message queues, load balancers, caches, sharding, decoupling... These architectural concepts are designed to improve digital exchanges within our apps, and above all to anticipate and manage failures.
By modeling the exchanges within your team as software architecture, we will see how these design patterns can also be effective in solving our communication issues, very human this time.

Les design patterns pour concevoir des applications web distribuées, robustes et qui passent à l'échelle sont bien connus aujourd'hui. L'organisation de projet permettant de les mettre en place de manière efficace reste cependant un challenge, le facteur "humain" étant source de problèmes difficile à prevoir.

Et si vous vous inspiriez de l'architecture de vos applications pour améliorer la communication de vos équipes?

Microservices, messages queues, load balancers, caches, sharding, arbitrage, découplage... Ce sont autant de concepts d'architecture conçus pour améliorer les échanges numériques au sein de nos apps, et surtout anticiper et gérer les défaillances. 
En modélisant les échanges de vos équipes comme une architecture logicielle, nous allons voir comment ces design patterns sont aussi efficaces pour solutionner nos problèmes de communication, bien humains cette fois.

A la croisée des chemins entre technique et soft skills, je vous propose de découvrir:
- Comment modéliser une organisation de projet comme un logiciel
- Quels solutions techniques appliquer pour différents problèmes, et leur traduction au monde "humain":
  * Scalabilité
  * Distribution géographique
  * Robustesse et failover

# Mind map
- Service -> team
- Data -> Info (communication)
- Microservices -> small teams
- Queues -> backlog, email
- Load balancing -> PMs, help, teammate
- Caches -> meeting recordings, presentations, minutes/notes
- Sharding -> team spéciality
- Arbitrage -> Team lead
- Server DNS -> PMs (scrum master), annuaire
- Message broker/Pub/Sub -> Team chat / mailing lists
- DB -> wiki-like system
- Decoupling -> Autonomous teams
- Distributed Lock (Stateful) -> Meeting
- MapReduce -> summary, minutes

3h55->4h55
45min + 5min questions
KILI34
-->

.twitter-handle[
  @sinedied
]

---

class: hide-handle, middle, full, center
background-image: url(images/remote-devfest.jpg)

.title-new[
  <br>
# .baseline.light-text.graffiti[Highly available, .alt-text[distributed] <br>& resilient software... .alt-text[team]]<br><br>&nbsp;
]

.full-layer.who.text-right.small.middle.light-text.darkened[
  .ms.responsive[![](images/ms-full-logo.svg)]
  |
  Yohan Lasorsa
  |
  @sinedied
]

---

class: middle, center, full
background-image: url(images/7laux.jpg)
# .graffiti[Back story]

???

Je suis un dev qui vient de la région Grenobloise, et j'aime decouvert que j'aimais beaucoup partager avec les autres. Il y a un peu plus de 2 ans maintenant, j'ai voulu tenter un changement pour un poste qui m'attirait de plus en plus, celui de Developer Advocate. Le pb, c'est que:
- c'est un club très fermé, avec peu de postes ouverts
- la quasi totalité des postes en France sont à Paris

C'est ce qui m'a finalement amené à passer en full-remote, bien que je sois a la base quelqu'un qui préfere les intéractions en personnes (et particulièrement pour les conf, mais on fait avec son temps)

---

class: middle, center, full
background-image: url(images/confetti.jpg)
<!-- # .graffiti.more-shadow[Why this talk?] -->
# .graffiti.more-shadow[What this talk is (really) about]

???
- Qui bosse en remote ici? Qui a eu des galeres?

J'avais envie de partager mon expérience, et ce que j'en ai appris sur ce qui marche ou pas, ayant eu la chance d'avoir vecu un passage en remote non forc,.

Et comme je trouve ca extremement dur de faire un talk qui parle de soft skills pour moi qui suis plutot tech, j'ai voulu raccrocher ce talk autour de concepts tech qui sont beaucoup plus facile pour moi à aborder.

J'ai trouvé que cet angle d'approche permettait de faire des paralleles intéressants, maintenant c'est vous qui me direz ca la fin :)

---

class: middle, center, hide-handle
# .large.sketch[Who am I?]

.table.row.middle[
.col-4.center[
  .w-70.responsive.avatar.tada.animated[![](images/profile-bg.jpg)]
]
.col-8.bit-larger.left.middle[

.responsive[
<object data="images/me.svg"></object>
]
]
]

???
Et vous?
Who are you? answer in the chat!

---

class: full, center, bottom, hide-handle
background-image: url(images/team.png)

# .sketch[My team]
???
- Je travaille dans une equipe distribuée mondialement
- ~ 150p
- Qui bosse dans une equipe internationale?

---

exclude: true
class: middle, center
# .large.sketch[What this talk is (really) about]

???
- REX
- Ideas for building your own communication model

---

class: big-text, middle, clist, center
# .sketch[Agenda]
- .sketch[Geographic distribution]
- .sketch[Scalability]
- .sketch[Reliability]

???
On va aborder les systemes distribuées sous 3 points:
  * Distribution géographique
  * Scalabilité
  * Robustesse et failover

---

class: middle, center, big-text
# .sketch[Mind Map]
.responsive[
<object data="images/mindmap.svg"></object>
]

---

class: center, middle, big-text, impact
# .sketch[Geographic distribution]

---

class: center, middle, big-text, clist
# .sketch[(Some) Problems]
.responsive[
<object data="images/latency.svg"></object>
]

---

class: center, middle, big-text, clist
# .sketch[(Some) Problems]
.responsive[
<object data="images/sync.svg"></object>
]

---

class: center, middle, big-text, clist
# .sketch[(Some) Problems]
.responsive[
<object data="images/coherency.svg"></object>
]

???

Data that is coherent is data that is the same across the network

---

class: impact
# .sketch[Possible solutions]

---

class: center, middle
# .sketch[Overcoming latency]
.w-60.responsive[
<object data="images/cdn.svg"></object>
]

---

class: center, middle
# .sketch[Overcoming latency]
.w-80.responsive[
<object data="images/aggregation.svg"></object>
]

---

class: center, middle
# .sketch[Overcoming coherency]
.w-50.responsive[
<object data="images/centralization.svg"></object>
]

---

exclude: true
class: center, middle
# .sketch[Overcoming synchronization]

???
This one is a bit more tricky...
---
exclude: true
### .sketch[Which consistency model?]
???
Dans un systeme distribué, il n'existe pas de modele parfait pour synchroniser des données, on parle plutot de modele de consistence, et il en existe beaucoup:
- strict -> tout le monde est synchro des changements dans un meme cycle (instantané), impossible a réaliser quand on a des écritures parraleles possibles
- sequentiel
- causal, -> on détermine les liens relatifs
...

--

.w-60.responsive[
<object data="images/complicated.svg"></object>
]

---

class: center, middle
# .sketch[Overcoming "synchronization"]
.w-80.responsive[
<object data="images/transaction.svg"></object>
]

???
On bloque tout le monde le temps de faire circuler l'info, le temps qu'on soit sur que l'info soit bien passé.

Le schéma est très simplifié par rapport à ce que l'on devrait faire dans un systeme distribué :) (2 phase locking...)

---

class: center, middle
# .sketch[Translation to the "human" world]
.w-80.responsive[
<object data="images/human-eq.svg"></object>
]

---

class: center, middle
.responsive[
<object data="images/mapping.svg"></object>
]

???
- CDN -> PMs, Team Lead, recordings / minutes
- Bundling -> nohello, emails with context
- Centralization -> Wiki-like system / Backlog
  * il faut éviter une persone SPOF!
- Transation -> Meeting

On s'est demandé a quoi servaient les managers...

---

class: center, middle
# .sketch[Human problems]
.w-40.responsive[
<object data="images/not-robot.svg"></object>
]

???
Problem: we are not machines, we have downtime xD

- async first // chat, emails
- indicate who's up and down
- timeszones: https://everytimezone.com/

---

class: full, right, center
background-image: url(images/tz.png)

### .light-text[https://everytimezone.com]

???
Si vous etes dans une team internationale, ce genre d'outil va vite devenir votre ami!

---

class: center, middle
# .sketch[Synchronous communication is .alt[&nbsp;difficult&nbsp;]]
???
Sync is easy in person, meme de facon respectueuse: je jette un oeil si t'es occupé, hop on parle 5min. Pareil avec une équipe.

A distance, pas vraiment faisable...

???
Chat, emails

// Questions????

---

class: center, middle, big-text, impact
# .sketch[Scalability]

???
=> 15min

Ce qui nous amène a d'autres problèmes...

Comment on gère un passage à l'échelle en mode distribué?

---

class: center, middle
# .sketch[(Some) Problems]
.w-70.responsive[
<object data="images/overload.svg"></object>
]

---

class: center, middle
# .sketch[(Some) Problems]
.w-70.responsive[
<object data="images/communication.svg"></object>
]
???
Comment on fait circuler les données?

---

class: impact
# .sketch[Possible solutions]

---

class: center, middle
# .sketch[Overcoming load issues]
.w-70.responsive[
<object data="images/scaling.svg"></object>
]

---

class: center, middle
# .sketch[Overcoming load issues]
.w-60.responsive[
<object data="images/microservices.svg"></object>
]

???
Fun fact!

No need for parallel here, as microservices also aims to solve big teams issues ;)

---

class: center, middle
# .sketch[Overcoming load issues]
.w-40.responsive[
<object data="images/sharding.svg"></object>
]

???
Diviser la quantité de données,
reste à savoir le critère:
- par utilisateur
- par type (tous les avatars ensembles...)
- par position géographique

---

class: center, middle
# .sketch[Overcoming communication issues]
.w-80.responsive[
<object data="images/decoupling.svg"></object>
]

???
Reduce service to service communication

=> make each service autonomous

---

exclude: true
class: center, middle
# .sketch[Overcoming communication issues]
.w-90.responsive[
<object data="images/cache.svg"></object>
]

???
When many clients want to access data at the same time

Caching is a bit like CDN, but for data that changes a lot. Flatter hierarchy are prefered and easier to update, but sometimes anavoidable in large systems

---

class: center, middle
# .sketch[Overcoming communication issues]
.w-50.responsive[
<object data="images/mapreduce.svg"></object>
]

???
Too many data!

1. Process raw data
2. Aggregate / extract essential info

---

class: center, middle
# .sketch[Translation to the "human" world]
.w-80.responsive[
<object data="images/human-eq.svg"></object>
]

---

class: center, middle
.responsive[
<object data="images/mapping2.svg"></object>
]

???
- Scaling -> Recrutement
- Microservices -> small teams
- Sharding -> team specialty
- Decoupling -> make team autonomous, sometimes conflict with sharding // duplicate specialty? (ex. devops, design)
- Caching -> All hands / Town Hall
- Map reduce -> Manager / AMA

???

=> Questions?

---

class: center, middle, big-text, impact
# .sketch[Reliability]
???
=> 30min

Fiabilité, comment faire en sorte que ca marche

---

class: center, middle
# .sketch[(Some) Problems]
.w-80.responsive[
<object data="images/highavailability.svg"></object>
]
???
Haute dispo: on veut que ca continue de marcher meme quand un service tombe

---

class: center, middle
# .sketch[(Some) Problems]
.w-80.responsive[
<object data="images/lostdata.svg"></object>
]
???
Lost data

---

class: center, middle
# .sketch[(Some) Problems]
.w-80.responsive[
<object data="images/monitoring.svg"></object>
]
???
Comment on s'assure que tout va bien

---

class: impact
# .sketch[Possible solutions]

---

class: center, middle
# .sketch[Implementing high availability]
.responsive[
<object data="images/failover.svg"></object>
]

???
load balancing (et arbitrage) / failover 2 concepts différents

Ce qui important c'est la redondance, et de planifier une stratégie en cas de pb

Parler du chaos engineering

---

class: center, middle
# .sketch.baseline[Overcoming data loss: .alt-text[storage]]
.w-35.responsive[
<object data="images/backup.svg"></object>
]

???
- Backups

---

class: center, middle
# .sketch.baseline[Overcoming data loss: .alt-text[writing]]
.w-90.responsive[
<object data="images/queue.svg"></object>
]

???
Stockage intermédiaire avec une garantie de de remise

---

class: center, middle
# .sketch.baseline[Overcoming data loss: .alt-text[reading]]
.w-35.responsive[
<object data="images/retry.svg"></object>
]

???
Si on ne recoie pas les données, on retente

---

class: center, middle
# .sketch[Implementing monitoring]
.w-60.responsive[
<object data="images/health-checks.svg"></object>
]

???
Health checks

---

class: center, middle
# .sketch[Implementing monitoring]
.responsive[
<object data="images/monitor.svg"></object>
]

???
1. measure, what to measure??? -> what matters
2. metrics -> what are your goals?
3. alerts -> something's wrong -> action

Transparency!!!

---

class: center, middle
# .sketch[Translation to the "human" world]
.w-80.responsive[
<object data="images/human-eq.svg"></object>
]

---

class: center, middle
.responsive[
<object data="images/mapping3.svg"></object>
]

???
- load balancing / failover -> timezones! knowledge sharing / pair prog / meetings / docs
- backup -> colleague :) / plan ahead!
- queue -> backlog
- retry -> retry! | differents channels [mail bailout / skip meetings]
- health checks -> status reports, ping, remote coffee, eNPS, surveys, let the team know your leaves

ENPS: Recommanderiez-vous à l’une de vos connaissances de venir travailler dans notre entreprise ?

- monitoring -> measure what matters: OKRs / transparency / dashboard partagé (avoid ladders!), 1-1

Transparency!!

---

class: center, middle, impact
# .sketch[There's more...]

---

class: center, middle
# .sketch[Security]
# .sketch[Persistence]
# .sketch[Updating]
# .sketch[Openness]
# .sketch[Heterogeneity]
# .sketch[...]

---

class: center, middle
# .sketch[We're human (after all)]
.w-40.responsive[
<object data="images/not-robot.svg"></object>
]

???
Modeliser une organisation sous la forme d'une archi logicielle peut aider a trouver des solutions pragmatiques

Il faut pas perdre de vue quelque chose d'essentiel,
dans un monde distant, on l'on a tendance a ne plus exister uniquement qu'a travers ce que l'on produit

---

class: center, middle
# .sketch[We're human (after all)]
.w-60.responsive[
<object data="images/human.svg"></object>
]

???
We need positive things!
We need to tell when something's wrong!

- Share status: fun fact? are you ok?
- Share success (Kudos!)
- Team activities (Games, Cooking, Remote coffee)
- BREAKS!

---

class: middle, center, hide-handle

.w-80.responsive[
<object data="images/thanks.svg"></object>
]