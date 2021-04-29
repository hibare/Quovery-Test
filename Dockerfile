FROM python:3-alpine 

LABEL Github="hibare"

ENV PATH="/opt/venv/bin:$PATH"

# Add source directory
ADD . /app

WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 8000

# Run the command on container startup
CMD ["uvicorn", "main:app"]