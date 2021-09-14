title: Les web apps multi écran, c'est pas sec... mais on s'est jeté à l'eau
class: animation-fade
layout: true

.twitter-handle[
  @sinedied | @olivierleplus
]

<!--

# Historique(s) 5min - Yohan
- Web/RD + GameWatch/Nintendo DS
* From desktop first to mobile first
* demain? foldavle first?

# Etat de l'art: c'est pas sec 5min - Olivier
* Window Segment + CSS primitives
* Device Posture
+ question dev

# Demo: plouf 10min - Olivier
Vanilla HTML/JS/CSSx

# UI/patterns 5min / tous les 2 / images
* discussion? qu'est ce que vous avez en tete?
 * list/detail
 * 1 ecran a la fois
 * twitch + comments
 * jeux videos/MK/bataille navale
+ question dev

# Comment on dev? 10min - Yohan
- Tools/emulateurs + SETUP EMULATOR
- Polyfills / CS JSS
- Problemes
+ question dev

# NGX foldable/React 10min - Yohan
- Demo gallery app

-->

---

exclude: true
class: left, hide-handle, middle, overlay-grey
background-image: url(images/duo-banner.jpg)

.title-new[
# .large.light-text[Multi-screen experiences]
## For the mobile web
]

.full-layer.who.text-right.small.middle.light-text[
  .ms.responsive[![](images/ms-full-logo.svg)]
  |
  Yohan Lasorsa
  |
  Olivier Leplus
]

---

class: left, hide-handle
background-image: url(images/plouf.jpg)

.title[
# .large.light-text[Les web apps multi-écrans]
## C'est pas sec... mais on s'est jeté à l'eau!
]

.full-layer.who.text-right.small.middle.light-text[
  .ms.responsive[![](images/ms-full-logo.svg)]
  |
  Yohan Lasorsa
  |
  Olivier Leplus
]

.full-layer.text-left.full-bottom.stick-left.no-margin[
  .w-40.responsive[![](./images/rivieradev.svg)]
]

---

class: center, middle, hide-handle
# Who are we?

.table.row.middle.center[
.col-2[]
.col-4.center[
  .w-70.responsive.avatar.bounceInLeft.animated[![](images/photo.jpg)]

  **Yohan Lasorsa**<br>
  .fab.fa-twitter[] .e[@sinedied]
]
.col-4.center[
  .w-70.responsive.avatar.bounceInUp.animated[![](images/olivier.jpg)]

  **Olivier Leplus**<br>
  .fab.fa-twitter[] .e[@olivierleplus]
]
]

---

class: center, middle, hide-handle
# Who are we?

.table.row.middle.center[
.col-2[]
.col-4.center[
  .w-70.responsive.avatar[![](images/photo.jpg)]

  **Yohan Lasorsa**<br>
  .fab.fa-twitter[] .e[@sinedied]
]
.col-4.center[
  .w-70.responsive.avatar[![](images/olivier.jpg)]

  **Olivier Leplus**<br>
  .fab.fa-twitter[] .e[@olivierleplus]
]
]

