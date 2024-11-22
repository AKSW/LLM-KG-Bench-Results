# Results for task type 'Text to SPARQL' (T2S)

This folder contains the results for the task type 'Text 2 SPARQL' (T2S).
The raw results are included in the zip file [results-Text2Sparql.zip](results-Text2Sparql.zip). This zip file is password protected with: `2Forbes-4Tech-2Mouse-4Freeze-2Sheet4`

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

## result plots
The BoxPlots for the maxCombined metric as presented in the paper.

### Organizational, Turtle
* KG = Organizational
* dataset = Organizational
* KG Info = Turtle Graph
![sparql6-boxplots_Text2SparqlExecEvalListOrganizational_max_combined](sparql6-boxplots__Text2SparqlExecEvalListOrganizational_max_combined.png)

### Organizational Numerical, Turtle+Table
* KG = Organizational Numerical (original IRIs replaced with numeric IRIs)
* dataset = OrgaNumerical
* KG Info = Turtle(full KG) + translation Table(numeric ID, original ID):
![sparql6-boxplots__Text2SparqlExecEvalListOrgaNumerical_max_combined](sparql6-boxplots__Text2SparqlExecEvalListOrgaNumerical_max_combined.png)

### LC-Quad, Table
* KG = Wikidata
* dataset = LC-Quad
* KG Info = Table(IRI, Label) for relevant IRIs:
![sparql7-boxplots__Text2SparqlExecEvalListLcQuad_max_combined](sparql7-boxplots__Text2SparqlExecEvalListLcQuad_max_combined.png)

### CoyPu Mini, IRIs
* KG = CoyPu Mini (subset of CoyPu graph)
* dataset = CoyPu Mini
* KG Info = List of relevant IRIs
![sparql6-boxplots__Text2SparqlExecEvalListCoypuMiniIris_max_combined](sparql6-boxplots__Text2SparqlExecEvalListCoypuMiniIris_max_combined.png)

### CoyPu Mini, JSON-LD full KG
* KG = CoyPu Mini (subset of CoyPu graph)
* dataset = CoyPu Mini
* KG Info = JSON-LD(full KG)
![sparql6-boxplots__Text2SparqlExecEvalListCoypuMiniJsonldGraph_max_combined](sparql6-boxplots__Text2SparqlExecEvalListCoypuMiniJsonldGraph_max_combined.png)

### CoyPu Mini, Turtle full KG
* KG = CoyPu Mini (subset of CoyPu graph)
* dataset = CoyPu Mini
* KG Info = Turtle(full KG)
![sparql6-boxplots__Text2SparqlExecEvalListCoypuMiniTurtleGraph_max_combined](sparql6-boxplots__Text2SparqlExecEvalListCoypuMiniTurtleGraph_max_combined.png)

### CoyPu Mini, JSON-LD Schema
* KG = CoyPu Mini (subset of CoyPu graph)
* dataset = CoyPu Mini
* KG Info = JSON-LD(schema)
![sparql6-boxplots__Text2SparqlExecEvalListCoypuMiniJsonldMSchema_max_combined](sparql6-boxplots__Text2SparqlExecEvalListCoypuMiniJsonldMSchema_max_combined.png)

### CoyPu Mini, Turtle Schema
* KG = CoyPu Mini (subset of CoyPu graph)
* dataset = CoyPu Mini
* KG Info = Turtle(Schema)
![sparql6-boxplots__Text2SparqlExecEvalListCoypuMiniTurtleMSchema_max_combined](sparql6-boxplots__Text2SparqlExecEvalListCoypuMiniTurtleMSchema_max_combined.png)

### Beastiary, Turtle Schema
* KG = Beastiary
* dataset = Beastiary
* KG Info = Turtle(Schema)
![sparql6-boxplots__Text2SparqlExecEvalListBeastiaryTurtleSchema_max_combined](sparql6-boxplots__Text2SparqlExecEvalListBeastiaryTurtleSchema_max_combined.png)

### Beastiary, Turtle Subschema
* KG = Beastiary
* dataset = Beastiary
* KG Info = Turtle(relevant part of schema)
![sparql6-boxplots__Text2SparqlExecEvalListBeastiaryTurtleSubschema_max_combined](sparql6-boxplots__Text2SparqlExecEvalListBeastiaryTurtleSubschema_max_combined.png)

### Beastiary, Turtle KG subset
* KG = Beastiary
* dataset = Beastiary
* KG Info = Turtle(relevant KG subset)
![sparql6-boxplots__Text2SparqlExecEvalListBeastiaryTurtleSubgraph_max_combined](sparql6-boxplots__Text2SparqlExecEvalListBeastiaryTurtleSubgraph_max_combined.png)

### Beastiary, IRIs
* KG = Beastiary
* dataset = Beastiary
* KG Info = List of relevant IRIs
![sparql6-boxplots__Text2SparqlExecEvalListBeastiaryIris_max_combined](sparql6-boxplots__Text2SparqlExecEvalListBeastiaryIris_max_combined.png)