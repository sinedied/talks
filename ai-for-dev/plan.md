Icons:
https://www.svgrepo.com/collection/business-management-icons/

# Intro
1. IA pour les devs: de quoi parle-t-on? (2-3 min)
 92% of U.S.-based developers are already using AI coding tools
  * Copilot, ChatGPT, Code Whisperer, Bard: LLM
  * Autre IA: Stable Diffusion, Dall-E, Whisper, etc
    ex: https://v0.dev
  * "Au secours on va tous perdre notre job"
  * Believer vs Skeptics: ca marche au top/pas du tout, pourquoi une telle différence d'expérience?
    - facon de coder, xp level vs esprit critique, techno/langage utilisés, contexte...
  * Objectif: démystifier, comprendre comment ca marche et surtout les limites, pour savoir comment l'utiliser au mieux!
  * Pique de démarrage: qui a deja copié collé du code de sa boite dans ChatGPT? => risques (ex Samsung leak)

X 2. LLM: comment ca marche? (sans avoir de PhD en ML) (10min)
  * Aprentissage via data set: GitHub, StackOverflow, Wikipedia, Reddit, etc
  * RLHF: Reinforced Learning from Human Feedback
  * Limites: paramètres, biais, **taille de contexte**
  * Fine-tuning, prompt engineering, zero-shot, few-shot, one-shot
  * Probabilité de completion de texte, avec quelques parametres: température (=originalité), poids, limites de tokens, etc
  * Embeddings: vectorisation de mots, phrases, contexte
  * VectorDB et recherche de similarité
  * Agents: ex: EngineerGPT

3. GitHub Copilot (10 min)
  * Demo "basique"
  * Ce que fait Copilot, ce qu'il ne fait pas (parler de privacy)
  * Fonctionnement du contexte: "magic sauce": tabs VS Code, fonctions avant/apres, presse papier, etc
  * Demo de comment améliorer ses résultats
    * Demo "avancée": code à l'envers, prompt engineering, zero-shot, few-shot, one-shot
  * Pourquoi ca ne propose rien?
    - Les 150 charactères de limite
    - Code match (ex: Python)

4. GitHub Chat (15 min)
  * Short intro: ChatGPT dédié au code, intégration à VS Code
  * Demos "real world":
    - traduction de code python
    - comprendre une nouvelle base de code
    - refactoring de code JS et optimisation

CHRIS
    - generation de tests unitaires
    - generation de docs
    - generation de datas
    - accessibilité
    - sécurité
    - code review, tri de backlog, tag d'issues... => Langchain
    - apprentissage (what is zero shot learning?)

5. Conclusion 5min
  - Un mot sur la licence du code généré + public code matching
    - https://blogs.microsoft.com/on-the-issues/2023/09/07/copilot-copyright-commitment-ai-legal-concerns/
  - Savoir se servir d'une IA est un skill à part entière, qui va devenir de plus en plus important
  - % improvement de productivité (GH blog stats)
  - L'IA n'est pas magique et ne remplace pas un dev, mais peut grandement aider a la productivité