# Gunakan image Python sebagai base
FROM python:3.9

# Set working directory
WORKDIR /usr/src/app

# Copy file requirements.txt dan install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy seluruh kode aplikasi ke container
COPY . .

# Expose port yang digunakan oleh Flask
EXPOSE 5000

# Command untuk menjalankan aplikasi
CMD ["python", "app.py"]