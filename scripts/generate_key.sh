
# openssl 기반의 인증서를 발급하기 위한 스크립트 파일

# echo "인증서를 위한 키를 합니다."
# openssl req -new -newkey rsa:2048 -nodes -keyout rcdm.shop.key -out rcdm.shop.csr
# echo

# echo "생성된 키를 기반으로 crt 파일을 생성합니다."
# openssl x509 -req -days 365 -in rcdm.shop.csr -signkey rcdm.shop.key -out rcdm.shop.crt
# echo

echo "인증서를 위한 키를 합니다."
openssl req -new -newkey rsa:2048 -nodes -keyout _wonrcdm_org.key -out _wonrcdm_org.csr
echo

echo "생성된 키를 기반으로 crt 파일을 생성합니다."
# 365일의 유효기간
openssl x509 -req -days 365 -in _wonrcdm_org.csr -signkey _wonrcdm_org.key -out _wonrcdm_org.crt
echo