FROM debian:10
RUN apt-get update && apt-get install -y libxml2-utils default-jre-headless
RUN apt-get install -y xsltproc wget
WORKDIR /root

# https://sourceforge.net/projects/xmltordf/
ADD xml2rdf3.xsl .

     # alternatives?
     #     https://github.com/AcandoNorway/XmlToRdf

RUN wget 'https://apache.osuosl.org/jena/binaries/apache-jena-3.17.0.tar.gz' && tar -xaf apache-jena-3.17.0.tar.gz

ADD entry.sh .

CMD /root/entry.sh
