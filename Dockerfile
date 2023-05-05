# Use an official pytorch runtime as a parent image
FROM pytorch/pytorch:1.2-cuda10.0-cudnn7-runtime

# Set the working directory to /app
WORKDIR /app

# Copy the requirements.txt file to the container
COPY requirements.txt .

# Install all dependencies with pip from requirements.txt
RUN pip install -r requirements.txt

# Set the working directory to /home
WORKDIR /home
