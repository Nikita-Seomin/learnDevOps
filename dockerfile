FROM python:3
#RUN apt update && apt install python3 -y && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY . .
ENTRYPOINT ["python3", "app.py"]