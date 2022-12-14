<h1 align="center">Welcome to MERAKI Django Framework π</h1>

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
κ³Όμ λ₯Ό κ²ν νμλ κ°μ΄λ° νΉμλ κΈ°μ‘΄ νκ²½κ³Ό λ€λ₯Όμ μμ΄ λμ»€λΌμ΄μ§μ μ§ννμμ΅λλ€.
μ κ° μ¬μ©νλ Python λ²μ λ€μ requirements.txt μ κ΅¬μ±λμ΄ μμ΅λλ€.



## νλ‘μ νΈ λ¦¬λ·°μ νμν λκ΅¬λ€
- postman : response / request κ²°κ³Ό νμΈ
- pgadmin : λ°μ΄ν° μν λ° νμΈ


## Project μ€νλ°©λ²
### κ°λ°νκ²½ ( Backend)

Backend κ°λ° νκ²½μ Docker Container κΈ°λ°μΌλ‘ μ€νμ΄ λ©λλ€.
- μμ€ν¬λ¦½νΈ κΈ°λ°μΌλ‘ μλμΌλ‘ μ¬λΌκ°μ μλλ‘ λ‘μ§μ κ΅¬μ±νμμ΅λλ€.

μ€ν λͺλ Ήμ΄ 
```bash

./dev_server.sh ( Shell Script )

./production.sh ( Shell Script )
```

-  λ§μ½ μ μμ μΌλ‘ μ€νμ΄ λκ±Έ νμΈνμ κ²½μ° ./production_devλ‘ μ¬λ €μ£Όμλ©΄ λ‘κ·Έκ° μλμ€λ λ²μ μΌλ‘ μ¬λΌκ°λλ€ 

## μ€ν λ° μ€ν κ²°κ³Ό

