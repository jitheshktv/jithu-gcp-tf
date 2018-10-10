env_name         = "jithus-pcf-env"
project          = "jithus-first-project"
region           = "us-central1"
zones            = ["us-central1-a", "us-central1-b", "us-central1-c"]
dns_suffix       = "pcf.gcp.jithus.com"
opsman_image_url = "https://storage.googleapis.com/ops-manager-us/pcf-gcp-1.12.17.tar.gz"

buckets_location = "US"
opsman_storage_bucket_count = "1"
create_gcs_buckets = true
create_blobstore_service_account_key = true

infrastructure_cidr_1 = "10.119.51.128/28"
infrastructure_cidr_2 = "10.119.51.144/28"
infrastructure_cidr_3 = "10.119.51.160/28"

pas_cidr_1 = "10.119.50.0/25"
pas_cidr_2 = "10.119.50.128/25"
pas_cidr_3 = "10.119.51.0/25"

services_cidr_1 = "10.119.51.176/28"
services_cidr_2 = "10.119.51.192/28"
services_cidr_3 = "10.119.51.208/28"

external_database = false
isolation_segment = false
pks = false

internetless = true
global_lb = 0
google_dns = false


ssl_cert = <<SSL_CERT
-----BEGIN CERTIFICATE-----
MIIDmDCCAoACCQCKyRQm7ElzazANBgkqhkiG9w0BAQsFADCBjTELMAkGA1UEBhMC
VVMxDjAMBgNVBAgMBVRleGFzMQ8wDQYDVQQHDAZEYWxsYXMxDTALBgNVBAoMBENp
dGkxDDAKBgNVBAsMA0dDVDEbMBkGA1UEAwwScGNmLmdjcC5qaXRodXMuY29tMSMw
IQYJKoZIhvcNAQkBFhRqaXRoZXNoa3R2QGdtYWlsLmNvbTAeFw0xODA3MjQyMDQ0
MTNaFw0xOTA3MjQyMDQ0MTNaMIGNMQswCQYDVQQGEwJVUzEOMAwGA1UECAwFVGV4
YXMxDzANBgNVBAcMBkRhbGxhczENMAsGA1UECgwEQ2l0aTEMMAoGA1UECwwDR0NU
MRswGQYDVQQDDBJwY2YuZ2NwLmppdGh1cy5jb20xIzAhBgkqhkiG9w0BCQEWFGpp
dGhlc2hrdHZAZ21haWwuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKC
AQEAy2DXrQG1lZ0VUmvIAuGKxq0B7Ahdu6eDDvTE7L0LoV9W9scqyiXGsE2PPP6q
3sHhF1MrhD3i4g62sWyXAw97dethcC2HdbSrfym3JVKUuop0G2eoFEkqzMRGknGX
ZXOFCZGAihiyvo4H5jbyM17e+yhN60+o54IFErUeeJJ02jVkuhOdeZk3F8Evslbr
WV72dW5TJ9UGLl1hCtZlBSsOq8OsRLNskQBBANpDzKd6H2I4liNb6aQFz7dWBtu/
LURY875fp22mSb/KhSbNwFpmdP1tnGmV8cdT2yULYFJ0XJhdYAOIzQKfzEPCsN3N
QTsfFFosYuE5raLjHDORGu0q5wIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQCYYIDL
iKXiuWKkhPz4RC+/eIVAX+WpSns1TmA+DzMBaww6C9tn4TQ+JbhvUz49BJSDvjV7
3wlQ0++gtUJr4JDUWRCt+Fls8WUd8v6zqge8o2VK2iAsWSOXSSFIbJY9bMrgj2+k
luNV/8JiQlvrFXxXzIXu4o357+Ed6Enu1OTKiYuFqbDrhCLUHjVOGbWVniZmxUnp
008QH1K/SuMyeQ4zYhJW06LRwAFGttNz4nnAIDAVAmSpSOqkQztPe5k79MfBk3I9
d/VcxlDtGvymsL/N58Sx6fmbx2EhCfR9bCX0p5FsLzQVuPWh7uD3Zezzd8l3at15
EHD8T1GHw84+diaM
-----END CERTIFICATE-----
SSL_CERT

