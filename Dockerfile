FROM python:3.13.5-alpine3.22

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"] 

# comando para construir a imagem
# docker build -t api .

# comando para rodar o container
# docker run -d -p 8000:8000 api

