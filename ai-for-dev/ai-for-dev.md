exclude: true
<!--
Le développement augmenté à l'IA: tout ce qui va changer

Les IA chez les devs, c'est comme le sexe chez les ados: tout le monde en parle, mais très peu ont finalement une réelle expérience du sujet. Dans ce talk, nous partagerons notre expérience du développement assisté à l'IA que nous pratiquons depuis les premières versions beta de ces modèles: ce que nous en avons appris, les trucs et astuces, leur limites... Mais ce sera aussi l'occasion de debunker certaines contre-vérités que l'on peut entendre à gauche et à droite.

En poussant un peu plus, on découvrira également que les bénéfices dépassent le simple fait de générer du code. Ces IA peuvent servir d'outil de feedback, améliorer la qualité, la sécurité et l'accessibilité de nos projets, automatiser des tâches et pourraient même changer complètement l'expérience du recrutement. Qu'on l'accepte ou non, l'IA a *déjà* commencé à changer notre métier.

Entrez dans le quotidien d'un dev du futur, et découvrez ce qui ce cache réellement derrière les sirènes du marketing et des histoires miraculeuses entendues au café!

Intro: https://www.lebigdata.fr/ia-creer-logiciel
https://github.com/danielgross/localpilot
-->
---

title: How to become an IA-enhanced developer
class: animation-fade
layout: true

.twitter-handle[
  @sinedied | @cmaneu
]

---

class: hide-handle, full, more-shadow
background-image: url(images/ai-enhanced-developer.jpg)

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

.full-layer.space-left.left.full-bottom.no-margin.conf-logo[
.w-15.responsive.logo-filter[![](images/devoxxma.png)]
]

<style>
.conf-logo { padding-bottom: .25em; }
</style>

---

class: center, middle, hide-handle
# Who are we?

.table.row.middle.center[
.col-2[]
.col-4.center[
  .w-70.responsive.avatar.bounceInLeft.animated[![](images/me.jpg)]

  **Yohan Lasorsa**<br>
  .fab.fa-linkedin[] .e[/yohanlasorsa]<br>
  .fab.fa-x-twitter[] .e[@sinedied]
]
.col-4.center[
  .w-70.responsive.avatar.bounceInUp.animated[![](images/chris.jpg)]

  **Christopher Maneu**<br>
  .fab.fa-linkedin[] .e[/cmaneu]<br>
  .fab.fa-x-twitter[] .e[@cmaneu]
]
]

---

class: impact
# 92% of U.S.-based developers are already using AI coding tools

???
- Etude faite en juin 23 auprès de 500 devs de sociétés de +1000p
- Qui utilise ici des outils d'IA pour coder?
- Qui déjà utilisé ChatGPT pour son boulot?
  * Pique de démarrage: risques (ex Samsung leak)
  https://techcrunch.com/2023/05/02/samsung-bans-use-of-generative-ai-tools-like-chatgpt-after-april-internal-data-leak/
---

class: center, cover, hide-handle
background-image: url(./images/ai-landscape.jpg)

.full-layer.full-top.blur.with-padding[
# What are we talking about?
]

.full-layer.full-bottom.blur.small[
Extract from **The 2023 MAD (ML/AI/Data) Landscape**
by Matt Turck - https://mad.firstmark.com/
]
]

.here[ ]

<style>
.here {
  position: absolute;
  top: 150px;
  bottom: 340px;
  left: 370px;
  right: 570px;
}
</style>
<script>
rough('.here', { type: 'circle', color: '#f22', strokeWidth: 4, padding: 50, animationDuration: 2000 }, 1000);
</script>

???
- Tout le monde fait de l'IA ces temps-ci, mais de quoi on parle exactement?
- Focus sur les IA génératives dédiées au développement
- En particulier sur l'assistance au code

---

class: center, middle
# "AI will replace developers"

.w-70.responsive[![](./images/will-ai-replace-devs.png)]

.scream.left[.ib.animated.heartBeat.w-20.responsive[![](./images/scream.jpg)]]

<style>
.scream {
  position: absolute;
  bottom: -160px;
  left: -40px;
  transform: rotate(20deg);
}
</style>

???
* "Au secours on va tous perdre notre job"
* Est-ce qu'on est les prochains allumeurs de réverbères?
* Guy de Maupassant: On n'a vraiment peur que de ce qu'on ne comprend pas

