# Use an official Python runtime as a parent image
# FROM python:3.11
# COPY requirements.txt .
# RUN pip install flask
# RUN pip install --no-cache-dir -r requirements.txt
# COPY . .
# EXPOSE 80
# CMD ["flask", "run", "--host", "0.0.0.0", "--port", "80"]

# Use an official Python runtime as a parent image
FROM python:3.11
WORKDIR /career-microservice
COPY . /career-microservice
RUN pip install flask
RUN pip install -r requirements.txt
EXPOSE 80
CMD ["flask", "run", "--host=0.0.0.0", "--port=80"]



