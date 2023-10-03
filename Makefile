

list:
	@pgrep -f websocket.php | xargs -I {} ps -p {} -o pid,command

test:
	php -f tests/fixtures/websocket.php -- 11111 &
	php -f tests/fixtures/websocket.php &