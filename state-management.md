title: The revolution in your apps is called **State Management**
class: animation-fade
layout: true

<!-- 

- What is state management?
  * laius on frameworks: NG, Vue, React, it's all components
  * challenges: complexity, performance, long-term maintenance, debugging, knowledge -> commence simple puis devient complexe
  => back to state management
  * history
  * redux basics
  * For the big 3's

- Do we need (another) library to manage state?
  * problems....
  * ends up reimplementing a SM lib! :)

- Why should I use it?
  * features: performance, debugging, undo/redo... benefits
  * => workflow, maintenance, structure, testability, SoC... benefits
  * -- more boilerplate :(

- Use case feedback @ Criteo
  Traps + code to illustrate
  * side effects
  * chained actions
  * overstorage in state, overengineering
  * too much actions

- Conclusion
  * Use it whenever you can! Or at least think like it

-->

---

class: center, middle
background-image: url(images/bw.jpg)

# .alt-text[The revolution in your apps is called<br>.big.light-text[**State Management**]]
<br>

.who-box[
  .row.table.middle.text-center[
  .col-3.small.text-left[
  Yohan Lasorsa<br>
  .fab.fa-github[] github.com/sinedied<br>
  .fab.fa-twitter[] @sinedied
  ]
  .col-6.small.half[
  .w-90[
  .w-70.responsive[![](images/snowcamp.png)]
  ]
  ]
  .col-3.small.text-right[
  .w-90.responsive[![](images/criteo-dark.svg)]
  ]
  ]
]

---

class: middle, center
# .sketch.large[Who am I?]

.table.row.middle[
.col-4.center[
  .w-70.responsive.avatar.tada.animated[![](images/photo.jpg)]
]
.col-8.large.left[
  Yohan Lasorsa<br>
  .alt-text[{ **Fullstack Engineer @ Criteo ** }]
]
]
.right.bit-larger[
  .fab.fa-github[] github.com/sinedied<br>
  .fab.fa-twitter[] @sinedied<br>
]

---

class: center, middle

# Making web apps today

.center[
  .w-20.responsive[![](images/angular.svg)]
  .w-20.responsive[![](images/react.svg)]
  .w-20.responsive[![](images/vue.svg)]
]

???

Un peu de contexte:
- 3 gros frameworks pour faire des appli web
- je rentrerai pas dans les debats de religion ici, par qu'on s'en fout finalement aujourd'hui!

--

# .big[= **components**]

???

- nos app sont toutes orientées composants
  * simple, de presentation, stateless
  * complexe, containers, eventuellement stateful

---

.full-layer[
.center[
.w-60.responsive[![](images/component-tree-simple.png)]
<br>
Component Tree
]
]

???

Nos apps ne sont pas simple ou complexe par nature
(du moins j'en ai encore jamais vu)

Elle demarrent toutes comme ca

---

.full-layer[
.center[
.w-60.responsive[![](images/component-tree.png)]
<br>
Component Tree
]
]

???

Et finissent rapidement comme ca!

---

class: big-text, middle

# Challenges

- Complexity
- Debugging
- Performance
- Long-term maintenance
- Documentation

.full-layer.right.space-right[
  .w-40[
  .rounded.responsive[![](images/oops.jpg)]
  ]
]

---

class: impact
# .small[.animated.jackInTheBox.ib[{ State }] Management?]

???

Mettons nos problèmes de cotés quelques instants...

---

class: timeline

.head[
# .alt-text.fas.fa-history[]&nbsp; Where does it come from?
]
<div style="height: 3.3em"></div>

- #### 1988
  - Command-Query Separation (CQS)
- #### 1997
  - Functional Reactive Programming (FRP)
- #### 2012
  - Elm
- #### 2014
  - Flux architecture (React)
- #### .boom.responsive[![](images/boom.jpg)] **2015**
  - **Redux, MobX, NGRX, VueX**
- #### 2018
  - NGXS, Akita, Unstated, "React Context/Hooks"

???
- RP (UI): User actions as a stream of events
- Redux created by Dan Abramov when preparing a talk on hot reloading
- Mobile: ReSwift, Reductor, Jedux

---

class: middle, center

.responsive.bounceInDown.animated.ib[![](images/redux-logo.png)]

???
- Why?
  * Born from development needs: predicatability, time travel, debugging...
  * Simple

---

.head.dark[
# .fit[![](images/redux-icon.svg)] The 3 principles
]
.head-spacer[]

## Single source of truth
The **state** of your whole application is stored in an object tree within a single **store**.
--

## State is read-only
The only way to change the **state** is to emit an action, an object describing what happened.
--

## Changes are made with pure functions
To specify how the state tree is transformed by actions, you write pure **reducers**.

---

class: center
.head.dark[
# .fit[![](images/redux-icon.svg)] Redux data flux
]
<br><br>
.col-11.responsive[![](images/redux0.png)]

---

class: center
.head.dark[
# .fit[![](images/redux-icon.svg)] Redux data flux
]
<br><br>
.col-11.responsive[![](images/redux1.png)]

---

class: center
.head.dark[
# .fit[![](images/redux-icon.svg)] Redux data flux
]
<br><br>
.col-11.responsive[![](images/redux2.png)]

---

class: center
.head.dark[
# .fit[![](images/redux-icon.svg)] Redux data flux
]
<br><br>
.col-11.responsive[![](images/redux.png)]

---

class: impact
# .small[Let's make our<br>.animated.jello.ib[**own**] Redux]!

---

class: big-text, medium-code

.head[
# .alt-text.fas.fa-code[]&nbsp; Actions
]
.head-spacer.min[]

```js
export class LoadContent {
  static type = '[Editor] Load content';
}

export class UpdateContent {
  static type = '[Editor] Update content';

  constructor(content) {
    this.content = content;
  }
}
```
???
Note sur static: stage-3 / typescript

- Are object (in-place literals or action creators)
- Define 
- Have unique type
- Can carry data (payload)

---

class: big-text, medium-code

.head[
# .alt-text.fas.fa-code[]&nbsp; Reducer
]
.head-spacer.min[]


```js
const initialState = { content: 'Hello?' };

function editorApp(previousState = initialState, action) {
  switch(action.type) {






    default:
      return previousState;
  }
}
```

---

class: big-text, medium-code

.head[
# .alt-text.fas.fa-code[]&nbsp; Reducer
]
.head-spacer.min[]


```js
const initialState = { content: 'Hello?' };

function editorApp(previousState = initialState, action) {
  switch(action.type) {
*   case UpdateContent.type:
*     return {
*       ...previousState,
*       content: action.content
*     }
    default:
      return previousState;
  }
}
```

---

class: big-text, medium-code

.head[
# .alt-text.fas.fa-code[]&nbsp; Store
]
.head-spacer.min[]


```js
export class Store {
  constructor(reducer) {
    this._reducer = reducer;
    this._state = reducer(undefined, '@@INIT');
  }
}
```

---

class: big-text, medium-code

.head[
# .alt-text.fas.fa-code[]&nbsp; Store
]
.head-spacer.min[]


```js
export class Store {
  constructor(reducer) {
    this._reducer = reducer;
    this._state = reducer(undefined, '@@INIT');
  }
* getState() { return this._state; }
}
```

---

class: big-text, medium-code

.head[
# .alt-text.fas.fa-code[]&nbsp; Store
]
.head-spacer.min[]


```js
export class Store {
  constructor(reducer) {
    this._reducer = reducer;
    this._state = reducer(undefined, '@@INIT');
  }
  getState() { return this._state; }
* subscribe(observer) {
*   this._observer = observer;
*   observer(this.state);
  }
}
```

---

class: big-text, medium-code

.head[
# .alt-text.fas.fa-code[]&nbsp; Store
]
.head-spacer.min[]


```js
export class Store {
  constructor(reducer) {
    this._reducer = reducer;
    this._state = reducer(undefined, '@@INIT');
  }
  getState() { return this._state; }
  subscribe(observer) {
    this._observer = observer;
    observer(this.state);
  }
* dispatch(action) {
*   this._state = reducer(this._state, action);
*   if (this._observer) this._observer(this._state);
* }
}
```

---


class: big-text, medium-code

.head[
# .alt-text.fas.fa-code[]&nbsp; Store
]
.head-spacer.min[]


```js
export class Store {
  constructor(reducer) {
    this._reducer = reducer;
    this._state = reducer(undefined, '@@INIT');
  }
  getState() { return this._state; }
  subscribe(observer) {
    this._observer = observer;
    observer(this.state);
  }
  dispatch(action) {
    this._state = reducer(this._state, action);
    if (this._observer) this._observer(this._state);
  }
}
```

TODO: code for async/side effects?

---

class: big-text, medium-code

.head[
#  .alt-text.fas.fa-code[]&nbsp; Using it
]
.head-spacer.min[]


```js
const store = new Store(editorApp);

store.subscribe(state => {
  console.log(state.content);
});

store.dispatch(new UpdateContent('Hello SnowCamp!'))
```
> Result?

--

```sh
> Hello?
> Hello SnowCamp!
```

---

class: center
# Redux design pattern in the wild

.row.table.center[
.col-4[
  .w-40.responsive[![](images/angular.svg)]
  <br><br>
  .large.fas.fa-arrow-down[]
  <br>
  ### @ngrx
  .w-40.no-margin[
  .w-90.responsive[![](images/ngrx.svg)]
  ]
]
.col-4[
  .w-40.responsive[![](images/react.svg)]
  <br><br>
  .large.fas.fa-arrow-down[]
  <br>
  ### Redux
  .w-40.responsive[![](images/redux-icon.svg)]
]
.col-4[
  .w-40.responsive[![](images/vue.svg)]
  <br><br>
  .large.fas.fa-arrow-down[]
  <br>
  ### VueX
  .w-40.responsive[![](images/vuex.png)]
]
]

---

class: center
# Redux design pattern in the wild

.row.table.center[
.col-4[
  .w-40.responsive[![](images/angular.svg)]
  <br><br>
  .large.fas.fa-arrow-down[]
  <br>
  ### @ngrx / NGXS
  .w-40.no-margin.middle[
  .w-90.responsive[![](images/ngrx.svg)]
  ]
  .w-50.responsive[![](images/ngxs.png)]
]
.col-4[
  .w-40.responsive[![](images/react.svg)]
  <br><br>
  .large.fas.fa-arrow-down[]
  <br>
  ### Redux
  .w-40.responsive[![](images/redux-icon.svg)]
]
.col-4[
  .w-40.responsive[![](images/vue.svg)]
  <br><br>
  .large.fas.fa-arrow-down[]
  <br>
  ### VueX
  .w-40.responsive[![](images/vuex.png)]
]
]

---

class: impact

# .small[Do we .ib.animated.swing[**need**] it?]

???

On a deja bcp de libs!

- Non tant que le besoin ne s'est fait pas ressortir...
... mais souvent c'est alors trop tard :(

---

class: middle, no-bullet

.col-6.right.space-right.large.v-sep.alt-sep.float-left[
# .big.sketch[Gain]
- Debugging
- Undo history
- No prop drilling
- Performance (Angular)
]
--
.col-6.space-left.large.float-left[
# .big.sketch[Pain]
- Boilerplate
- More indirection levels
- Learning curve
]

???

Also RT collaboration

--

.full-layer.left.space-left.stick-top.no-margin[
  .w-20.responsive.rounded.slideInDown.animated[![](images/captain-obvious.png)]
]

???

Gain évidents / fonctionnels:
- time travel debug / bug reports / tracabilité
- undo = 101 du state management
- prop drilling > plutot Reacr, transmission de state dans toute la hierarchie
- perf ng > reactive mode w/o change detection

---

class: middle, no-bullet

.full-layer.left.space-left.stick-top.no-margin[
  # .dark-text.bit-larger.sketch[\#realworld]
]

.col-6.right.space-right.large.v-sep.alt-sep.float-left[
# .alt-text[More] .big.sketch[Gain]
- Workflow
- Testability
- Structure
- Knowledge
- Evolutivity???
]
???
- change how you design/think your features
- TDD
- Structure: container/pres. components, where should I...
- Clear intentions, discoverability
- backend within frontend
--
.col-6.space-left.large.float-left[
# .alt-text[Less] .big.sketch[Pain]
- Boilerplate
- .strike[More indirection levels]
- Learning curve
]
???
- more code, but simple
- once setup/example is done, easy to catch

---

class: impact
# .small[Spoiler alert TODO: img]
## .alt-text.large[New solution, new problems]

---

class: big-text, middle
# New gotchas

- .a["Should I put it in the store?"] .em-text[(also: state zealots)]
--

- .a[Side effects] .em-text[(aka: I'll put it there, nobody will know)]

--
- .a[Chained actions] .em-text[(aka: yay, a new event bus!)]

--
- .a[Overengineering] .em-text[(aka: let's make a wrapper for...)]

--
- .a[Overstorage in state] .em-text[(aka: it's not free caching?)]

--
- ...

TODO: split slide with fun memes

---

class: big-text
# .w-10.responsive.middle[![](images/vs.jpg)] Challenges

.col-6.left.float-left.space-right[Complexity]
.col-6.left.float-left[:(]
.col-6.left.float-left.space-right[Debugging]
.col-6.left.float-left[\o/]
.col-6.left.float-left.space-right[Performance]
.col-6.left.float-left[:(]
.col-6.left.float-left.space-right[Long-term maintenance]
.col-6.left.float-left[:)]
.col-6.left.float-left.space-right[Documentation]
.col-6.left.float-left[:D]

---

class: middle

.big-text.no-bg.baseline[
```js
store.dispatch(
  new EndTalk({
    message: 'Thank you!',
    slides: 'TODO_URL',
    examples: 'github.com/sinedied/md-editor
  })
);
```
<hr class="hr-right">
]
.right.large[
.fab.fa-twitter[] @sinedied<br>
.fab.fa-github[] github.com/sinedied
]

---

exclude: true
.head.dark[
# Links
]
.head-spacer[]

- [You might not need Redux](https://medium.com/@dan_abramov/you-might-not-need-redux-be46360cf367)
- [NGXS website](https://ngxs.gitbook.io/ngxs/)
- [Redux website](https://redux.js.org/)
- [NGRX libs](https://github.com/ngrx/platform)
- [What is VueX?](https://vuex.vuejs.org/)
- [Markdown Editor variants](https://codesandbox.io/dashboard/sandboxes/Markdown%20Editor)
