FROM google/cloud-sdk:latest

RUN apt-get update && apt-get upgrade -y

RUN apt-get install ant -y && apt-get install git -y && apt-get install openjdk-7-jdk -y

WORKDIR /google-cloud-sdk/platform/appengine-java-sdk/demos/

RUN git clone https://github.com/google/firing-range

WORKDIR firing-range/

EXPOSE 8080 5050

CMD ["ant","-Daddress=0.0.0.0","runserver"]
