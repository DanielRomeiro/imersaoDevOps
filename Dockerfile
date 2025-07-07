# Imagem base com Python
FROM python:3.12.11-alpine3.21

# Diretório de trabalho
WORKDIR /app

# Copia os arquivos de dependências (caso você tenha um requirements.txt)
COPY requirements.txt .

# Instala as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante da aplicação
COPY . .

# Expõe a porta padrão do Uvicorn
EXPOSE 8001

# Comando para iniciar o servidor
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8001", "--reload"]
