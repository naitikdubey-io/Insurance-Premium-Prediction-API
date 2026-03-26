# use the python 3.11 base image
FROM python:3.12-slim

# set working directory
WORKDIR /app

#copy the requirements and install the dependencies
COPY requirements.txt . 
RUN pip install --no-cache-dir -r requirements.txt

# copy rest of the application code
COPY . . 

#expose the application port 
EXPOSE 8000
#command to start FastAPI Application
CMD ["uvicorn","app:app","--host","0.0.0.0","--port","8000"]
