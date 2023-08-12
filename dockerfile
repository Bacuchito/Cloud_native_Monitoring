# Use the Python 3.9.17-slim-buster image as the base image
FROM python:3.9.17-slim-buster

# Set the working directory inside the container to /app
WORKDIR /app

# Copy the requirements.txt file from the host to the container's working directory
COPY requirements.txt .

# Install the Python dependencies listed in requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy all files from the host to the container's working directory
COPY . .

# Set an environment variable to specify the host that Flask will run on
ENV FLASK_RUN_HOST=0.0.0.0

# Expose port 5000 from the container to the host
EXPOSE 5000

# Specify the command to run when the container starts
CMD [ "flask", "run" ]
