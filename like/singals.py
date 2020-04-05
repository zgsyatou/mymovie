from django.db.models.signals import post_save
from notifications.signals import notify
from django.utils.html import strip_tags
from django.dispatch import receiver
from .models import LikeRecord

@receiver(post_save, sender=LikeRecord)
# 处理评论的信号接收器
def send_notification(sender, instance, **kwargs):
    # 发送站内消息

    if instance.content_type.model == 'movie':
        recipient = instance.content_object.get_user() # 接受者
        movie = instance.content_object
        verb = '{0}点赞了你的《{1}》'.format(instance.user.get_nickname_or_username(), 
                                                 movie.title)
        url = movie.get_url()
        notify.send(instance.user, recipient=recipient, verb=verb, action_object=instance, url=url)
    elif instance.content_type.model == 'comment':
        recipient = instance.content_object.get_user()
        comment = instance.content_object
        verb = '{0}点赞了你的评论"{1}"'.format(
                   instance.user.get_nickname_or_username(),
                   strip_tags(comment.text)
                   )
        url = comment.get_url()
        notify.send(instance.user, recipient=recipient, verb=verb, action_object=instance, url=url)
