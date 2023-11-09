# Use an official Python runtime as a parent image
FROM python:3.11
COPY requirements.txt .
RUN pip install flask
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 80
CMD ["flask", "run"]


