from django.db import models
from django.contrib.auth.models import User
from django.contrib.contenttypes.fields import GenericRelation
# 导入富文本编辑
from ckeditor_uploader.fields import RichTextUploadingField
from django.urls import reverse
from ReadCount.models import ReadNumExpendMethod, ReadDetail

class MovieType(models.Model):
    '''设置电影的类型，在Movie中展示，外键进行连接'''
    type_name = models.CharField(max_length= 15)

    def __str__(self):
        return self.type_name

class Movie(models.Model,ReadNumExpendMethod):
    '''创建电影的相关的属性，设置相关的字段名称，不设置任何的默认值'''
    title = models.CharField(verbose_name= '电影名称',max_length= 50)
    movie_type = models.ForeignKey(MovieType, on_delete= models.CASCADE,verbose_name= '类型') # 设置外键，第一个属性为表明
    area = models.CharField(verbose_name= '产地',max_length= 10)
    language = models.CharField(verbose_name= '语言',max_length= 10)
    realse = models.CharField(verbose_name= '上映时间',max_length= 50)
    douban = models.CharField(verbose_name= '豆瓣评分',max_length= 10)
    IMDb = models.CharField(verbose_name= 'IMDb评分',max_length= 10)
    timelong = models.CharField(verbose_name= '时长',max_length= 15)
    daoyan = models.CharField(verbose_name= '导演',max_length= 20)
    actor = models.CharField(verbose_name= '主演',max_length= 200)
    scriptiwirter = models.CharField(verbose_name= '编剧',max_length= 100, default=0)
    movie_img = models.ImageField(upload_to='movie/')
    author = models.ForeignKey(User, on_delete= models.CASCADE,verbose_name= '发布者')
    read_details = GenericRelation(ReadDetail)    # 使用自带的方法，关联两个模型
    content = RichTextUploadingField(verbose_name= '简介')
    create_time = models.DateTimeField(verbose_name= '上传时间',auto_now_add = True)
    update_time = models.DateTimeField( verbose_name= '更新时间',auto_now = True)
    
    # 返回用户
    def get_user(self):
        return self.author

    # 返回具体链接
    def get_url(self):
        return reverse('movie_details', kwargs={'movie_pk': self.pk})

    # 返回评论对象讲的email
    def get_email(self):
        return self.author.email
 
    def __str__(self):
        return '<Movie: %s>'% Movie.title
    
    class Meta:
        ordering = ['-create_time']
 