# convert html to triples (jankily)

## prepare
- clone this repo
- `docker build -t justin2004/html-to-ttl .`

## examples
`curl 'http://www.google.com'| docker run --rm -i justin2004/html-to-ttl > google.ttl`

`cat some.html | docker run --rm -i justin2004/html-to-ttl > some.ttl`


## notes
expect lots of warnings because html isn't usually good xml
