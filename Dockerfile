FROM python:3.9

COPY requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt

COPY . /src
WORKDIR /src

EXPOSE 8501

CMD ["streamlit", "run", "app.py", "--server.port=8501"]
