all:
	docker build -t justin2004/rml-testing .
	cat ../characters.json | docker run --rm -i justin2004/rml-testing sbcl --script /root/addid.lisp > characters.pp.json
	docker run --rm -i -v `pwd`:/mnt justin2004/rml-testing java -jar /root/rmlmapper-java/target/rmlmapper-4.9.1-r326.jar  -m mapping.rml.ttl > characters.nq && docker run -v `pwd`:/mnt --rm -i justin2004/rml-testing-jena ./apache-jena-3.17.0/bin/sparql --data=/mnt/characters.nq --query=/mnt/query.sparql > out.ttl
