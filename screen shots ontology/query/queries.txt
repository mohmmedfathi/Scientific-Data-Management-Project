subclassof

PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX ab:<http://www.semanticweb.org/yousf/ontologies/2021/11/SDM_Project#>
SELECT ?subject ?object
	WHERE { ?subject rdfs:subClassOf ?object }

@@@@@@@
3 var

PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX ab:<http://www.semanticweb.org/yousf/ontologies/2021/11/SDM_Project#>
SELECT ?x ?y ?z
	WHERE { ?x ?y ?z .}

@@@@@@@@
3 var offset

PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX ab:<http://www.semanticweb.org/yousf/ontologies/2021/11/SDM_Project#>
SELECT ?x ?y ?z
	WHERE { ?x ?y ?z .}
OFFSET 3
LIMIT 10


@@@@@@@@@@@@
range

PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX ab:<http://www.semanticweb.org/yousf/ontologies/2021/11/SDM_Project#>
SELECT ?x ?y
	WHERE { ?x rdfs:range ?y .}

@@@@@@@@@
domain and range

PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX ab:<http://www.semanticweb.org/yousf/ontologies/2021/11/SDM_Project#>
SELECT ?x ?y ?z
	WHERE { ?x rdfs:range ?y.
		?x rdfs:domain ?z}

@@@@@@@@@@@@@@
type

PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX ab:<http://www.semanticweb.org/yousf/ontologies/2021/11/SDM_Project#>
SELECT ?x ?y
	WHERE { ?x  rdf:type ?y.}

@@@@@@@@@@@@@@@

