# Use the official Python image as a base
FROM python:3.10

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the project files into the container
COPY . .


# Run the Django application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
