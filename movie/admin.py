from django.contrib import admin
from .models import MovieType, Movie

# Register your models here.
@admin.register(Movie)
class MovieAdmin(admin.ModelAdmin):
    list_display = ('id','title','movie_type','content','author','area','language','realse',
        'douban','IMDb','timelong','daoyan','actor','get_read_num','create_time','update_time')

@admin.register(MovieType)
class MovieTypeAdmin(admin.ModelAdmin):
    list_display = ('id','type_name')

