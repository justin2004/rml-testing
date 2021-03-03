# rml usage with generic preprocessing
"The case without a single identifier field for nested items in the child array is currently not possible with RML and JSONPath."
https://github.com/RMLio/rmlmapper-java/issues/93#issuecomment-771695761


https://github.com/AtomGraph/JSON2RDF can handle objects in an array without a single identifier field but it isn't configurable like RML so you need to postprocess e.g. http://www.bobdc.com/blog/json2rdf/.

this repo tries to blend both approaches. but it does require a preprocessing step addid.lisp which adds a unique identifier field to all objects in the json. 

what i like about this approach:
- the preprocessing is generic (you don't have to adapt it for each new input source)
- see the other notes at the top of mapping.rml.ttl


## how

### first preprocess (if necessary)
cat characters.json | docker run --rm -i rml-testing sbcl --script /root/addid.lisp > characters.pp.json

### then run the rml mapper
docker run --rm -i -v `pwd`:/mnt rml-testing java -jar /root/rmlmapper-java/target/rmlmapper-4.9.1-r326.jar  -m mapping.rml.ttl > characters.nq
