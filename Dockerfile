FROM python:3.13-slim
ENV PYTHONDONTWRITEBYTECODE=1

WORKDIR /app

# Install curl for healthcheck
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

COPY pyproject.toml .
COPY src/ ./src/
COPY start.sh .

# Install package in editable mode to maintain correct paths for models/data loader
RUN pip install --no-cache-dir -e .

RUN sed -i 's/\r$//' start.sh && chmod +x start.sh

EXPOSE 8000
EXPOSE 8501

CMD ["./start.sh"]
