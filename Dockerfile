FROM python:3.6
MAINTAINER Francis Gassert <fgassert@wri.org>

# set name
ARG NAME=nrt-script
ENV NAME ${NAME}

# install core libraries
RUN apt-get update
RUN apt-get install -y cron

# install application libraries
RUN apt-get install -y gdal-bin libgdal-dev
RUN pip install requests
RUN pip install fiona

# Copy the application folder inside the container
RUN mkdir -p /opt/$NAME/data
WORKDIR /opt/$NAME/
COPY contents/ .
COPY time.cron .
VOLUME ./data

# Init crontab with user
RUN chmod +x cron-start.sh
CMD ["./cron-start.sh"]

# Launch script
# CMD ["python", "main.py"]
