
main() {
  local server_host=$1
  local server_port=$2
  local server_file=$(realpath "$3")

  echo "Starting server... $server_file $server_port"

  php -r "
    define('WEBSOCKET_HOST', '$server_host');
    define('WEBSOCKET_PORT', '$server_port');
    require_once '$server_file';" &
}
