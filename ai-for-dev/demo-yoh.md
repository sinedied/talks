* Pourquoi ca ne propose rien?
  - Les 150 charactères de limite
  - Code match (ex: Python)

* Demos "real world":
  - traduction de code python
  - comprendre une nouvelle base de code
  - refactoring de code JS et optimisation

* IA Sample
- C'est un projet sur lequel je bosse dessus depuis début septembre:
  * retour de vacances, on m'a dit: on a 2 semaines pour faire la même chose que cette app Python, un ChatGPT version enterprise qui s'appuie sur une base de documents

## talk-convert-lookup-example branch
- Convert Lookup: search for lookup globally
  * /explain (whole code, DictReader)
  * What would be the result given this CSV data?
  * convert to TS
  * refactor to remove the need of csv-parser
  * refactor so that the file loading and parsing occurs in a separate method
  * refactor to an async method without using streams

## Data generation
- open employee-info.scv

Generate me 100 lines of CSV data based on this format:
name,title,insurance,insurancegroup

- insurancegroup must be either Family or Single
- insurance must be either Northwind Health Plus or Northwind Health Standard
- title must be in this list: Program Manager, Software Manager, Software Architect, Quality Assurance, Sales, Marketing, Marketing Director, Designer
- name must be a French name

Print the CSV data directly

- I don't want a script

## talk-refactor-code branch
- Refactor: search for indexSections
  * /refactor
  * make it more concise and readable
  * merge the if conditions

## talk-tests branch
- Reverse coding
- Chat.tsx
  * add onEnterKeyDown event handler to chat root
  * implement onKeyDown event handler
    - use setCancelStreaming hook
  * add setCancelStreaming hook (go to top if not working)

## eslint same branch
- eslint JS to JSON config in webapp
  * Make it valid JSON

## talk-tests branch
- Generate tests for string.ts
  * write tests with tap framework
  * copy parseBoolean function
  * generate tests for parseBoolean function
  * try with more complex function like CsvTool

## GH Actions same branch
  * generate a GH actions workflow to run unit tests with Node 18 on Mac, windows and Linux
  * create file
  * where should I put this




## talk-tests branch
- New function: open string.ts
  * create a function that escapes html characters
  * parse a markdown numbered or bulleted list into html
   * ctrl+enter
    input: string
    output: string
  * then output: DOM element
  * const element = createElementFromHTML(htmlString);
  * // parse the list into an html string
  * /simplify
  * make this more concise
  * make this readable, with comments
  * // alternative: think step by step



/explain
convert imports
convert to TS
refactor
few shots examples