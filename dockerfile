FROM ubuntu
RUN apt update && apt upgrade -y
RUN apt -y install python3 python3-pip 
RUN mkdir application
ADD . /application
RUN cd /application && pip install -r requirements.txt
RUN chmod +rx /application/startup.sh
CMD /application/startup.sh ; sleep infinity
