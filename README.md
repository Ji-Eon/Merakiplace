<h1 align="center">Welcome to MERAKI Django Web 👋</h1>



### Dev Tools
- VS Code
- Mac OS


## Use Framework
- Django
- Celery
- Redis
- Nginx
- Docker
- Postgresql
- rebbitmq

## 프로젝트 리뷰에 필요한 도구들
- postman : response / request 결과 확인
- pgadmin : 데이터 셋팅 및 확인


## Project 실행방법
### 개발환경 ( Backend)

Backend 개발 환경은 Docker Container 기반으로 실행이 됩니다.
- 쉘스크립트 기반으로 자동으로 올라갈수 있도록 로직을 구성하였습니다.

실행 명령어 
```bash

./dev_server.sh ( Shell Script )

./production.sh ( Shell Script )
```

-  만약 정상적으로 실행이 된걸 확인했을 경우 ./production_dev로 올려주시면 로그가 안나오는 버전으로 올라갑니다 

## 실행 및 실행 결과

- 도커 컨테이너가 성공적으로 실행되었다면 [http://localhost:8000/admin/] or [http://0.0.0.0:80000/admin] 에 접속하여 화면과 같은 화면을 보실 수 있습니다.
- 만약 이 화면이 보이지 않거나 계속 무한루팅 될 경우 dev서버가 정상적으로 작동하지 않는다.


## Data 입력방법
데이터는 sql 파일을 이용하여 셋팅합니다. 만약 시작전 postgresql 이나 5432 포트를 사용하고있다면 포트를 종료시켜주세요! 
### PgAdmin 설정

### 주의

**절대!!! 절대!!! 로컬에서 DB를 먼저 생성해서는 안됩니다!!**

- Postgresql 만 설치가 되어있으면 자동적으로 makemigrations, migrate가 되기 때문에 디비를 생성안해도 됨
- 서버생성 계정은 
  - server name : meraki_dev
  - host : localhost
  - port : 5432
  - username : postgres
  - password : postgres

![ininital](https://github.com/Ji-Eon/Merakiplace/blob/562ca3493e658b851c54fa462961178958ab3721/git_images/pg_main.png)
![ininital](https://github.com/Ji-Eon/Merakiplace/blob/562ca3493e658b851c54fa462961178958ab3721/git_images/pg1.png)



- docker bash


### Superuser 생성 
- docker-compose exec app base는 관리자 계정을 생성하거나 Python a명령어를 실행할 수 있는 모드 입니다.
- 초기 Metadata를 생성하기 위해서는 반드시 필요한 과정

관리자 계정을 생성하기 위해서는 Docker Container들 중 Django app을 실행한 docker container에 접속을 해야합니다.

```bash
docker exec app bash
```
- python manage.py createsuperuser
- 정보입력 ( 이메일 , 이름 , 패스워드 )

![ininital](https://github.com/Ji-Eon/Merakiplace/blob/562ca3493e658b851c54fa462961178958ab3721/git_images/createsuperuser.png)



## 세팅 완료된 결과 화면

![ininital](https://github.com/Ji-Eon/Merakiplace/blob/562ca3493e658b851c54fa462961178958ab3721/git_images/django_main.png)




### Patient Model 및 설명
 Patient( 환자 ) 
  - patientname : 환자명

![ininital](https://github.com/Ji-Eon/Merakiplace/blob/562ca3493e658b851c54fa462961178958ab3721/git_images/patient_model.png)


### Doctor Model 및 설명

- Models
- 아래 항목들은 Foreinkey를 이용하여 구성하였습니다.

 Doctor( 의사 ) 
  - doctorname : 의사명
  - hospital : 병원명
  - nonpay : 비급여항목
  
 DepertmentList( 진료과 )
  
  향후 데이터를 문자열로 저장 및 문자열 비교검색으로  인덱스검색을 최소화 할수 있도록 변형이 가능할거같습니다 list->str , 성능개선 향후 의견
  - department1 : 진료과1
  - department2 : 진료과2
  - department3 : 진료과3

 WeeklyTask( 주중 영업 및 시간 )
 
 True / False Boolean 형태로 향후 Front에서 자유자재로 영업시간을 지정할 경우를 대비해보았습니다.
  - task_monday : 월요일
  - task_tuesday : 화요일
  - task_wednesday : 수요일
  - task_thursday : 목요일
  - task_friday : 금요일
  - task_saturday : 토요일
  - task_sunday : 일요일
  - start_time : 진료 시작 시간
  - close_time : 진료 종료 시간
 
 LunchTask ( 점심시간 ) 
  - start_time : 점심 시작 시간
  - close_time : 점심 종료 시간
 
 
![ininital](https://github.com/Ji-Eon/Merakiplace/blob/562ca3493e658b851c54fa462961178958ab3721/git_images/doctor.png)

 Apply_History ( 진료예약정보 )
  향후 agree_status를 통해 True/False로 History형식으로 남기면서 승인 및 반려를 할수 있도록 구성하였습니다.
  - patient : 환자 Foreinkey를
  - doctor : 의사 Foreinkey를
  - treatment_dt : 진료 요청 날짜 및 시간
  - agree_status : 의사 승인 상태

![ininital](https://github.com/Ji-Eon/Merakiplace/blob/562ca3493e658b851c54fa462961178958ab3721/git_images/doctor_detail.png)



### Apply History 및 설명

![ininital](https://github.com/Ji-Eon/Merakiplace/blob/562ca3493e658b851c54fa462961178958ab3721/git_images/apply_history.png)

## Request / Reponse 과제 실행 결과
