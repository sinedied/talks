
On ne va pas se mentir: quand on commencé notre aventure dans le développement web il y a 15 ans, avec le CSS c'était pas vraiment le grand amour. Malgré l'arrivée des variables et des nouveaux systèmes de layouts, l'enthousiasme n'était pas au rendez-vous, et on ne l'utilisait toujours que par obligation. En 2023, on a décidé de lui donner une nouvelle chance: comme pour le JavaScript, les nouveautés de CSS ont considérablement changé le langage ces dernières années, et on a été agréablement surpris!

Dans ce talk interactif et riche en démos, on abordera les standards existants et ceux à venir qui nous on fait redécouvrir le CSS avec passion. Préparez-vous à explorer des fonctionnalités fascinantes telles que :is(), :has(), le nesting, les custom media queries, les custom properties (bien plus puissantes qu'on ne le pense) et bien d'autres innovations encore!

Rejoignez-nous pour donnez une nouvelle chance au CSS, qui pourrait bien devenir votre nouveau copain incontournable dans le développement front-end!

https://www.bram.us/2023/04/08/whats-new-in-css-2022-03-23-devday/
https://slidr.io/bramus/what-s-new-in-css-2023-03-23-devday#125

* color-mix vs var + HSL
* Contrast Color + :focus-visible: https://slidr.io/bramus/what-s-new-in-css-2023-03-23-devday#63
* aspect-ratio: https://slidr.io/bramus/what-s-new-in-css-2023-03-23-devday#34

https://codepen.io/iamschulz/pen/podLgoK

.primary {
  background: var(--colorPrimary);
  
  --switch: calc((var(--colorPrimary-l) - var(--contrastThreshold)) * -100);
  color: hsl(0, 0%, var(--switch));
}

https://una.im/css-color-theming/

https://www.lambdatest.com/blog/css-color-contrast/

* Toggle() ? @Scope ? :modal ? scrollbar-gutter
Variable Fonts // color-sceheme // color-mix