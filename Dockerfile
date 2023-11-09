FROM python:3.11
RUN pip install flask
EXPOSE 80
CMD ["flask", "run"]
