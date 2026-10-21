# Studio Vanessa Garcia — site estático servido por nginx
# EasyPanel builda este Dockerfile e expõe a porta 80.
FROM nginx:alpine

# Configuração do nginx (cache básico + headers de segurança)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Apenas os arquivos de produção do site
COPY index.html og-image.jpg sitemap.xml robots.txt /usr/share/nginx/html/
COPY fotos/ /usr/share/nginx/html/fotos/

EXPOSE 80
