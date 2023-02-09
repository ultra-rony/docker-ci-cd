# This file is a template, and might need editing before it works on your project.
FROM python:3.6-alpine

WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt

COPY Parser.py /usr/src/app

# For Django
CMD ["python", "-u", "Parser.py"]

# For some other command
# CMD ["python", "app.py"]
