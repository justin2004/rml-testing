all:
	docker build -t justin2004/rml-testing-jena .
	cat ../characters.json | docker run --rm -i atomgraph/json2rdf 'http://tmp.com/'  > characters.raw.ttl && docker run -v `pwd`:/mnt --rm -i justin2004/rml-testing-jena ./apache-jena-3.17.0/bin/sparql --data=/mnt/characters.raw.ttl --query=/mnt/query.sparql > out.ttl
