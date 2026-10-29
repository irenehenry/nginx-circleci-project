FROM nginx:1.27-alpine
RUN rm -rf /usr/share/nginx/html/*
COPY index.html styles.css app.js /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]