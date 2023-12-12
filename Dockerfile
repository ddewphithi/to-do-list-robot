# Selenium standalone Chrome image
FROM selenium/standalone-chrome:latest

# Set the working directory in the container
WORKDIR /usr/src/app

# Install Python and pip
USER root
RUN apt-get update && apt-get install -y python3 python3-pip

# Install Robot Framework and SeleniumLibrary
RUN pip3 install robotframework robotframework-seleniumlibrary

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Define environment variable
ENV NAME World

# Run all tests in the testcases directory when the container launches
CMD ["robot", "/usr/src/app/testcases"]
