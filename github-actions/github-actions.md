title: Become a GitHub Actions Hero
class: middle, black, right, hide-handle, contain
background-image: url(images/github-actions-hero.jpg)

.full-layer.who.text-right.small.middle.light-text[
  <br>
  .ms.responsive[![](images/ms-full-logo-light.svg)]
  |
  Yohan Lasorsa
  |
  @sinedied
]

<!-- 

TODO:
- actionslint?
- Find/Create docker image for create your own runner

Devenez un GitHub Actions Hero!

GitHub Actions, c'est le nouveau système de worflow intégré à GitHub pour automatiser tous vos projets, CI/CD mais pas que! Et en plus, ca ne coute rien pour les projets open source, c'est le moment de s'y mettre non?
Plutot qu'un long discours, rien ne vaut une belle démo live pour découvrir tout cela!

# GitHub Actions?

# Demo
- new project, create repo
- CI!
- CD -> github pages
- show actions marketplace
- talk about custom actions
- talk about docker compose

# Conclusion
- pricing, laius Az DevOps
- semantic release, Google home...

----
DEPLOY:
  deploy:
    runs-on: ubuntu-latest
    needs: [build]
    
    steps:
    - uses: actions/checkout@v2
    - uses: actions/setup-node@v2
      with:
        node-version: 14.x
        cache: 'npm'
    - run: npm ci
    - run: npm run build --if-present
      env:
        PUBLIC_URL: 'https://sinedied.github.io/gha-demo'
    - uses: crazy-max/ghaction-github-pages@v2.6.0
      with:
        build_dir: build
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}

-->

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

class: center
# GitHub Actions
.expand[
.responsive[![](images/intro.png)]
]

???
- Actions = GH Events -> Workflow -> jobs -> steps
- Platforms: linux, mac windows & arm/64
- CI/CD, but not only (issue triage...)
- Fully integrated to Github

---
class: impact, full
background-image: url(./images/demo.jpg)
# Demo time

???
- Repo to be prepared in advance, see prepare.sh
- Click on "Actions" tab on GH
- CI is the default workflow proposed
- Show other proposed workflows
- Explain editor, show completion, platforms & archs
- CD -> github pages
- show actions marketplace
- talk about custom actions
- talk about docker compose
---

class: center, clist, middle, big-text
# There's more!

- Run in Docker container
- Write your custom actions
- Use your own runner
- Use `docker compose` to spawn testing env
- Triage issues and clean up backlog
- GitOps

???
- SDK
- Bring your own env/server (on-premise or cloud-based)
- E2E testing
- Auto labelling/closing/need more info/CLA

---

# Pricing 🎁

.responsive[![](images/pricing.png)]

???

- OSS: 20 runners en parallèle
- 7 Go RAM, 2-core CPU, 14 Go SSD VM, 6H per workflow clean for each job

---

class: clist
# Not using GitHub? .float-right[👉 [aka.ms/git-azdo](https://aka.ms/git-azdo)]

<br>
.big-text[
### .bit-larger[Take a look at Azure Pipelines!]

.side-layer.right[
.w-20.responsive[![](images/pipelines.png)]
]

- Still free for OSS
- Same platform support
- Similar syntax
]

???
- Actions use AZ Pipelines under the hood but shhh
- Example with GitHub but using an external git repo (Gitlab, Bitbucket...)

---

class: middle, center, big-text
# More automation, more fun  🤖

---

class: no-margin
.center[
.quote.bit-larger.ib[
> Hey Google, release a new version
]
]

--

- Conventional commits: `feat: | fix: | docs: | refactor: | ci: | ...`
--

- Semantic release:
  * Check commits, decide if new release
  * Bump version according to semantic versioning
  * Generate changelog
  * Publish NPM package
  * Create release commit and tag it
  * Create GitHub release with changelog and artifacts
--

- GitHub Action with HTTP trigger (`on: repository_dispatch`)
--

- IFTTT + Google Home 👉 Full example: [aka.ms/gha-release](https://aka.ms/gha-release)

---

class: cover, bottom, full, center
background-image: url(images/enjoy.jpg)
# .large[**ENJOY YOUR FREE TIME!**]

---

class: hide-handle, middle

# Thank you!

.side-layer.right.through.no-margin[
  <div style="height: .5em"></div>
  .w-15.responsive[![](images/bit-learning.png)]
]

.baseline[
- .w-35[[aka.ms/gh-actions](https://aka.ms/gh-actions)] → GitHub Actions docs
- .w-35[[aka.ms/awesome-actions](https://aka.ms/awesome-actions)] → Awesome Actions
- .w-35[[aka.ms/gha-example](https://aka.ms/gha-example)] → Example repo
- .w-35[[aka.ms/git-azdo](https://aka.ms/git-azdo)] → Git+Azure DevOps
]
<hr class="hr-right more-space">

.col-3.small.text-left.float-left[
<div style="height: .5em"></div><br>
Slides:<br>
.large[bit.ly/gha-hero]
]
.col-9.right.large.middle.float-left[
.large.em-text[{]
.fab.fa-twitter[] .fab.fa-github[] .fab.fa-dev[]
.large.em-text[}] .e[@sinedied]<br>
]
