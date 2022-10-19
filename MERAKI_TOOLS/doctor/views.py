from datetime import datetime
from pstats import Stats
from django.shortcuts import render
from rest_framework.views import APIView
from rest_framework.response import Response
from django.http import Http404,JsonResponse


# Create your views here.
from MERAKI_TOOLS.patient.models import *
from MERAKI_TOOLS.doctor.models import *
from MERAKI_TOOLS.doctor.serializers import *

## 의사정보
class StringSearchView(APIView):
    
    def get_depertment(self,id):
        try:
            depertment = DepertmentList.objects.filter(
                Doctor=id).values_list('department1','department2','department3')
            
            depertment_list = []
            for task in depertment:
                values = list(task)
                values = [x for x in values if x is not None]
            
                return values
            
        except:
            raise Http404
        

        
    def get(self, request, *args):
        
        search_value = request.GET['search_value']
        

        ## 문자열이 하나일수있고 문제에서 띄어쓰기가 있어 띄어쓰기를 기준으로 리스트로 검색 내용을 다양하게 검색
        search_value = search_value.split()

        
        
        queryset = Doctor.objects.all().values_list('id','doctorname','hospital','nonpay')
        
        data = []
        

        for result in queryset:
            doctor_info = list(result)
            depertment = self.get_depertment(doctor_info[0])
            del doctor_info[0]
            doctor_info = doctor_info+depertment

            result = ' '.join(s for s in doctor_info)

            count = 0

            for search_task in search_value:
                
                 
                search_count = [word for word in doctor_info if search_task in word]

                if search_count:
                    count +=1

                else:
                    count -=1
                
                if count >= len(search_value):
                   data.append(doctor_info[0])
 
                
        return Response(data, status=200)



class DateSearchView(APIView):
  
    def get(self, request, *args):
        
        years = request.GET['years']
        month = request.GET['month']
        day = request.GET['day']
        time = request.GET['time']
        
        time = datetime.strptime(time, '%H:%M').time()
        
        date = years+'-'+month+'-'+day

        datetime_date = datetime.strptime(date,'%Y-%m-%d')
        
        date_Dict= {0:'monday',1:'tuesday',2:'wednesday',3:'wednesday',4:'friday',5:'saturday',6:'sunday'}
        
        
        week = date_Dict[datetime_date.weekday()]
        data = []
        if week == 'monday':
            queryset = WeeklyTask.objects.filter(task_tuesday=True).all().values_list('id','Doctor','start_time','close_time')
            
         
            for query in queryset:
                
                if query[3] > time > query[2] :
                    doctor_list = Doctor.objects.filter(id=query[0]).values_list('doctorname')
                   
                    data.append(doctor_list[0])
        elif week== 'tuesday':
            queryset = WeeklyTask.objects.filter(task_tuesday=True).all().values_list('id','Doctor','start_time','close_time')
            
         
            for query in queryset:
                
                if query[3] > time > query[2] :
                    doctor_list = Doctor.objects.filter(id=query[0]).values_list('doctorname')
                   
                    data.append(doctor_list[0])
                            
        elif week== 'wednesday':
            queryset = WeeklyTask.objects.filter(task_tuesday=True).all().values_list('id','Doctor','start_time','close_time')
            
         
            for query in queryset:
                
                if query[3] > time > query[2] :
                    doctor_list = Doctor.objects.filter(id=query[0]).values_list('doctorname')
                   
                    data.append(doctor_list[0])
        elif week== '수요일':
            queryset = WeeklyTask.objects.filter(task_tuesday=True).all().values_list('id','Doctor','start_time','close_time')
            
         
            for query in queryset:
                
                if query[3] > time > query[2] :
                    doctor_list = Doctor.objects.filter(id=query[0]).values_list('doctorname')
                   
                    data.append(doctor_list[0])
        elif week== 'friday':
            queryset = WeeklyTask.objects.filter(task_tuesday=True).all().values_list('id','Doctor','start_time','close_time')
            
         
            for query in queryset:
                
                if query[3] > time > query[2] :
                    doctor_list = Doctor.objects.filter(id=query[0]).values_list('doctorname')
                   
                    data.append(doctor_list[0])
        elif week== 'saturday':
            queryset = WeeklyTask.objects.filter(task_tuesday=True).all().values_list('id','Doctor','start_time','close_time')
            
         
            for query in queryset:
                
                if query[3] > time > query[2] :
                    doctor_list = Doctor.objects.filter(id=query[0]).values_list('doctorname')
                   
                    data.append(doctor_list[0])
        elif week== 'sunday':
            queryset = WeeklyTask.objects.filter(task_tuesday=True).all().values_list('id','Doctor','start_time','close_time')
            
         
            for query in queryset:
                
                if query[3] > time > query[2] :
                    doctor_list = Doctor.objects.filter(id=query[0]).values_list('doctorname')
                   
                    data.append(doctor_list[0])
            
        
    
        return Response(data, status=200)

