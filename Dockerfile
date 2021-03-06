FROM python:3.8

EXPOSE 3000

COPY . /app
WORKDIR /app
# O -e vai linkar os arquivos para o projeto, rodando sempre a mais nova modificação
RUN pip install -e .
# Comando valido do setup.py
ENTRYPOINT "run_client"