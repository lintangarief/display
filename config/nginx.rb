server {
  listen 80;
  server_name 206.189.153.218;
}

server {
  listen 80;
  server_name 206.189.153.218;
}

server {
  server_name 206.189.153.218;

  root /var/www/206.189.153.218/current/public;

  client_max_body_size 5M;
  keepalive_timeout 10;

  # Turn on Passenger
  passenger_enabled on;
  rails_env production;
}
