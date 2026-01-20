FROM python:3.11-slim-bullseye
WORKDIR /app
RUN apt-get update && apt-get install -y git
# ❌ RIMUOVI git clone placeholder
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
# ✅ PORTA UNHIDE: 7860
EXPOSE 7860
CMD ["uvicorn", "run:main_app", "--host", "0.0.0.0", "--port", "7860", "--workers", "4"]
