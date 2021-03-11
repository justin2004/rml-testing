# rml usage with generic preprocessing

## how

- do json2rdf_and_sparql first then come back here

## prepare
- have docker and make installed
- `make`

then find `out.ttl`


## notes

"The case without a single identifier field for nested items in the child array is currently not possible with RML and JSONPath."
https://github.com/RMLio/rmlmapper-java/issues/93#issuecomment-771695761


https://github.com/AtomGraph/JSON2RDF can handle objects in an array without a single identifier field but it isn't configurable like RML so you need to postprocess e.g. http://www.bobdc.com/blog/json2rdf/.

this repo tries to blend both approaches. but it does require a preprocessing step addid.lisp which adds a unique identifier field to all objects in the json. 

what i like about this approach:
- the preprocessing is generic (you don't have to adapt it for each new input source)
    - it adds an `"_id"` key to each object in the json but notice that the resultant triples do not use those IDs in URIs
        - those IDs are just to make up for rmlmapper's (or RML's) current shortcomings during the mapping phase
- see the other notes at the top of mapping.rml.ttl


