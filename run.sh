!bin/bash

# 1. nocodb.com 8080
docker-compose -f nocodb/docker-compose/2_pg/docker-compose.yaml  up -d

# 2. n8n
docker volume create n8n_data
docker run -it --rm --name n8n -p 5678:5678 -v n8n_data:/home/node/.n8n docker.n8n.io/n8nio/n8n

# 3. dify.ai  80 443

cp .env.dify dify/docker/.env
docker-compose -f dify/docker/docker-compose.yaml up -d
    
# 4. https://supabase.com/

cp .env.supabase dify/docker/.env
docker compose pull
docker-compose -f supabase/docker/docker-compose.yaml up -d


# 5. https://www.odoo.com/pt_BR CHATO

# 6. https://typebot.io/ (ilimitado) CHATO 8080 8081
cp .env.typebot typebot/.env
docker-compose -f typebot/docker-compose.yaml up -d 


# 7. https://flowiseai.com/

cp .env.Flowise Flowise/.env
docker compose -f Flowise/docker/docker-compose.yaml up -d



#8 https://www.activepieces.com/
#Porta 8080
git clone https://github.com/activepieces/activepieces.git
cd activepieces
sh tools/deploy.sh
docker-compose -p activepieces up

# 10 https://www.mautic.org/
git clone https://github.com/mautic/docker-mautic.git
cd docker-mautic/examples/basic
docker-compose up



# 11. Appflowy

docker run --rm \
  -v $HOME/.Xauthority:/root/.Xauthority:rw \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v /dev/dri:/dev/dri \
  -v /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket \
  -v appflowy-data:/home/appflowy \
  -e DISPLAY=${DISPLAY} \
  appflowyio/appflowy_client:main

