FROM python:3.9.0

WORKDIR /home/

RUN echo 'fdsasdf'

RUN git clone https://github.com/minjeong00/web_class-7-1-.git

WORKDIR /home/web_class-7-1-/

RUN echo "SECRET_KEY=django-insecure-#e)yzs!kk9&0$t@#mdu8v-71t(gf__qtreyrinvzn(#d^1!%tg" > .env

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

EXPOSE 8000

CMD ["bash", "-c", "python manage.py collectstatic --noinput --settings=temp.settings.deploy && python manage.py migrate --settings=temp.settings.deploy && gunicorn --env DJANGO_SETTINGS_MODULE=temp.settings.deploy temp.wsgi --bind 0.0.0.0:8000"]