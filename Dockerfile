# Usa una imagen base de Python
FROM python:3.9

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de tu aplicación al contenedor
COPY . .

# Instala las dependencias (si tienes un archivo requirements.txt)
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto en el que se ejecutará tu aplicación
EXPOSE 8000

# Comando para ejecutar tu aplicación (ajústalo según tus necesidades)
CMD ["python", "app.py"]
