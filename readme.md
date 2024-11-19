1. nocodb.com

	https://docs.nocodb.com/0.109.7/getting-started/installation/

    
	git clone https://github.com/nocodb/nocodb
	cd nocodb/docker-compose/2_pg
	docker-compose up -d

2. n8n.io


docker volume create n8n_data

docker run -it --rm \
 --name n8n \
 -p 5678:5678 \
 -e DB_TYPE=postgresdb \
 -e DB_POSTGRESDB_DATABASE=<POSTGRES_DATABASE> \
 -e DB_POSTGRESDB_HOST=<POSTGRES_HOST> \
 -e DB_POSTGRESDB_PORT=<POSTGRES_PORT> \
 -e DB_POSTGRESDB_USER=<POSTGRES_USER> \
 -e DB_POSTGRESDB_SCHEMA=<POSTGRES_SCHEMA> \
 -e DB_POSTGRESDB_PASSWORD=<POSTGRES_PASSWORD> \
 -v n8n_data:/home/node/.n8n \
 docker.n8n.io/n8nio/n8n


3. https://dify.ai/
	
	https://docs.dify.ai/getting-started/install-self-hosted/docker-compose
	git clone https://github.com/langgenius/dify.git
	cd dify/docker
	cp .env.example .env
	docker compose up -d
		

4. https://supabase.com/
https://supabase.com/docs/guides/self-hosting/docker
git clone --depth 1 https://github.com/supabase/supabase
cd supabase/docker
cp .env.example .env
docker compose pull
docker compose up -d


5. https://www.odoo.com/pt_BR CHATO
https://hub.docker.com/_/odoo



6. https://typebot.io/ (ilimitado) CHATO
https://docs.typebot.io/self-hosting/deploy/docker

wget https://raw.githubusercontent.com/baptisteArno/typebot.io/latest/docker-compose.yml
wget https://raw.githubusercontent.com/baptisteArno/typebot.io/latest/.env.example -O .env
openssl rand -base64 24 | tr -d '\n' ; echo
docker-compose up -d


7. https://flowiseai.com/

git clone https://github.com/FlowiseAI/Flowise.git
cd Flowise/docker
docker compose up -d


8. https://www.activepieces.com/

git clone https://github.com/activepieces/activepieces.git
cd activepieces
sh tools/deploy.sh
docker compose -p activepieces up

9. https://bubble.io/

https://github.com/bubble-framework/bubble-framework?tab=readme-ov-file

10. https://www.mautic.org/
git clone https://github.com/mautic/docker-mautic.git
cd docker-mautic/examples/basic
docker compose up


11. https://appflowy.io/

docker run --rm \
  -v $HOME/.Xauthority:/root/.Xauthority:rw \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v /dev/dri:/dev/dri \
  -v /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket \
  -v appflowy-data:/home/appflowy \
  -e DISPLAY=${DISPLAY} \
  appflowyio/appflowy_client:main



Evolution API
https://themes.getbootstrap.com/store/keenthemes/
https://www.portotheme.com/# workana-docker
