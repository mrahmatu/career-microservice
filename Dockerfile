# Use an official Python runtime as a parent image
FROM python:3.11
RUN pip install flask
COPY . .
EXPOSE 80
CMD ["flask", "run", "--host", "0.0.0.0", "--port", "80"]


