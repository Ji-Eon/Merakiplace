## Django를 위한 도커파일
## slim buster를 통해서 이미지 용량을 줄였음.
FROM python:3.7.9-slim-buster

## 환경변수 셋팅
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV TZ=Asia/Seoul

## slim-buster에 필요한 라이브러리 설치
RUN apt-get update && apt-get -y install  --no-install-recommends libpq-dev libgtk2.0-dev libgl1-mesa-glx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get upgrade -y && apt-get install -y gcc

# 폴더 생성
RUN mkdir -p /usr/src/app

# 작업 폴더 설정
WORKDIR /usr/src/app

# 폴더 복사
COPY . .
RUN mv wait-for /bin/wait-for

# pip 업그레이드
RUN pip3 install --upgrade pip


# 캐시를 사용하지 않아서 설치는 오래걸리지만 항상 해당 시점에 맞는 패키지 설치 가능
#RUN pip install -r requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt
