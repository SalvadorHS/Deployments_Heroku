FROM python:3.7
COPY . /home/Streamlit_app
WORKDIR /home/Streamlit_app

RUN pip install --upgrade pip
RUN pip install flasgger
RUN pip install flask
RUN pip install numpy
RUN pip install pandas
RUN pip install scikit_learn
RUN pip install gunicorn
RUN pip install Jinja2
RUN pip install streamlit

EXPOSE $PORT
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app
