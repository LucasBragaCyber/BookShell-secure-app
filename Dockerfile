# Usa a imagem oficial do PHP com Apache
FROM php:8.2-apache

# Instala extensões do PHP necessárias (MySQLi e ativamos o módulo rewrite do Apache)
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN a2enmod rewrite

# Copia o código fonte para dentro do container
# Nota: Vamos usar volumes no compose para desenvolvimento, mas isso garante a imagem base.
COPY . /var/www/html/BookShell

# Define permissões corretas (O Apache roda como www-data)
RUN chown -R www-data:www-data /var/www/html/BookShell