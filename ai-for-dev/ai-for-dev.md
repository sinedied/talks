exclude: true
<!--
Le développement augmenté à l'IA: tout ce qui va changer

Les IA chez les devs, c'est comme le sexe chez les ados: tout le monde en parle, mais très peu ont finalement une réelle expérience du sujet. Dans ce talk, nous partagerons notre expérience du développement assisté à l'IA que nous pratiquons depuis les premières versions beta de ces modèles: ce que nous en avons appris, les trucs et astuces, leur limites... Mais ce sera aussi l'occasion de debunker certaines contre-vérités que l'on peut entendre à gauche et à droite.

En poussant un peu plus, on découvrira également que les bénéfices dépassent le simple fait de générer du code. Ces IA peuvent servir d'outil de feedback, améliorer la qualité, la sécurité et l'accessibilité de nos projets, automatiser des tâches et pourraient même changer complètement l'expérience du recrutement. Qu'on l'accepte ou non, l'IA a *déjà* commencé à changer notre métier.

Entrez dans le quotidien d'un dev du futur, et découvrez ce qui ce cache réellement derrière les sirènes du marketing et des histoires miraculeuses entendues au café!
-->
---

title: How to become an IA-enhanced developer
class: animation-fade
layout: true

.twitter-handle[
  @sinedied
]

---

class: hide-handle, full, more-shadow
background-image: url(images/ai-enhanced-developer.jpg)

<!-- .full-layer.with-margins.left.up[
.w-20.responsive.logo-filter[![](images/camping-logo.png)]
] -->

.title-new.w-55.center[
# .baseline.bit-larger[IA-enhanced development]
## .small[What's going to .grad-text[change]]
]

.full-layer.who.text-right.small.middle.light-text.darkened[
  .ms.responsive[![](images/ms-full-logo.svg)]
  |
  Yohan Lasorsa
  |
  Christopher Maneu
]

<style>
.tmatch { font-size: 1.17em; }
.grad-text { color: #FFB900; }
</style>
???


---

class: center, middle, hide-handle
# Who are we?

.table.row.middle.center[
.col-2[]
.col-4.center[
  .w-70.responsive.avatar.bounceInLeft.animated[![](images/me.jpg)]

  **Yohan Lasorsa**<br>
  .fab.fa-x-twitter[] .e[@sinedied]
]
.col-4.center[
  .w-70.responsive.avatar.bounceInUp.animated[![](images/chris.jpg)]

  **Christopher Maneu**<br>
  .fab.fa-x-twitter[] .e[@cmaneu]
]
]

---

class: big-text, all-sketch, clist, center, middle

# Blender

.w-80.responsive.rounded.up[![](./images/blender.png)]

???
- Pas specialement fait pour ca, demande un peu de configuration
- Ca marche pas trop mal, j'ai fait plein de modeles avec

---

class: cover, hide-handle
background-image: url(./images/confused.jpg)

???
- mais 2 gros defaut:
* des que ne l'utilise pas pendant 1 semaine, bah je sais plus m'en servir
* tres pénible de modifier des modeles apres coup

---

class: all-sketch, clist, center, middle

# .large[3D modeling vs CAD]
<br>

.quote.large[
> .small[CAD (Computed Aided Design) is 3D modeling for .dark-text.gradient-text[engineering] that allows .dark-text.gradient-text[parameterized] objects].
]

???

- Le but est le meme: créer un modele 3D
- 3D modeling:
  * but artistique, flexibilité, textures/rendu, animation
- CAD:
  * contraintes fonctionnelles, parameterization

---

class: big-text, all-sketch, clist, center, middle, alt

# .light-text[OpenSCAD] .w-20.responsive[![](./images/openscad.svg)]

.large[https://www.openscad.org]


???
I use git+vscode for almost anything now so...

---

class: big-text, all-sketch, clist, center, middle

# Setup

.row.table.middle[
  .col-8[
- .mini-img[![](./images/openscad.svg)] OpenSCAD + .mini-img[![](./images/vscode.svg)] VS Code
- Pen, post-its & caliper
  ]
  .col-4[
.w-100.responsive.rounded[![](./images/photo-tools.jpg)]
  ]
]

???
- OpenSCAD VS Code Extension
- BOSL2 library

---

class: contain, hide-handle, dark
background-image: url(./images/show-code.jpg)

???

- Real world examples
  * timer case
  * synth stand
  * synth case

---

class: small

.row.table.middle[
.col-6[
```openscad
unit = 8;
fudge = 0.001 / unit;
tolerance = 0.15 / unit;

module lego(w, d, h, c = "white") {
  h_hole = (h - 1/6 + tolerance)*2;

  color(c)
  scale(unit) {
    difference() {
      cube([w, d, h]);
      translate([0.25 - tolerance/2, 0.25 - tolerance/2, -h_hole/2])
        cube([w - 0.5 + tolerance, d - 0.5 + tolerance, h_hole]);
    }

    for (i = [0 : w - 1])
      for (j = [0 : d - 1])
        translate([i + 0.5, j + 0.5, h - fudge])
          cylinder(1/6, d = 0.5, $fn = 32);

    if (w > 1 || d > 1) {
      single = w == 1 || d == 1;
      df = single ? 0.55 : 1;

      for (i = [0 : max(w - 2, 0)])
        for (j = [0 : max(d - 2, 0)])
          translate([i + (w == 1 ? 0.5 : 1), j + (d == 1 ? .5 : 1), fudge])
            difference() {
              cylinder(d = 0.915 * df, h_hole/2, $fn = 32);
              cylinder(d = (0.5 + tolerance*2) * df * df, h_hole, $fn = 32, center = true);
            }
    }
  }
}

translate([-5 * unit, 0, 0])
  lego(4, 2, 1, "cyan");

translate([0, 2 * unit, 0])
  lego(1, 1, 2, "yellow");

lego(3, 1, 1/3, "crimson");
```
]
.col-6[
  .responsive[![](./images/openscad-lego.png)]
]
]

---

class: all-sketch
# References & going further

.full-layer.with-margins.right.stick-bottom.space-right[
.w-25.responsive.circle[![](images/diver.jpg)]
]


- OpenSCAD tutorial
  * https://en.wikibooks.org/wiki/OpenSCAD_User_Manual
- VS Code extension
  * https://marketplace.visualstudio.com/items?itemName=Antyos.openscad
- Another OpenSCAD intro
  * https://static.fablab-lannion.org/tutos/openscad/#/intro
- Libraries
  * https://github.com/GillesBouissac/agentscad
  * https://github.com/HopefulLlama/JointSCAD
  * https://github.com/revarbat/BOSL2
- JS fork of OpenSCAD
  * https://github.com/jscad/OpenJSCAD.org
  * https://openjscad.xyz

---

class: middle, center, hide-handle, clist

.w-90.responsive[
<object data="images/thanks.svg"></object>
]

???
Feedback please!