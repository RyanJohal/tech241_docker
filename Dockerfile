# Select the base image
FROM nginx:latest

# label
LABEL MAINTAINER=ryan@sparta

# copy index.html from localhost to default nginx index.html location
COPY index.html /usr/share/nginx/html/

# port mapping or exposing the required port
EXPOSE 80

# command to launch the web server
CMD ["nginx", "-g", "daemon off;"]
