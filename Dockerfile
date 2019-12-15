FROM python:3.7.5-slim-buster

MAINTAINER ilaurens

RUN	set -ex \
	&& pip install scrapy==1.8.0 \
				   scrapyd==1.2.1 \
				   scrapyd-client \
                   scrapy-splash==0.7.2 \
                   scrapydweb==1.4.0 \
                   logparser \
	&& rm -rf /tmp/*   

WORKDIR /home/scrapydweb

ADD scrapydweb_settings_v10.py /home/scrapydweb/

ADD start.sh /home/scrapydweb/
RUN chmod +x /home/scrapydweb/start.sh

ADD ./scrapyd.conf /etc/scrapyd/

RUN mkdir -p /var/lib/scrapyd/logs

EXPOSE 6800
EXPOSE 5000

CMD ["/home/scrapydweb/start.sh"]