ssl_private_key = <<SSL_KEY
-----BEGIN PRIVATE KEY-----
MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDLYNetAbWVnRVS
a8gC4YrGrQHsCF27p4MO9MTsvQuhX1b2xyrKJcawTY88/qreweEXUyuEPeLiDrax
bJcDD3t162FwLYd1tKt/KbclUpS6inQbZ6gUSSrMxEaScZdlc4UJkYCKGLK+jgfm
NvIzXt77KE3rT6jnggUStR54knTaNWS6E515mTcXwS+yVutZXvZ1blMn1QYuXWEK
1mUFKw6rw6xEs2yRAEEA2kPMp3ofYjiWI1vppAXPt1YG278tRFjzvl+nbaZJv8qF
Js3AWmZ0/W2caZXxx1PbJQtgUnRcmF1gA4jNAp/MQ8Kw3c1BOx8UWixi4TmtouMc
M5Ea7SrnAgMBAAECggEBAKF+XMR8Pvx2p5+zBjeDcPciGgya+BMyiNcvdc+mrb2O
PzfmHww1wvfsHnmIn5YSzfH/kOaJXcezd06bs64ydQ7FwbGZ9Z55wFRRg6SXVpJp
rpi0TrsM/ndqw781g8qDWHiomTEPO6AkmBEuQFSaWOWGs5jOwIhUrkKUn4WOhktd
/sbS4+/abcXZziBcppu1DfCozJ3SVXq9urBiy3mfWCa6RXCODy8lfzkW64ZQuaB4
G+CLXb00ie5FwkPsEeQI8MPO/Nsf76t2v3z4wiWdJ5au2QllVu22dZuZ6nRtTmV5
HEVFGHeYc1VwNhzx+o8uDGcmQ54UIAbaaA2ZA2jyKoECgYEA+OaxFvYYtrGfr9is
DxRnCKOP033SOitg+tu7tANAJjxKq06xuH3mO3nc7CWWY/kqR5JOS7lHrzjC6L9A
IBtaMbHz3KeVF1LjUtWCDGO4CBtghNl8em9CnmMdL7AMyIzwxrLDeHl4bUWwVmQK
Qcu2wc5CZtN4PpDKoJz638RT9ZkCgYEA0S3GCfuop5gxEG1t59Z7mbsW1AHa4BjF
v6VMODUQe40sXD/HYa4skMUZk3wcOV2U4AK77JwaB8nXa4o0IVUUHu4L1i8gU7gj
XpleKHBarb+MYbxIhqgdWRgWT45Pfu77riPRcylO4D8DIe8zsJqV+juSdwbkIUWQ
hay/yo4FdH8CgYATymwMUlcWt7rlxYmwzUOACVlXTKrZmzdj2vLq1lNUdvjM9D3n
WINk+USatkZl/prhA/4bwUi04wOEdCiKJQKf7vFf+yc8qoeOv5FOoOMyKdMb3Rsr
tQsMAv+AGjR6AdLnSbGHM8lijub9h4jVQHhwopDfEjN+bg7ehHziK/8tCQKBgAIO
NRf8BRhAgprquF3C2cwU7pB+xCvXknnjofAbdWIBbSIq7kajc4Soqyur2IsnxEK/
RCF7FzZkYV2JKiH5uAzlwfAE3oh0EsTnNOmo0PtMGpELTJsmI8OwXOfDOjzBFHAN
og1DpqbFd75pn1Ro8HhZBYNt6ef5ywXFQM04wAz5AoGBAK5gjbj7Oh786bLhHoOb
fInKs/SBVrWV1vjjrwzgVzuZOXvMlkT9mF2CTmxFmFRy29kuDAprrc8l2qO/X4sp
9lgGbllU2upRJyP9hOaqKRtbP6ib6Op3k5KJTdbbl4QwDJumLqAifB4tItavp3SB
Up6ozqJ6sa97ywUn2TGZcZNF
-----END PRIVATE KEY-----
SSL_KEY
