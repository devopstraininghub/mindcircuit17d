FROM maven AS buildstage
RUN mkdir /opt/mindcircuit17d 
WORKDIR /opt/mindcircuit17d 
COPY . .
RUN mvn clean install  


FROM tomcat
WORKDIR webapps
COPY --from=buildstage /opt/mindcircuit17d/target/*.war .
RUN rm -rf ROOT && \
    mv *.war  ROOT.war
EXPOSE 8080
