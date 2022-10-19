<h1 align="center">Welcome to MERAKI Django Framework 👋</h1>

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

## requirements.txt
과제를 검토하시는 가운데 혹시나 기존 환경과 다를수 있어 도커라이징을 진행하였습니다.
제가 사용했던 Python 버전들은 requirements.txt 에 구성되어 있습니다.



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
- 만약 이 화면이 보이지 않거나 계속 무한루팅 될 경우 dev서버가 정상적으로 작동하지 안습니다.
- 아래 이미지들과 같이 나오면 정상적으로 도커가 완료된것입니다.
![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/docker_done.png?raw=true)

![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/docker_done2.png?raw=true)

## Data 입력방법
데이터는 sql 파일을 이용하여 셋팅합니다. 만약 시작전 postgresql 이나 5432 포트를 사용하고있다면 포트를 종료시켜주세요! 
### PgAdmin 설정

### 주의

**절대!!! 절대!!! 로컬에서 DB를 먼저 생성해서는 안됩니다!!**

- Postgresql 만 설치가 되어있으면 자동적으로 makemigrations, migrate가 되기 때문에 디비를 생성안해도 됨
- sql파일은 meraki.sql파일도 같이 있습니다. 로컬주소에있는 파일경로를 지정해주시면 됩니다.
- 서버생성 계정은 
  - server name : meraki_dev
  - host : localhost
  - port : 5432
  - username : postgres
  - password : postgres

![ininital](https://github.com/Ji-Eon/Merakiplace/blob/562ca3493e658b851c54fa462961178958ab3721/git_images/pg_main.png)
![ininital](https://github.com/Ji-Eon/Merakiplace/blob/562ca3493e658b851c54fa462961178958ab3721/git_images/pg1.png)
![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/pg_server.png?raw=true)
![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/pg_history.png?raw=true)
![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/restore_2.png?raw=true)
![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/restore_1.png?raw=true)

### Superuser 생성 
- docker-compose exec app base는 관리자 계정을 생성하거나 Python a명령어를 실행할 수 있는 모드 입니다.
- 초기 Metadata를 생성하기 위해서는 반드시 필요한 과정

관리자 계정을 생성하기 위해서는 Docker Container들 중 Django app을 실행한 docker container에 접속을 해야합니다.

```bash
docker-compose exec app bash
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

### 문자열 검색 문제
#### 문자열 검색
- 문자열을 입력했을때 데이터에 저장되어 있는 의사 중 조건의 맞는 의사 리스트 반환
- 일반의 입력 결과
- 메라키 입력결과
- 메라키 손웅래 입력 결과
- 한의사 선재원 입력 결과
- 다이어트 손웅래 입력 결과
- 특정 날짜와 시간을 입력하여 해당시간에 영업중인 의사 반환
  - 2022년 1월 11일 오후 3시 입력 결과
  - 2022년 1월 15일 오전 9시 입력 결과
  
  ![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/response_1.png?raw=true)
  ![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/response_2.png?raw=true)
  ![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/response_3.png?raw=true)
  ![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/response_4.png?raw=true)
  ![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/response_5.png?raw=true)



#### 진료요청
- 진료 희망 날짜 시간
  - 환자가 진료가 이루어 지기를 희망하는 날짜와 시간
  
    ![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/response_6.png?raw=true)
  
  
  - 의사가 영업시간이 아닌값이 들어오면 '의사의 영업시간이 아님' 을 주는 값 반환
    
    ![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/response_11.png?raw=true)



### 진료요청 검색
  - 진료요청 정보 리스트 가져오기
  - 진료요청 수락 결과
  
  [ 시나리오 ] 
    - 진료요청정보를 먼저 DB에 저장을 시킵니다 
    
![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/response_8.png?raw=true)

  [ 시나리오2 ] 
    - 의사가요청 정보를 확인하여 수학합니다 agree_status  -> False -> True로 변환
    - apply_id 요청 정보 id 값
    - status만 true로 반영하여 의사 예약 리스트로 갈수 있도록 
    
![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/response_9.png?raw=true)
    
  [ 시나리오3 ] 
    - 변환된 결과를 가져와서 반영결과

![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/response_10.png?raw=true)



### 회고
  - 최대한 문제에 대한 기능을 구현하는데 집중했습니다... 아쉬운점은 시간이 많이 없는 관계로 기능 개발을 우선적으로 진행하였으며 본인 나름대로 향후 확장성을 고려했다고 생각하나 코드가 너무길어 리펙토링이 너무 절실하게 필요합니다. 향후 기회가 된다면 이러한 코드를 다양한 눈높이의 의견을 받아 좋은 코드로 발전할수 있도록 진행하고 싶습니다. 감사합니다.
