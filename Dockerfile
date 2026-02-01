# Menggunakan base image Nginx versi Alpine (sangat ringan)
FROM nginx:alpine

# Metadata (Opsional, tapi praktik yang baik)
LABEL maintainer="namakamu@example.com"

# Hapus file default nginx (opsional, untuk memastikan bersih)
RUN rm -rf /usr/share/nginx/html/*

# Salin semua file static (html, css, js, gambar) dari folder project kamu
# ke folder default Nginx di dalam container
COPY . /usr/share/nginx/html

# Expose port 80 agar bisa diakses dari luar
EXPOSE 80

# Jalankan Nginx di foreground (default command dari base image,
# tapi ditulis eksplisit agar jelas)
CMD ["nginx", "-g", "daemon off;"]
