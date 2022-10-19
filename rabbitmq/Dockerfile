FROM rabbitmq:3.8-rc-management-alpine

# tzdata 설치
RUN apk add tzdata

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