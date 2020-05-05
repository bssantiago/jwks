npm i && # installs the pem-jwk node package
    openssl genrsa 2048 >private.pem && # generates an RSA private key with length of 2048 bits and stores the key in a file named private.pem
    openssl rsa -in private.pem -outform PEM -pubout -out public.pem && # generates public key from the private key and stores it in a file named public.pem
    cat private.pem | npm run pem >private.jwk && # converts the RSA private key to JWK and directs the output to a file named private.jwk
    echo 'done!'
