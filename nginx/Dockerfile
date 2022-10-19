FROM alpine:3.10
ENV NGINX_VERSION 1.17.2

# tzdata 설치
RUN apk add --no-cache tzdata

# 타임존 목록 출력
RUN ls /usr/share/zoneinfo

# 타임존 정보 복사
RUN cp /usr/share/zoneinfo/Asia/Seoul /etc/localtime

# 타임존 설정
RUN echo "Asia/Seoul" > /etc/timezone

# 현재 시간 출력
RUN date

# tzdata 삭제
RUN apk del tzdata

COPY install.sh /usr/src/
COPY nginx.key /usr/src/

RUN sh -x /usr/src/install.sh

COPY meraki.crt /etc/ssl/meraki.crt
COPY meraki.csr /etc/ssl/meraki.csr

COPY private.key /etc/ssl/private.key
# 클라이언트 파일

# 개발모드
COPY nginx.dev.conf /etc/nginx/nginx.conf

COPY nginx.vh.default.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/www/images/_upload/0 && \
    chmod 777 -R /var/www/images/_upload
