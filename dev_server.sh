#!/bin/bash

echo
echo "********************************"
echo "개발서버를 시작합니다.[ 로그가 있는 버전 ]"
echo "********************************"
echo
docker-compose -f docker-compose.yaml up --build