# Results for task type 'Text to Answer' (T2A)

This folder contains the results for the task type 'Text to Answer' (T2A)

The Text-to-Answer task asks to interpret a given natural language question on a given KG(the organizational graph is used here) and answer with the binding values.
The LLM is asked to give one value per line and the F1 measure is used to score the result.

The combinedF1 score is calculated as (f1 + trimF1 + fixedF1 + relaxedF1)/4

An example prompt is the following:

    Please generate the answer for the following question based on the given RDF graph in turtle format.
    To support automated parsing, please answer with just the result, one entity or literal per line, no other text.
    Please assume common prefixes and the default/base prefix is set as <https://abc.def/ghi/>.
    For e.g. "<https://abc.def/ghi/anne>" answer with ":anne", for the literal "Anne" answer with "Anne" and for a count of 3 answer with "3".
    
    Question: What role does Anne Miller have in the Research Department?
    
    Graph:
    PREFIX : <https://abc.def/ghi/>
    PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
    PREFIX owl: <http://www.w3.org/2002/07/owl#>
    PREFIX foaf: <http://xmlns.com/foaf/0.1/>
    PREFIX vcard: <http://www.w3.org/2006/vcard/ns#
    PREFIX org: <http://www.w3.org/ns/org#>
    
    :anne a foaf:Person ; foaf:firstName "Anne" ; foaf:surname "Miller" ;
      vcard:hasAddress [ a vcard:Home ; vcard:country-name "UK" ] .
    :bob a foaf:Person ; foaf:firstName "Bob" ; foaf:surname "Tanner" ;
      vcard:hasAddress [ a vcard:Home ; vcard:country-name "US" ] .
      
    :wonderOrg a org:Organization .
    
    :researchDep a org:OrganizationalUnit ; org:unitOf :wonderOrg ;
      rdfs:label "Research Department" .
    :marketingDep a org:OrganizationalUnit ; org:unitOf :wonderOrg ;
      rdfs:label "Marketing Department" .
      
    :chiefResearchOfficer a org:Role . :marketingManager a org:Role .
    
    [ a org:Membership ; org:member :anne ; org:organization :researchDep ;
      org:role :chiefResearchOfficer ] .
    [ a org:Membership ; org:member :bob  ; org:organization :marketingDep ;
      org:role :marketingManager ] .

## result plots
BoxPlot for the combinedF1 metric for JSON-LD:
![sparql6-boxplots__Text2AnswerListOrgaJsonld_combinedF1](sparql6-boxplots__Text2AnswerListOrgaJsonld_combinedF1.png)

and for Turtle:
![sparql6-boxplots__Text2AnswerListOrgaTurtle_combinedF1](sparql6-boxplots__Text2AnswerListOrgaTurtle_combinedF1.png)