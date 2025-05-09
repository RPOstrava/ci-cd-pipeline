# Použijeme oficiální nginx image založený na Alpine Linuxu
FROM nginx:alpine

# Nastavíme pracovní adresář na místo, odkud Nginx servíruje soubory
WORKDIR /usr/share/nginx/html

# Odstraníme výchozí index.html soubor, který je součástí Nginx image
RUN rm -f index.html

# Zkopírujeme náš vlastní HTML soubor do root adresáře Nginx serveru
COPY index.html .

# Zkopírujeme JavaScript pro obsluhu tlačítek
COPY script.js .

# Port 80 není třeba nastavovat – Nginx ho používá jako výchozí
# Kontejner bude při spuštění automaticky obsluhovat web