---

class: cover, hide-handle
background-image: url(./images/dual.jpg)

???
* Believer vs Skeptics: ca marche au top/pas du tout, pourquoi une telle différence d'expérience?
    - facon de coder, xp level vs esprit critique, techno/langage utilisés, contexte...
* Objectif: démystifier, comprendre comment ca marche et surtout les limites, pour savoir comment l'utiliser au mieux!

---

.col-6.float-left[
  .w-80.responsive[![](./images/dummies.jpg)]
]
.col-6.float-left[
  <br><br>

  # LLM crash course
  - Training
  - Model types
  - Tokens
  - Limits
  - Embeddings
  - Prompt engineering
  - Agents
]

???
- Est-ce que vous êtes chauds pour faire un de maths?
  * ca tombe bien, moi non plus :D
- Pour bien savoir utiliser un outil, c'est mieux de comprendre comment il fonctionne
- On va prendre ici un point de vue de dev, car je n'ai pas de PhD en ML

---

class: center

# Training

.w-80.responsive[
  <object data="images/llm-training.svg"></object>
]

???
- pre-training: expensive $$$ (modèles fondamentaux)
- fine-tuning: cheap $ (modèles spécialisés)
- RLHF: long and complicated

---

class: 

# Model types

#### Pure text completion models

.pre[These models specialize in text completion .grey-text[*tasks such as question answering, machine translation and summarization.*]]
???
- LLMs do no think: they *just* complete text
--

#### Instruction-following models (aka chat models)

<span class="pre">&lt;|im_start|>system
You are a professional translator&lt;|im_end|>
&lt;|im_start|>user
How do I translate "hello" in French?&lt;|im_end|&gt;
<span class="grey-text">&lt;|im_start|>assistant
Bonjour&lt;|im_end|></span>
</span>

???
- Chat models are tuned to follow instructions, with the addition of special tokens

---

# Tokens

LLMs don't work with words, but with tokens.

.col-6.float-left.top.no-margin[
  .w-90.responsive.top[![](./images/tokens2.png)]
]
.col-6.float-left.top.no-margin[
  .w-90.responsive.top[![](./images/tokens.png)]
]

???
- 1 token = ~4 characters
- https://platform.openai.com/tokenizer

---

# Limits

#### Context window
- Common limits: .em-text[**2-4K tokens**] (GPT-4: 8k or 32K)
- Context window limits .em-text[**input + output**]
???
- context training: O(n^2) complexity
- 4K tokens ~ 3K words ~ 6 pages
- 100K context windows => using tricks, with great loss of accuracy (attention)

---

# Limits

#### .circled[Context window]
- Common limits: .em-text[**2-4K tokens**] (GPT-4: 8k or 32K)
- Context window limits .em-text[**input + output**]

<script>
rough('.circled', { type: 'circle', color: '#f22', strokeWidth: 4, padding: 50, animationDuration: 2000 }, 500);
</script>
???
- context training: O(n^2) complexity
- 4K tokens ~ 3K words ~ 6 pages
- 100K context windows => using tricks, with great loss of accuracy (attention)
--

#### Bias
- LLMs may reflect the biases of the training data
???
- Humans do both logical and stereotypical reasoning, LLMs do not have logic
???
- Who can give some code-related biases?
--

- Examples:
  * Optimized code?
  * Accessible code?
  * Best language to learn?

---

class: center
# Embeddings

.w-80.responsive[
  <object data="images/embedding.svg"></object>
]

???
- Embedding: vector representation of a piece of data, that captures the underlying structure and relationships between pieces of data
- Embeddings are used to build vector DBs
- This is how we "memorize" things (ie your data) in LLMs
- Ex: textes de loi

---

# Prompt engineering

#### Zero-shot

Generate output with no specific training or examples

.small[*Prompt:*]
.up[
```
Translate the following text in French: "Hello, world!"
```
]

.small[*Output:*]
.up[
```
"Bonjour, le monde !"
```
]

---

# Prompt engineering

#### Few-shot

Use in-context examples to condition the output

.small[*Prompt:*]
.up[
```
Bonjour Devoxx: french
Brian is in the kitchen: english
Danke schön: german
Den här koden är hemsk:
```
]

