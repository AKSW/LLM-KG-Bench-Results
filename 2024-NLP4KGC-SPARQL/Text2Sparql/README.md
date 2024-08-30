# Results for task type 'Text to SPARQL' (T2S)

This folder contains the results for the task type 'Text 2 SPARQL' (T2S)

The Text-to-Sparql task asks to create a *SPARQL SELECT* query for a KG and a textual question.
Many KBQA approaches build upon this capability.

An example prompt is the following:

    Please generate a SPARQL SELECT query for wikidata and the given question. Assume common prefixes like wd or wdt to be defined.
    To support automated parsing, please answer with just a markdown fenced code block (start and end with ```) containing the sparql query, no other text.
    
    Example for Answer format:
    ```sparql
    SELECT ...
    ```
    
    Question:What was the population of Somalia in 2009-0-0?
    
    Here a csv list mapping IRIs and labels of properties and entities you probably need:
    wd:P585,point in time
    wd:P1082,population
    wd:Q1045,Somalia

## some result plots
Some BoxPlots for the maxCombined metric, for more please have a look at  the figures in the folder.

Organizational, Turtle:
![sparql6-boxplots_Text2SparqlExecEvalListOrganizational_max_combined](sparql6-boxplots__Text2SparqlExecEvalListOrganizational_max_combined.png)

Organizational Numerical, Turtle+Table:
![sparql6-boxplots__Text2SparqlExecEvalListOrgaNumerical_max_combined](sparql6-boxplots__Text2SparqlExecEvalListOrgaNumerical_max_combined.png)

LC-Quad, Table:
![sparql7-boxplots__Text2SparqlExecEvalListLcQuad_max_combined](sparql7-boxplots__Text2SparqlExecEvalListLcQuad_max_combined.png)