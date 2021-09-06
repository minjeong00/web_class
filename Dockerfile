FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/minjeong00/web_class-7-1-.git

WORKDIR /home/web_class-7-1-/

RUN echo "SECRET_KEY=django-insecure-#e)yzs!kk9&0$t@#mdu8v-71t(gf__qtreyrinvzn(#d^1!%tg" > .env

RUN pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]