.small[*Output:*]
.up[
```
swedish
```
]

---

# Prompt engineering

#### Chain of thought

Simulate human-like reasoning and decision-making

.small[*Prompt:*
.up[
```
When I was 6 years old, my sister was twice my age. Now I'm 30. How old is my sister?
Let's think step by step.
```
]

*Output:*
.up[
```
Sure, let's break it down step by step.

1. When you were 6 years old, your sister was twice your age. This means your sister was 6 * 2 = 12 years old at that time.
2. The age difference between you and your sister is 12 - 6 = 6 years.
3. Now, you are 30 years old. To find out how old your sister is now, you need to add the age difference to your current age. So, 30 + 6 = 36.

Therefore, your sister is currently 36 years old.
```
]
]

---

# Prompt engineering

#### Chain of thought

Simulate human-like reasoning and decision-making

.small[*Prompt:*
.up[
```
When I was 6 years old, my sister was twice my age. Now I'm 30. How old is my sister?
*Let's think step by step.
```
]

*Output:*
.up[
```
Sure, let's break it down step by step.

1. When you were 6 years old, your sister was twice your age. This means your sister was 6 * 2 = 12 years old at that time.
2. The age difference between you and your sister is 12 - 6 = 6 years.
3. Now, you are 30 years old. To find out how old your sister is now, you need to add the age difference to your current age. So, 30 + 6 = 36.

Therefore, your sister is currently 36 years old.
```
]
]

???
- Without "Let's think step by step." => 24
- Allow to break down a problem into smaller, simpler steps

---

# Prompt engineering

#### Retrieval Augmented Generation

Use a vector DB to retrieve relevant information and add it to augment the context

.center[
.w-75.responsive[
<object data="images/rag.svg"></object>
]
]

---

# Agents

A program that perceives its environment, make decisions and takes actions to achieve goals autonomously.

.center[
.w-65.responsive[
  <object data="images/agent.svg"></object>
]
]

???
- ChatGPT nowaday with all its plugins is now an agent
---

# Agents

