FROM nginx:alpine
RUN echo "<h1>CI/CD Test Success!</h1>" > /usr/share/nginx/html/index.html

# Cloud Run은 PORT 환경변수를 사용
RUN echo 'server { listen 8080; location / { root /usr/share/nginx/html; } }' > /etc/nginx/conf.d/default.conf

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
