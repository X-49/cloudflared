# Используем официальный образ для cloudflared
FROM cloudflare/cloudflared:latest

# Копируем конфигурацию туннеля (если она у вас есть)
COPY config.yml /etc/cloudflared/config.yml

# Устанавливаем рабочую директорию
WORKDIR /etc/cloudflared

# Запускаем cloudflared
CMD ["cloudflared", "tunnel", "--config", "/etc/cloudflared/config.yml", "run"]
