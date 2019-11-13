title: OMG! J'ai mis du TypeScript dans mon app Node!
class: animation-fade
layout: true

.twitter-handle[
  @sinedied
]

---

class: middle, right, hide-handle, dark
background-image: url(images/oh.jpg)

# .light-text[OMG!]
### .light-text[I put TypeScript in my Node.js app!]

.full-layer.stick-right.stick-bottom.who.text-right.small.middle.light-text[
  .ms.responsive[![](images/ms-full-logo-light.svg)]
  |
  Yohan Lasorsa
  |
  @sinedied
]

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

---

class: cover, hide-handle
background-image: url(images/ts.png)

???

- TS, c'est fait pour les gros projets!
- Meme les projets OSS s'y mettent: Vue3, Jest (done), Yarn (prevu)

---

# New in TypeScript 3.7

## Optional Chaining

```ts
let x = foo?.bar.baz();
// equivalent of
let x = (foo === null || foo === undefined) ? undefined : foo.bar.baz();
```

--
## Null coalescing

```ts
const a = number | null = 0;
const b = a || 42;  // b === 42
const c = a ?? 42;  // c === 0
```

---

class: impact
.big[TypeScript + Node.js = ❤️]

---

class: contain, dark, hide-handle
background-image: url(images/showme.gif)

---
class: contain, dark, hide-handle, full, center
background-image: url(images/nest.png)

.full-layer.stick-bottom.center[
# .large[👉 aka.ms/nitro-ws]
]
<br>
# .light-text[http://nestjs.com]

---

class: hide-handle

.big-text.no-bg.baseline[
```js
const end = {
  message: 'Thank you!',
  slides: 'bit.ly/nodejs-typescript'
};
```
]

.right.large.middle[
.large.em-text[{]
.fab.fa-twitter[] .fab.fa-github[] .fab.fa-dev[]
.large.em-text[}] .e[@sinedied]<br>
]

<hr class="hr-right more-space">

- [bit.ly/nodets-example](http://bit.ly/nodets-example) → Example Node.js + TypeScript repo
- [bit.ly/fuzzrun](http://bit.ly/fuzzrun) → NPM scripts runner with fuzzy matching
- [bit.ly/vscode-rest](http://bit.ly/vscode-rest) → REST Client extension for VSCode
- [bit.ly/az-node](http://bit.ly/az-node) → Deploying Node.js app on Azure

