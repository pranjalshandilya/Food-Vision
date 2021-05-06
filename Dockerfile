FROM python:3.7

## App engine stuff
# Expose port you want your app on
EXPOSE 5000

# Upgrade pip 
RUN pip install -U pip

COPY requirements.txt app/requirements.txt
RUN pip install -r app/requirements.txt

# Create a new directory for app (keep it in its own directory)
COPY . /app
WORKDIR /app

# Run
ENTRYPOINT ["python"]
CMD ["app.py"]
