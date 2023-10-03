
main() {
  local server_file=$(realpath "$1")
  local server_port=$2

  echo "Starting server... $server_file $server_port"

  php -r "define('WEBSOCKET_PORT', '$server_port'); require_once '$server_file';" &
}
