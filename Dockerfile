FROM ubuntu
EXPOSE 8181

RUN useradd -ms /bin/bash srv
ADD . /home/srv/code

WORKDIR /home/srv/code
RUN apt-get update -y && apt-get install -y build-essential && make && chown -R srv:srv .

USER srv
CMD /home/srv/code/scratchsrv 8181 /home/srv/code && tail -f /dev/null

