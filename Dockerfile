# Použijeme oficiální nginx obraz jako základ pro náš kontejner
FROM nginx:alpine

# Nastavíme pracovní adresář uvnitř kontejneru (nepovinné, ale dobrý zvyk)
WORKDIR /usr/share/nginx/html

# Smažeme původní soubor index.html dodaný s nginxem
RUN rm -f /usr/share/nginx/html/index.html

# Zkopírujeme náš vlastní soubor index.html do webového rootu nginxu
COPY index.html /usr/share/nginx/html/

# Nginx standardně naslouchá na portu 80, nemusíme nastavovat

# Hotovo – když se kontejner spustí, nginx automaticky obsluhuje index.html
