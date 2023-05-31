FROM db-gpt:latest

RUN apt-get update && apt-get install -y \
	git \
	python3 \
	pip


WORKDIR /app

COPY . /app

#RUN pip install -r requirements.txt --index-url https://mirrors.ustc.edu.cn/pypi/web/simple

EXPOSE 3306
EXPOSE 8000

#CMD ["python", "pilot/server/llmserver.py"]
#CMD ["python3", "pilot/server/webserver.py"]


