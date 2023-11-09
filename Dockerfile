# Use an official Python runtime as a parent image
FROM python:3.11
COPY requirements.txt .
RUN pip install flask
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 80
ENV PORT 80
ENV HOSTNAME "0.0.0.0"
CMD ["flask", "run", "--host", "0.0.0.0", "--port", "80"]


