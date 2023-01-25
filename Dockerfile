FROM python:3.9-slim


WORKDIR /app

RUN apt-get update && apt-get install -y \
    build-essential \
    software-properties-common \
    git \
    && rm -rf /var/lib/apt/lists/*

#RUN git clone https://github.com/streamlit/streamlit-example.git .
RUN git clone https://github.com/appconnect-testing/intito.git .

RUN pip3 install -r requirements.txt

#COPY test_cev.csv .

ENTRYPOINT ["streamlit", "run", "app.py",  "--server.address=0.0.0.0"]