class treatmentApplyView(APIView):
    
    
    def get_patient(self,patient_id):
        try:
            # Query
            patient = Patient.objects.filter(id=patient_id).values('id')
            result = list(patient)

            return result
        except:
            raise Http404
        
    def get_doctor(self,doctor_id):
        try:
            # Query
            doctor = Doctor.objects.filter(id=doctor_id).values('id')
            result = list(doctor)
            return result
        except:
            raise Http404
        
      
    def post(self, request, *args):
        
        patient_id = request.GET['patient_id']
        doctor_id = request.GET['doctor_id']
        treatment_date = request.GET['treatment_date']
        treatment_time = request.GET['treatment_time']
        
        times = treatment_date+' '+treatment_time
        
        
        treatment_time = datetime.strptime(treatment_time, '%H:%M:%S').time()
        

        work_task = WeeklyTask.objects.filter(Doctor=doctor_id).values_list('task_monday','task_tuesday','task_wednesday','task_thursday','task_friday','task_saturday','task_sunday','start_time','close_time')
        
        
        treatment_date = datetime.strptime(treatment_date,'%Y-%m-%d')
        date_Dict= {0:'monday',1:'tuesday',2:'wednesday',3:'thursday',4:'friday',5:'saturday',6:'sunday'}
        
        week = date_Dict[treatment_date.weekday()]
        
        
        
        ## 의사는 있으나 환자가 예약할수 없는 시간일 경우를 체크 합니다.
        ## 진료요일이 아니면 404를 리턴합니다.
        ## 예약 히스토리 자체를 시간이 안되면 저장되지 않게 리턴합니다.
        for query in work_task:
  
            if week == 'monday':
                if query[0]==False or treatment_time > query[8] or query[7] > treatment_time :
                    return Response('예약할수 없는 시간입니다', status=404)
            elif week == 'turesday':
                if query[1]==False or treatment_time > query[8] or query[7] > treatment_time :
                    return Response('예약할수 없는 시간입니다', status=404)
            elif week == 'wednesday':
                if query[2]==False or treatment_time > query[8] or query[7] > treatment_time :
                    return Response('예약할수 없는 시간입니다', status=404)
            elif week == 'thursday':
                if query[3]==False or treatment_time > query[8] or query[7] > treatment_time :
                    return Response('예약할수 없는 시간입니다', status=404)
            elif week == 'friday':
                if query[4]==False or treatment_time > query[8] or query[7] > treatment_time :
                    return Response('예약할수 없는 시간입니다', status=404)
            elif week == 'saturday':
                if query[5]==False or treatment_time > query[8] or query[7] > treatment_time :
                    return Response('예약할수 없는 시간입니다', status=404)
            elif week == 'sunday':
                if query[6]==False or treatment_time > query[8] or query[7] > treatment_time :
                    return Response('예약할수 없는 시간입니다', status=404)
     
 

        data = {
            'patient': patient_id,
            'doctor': doctor_id,
            'treatment_dt': times
        }
        
        serializers = Applyrserializer(data=data)
        if serializers.is_valid():
            serializers.save()
        
        
        
      
        return Response('Apply Success', status=200)

    def put(self, request, *args):
            
        ## 진료요청 id    
        apply_id = request.GET['apply_id']
        ## 응답코드 True / False
        status = request.GET['status']
     
        if status == 'True':
            
            queryset = Apply_History.objects.filter(id=apply_id).update(agree_status=True)
            
            return Response('Reservation Success', status=200)

            
        else:
            return Response('Reservation Faild', status=200)

            
        
        
        

        
        
        
      

