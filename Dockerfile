FROM python:3.12
RUN pip install -m requirements.txt
COPY . /src
WORKDIR /src
EXPOSE 8501
ENTRYPOINT [ "streamlit","run","app.py","--server.port=8501" ]
