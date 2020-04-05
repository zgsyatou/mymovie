from django.urls import path
from . import views

# 设置路由器信息，保证页面的正常访问
urlpatterns = [
    # 设置电影的展示路由，网址为：http:127.0.0.1:8000/movie
    path('', views.movie_list, name='movie_list'),
    # 设置电影内容的网页地址：http:127.0.0.1:8000/movie/1
    path('<int:movie_pk>', views.movie_details, name= 'movie_details'),
    path('type/<int:movie_type_pk>', views.movie_with_type, name= 'movie_type'),
    # 设置电影按月分类的链接
    path ('date/<int:year>/<int:month>', views.movie_with_date, name='movie_with_date')
]