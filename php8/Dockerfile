FROM php:8.1-fpm
    
COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y \
    zlib1g-dev g++ git libicu-dev zip libzip-dev zip \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libxml2-dev \
    git unzip \
    vim \
    tar \
    wget \
    libxslt1-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd
RUN docker-php-ext-install xsl
RUN docker-php-ext-install intl opcache pdo pdo_mysql
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql
RUN docker-php-ext-configure opcache --enable-opcache
RUN docker-php-ext-install zip
RUN docker-php-ext-configure zip
RUN docker-php-ext-install gd
RUN docker-php-ext-install soap
RUN pecl install redis \
	&& pecl install xdebug \
	&& docker-php-ext-enable redis xdebug
