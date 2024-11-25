FROM python:3.12
COPY . .
RUN pip install -r requirements.txt
EXPOSE 8000
ENTRYPOINT [ "python", "main.py" ]