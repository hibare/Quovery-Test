FROM python:3-slim-buster

LABEL Github="hibare"

ENV PATH="/opt/venv/bin:$PATH"

# Add source directory
ADD . /app

WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 80

# Run the command on container startup
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]