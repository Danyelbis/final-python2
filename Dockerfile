FROM python:3.7
MAINTAINER Dan
WORKDIR /src/app
COPY . .
RUN pip install pipenv
RUN pipenv install --system --deploy 
RUN pip install -r requirements.txt
EXPOSE 5000
CMD [ "python", "app.py" ]