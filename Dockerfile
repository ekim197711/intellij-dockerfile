ARG MYTAG=latest
FROM ubuntu:${MYTAG}
LABEL CompanyName="Codeinvestigator"
LABEL Location="Copenhagen Denmark"
MAINTAINER "Mike Møller Nielsen"
ENV MYVARIABLE="TEST123"
RUN apt-get update -y
WORKDIR /tmp
COPY mytextfile.txt newname.txt
RUN echo "A new joke ${MYVARIABLE}" > joke.txt; \
echo "A new joke ${MYVARIABLE}" > joke2.txt; \
echo "A new joke ${MYVARIABLE}" > joke3.txt; \
echo "A new joke ${MYVARIABLE}" > joke4.txt; \
echo "A new joke ${MYVARIABLE}" > joke5.txt
EXPOSE 8080/tcp
EXPOSE 8090/tcp
CMD ["My first argument", "Standard argument no 2"]
ENTRYPOINT ["echo", "hellow our container is running"]
