FROM python:3.10

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r  requirements.txt

COPY . django_personal_portfolio
WORKDIR  /django_personal_portfolio

EXPOSE 8000

ENTRYPOINT [ "python", "personal_portfolio/manage.py" ]
CMD [ "runserver", "0.0.0.0:8000" ]