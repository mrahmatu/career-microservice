# Use an official Python runtime as a parent image
FROM python:3.11

# Set the working directory to /career-microservice
WORKDIR /career-microservice

# Install Flask and other dependencies
RUN pip install flask


# Make port 80 available to the world outside this container
EXPOSE 80

ENV PORT 80

ENV HOSTNAME "0.0.0.0"

# Define the Flask app's entry point
CMD ["flask", "run", "--host=0.0.0.0", "--port=80"]

# FROM python:3.11

# WORKDIR /python-microservice

# COPY requirements.txt .

# RUN pip install flask
# RUN pip install --no-cache-dir -r requirements.txt

# COPY . .



# EXPOSE 80

# ENV PORT 80

# ENV HOSTNAME "0.0.0.0"

# CMD ["flask", "run", "--host", "0.0.0.0", "--port", "80"]

