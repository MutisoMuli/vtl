<?php

run_hook('customer_logout'); #HOOK
if (session_status() == PHP_SESSION_NONE) session_start();
session_destroy();
header('location: index.php');