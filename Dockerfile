# Use an official Python runtime as a parent image
FROM python:3.11

# Set the working directory to /career-microservice
WORKDIR /career-microservice

# Copy the current directory contents into the container at /career-microservice
COPY . /career-microservice

# Install Flask and other dependencies
RUN pip install flask

# Make port 80 available to the world outside this container
EXPOSE 80

# Define the Flask app's entry point
CMD ["flask", "run", "--host=0.0.0.0", "--port=80"]

