# 표준 라이브러리
from django.conf import settings
from django.conf.urls import url
from django.conf.urls.static import static
from django.contrib import admin
from django.contrib.staticfiles.urls import staticfiles_urlpatterns

from django.urls import path, re_path, include, reverse_lazy
from django.views.generic.base import RedirectView

from rest_framework import permissions
from rest_framework_simplejwt import views as jwt_views

from allauth.account.views import ConfirmEmailView
from MERAKI_TOOLS.users.serializers import MyTokenObtainPairSerializer


# Swagger API 문서화
from drf_yasg.views import get_schema_view
from drf_yasg import openapi

# API Schema View 정의
schema_view = get_schema_view(
    openapi.Info(
        title="MERAKI Django SERVER",
        description="MERAKI API SERVER",
        terms_of_service="https://meraki.org",
        contact=openapi.Contact(email="medikim3551@gmail.com"),
        default_version='v1',
        license=openapi.License(name="BSD License"),
    ),
    public=True,
    permission_classes=(permissions.AllowAny,),    
)

urlpatterns = [

    # 관리자페이지 URL - http://example.com/admin/
    path('admin/', admin.site.urls),

    # 사용자 Router - http://example.com/users/
    path('users/', include('MERAKI_TOOLS.users.urls', namespace="users")),
    
   
    # 환자 Router - http://example.com/users/
    path('patient/', include('MERAKI_TOOLS.patient.urls', namespace="patient")),
    # 의사 Router - http://example.com/users/
    path('doctor/', include('MERAKI_TOOLS.doctor.urls', namespace="doctor")),




    path('api/token/', jwt_views.TokenObtainPairView.as_view(
        serializer_class=MyTokenObtainPairSerializer), name='token_obtain_pair'),
    path('api/token/refresh/', jwt_views.TokenRefreshView.as_view(),
         name='token_refresh'),

    ###################################################################################
    # API 문서화에 관련된 부분으로 Swagger & redoc 요청에 사용되는 URL Pattern 입니다.
    ###################################################################################
    url(r'^swagger(?P<format>\.json|\.yaml)$',
        schema_view.without_ui(cache_timeout=0), name='schema-json'),
    url(r'^swagger/$', schema_view.with_ui('swagger',
                                           cache_timeout=0), name='schema-swagger-ui'),
    url(r'^redoc/$', schema_view.with_ui('redoc',
                                         cache_timeout=0), name='schema-redoc'),
    re_path(r'^$', RedirectView.as_view(
        url=reverse_lazy('api-root'), permanent=False)),

] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)


###################################################################
# 개발의 편의성을 위해 필요한 디버깅
###################################################################
if settings.DEBUG:
    import debug_toolbar
    urlpatterns = [
        path('__debug__/', include(debug_toolbar.urls)),
    ] + urlpatterns

# Gunicorn staticfile serving
urlpatterns += staticfiles_urlpatterns()
