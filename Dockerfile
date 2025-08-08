# Use Python 3.10 runtime
FROM python:3.10-slim

# Create app directory
WORKDIR /app

# Install dependencies first (better cache)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

# Expose Flask port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
