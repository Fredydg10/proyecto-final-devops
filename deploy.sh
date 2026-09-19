   #!/bin/bash
   echo " Iniciando Pipeline de Despliegue..."
   
   echo " Construyendo imagen de Docker..."
   sudo docker build -t mi-web-devops .
   
   echo "️ Deteniendo contenedores anteriores (si existen)..."
   sudo docker rm -f mi-web-container
   
   echo " Desplegando contenedor en el puerto 8080..."
   sudo docker run -d --name mi-web-container -p 8080:80 mi-web-devops
   
   echo "✅ ¡Despliegue completado! Tu web está en http://localhost:8080"
