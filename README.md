# head to head

## triplification using 2 methods

[RML](https://rml.io/)

vs

[JSON2RDF](https://github.com/AtomGraph/JSON2RDF) + [SPARQL](https://en.wikipedia.org/wiki/SPARQL) construct

### goals
this is not a performance test. this an ease and capabilities of mapping comparison.


### input
the input json is `characters.json`

### output
see 
- `rml/out.ttl`
- `json2rdf_and_sparql/out.ttl`

### notes
- RML [required](https://github.com/RMLio/rmlmapper-java/issues/93#issuecomment-771695761) a preprocessing stage and quite a big mapping file (`rml/mapping.rml.ttl`) (though the mapping is expressed in triples (which is nice)).

- JSON2RDF + SPARQL was much easier than i expected it to be and it did not make superflous triples like RML did.
    - It turns out that JSON2RDF isn't needed either. You can turn json into jsonld (that is almost identical to the output of JSON2RDF) by injectecting some `@context` into the json. I'll update the repo with that alternative soon.

