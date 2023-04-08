FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flask_template_example create-db
RUN flask_template_example populate-db
RUN flask_template_example add-user -u admin -p admin
EXPOSE 5000
CMD ["flask_template_example", "run"]
