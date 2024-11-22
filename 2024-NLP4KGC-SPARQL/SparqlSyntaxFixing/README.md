# Results for task type 'SPARQL Syntax Fixing' (SSF)

This folder contains the results for the task type 'SPARQL Syntax Fixing' (SSF).
The raw results are included in the zip file [Results-SparqlSyntaxFixing.zip](Results-SparqlSyntaxFixing.zip). This zip file is password protected with: `2Forbes-4Tech-2Mouse-4Freeze-2Sheet4`

The task SPARQL Syntax Fixing asks to fix a syntax error in a given SPARQL query.
To be more precise, the LLM is given a syntactically malformed SPARQL query together with the resulting rdflib parsing error message.

An example prompt is the following:

    Please correct a syntax error in the following SPARQL query for wikidata. Assume common prefixes like wd or wdt to be defined.
    To support automated parsing, please answer with just a markdown fenced code block (start and end with `````) containing the sparql query, no other text.
    
    Example for Answer format:
    ```sparql
    SELECT ...
    ```
    
    SPARQL:SELECT ?obj WHERE wd:Q42168 p:P1082 ?s . ?s ps:P1082 ?obj . ?s pq:P585 ?x filter(contains(YEAR(?x),'2013'))
  
    Error message: Expected SelectQuery, found 'wd'  (at char 18), (line:1, col:19)

## result plot
BoxPlot for the maxCombined metric:
![sparql6-boxplots_SparqlSyntaxFixing](sparql6-boxplots__SparqlSyntaxFixingListLcQuad_max_combined.png)