FROM python:3.6.5
RUN mkdir -p /opt/app
WORKDIR /opt/app
COPY . .

RUN pip install -r requirements.txt -i http://pypi.douban.com/simple/ --trusted-host pypi.douban.com
CMD gunicorn -b 0.0.0.0:8000 cms_app.wsgi

