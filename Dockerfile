FROM python:3.11

RUN pip install flask

EXPOSE 80

ENV PORT 80

ENV HOSTNAME "0.0.0.0"

CMD ["flask", "run", "--host", "0.0.0.0", "--port", "80"]
