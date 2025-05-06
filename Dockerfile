# Use official Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy rest of the code
COPY . .

# Command to run tests (you can change to `CMD ["python", "app.py"]` later if you want to run app)
CMD ["pytest"]
