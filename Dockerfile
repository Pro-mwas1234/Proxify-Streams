FROM python:3.11-slim

WORKDIR /app

# Install Flask
RUN pip install --no-cache-dir flask

# Copy application files
COPY server.py index.html ./

# Expose port
EXPOSE 5555

# Run the application
CMD ["python", "server.py"]
