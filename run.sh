!bin/bash

# 1. nocodb.com 9901:8080
docker-compose -f nocodb/docker-compose/2_pg/docker-compose.yml  up -d

# 2. n8n
docker volume create n8n_data
docker run -d -e  N8N_SECURE_COOKIE=false --name n8n -p 9902:5678 -v n8n_data:/home/node/.n8n docker.n8n.io/n8nio/n8n

# 3. dify.ai  9903:80 9904:443

cp .env.dify dify/docker/.env
docker-compose -f dify/docker/docker-compose.yaml up -d
    
# 4. https://supabase.com/ 9905:80 9906:443 9907:6543

cp .env.supabase supabase/docker/.env
docker-compose -f supabase/docker/docker-compose.yml pull
docker-compose -f supabase/docker/docker-compose.yml up -d


# 5. https://www.odoo.com/pt_BR CHATO

# 6. https://typebot.io/ (ilimitado) 9908:3000 9909:3000
cp .env.typebot typebot/.env
docker-compose -f typebot/docker-compose.yaml up -d 


# 7. https://flowiseai.com/ 9910

cp .env.Flowise Flowise/.env
docker-compose -f Flowise/docker/docker-compose.yaml up -d



#8 https://www.activepieces.com/
#8080
cp .env.activepieces activepieces/.env
docker-compose -f activepieces/docker-compose.yaml up -d


# 10 https://www.mautic.org/ 9912:80
git clone https://github.com/mautic/docker-mautic.git
cp .env.mautic mautic/basic/.mautic_env
docker-compose -f mautic/basic/docker-compose.yml up -d



# 11. Appflowy

docker run --rm \
  -v $HOME/.Xauthority:/root/.Xauthority:rw \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v /dev/dri:/dev/dri \
  -v /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket \
  -v appflowy-data:/home/appflowy \
  -e DISPLAY=${DISPLAY} \
  appflowyio/appflowy_client:main

