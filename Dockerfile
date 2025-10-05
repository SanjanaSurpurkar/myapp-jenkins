# Use Python base image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy your project files
COPY . .

# Default command when container runs
CMD ["python", "-m", "http.server", "8000"]
