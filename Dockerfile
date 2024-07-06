FROM python:3.10.13

# Working Directory
WORKDIR /app

# Copy source code to working directory
COPY . app.py /app/

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org Flask==2.0.1 requests==2.26.0

# Commande pour démarrer votre application
CMD ["python", "app.py"]