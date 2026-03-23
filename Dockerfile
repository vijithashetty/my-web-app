# 1. Start with a lightweight Python base image
FROM python:3.9-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Install the web framework (Flask)
RUN pip install flask

# 4. Copy our app.py file from our computer into the container
COPY app.py .

# 5. Tell the container to listen on port 5000
EXPOSE 5000

# 6. The command to run when the container starts
CMD ["python", "app.py"]
