# head to head

## triplification using 2 methods

[RML](https://rml.io/)

vs

[JSON2RDF](https://github.com/AtomGraph/JSON2RDF) + [SPARQL](https://en.wikipedia.org/wiki/SPARQL) construct

### goals
this is not a performance test. this an ease and capabilities of mapping exercise.


### input
the input json is `characters.json`

### output
see 
- `rml/out.ttl`
- `json2rdf_and_sparql/out.ttl`

### notes
RML required a preprocessing stage and quite a big mapping file (though the mapping is expressed in triples (which is nice)).
JSON2RDF + SPARQL was much easier than i expected it to be and it did not make superflous triples.


