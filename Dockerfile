# Python 이미지 사용
FROM python:3.9-slim

# 작업 디렉토리 설정
WORKDIR /app

# requirements.txt 파일 복사
COPY requirements.txt /app/

# pip 설치
RUN pip install --no-cache-dir -r requirements.txt

# 애플리케이션 소스 코드 복사
COPY . /app/

EXPOSE 5000

CMD ["python", "app.py"]