- λμ»€ μ»¨νμ΄λκ° μ±κ³΅μ μΌλ‘ μ€νλμλ€λ©΄ [http://localhost:8000/admin/] or [http://0.0.0.0:80000/admin] μ μ μνμ¬ νλ©΄κ³Ό κ°μ νλ©΄μ λ³΄μ€ μ μμ΅λλ€.
- λ§μ½ μ΄ νλ©΄μ΄ λ³΄μ΄μ§ μκ±°λ κ³μ λ¬΄νλ£¨ν λ  κ²½μ° devμλ²κ° μ μμ μΌλ‘ μλνμ§ μμ΅λλ€.
- μλ μ΄λ―Έμ§λ€κ³Ό κ°μ΄ λμ€λ©΄ μ μμ μΌλ‘ λμ»€κ° μλ£λκ²μλλ€.
![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/docker_done.png?raw=true)

![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/docker_done2.png?raw=true)

## Data μλ ₯λ°©λ²
λ°μ΄ν°λ sql νμΌμ μ΄μ©νμ¬ μνν©λλ€. λ§μ½ μμμ  postgresql μ΄λ 5432 ν¬νΈλ₯Ό μ¬μ©νκ³ μλ€λ©΄ ν¬νΈλ₯Ό μ’λ£μμΌμ£ΌμΈμ! 
### PgAdmin μ€μ 

### μ£Όμ

**μ λ!!! μ λ!!! λ‘μ»¬μμ DBλ₯Ό λ¨Όμ  μμ±ν΄μλ μλ©λλ€!!**

- Postgresql λ§ μ€μΉκ° λμ΄μμΌλ©΄ μλμ μΌλ‘ makemigrations, migrateκ° λκΈ° λλ¬Έμ λλΉλ₯Ό μμ±μν΄λ λ¨
- sqlνμΌμ meraki.sqlνμΌλ κ°μ΄ μμ΅λλ€. λ‘μ»¬μ£Όμμμλ νμΌκ²½λ‘λ₯Ό μ§μ ν΄μ£Όμλ©΄ λ©λλ€.
- μλ²μμ± κ³μ μ 
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

### Superuser μμ± 
- docker-compose exec app baseλ κ΄λ¦¬μ κ³μ μ μμ±νκ±°λ Python aλͺλ Ήμ΄λ₯Ό μ€νν  μ μλ λͺ¨λ μλλ€.
- μ΄κΈ° Metadataλ₯Ό μμ±νκΈ° μν΄μλ λ°λμ νμν κ³Όμ 

κ΄λ¦¬μ κ³μ μ μμ±νκΈ° μν΄μλ Docker Containerλ€ μ€ Django appμ μ€νν docker containerμ μ μμ ν΄μΌν©λλ€.

```bash
docker-compose exec app bash
```
- python manage.py createsuperuser
- μ λ³΄μλ ₯ ( μ΄λ©μΌ , μ΄λ¦ , ν¨μ€μλ )


![ininital](https://github.com/Ji-Eon/Merakiplace/blob/562ca3493e658b851c54fa462961178958ab3721/git_images/createsuperuser.png)



## μΈν μλ£λ κ²°κ³Ό νλ©΄

![ininital](https://github.com/Ji-Eon/Merakiplace/blob/562ca3493e658b851c54fa462961178958ab3721/git_images/django_main.png)



### Patient Model λ° μ€λͺ
 Patient( νμ ) 
  - patientname : νμλͺ

![ininital](https://github.com/Ji-Eon/Merakiplace/blob/562ca3493e658b851c54fa462961178958ab3721/git_images/patient_model.png)


### Doctor Model λ° μ€λͺ

- Models
- μλ ν­λͺ©λ€μ Foreinkeyλ₯Ό μ΄μ©νμ¬ κ΅¬μ±νμμ΅λλ€.

 Doctor( μμ¬ ) 
  - doctorname : μμ¬λͺ
  - hospital : λ³μλͺ
  - nonpay : λΉκΈμ¬ν­λͺ©
  
 DepertmentList( μ§λ£κ³Ό )
  
  ν₯ν λ°μ΄ν°λ₯Ό λ¬Έμμ΄λ‘ μ μ₯ λ° λ¬Έμμ΄ λΉκ΅κ²μμΌλ‘  μΈλ±μ€κ²μμ μ΅μν ν μ μλλ‘ λ³νμ΄ κ°λ₯ν κ±°κ°μ΅λλ€ list->str , μ±λ₯κ°μ  ν₯ν μκ²¬
  - department1 : μ§λ£κ³Ό1
  - department2 : μ§λ£κ³Ό2
  - department3 : μ§λ£κ³Ό3

 WeeklyTask( μ£Όμ€ μμ λ° μκ° )
 
 True / False Boolean ννλ‘ ν₯ν Frontμμ μμ μμ¬λ‘ μμμκ°μ μ§μ ν  κ²½μ°λ₯Ό λλΉν΄λ³΄μμ΅λλ€.
  - task_monday : μμμΌ
  - task_tuesday : νμμΌ
  - task_wednesday : μμμΌ
  - task_thursday : λͺ©μμΌ
  - task_friday : κΈμμΌ
  - task_saturday : ν μμΌ
  - task_sunday : μΌμμΌ
  - start_time : μ§λ£ μμ μκ°
  - close_time : μ§λ£ μ’λ£ μκ°
 
 LunchTask ( μ μ¬μκ° ) 
  - start_time : μ μ¬ μμ μκ°
  - close_time : μ μ¬ μ’λ£ μκ°
 
 
![ininital](https://github.com/Ji-Eon/Merakiplace/blob/562ca3493e658b851c54fa462961178958ab3721/git_images/doctor.png)

 Apply_History ( μ§λ£μμ½μ λ³΄ )
  ν₯ν agree_statusλ₯Ό ν΅ν΄ True/Falseλ‘ HistoryνμμΌλ‘ λ¨κΈ°λ©΄μ μΉμΈ λ° λ°λ €λ₯Ό ν μ μλλ‘ κ΅¬μ±νμμ΅λλ€.
  - patient : νμ Foreinkeyλ₯Ό
  - doctor : μμ¬ Foreinkeyλ₯Ό
  - treatment_dt : μ§λ£ μμ²­ λ μ§ λ° μκ°
  - agree_status : μμ¬ μΉμΈ μν

![ininital](https://github.com/Ji-Eon/Merakiplace/blob/562ca3493e658b851c54fa462961178958ab3721/git_images/doctor_detail.png)



### Apply History λ° μ€λͺ

![ininital](https://github.com/Ji-Eon/Merakiplace/blob/562ca3493e658b851c54fa462961178958ab3721/git_images/apply_history.png)

## Request / Reponse κ³Όμ  μ€ν κ²°κ³Ό

### λ¬Έμμ΄ κ²μ λ¬Έμ 
#### λ¬Έμμ΄ κ²μ
- λ¬Έμμ΄μ μλ ₯νμλ λ°μ΄ν°μ μ μ₯λμ΄ μλ μμ¬ μ€ μ‘°κ±΄μ λ§λ μμ¬ λ¦¬μ€νΈ λ°ν
- μΌλ°μ μλ ₯ κ²°κ³Ό
- λ©λΌν€ μλ ₯κ²°κ³Ό
- λ©λΌν€ μμλ μλ ₯ κ²°κ³Ό
- νμμ¬ μ μ¬μ μλ ₯ κ²°κ³Ό
- λ€μ΄μ΄νΈ μμλ μλ ₯ κ²°κ³Ό
- νΉμ  λ μ§μ μκ°μ μλ ₯νμ¬ ν΄λΉμκ°μ μμμ€μΈ μμ¬ λ°ν
  - 2022λ 1μ 11μΌ μ€ν 3μ μλ ₯ κ²°κ³Ό
  - 2022λ 1μ 15μΌ μ€μ  9μ μλ ₯ κ²°κ³Ό
  
  ![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/response_1.png?raw=true)
  ![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/response_2.png?raw=true)
  ![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/response_3.png?raw=true)
  ![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/response_4.png?raw=true)
  ![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/response_5.png?raw=true)



#### μ§λ£μμ²­
- μ§λ£ ν¬λ§ λ μ§ μκ°
  - νμκ° μ§λ£κ° μ΄λ£¨μ΄ μ§κΈ°λ₯Ό ν¬λ§νλ λ μ§μ μκ°
  
    ![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/response_6.png?raw=true)
  
  
  - μμ¬κ° μμμκ°μ΄ μλκ°μ΄ λ€μ΄μ€λ©΄ 'μμ¬μ μμμκ°μ΄ μλ' μ μ£Όλ κ° λ°ν
    
    ![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/response_11.png?raw=true)



### μ§λ£μμ²­ κ²μ
  - μ§λ£μμ²­ μ λ³΄ λ¦¬μ€νΈ κ°μ Έμ€κΈ°
  - μ§λ£μμ²­ μλ½ κ²°κ³Ό
  
  [ μλλ¦¬μ€ ] 
    - μ§λ£μμ²­μ λ³΄λ₯Ό λ¨Όμ  DBμ μ μ₯μ μν΅λλ€ 
    
![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/response_8.png?raw=true)

  [ μλλ¦¬μ€2 ] 
    - μμ¬κ°μμ²­ μ λ³΄λ₯Ό νμΈνμ¬ μνν©λλ€ agree_status  -> False -> Trueλ‘ λ³ν
    - apply_id μμ²­ μ λ³΄ id κ°
    - statusλ§ trueλ‘ λ°μνμ¬ μμ¬ μμ½ λ¦¬μ€νΈλ‘ κ°μ μλλ‘ 
    
![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/response_9.png?raw=true)
    
  [ μλλ¦¬μ€3 ] 
    - λ³νλ κ²°κ³Όλ₯Ό κ°μ Έμμ λ°μκ²°κ³Ό

![ininital](https://github.com/Ji-Eon/Merakiplace/blob/main/git_images/response_10.png?raw=true)



### νκ³ 
  - μ΅λν λ¬Έμ μ λν κΈ°λ₯μ κ΅¬ννλλ° μ§μ€νμ΅λλ€... μμ¬μ΄μ μ μκ°μ΄ λ§μ΄ μλ κ΄κ³λ‘ κΈ°λ₯ κ°λ°μ μ°μ μ μΌλ‘ μ§ννμμΌλ©° λ³ΈμΈ λλ¦λλ‘ ν₯ν νμ₯μ±μ κ³ λ €νλ€κ³  μκ°νλ μ½λκ° λλ¬΄κΈΈμ΄ λ¦¬νν λ§μ΄ λλ¬΄ μ μ€νκ² νμν©λλ€. ν₯ν κΈ°νκ° λλ€λ©΄ μ΄λ¬ν μ½λλ₯Ό λ€μν λλμ΄μ μκ²¬μ λ°μ μ’μ μ½λλ‘ λ°μ ν μ μλλ‘ μ§ννκ³  μΆμ΅λλ€. κ°μ¬ν©λλ€.
