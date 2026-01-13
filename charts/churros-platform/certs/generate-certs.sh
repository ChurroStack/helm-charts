openssl genrsa -out signing.key 4096
openssl req -new -x509 -key signing.key -out signing.crt -days 3650
openssl pkcs12 -export -out openiddict-signing.pfx -inkey signing.key -in signing.crt
openssl genrsa -out encryption.key 4096
openssl req -new -x509 -key encryption.key -out encryption.crt -days 3650
openssl pkcs12 -export -out openiddict-encryption.pfx -inkey encryption.key -in encryption.crt