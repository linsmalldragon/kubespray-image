FROM 88277648/alpine-openjre8-min:v1

LABEL maintainer="linxiaolong <88277648@163.com>"
ARG VERSION=0.1
WORKDIR /$BASE_DIR
ADD proxy-server-0.1 /opt/proxy-server
ENTRYPOINT ["sh","-c","sh /opt/proxy-server/bin/startup.sh && tail -f /opt/proxy-server/logs/server.log"]
EXPOSE 8090 4993 4900
