#!/bin/bash

echo
echo "********************************"
echo "Production 서버를 시작합니다.[ 로그가 없는 버전 ] "
echo "********************************"
echo


docker-compose -f docker-compose.yaml up --build -d
