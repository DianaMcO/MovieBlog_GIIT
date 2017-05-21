<?php

include 'common.php';

use function Movie\Db\viewpost;


viewpost($pdo);

\Movie\Db\comments($pdo);