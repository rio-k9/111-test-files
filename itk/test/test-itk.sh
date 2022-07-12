curl --insecure --request POST https://13.40.139.175/report --data @primary-emergency-itk-request.xml -H "Content-Type: application/xml"

curl --cert certs/client_pkcs.p12 --cert-type p12 --pass logitech --cacert certs/client_public.cer  --request POST https://13.40.139.175/report --data @test/primary-emergency-itk-request.xml -H "Content-Type: application/xml"