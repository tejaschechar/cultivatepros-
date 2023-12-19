# Use the official Python image with version 3.10
FROM python:3.10

# Set the working directory inside the container
WORKDIR /webApp

# Copy the requirements file into the container at /webApp
COPY requirements.txt /webApp/

# Install any dependencies specified in requirements.txt
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /webApp
COPY . /webApp/

# Specify the command to run on container start
CMD ["python", "/webApp/app.py"]
