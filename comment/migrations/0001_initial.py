# Generated by Django 2.2 on 2020-03-30 08:18

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('contenttypes', '0002_remove_content_type_name'),
    ]

    operations = [
        migrations.CreateModel(
            name='Comment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('object_id', models.PositiveIntegerField()),
                ('text', models.TextField(verbose_name='评论内容')),
                ('comment_time', models.DateTimeField(auto_now_add=True, verbose_name='评论时间')),
                ('comment_user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='comments', to=settings.AUTH_USER_MODEL, verbose_name='评论者')),
                ('content_type', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='contenttypes.ContentType')),
                ('parent', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='paren_comment', to='comment.Comment', verbose_name='品论这条')),
                ('reply_to', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='replies', to=settings.AUTH_USER_MODEL, verbose_name='回复者')),
                ('top', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='top_comment', to='comment.Comment', verbose_name='品论这条')),
            ],
            options={
                'ordering': ['comment_time'],
            },
        ),
    ]
