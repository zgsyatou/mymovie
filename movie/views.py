# 导入统计的方法
from django.db.models import Count
from django.core.paginator import Paginator
from django.contrib.contenttypes.models import ContentType
from ReadCount.tool import read_count_once_read
from django.shortcuts import get_object_or_404, render
from .models import Movie, MovieType
from comment.models import Comment
from comment.forms import CommentForm


# 设置每页展示的电影数量变量
movie_num_of_page = 10

def movie_list_with_public(request,movie_all_list):
    paginator = Paginator(movie_all_list, movie_num_of_page) # 获取所有movie，并进行10篇电影进行分页
    '''将获取的页码传递给page_num，默认为1，获取页面参数'''
    page_num = request.GET.get('page', 1)
    page_of_movies = paginator.get_page(page_num)
    current_page_num = page_of_movies.number # 获取当前页码
    # 获取当前页码的前后各两页
    current_page_range = list(range(max(current_page_num - 2, 1),current_page_num)) + \
    list(range(current_page_num, min(current_page_num + 2 , paginator.num_pages ) + 1 ))
    # 添加省略号标记
    if current_page_range[0] - 1 >= 2:
        current_page_range.insert(0, '...')
    if paginator.num_pages - current_page_range[-1] >= 2:
        current_page_range.append('...')
    # 添加首页与尾页
    if current_page_range[0] != 1:
        current_page_range.insert(0,1)
    if current_page_range[-1] != paginator.num_pages:
        current_page_range.append(paginator.num_pages)

    '''统计各分类电影的数量,此方法无法统计类型数量，提示无法解析字段movie_type'''
    '''movie_types = MovieType.objects.all()
    movie_type_list = []
    for movie_type in movie_types:
        movie_type.movie_count = MovieType.objects.filter(movie_type = movie_type).count()
        movie_type_list.append(movie_type)'''
        
    ''' 设置统计各个月份的电影数量 '''
    movie_dates = Movie.objects.dates('create_time', 'month', order= 'DESC')
    movie_date_dic = {}
    for movie_date in movie_dates:
        movie_count = Movie.objects.filter(create_time__year=movie_date.year,
                                        create_time__month=movie_date.month).count()
        movie_date_dic[movie_date] = movie_count

    context = {}
    # 传入所需要的变量
    context['current_page_range'] = current_page_range
    context['movielist'] = page_of_movies.object_list
    context ['page_of_movies'] = page_of_movies
    # context['movielist'] = Movie.objects.all() # 采用此方法获取全部的电影
    '''采用count()统计当前电影的数量'''
    context['movie_count'] = Movie.objects.all().count()
    '''获取所有的电影分类的数量，使用annotate的Count方法来获取'''
    context['movie_types'] = MovieType.objects.annotate(movie_count=Count('movie'))
    context['movie_dates'] = movie_date_dic
    # 返回字典
    return context

'''显示电影的列表'''
def movie_list(request):
    movie_all_list = Movie.objects.all()
    context = movie_list_with_public(request,movie_all_list)
    return render(request,'movie/movie_list.html',context)


'''分类处理的方法，点击对应的标签可跳转页面'''
def movie_with_type(request,movie_type_pk):
    # 从MovieType中获取movie_type的ID值，并且将其传送给movie_type_pk
    movie_type = get_object_or_404(MovieType, pk=movie_type_pk) 
    # 将获取到的movie_type的ID值传递给movietype
    # context['movielist'] = Movie.objects.filter(movie_type=movie_type)
    # context['movie_types'] = MovieType.objects.all()
    movie_all_list = Movie.objects.filter(movie_type=movie_type)
    context = movie_list_with_public(request,movie_all_list)
    # 传入所需要的变量
    context['movie_type'] = movie_type
    return render(request, 'movie/movie_type.html',context)

# 设置按年和按月分类电影的方法
def movie_with_date(request, year, month):
    '''获取索要查询的年和月'''
    movie_all_list = Movie.objects.filter(create_time__year=year, create_time__month=month)
    context = movie_list_with_public(request,movie_all_list)
    context['movie_with_date'] = '%s年%s月' % (year, month)
    return render(request,  'movie/movie_date.html', context)

'''显示电影的内容'''
def movie_details(request, movie_pk):
    # 可能获取不到对应的电影，movie传入的对象
    movie = get_object_or_404(Movie, pk=movie_pk)
    read_cookie_key = read_count_once_read(request, movie)
    # 获取电影的类型
    # movie_conntent_type = ContentType.objects.get_for_model(movie)
    # comment = Comment.objects.filter(content_type=movie_conntent_type, object_id= movie.pk, parent= None)
        
    context = {}
    # 获取前一页
    context['perversion_movie'] = Movie.objects.filter(create_time__gt=movie.create_time).last()
    # 获取后一页
    context['next_movie'] = Movie.objects.filter(create_time__lt=movie.create_time).first() 
    context['moviedetails'] = movie
    # context['comment'] = comment.order_by('-comment_time')
    # 获取评论的数目
    # context['comment_count'] = Comment.objects.filter(content_type=movie_conntent_type, object_id= movie.pk).count()
    # context['comment_form'] = CommentForm(initial={'content_type':movie_conntent_type,'object_id':movie_pk, 'reply_comment_id': 0})
    response = render(request,'movie/movie_details.html',context)  # 获取响应
    ''' 设置cookie的写的方法,返回的是一个字典，格式：（他有键（需要识别的字段）和值 ，
    设置时间：max_age（设置有效时间 秒），expries），若无设置时间参数，则默认关闭浏览器一次'''
    response.set_cookie(read_cookie_key,'true')  # 阅读标记
    return response
    