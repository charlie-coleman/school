<?php

if ( $_POST['payload'] ) {
	shell_exec('cd /var/www/html/charlie-coleman.com/public_html/school/ && git reset --HARD HEAD && git pull');
}

?>
