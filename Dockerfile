FROM cloudflare/cloudflared:latest

# Копируем конфигурацию туннеля и файл с учетными данными
COPY config.yml /etc/cloudflared/config.yml
COPY eyJhIjoiNjZiNGZmNDYwMzczYjNlN2Q5YzVkMzUxNDE1MTJkMjEiLCJ0IjoiYzMyOTg3YmItNGZiYS00NjY1LTk5YjctN2UzNzIzNGIzN2Q3IiwicyI6IlltRXhaak5pTnprdE1ERXlaUzAwTWpKbUxUa3hNVFV0TW1NNVlUQXdOamMyTTJKayJ9 /etc/cloudflared/eyJhIjoiNjZiNGZmNDYwMzczYjNlN2Q5YzVkMzUxNDE1MTJkMjEiLCJ0IjoiYzMyOTg3YmItNGZiYS00NjY1LTk5YjctN2UzNzIzNGIzN2Q3IiwicyI6IlltRXhaak5pTnprdE1ERXlaUzAwTWpKbUxUa3hNVFV0TW1NNVlUQXdOamMyTTJKayJ9.json

# Устанавливаем рабочую директорию
WORKDIR /etc/cloudflared

# Запускаем туннель
CMD ["cloudflared", "tunnel", "--config", "/etc/cloudflared/config.yml", "run"]
