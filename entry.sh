#!/bin/bash
# set -o pipefail

cat | xsltproc --html xml2rdf3.xsl - | ./apache-jena-3.17.0/bin/riot --syntax=rdfxml --formatted=turtle
