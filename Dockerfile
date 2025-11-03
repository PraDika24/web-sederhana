# Gunakan image Node.js versi LTS
FROM node:18-alpine

# Tentukan direktori kerja di dalam container
WORKDIR /usr/src/app

# Salin file package.json dan package-lock.json terlebih dahulu
COPY package*.json ./

# Install dependensi
RUN npm install --production

# Salin semua file proyek ke container
COPY . .

# Tentukan port yang digunakan aplikasi
EXPOSE 3000

# Jalankan perintah untuk menjalankan aplikasi
CMD ["node", "server.js"]
