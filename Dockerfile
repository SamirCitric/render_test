# Use an official Python runtime as the base image
FROM python:3.11

# Set the working directory in the container
WORKDIR /app

# Copy the current directory's contents into the container
COPY . /app

# Install any needed packages (e.g., if you have a requirements.txt for Python)
RUN pip install --no-cache-dir -r requirements.txt

# Inform Docker that the container is listening on port 8080
EXPOSE 8080

# Run your script when the container launches
CMD ["python", "current_date_time.py"]
