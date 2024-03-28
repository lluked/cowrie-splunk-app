# Container image that runs your code
FROM python:3.7.10

COPY requirements.txt /
RUN pip install --no-cache-dir --prefer-binary -r /requirements.txt

COPY entrypoint.sh /

# Code file to execute when the docker container starts up (`entrypoint.sh`)
WORKDIR /github/workspace

ENTRYPOINT ["bash", "/entrypoint.sh"]