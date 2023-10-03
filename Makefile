

list:
	@pgrep -f websocket.php | xargs -I {} ps -p {} -o pid,command

test:
	@pgrep -f "php -r" | sort | head -n -1 | xargs -I {} kill -9 {}
	@mush run 0.0.0.0 12345 tests/fixtures/websocket.php
	@google-chrome tests/fixtures/websocket-client.html
