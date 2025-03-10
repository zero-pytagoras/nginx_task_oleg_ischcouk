server {\n listen 80; {\n server_name oleg.com; {\n root /var/www/example.com; {\n index index.html; {\n }
