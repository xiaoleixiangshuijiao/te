FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN te create-db
RUN te populate-db
RUN te add-user -u admin -p admin
EXPOSE 5000
CMD ["te", "run"]
