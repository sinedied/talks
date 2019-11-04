# Oups, j'ai mis du TypeScript dans mon appli Node.js

Et si on faisait une petite appli Node.js, from scratch... en TypeScript?
A travers un live coding de 20min, nous allons voir ensemble que rajouter du TypeScript à une application Node.js se fait finalement avec très peu de contraintes, avec pour bénéfices tout ce qui découle de TypeScript.

Du workflow de dev jusqu'au packaging de librairie (en includant les types bien sûr ;-), tout y passe! Après cela, plus d'excuse pour ne pas s'y mettre...

---
Notes:

J'ai constaté suite à plusieurs projets et discussions lors de meetup, que beaucoup de gens n'utilisent pas TypeScript dans leurs applications Node.js, avec souvent comme (fausse) excuse la complexité rajoutée et le temps de mise en place...
Ce live coding de 15min est en réponse à cela :)

Dejà présenté dans une version plus courte de 10min lors d'un meetup Human Talk à Grenoble, les 5min supplémentaire permettent d'aller un poil plus loin jusqu'à la préparation d'un paquet NPM incluant les types.

---
Keywords: node.js, typescript, live coding


# Découverte de FeathersJS, le micro-framework léger à l'apprentissage mais qui envoie du lourd

ExpressJS tout le monde (ou presque) connait maintenant, mais qui n'a jamais pesté sur la (trop) grande liberté laissée a l'architecture des projets l'utilisant? Qui a déjà du mettre les mains dans du code serveur illisible, type service spaghetti blâmant la faute sur l'ecosystème JS au passage?
Moins connu que la plupart de ses concurrents, FeathersJS est pourtant une excellente solution pour créer des APIs RESTful et temps réel, d'une simplicité à la mise en oeuvre presque déroutante mais gardant juste ce qu'il faut de cadre autour d'ExpressJS.

Après une découverte du framework et de son positionnement dans l'ecosystème Node.js, on parlera mise en pratique: je vous ferais un RetEx personnel après 2 ans d'utilisation de cette librarie sur un projet conséquent qui a suivi la migration d'un serveur ExpressJS vers FeathersJS. On y abordera au passage le sujet des tests, de l'intégration avec TypeScript tout en parlant des bons et mauvais cotés du framework.

---
Keywords: node.js, typescript, feathers