.large[👉 [aka.ms/foldable-feedback](https://aka.ms/foldable-feedback) 👈]

---

class: impact
## .big.book[Once upon a time...]

---

class: contain
background-image: url(./images/web-before.jpg)

???
~ 1960-2000

---

class: impact
## .large.book[Then came new devices...]

---

class: contain, hide-handle
background-image: url(./images/web-after.jpg)

???
- 2007 Iphone
- 2008 Android

---

class: impact
## .large.book[And someone had an idea.]

---

class: middle, center
.script.big-text[
.quote[
> .book.small[Your web apps shall be responsive!]
]
]

???
2010

---

class: impact
## .bit-smaller.book[Responsive web design was born.]

---

class: impact
## .large.book[But something wasn't right!]

---

class: contain
background-image: url(./images/desktop-first.png)

---

class: impact
## .large.book[Someone else had *another* idea.]

---

background-image: url(./images/drake-mobile.png)

???
2011

---

class: impact
## .large.book[Then came new devices.]

---

class: contain
background-image: url(./images/gw.jpg)

---

class: impact
## .large.book[Not this one.]
## .small.book[( It's older than the web! )]

???
1982

---

class: contain
background-image: url(./images/ds-fat.jpg)

---

class: impact

.row.table.middle[
.col-1[
  .big[.big[.big.book[(]]]
]
.col-10[
## .book.bit-smaller[Still a bit wrong.]
## .small.book[This one came before the mobile web.]
]
.col-1[
  .big[.big[.big.book[)]]]
]
]

???
NDS: 2004

---

class: contain
background-image: url(./images/3ds.jpg)

???
3DS: 2010, has web browser!

---

class: contain
background-image: url(./images/duo.jpg)

???
2020

---

background-image: url(./images/new-devices-dual.jpg)

---

class: impact
## .large.book[What if...]

---

class: contain, dark, hide-handle
background-image: url(./images/dual-first.jpg)

---

class: impact
## .large.book[Or not.]

---

class: impact
## .large[Back to now.]

---

class: impact
## .large[So, where to begin?]

---

class: middle, center
# Another responsive design target?

.center[
  .responsive[![](./images/responsive.png)]
]

---

class: small-handle, center
# So, media queries it is!

```css
@media (screen-spanning: single-fold-vertical) { ... }
@media (screen-spanning: single-fold-horizontal) { ... }

```

.center[
  .w-60.responsive[![](./images/spanning-media-query.svg)]
]

---

class: impact
## .large[*After community feedback...*]

---

class: small-handle, center
# Media queries forever

.col-6.float-left.space-right[
```css
@media (horizontal-viewport-segments:2) 
and 
@media (vertical-viewport-segments:1);
```

.center[
  .w-70.responsive[![](./images/horizontal-viewport.png)]
]
]

.col-6.float-left[
```css
@media (horizontal-viewport-segments:1) 
and 
@media (vertical-viewport-segments:2);
```

.center[
  .w-70.responsive[![](./images/vertical-viewport.png)]
]
]

---

class: small-handle,center
# Are you crazy ? 😱
```css
@media (horizontal-viewport-segments:2) and @media (vertical-viewport-segments:2);
```

--
  .w-30.responsive[![](./images/crazy-1.png)]
  <br />
--
  .w-30.up.responsive[![](./images/crazy-2.png)]

---

class: impact
## .large[Let's play a game]

---

```css
@media (horizontal-viewport-segments: 2) {
  body { 
    background-color: yellow; 
  }
}
```
.center[
.responsive[![](./images/screens-list-2.png)]
]

---

```css
@media (horizontal-viewport-segments: 2) {
  body { 
    background-color: yellow; 
  }
}
```

.center[
  .responsive[![](./images/screens-list-2-answer.png)]
]

---

# CSS Primitives
### [aka.ms/foldable/css-primitives](https://aka.ms/foldable/css-primitives)<br>[aka.ms/docs/css-primitives](https://aka.ms/docs/css-primitives)

--

.center[
  .w-70.responsive[![](./images/css-env.png)]
]

---

# Window Segments API
### [aka.ms/foldable/window-segments](https://aka.ms/foldable/window-segments)<br>[aka.ms/docs/window-segments](https://aka.ms/docs/window-segments)

```js
const screenSegments = window.getWindowSegments();
```

--

<br>

.center.large[
  👆 *But that was before...*
]

---

class: impact
## .large[*After community feedback...*]

---

# Visual Viewport Window Segments API
### [aka.ms/foldable/window-segments](https://aka.ms/foldable/window-segments)<br>[aka.ms/docs/window-segments](https://aka.ms/docs/window-segments)

```js
const screenSegments = window.visualViewport.segments;
```

---

# Visual Viewport Window Segments API
### [aka.ms/foldable/window-segments](https://aka.ms/foldable/window-segments)<br>[aka.ms/docs/window-segments](https://aka.ms/docs/window-segments)

```js
const screenSegments = window.visualViewport.segments; // => null || DOMRect[]

if (screenSegments.length > 1) {
  // It's a foldable device !







}
```

---

# Visual Viewport Window Segments API
### [aka.ms/foldable/window-segments](https://aka.ms/foldable/window-segments)<br>[aka.ms/docs/window-segments](https://aka.ms/docs/window-segments)

```js
const screenSegments = window.visualViewport.segments; // => null || DOMRect[]

if (screenSegments.length > 1) {
  // It's a foldable device !
  for (let i = 0; i < screenSegments.length; i++) {
    console.log(`Screen segment ${i}:`);
    console.log('- width   : ' + screenSegments[i].width);
    console.log('- height  : ' + screenSegments[i].height);
    console.log('- x origin: ' + screenSegments[i].x);
    console.log('- y origin: ' + screenSegments[i].y);
  }
}
```

--

.full-layer.text-right.space-right[
  <div style="height: 10em"></div>
  .w-20.responsive[![](./images/diff-screens.png)]
]

---

# .small[`window.visualViewport.segments` is immutable]

.no-margin[
```js

window.addEventListener("resize") => {
  const segments = window.visualViewport.segments;
  console.log(segments.length);
}
```
]
.center.no-margin[
  .w-90.responsive[![](./images/window-resize.png)]
]

---

# A little bit of gym 🤸‍♀️

.center[
  .w-90.responsive[![](./images/postures.png)]
]

---

# Device Posture API
### [w3.org/TR/device-posture/](https://w3.org/TR/device-posture/)

- **Device**: single-screen (foldable or not), dual-screen
- **Posture**: no-fold, laptop, flat, tent, tablet, book

.center[
.w-40.responsive[![](./images/posture-angle.svg)]
]

---

# Device Posture API

```js
navigator.devicePosture.addEventListener("change", () => {
  console.log(`The current posture is: ${navigator.devicePosture.type}!`);
})
```

---

# Device Posture API

```js
navigator.devicePosture.addEventListener("change", () => {
  console.log(`The current posture is: ${navigator.devicePosture.type}!`);
})
```

```css
@media (device-posture: laptop) and (screen-spanning: single-fold-horizontal) {
  /* Where the magic happens! */
}
```

.center[
.w-30.responsive[![](./images/posture-example-videocall.svg)]
]

---

class: impact, alt
## .large[Demos]

???
- demo Olivier
- ngx-foldable demo
- gallery app
- battleship

---

class: impact
## .larger[What about UI/UX?]

---

class: middle, center
# Design patterns? 🤔

???
Quelles sont vos idées?

---

class: center
# List / details

.center[
  .w-60.responsive[![](./images/list-details.png)]
]

---

class: center
# Companion pane

.center[
  .w-35.responsive[![](./images/vis-interact.png)]
]

???

- 1 screen to view content
- 1 screen to interact with it

Twitch + comments, keyboard...

---

class: center
# Dual view

.center[
  .w-45.responsive[![](./images/mario-3ds.jpg)]
]

???
Batteleship (Mine+yours), Mario kart (main+map)

---

class: center
# Dual view interaction

.center[
  .w-60.responsive[![](./images/dj-decks.png)]
]

???
2 DJ mixers

---

class: impact
## .large[Setting up for development]

---

# Enable browser dual-screen emulation
### [aka.ms/foldable/dev-setup](https://aka.ms/foldable/dev-setup)

1. `chrome://flags` or `edge://flags`
2. Enable **Experimental Web Platform features**
3. Open dev tools settings
4. In **Experiments** tab, tick **Emulation: Support dual screen mode**

.center[
  .w-70.responsive[![](./images/edge-flags.png)]
]

---

# Android Surface Duo emulator
### [aka.ms/foldable/dev-setup](https://aka.ms/foldable/dev-setup)

.center[
  .w-90.responsive[![](./images/duo-emu.png)]
  ### ⚠️ *Highly recommended!*
]

---

class: impact
## .large[About polyfills...]

---

class: contain, small-handle
background-image: url(./images/polyfills.jpg)

---

class: center
# Current status

<br>

| Feature | Implementation | Polyfill
|----------------|:-----------------:|:---:|
| CSS Spanning | ✅ 🧪 | ✅ |
| Window Segments | ✅ 🧪 | ✅ |
| Device Posture | ⛔ | ✅ ✋ |
| CSS Viewport Window Segments | ⛔ | ⛔ |

---

class: impact
## .large[What about some code?]

---

class: full, middle, center
background-image: url(./images/dive2.jpg)

# Let's dive in!

???

- ngx-foldable github page
- Gallery app source code

---

class: middle, hide-handle

.big-text.no-bg.baseline[
```js
const end = {
  message : 'Thank you!',
  slides  : 'bit.ly/foldable-dev',
  links   : 'aka.ms/foldable-dev',
  feedback: 'aka.ms/foldable-feedback'
};

alert('Questions?');
```
]

<hr class="hr-right more-space">
.right.large[
.large.em-text[{]
.fab.fa-twitter[] .fab.fa-github[] .fab.fa-dev[]
.large.em-text[}] .e[@sinedied] .em-text[|] .e[@olivierleplus]
]

---

exclude: true


# Links

- https://docs.microsoft.com/en-us/dual-screen/web/css-media-spanning
- https://docs.microsoft.com/en-us/dual-screen/web/javascript-getwindowsegments
- https://docs.microsoft.com/en-us/dual-screen/web/emulator-device-testing
- https://docs.microsoft.com/en-us/dual-screen/web/desktop-developer-tools

