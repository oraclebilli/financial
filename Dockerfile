# Python 기반 컨테이너 이미지 사용
FROM python:3.9

# 작업 디렉토리 설정
WORKDIR /app

# 환경 변수 추가 (Cloud Run 기본 포트 설정)
ENV PORT=8080

# GitHub 코드 복사
COPY . .

# 필요한 패키지 설치
RUN pip install --no-cache-dir -r requirements.txt

# Cloud Run에서 실행할 기본 명령어 설정
CMD ["python", "main.py"]
