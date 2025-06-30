 FROM python:3.10-slim
#set work dir inside container
WORKDIR /app
#copy dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

#copy app code
COPY app/ app/

#open port
EXPOSE 5000

#Start command for flask app
CMD ["python", "app/app.py"]
