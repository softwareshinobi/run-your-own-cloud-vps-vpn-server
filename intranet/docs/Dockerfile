FROM titom73/mkdocs AS mkdocsBuild

WORKDIR /docs

COPY . . 

RUN mkdocs build

FROM mengzyou/bbhttpd:1.35

COPY --from=mkdocsBuild --chown=www:www /docs/site /home/www/html