.col-3.float-left.top[
#### Examples
- [AutoGPT](https://github.com/Significant-Gravitas/AutoGPT)
- [babyAGI](https://github.com/yoheinakajima/babyagi)
- [GPT Engineer](https://github.com/AntonOsika/gpt-engineer)

#### Frameworks
- 🦜️🔗 [LangChain](https://www.langchain.com/)
- [Semantic Kernel](https://github.com/microsoft/semantic-kernel)
]
.col-9.float-left.top.no-margin[
  .responsive.rounded[![](./images/gptengineer-demo.gif)]
]

---

class: center, middle, cover, hide-handle
background-image: url(./images/copilot.jpg)

???
- Sorti en 2021
- Initialement basé sur OpenAI Codex (derivé de GPT-3)
- Optimisé pour le code
- Une partie de ce qu'on va expliquer s'applique plus généralement aux systemes du meme genre

---

class: big-text, clist, center, middle
# What Copilot *doesn't do*

- .baseline[It **doesn't** .em-text[send all your code] to the cloud]
- .baseline[It **doesn't** .em-text[use your data] to train the model]
- .baseline[It **doesn't** .em-text[understand] your app design]
???
- Privacy first: pas de code envoyé au cloud, pas de données utilisateurs

---

class: center, middle
# The lifecycle of a Copilot suggestion

.center[
.w-100.responsive[![](./images/completion.png)]
]

???
- on va pas tout détailler, mais ca permet de comprendre comment ca marche
- points important: le prompt est construit localement, depuis le code et le contexte
- uniquement la demande de completion est envoyée au cloud

---

class: big-text, center, clist
# Context is everything

#### .large[**What's in the 🪄 Magic Sauce 🪄?**]
- Content from open tabs
- Code from before and after the cursor
- Code extracts from the same file
- Clipboard content

???
- A prompt is usually ~2-4K tokens, so it can't contain all the code
- Copilot cherry-picks the most relevant parts of the code to build the prompt
- Depending on the context, the prompt can be very different
- (Soon) Code from other files in the workspace

---

class: contain, hide-handle, dark
background-image: url(./images/demo.png)

???
  * Demo de comment améliorer ses résultats
    * Demo "avancée": code à l'envers, prompt engineering, zero-shot, few-shot, one-shot
  * Pourquoi ca ne propose rien?
    - Les 150 charactères de limite
    - Code match (ex: Python)
---

class: big-text
# Recap
#### .large[How to improve your suggestions]
1. .baseline[.em-text[**Context:**]<br>Tabs, clipboard, before/after cursor, same file]
2. .baseline[.em-text[**Prompt engineering:**]<br>Give examples, think step by step]
3. .baseline[.em-text[**Approach:**]<br> Code in reverse, split complex problems in smaller parts]

---

class: center, middle, impact
# AI-enhanced development:
# .baseline[.large[It's a new .ib.animated.bounce.alt-text[skill]]]

???
- Coder avec une IA, ca s'apprend
- C'est un nouveau skill, qui va devenir de plus en plus important
- C'est un peu comme apprendre à coder en TDD, ou en pair programming
- Ne pas lui faire une confiance aveugle: pair programming!

---

class: center, middle
# .large[Legal concerns ⚖️]
.small[https://blogs.microsoft.com/on-the-issues/2023/09/07/copilot-copyright-commitment-ai-legal-concerns/]

???
- Note sur la question de la licence du code généré vs copyright
- GH: c'est votre code!
- Evoquer Public Code Match

---

class: center
# Productivity increase
.center[
  .w-55.responsive[![](./images/copilot-stats.png)]
]

???
- C'est pas facile de mesure la productivité, mais ca donne une idée
- Important: tout le monde y arrive, la différence est dans le temps et la qualité

---

class: center, middle, big-text
AI is no magic 🤷<br>
???
- L'IA n'est pas magique et ne remplace pas un dev
--

.baseline.large[but it's still a .em-text[game changer]]

???
- ...mais peut grandement aider a la productivité
- Ca va changer notre métier, avec des bons et des mauvais côtés
  * par ex les tests de code :D

---

class: cover, full
background-image: url(./images/highfive-hq.jpg)

???
Don't be afraid of it!

---

class: middle, center, hide-handle, clist, big-text

# Thank you!

.arrow[
  .w-45.responsive[![](images/arrow.svg)]
]

.row.table.middle[
.col-6.right.space-right[
<object data="images/qrcode.svg"></object>
]
.col-6.left[
.large[[bit.ly/ai-for-dev](https://bit.ly/ai-for-dev)]
]
]

@sinedied | @cmaneu

<style>
.arrow {
  position: absolute;
  top: 24%;
  left: 40%;  
}
</style>

---

# References & going further

.full-layer.with-margins.right.space-right.noclick[
<br>
.w-35.responsive.circle[![](images/chris-dive.jpg)]
]

- [GitHub Copilot Video series](https://www.youtube.com/playlist?list=PLj6YeMhvp2S5_hvBl2SE-7YCHYlLQ0bPt)
- [How GPT models work](https://towardsdatascience.com/how-gpt-models-work-b5f4517d5b5)
- [Practical Deep Learning](https://course.fast.ai/)
- [OpenAI tokenizer](https://platform.openai.com/tokenizer)
- [Prompt Engineering Guide](https://www.promptingguide.ai)
- [GitHub Blog on Copilot](https://github.blog/?s=copilot)
- [Awesome LangChain](https://github.com/kyrolabs/awesome-langchain)
- [Responsible Generative AI training](https://learn.microsoft.com/training/modules/responsible-generative-ai/)
- [How to write better prompts for GitHub Copilot](https://github.blog/2023-06-20-how-to-write-better-prompts-for-github-copilot/)
- [Microsoft announces new Copilot Copyright Commitment for customers](https://blogs.microsoft.com/on-the-issues/2023/09/07/copilot-copyright-commitment-ai-legal-concerns/)
- [ChatGPT + Enterprise data with Azure OpenAI and Cognitive Search](https://github.com/Azure-Samples/azure-search-openai-javascript/)
- [About Samsung ChatGPT data leak](https://techcrunch.com/2023/05/02/samsung-bans-use-of-generative-ai-tools-like-chatgpt-after-april-internal-data-leak/)

---

exclude: true
class: middle, center, hide-handle, clist

.w-90.responsive[
<object data="images/thanks.svg"></object>
]

???
Feedback please!