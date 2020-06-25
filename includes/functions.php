<?php

function error($code)
{
	$errors = [
		403 => 'Forbidden',
		404 => 'Not Found',
	];
	
	header("Status: $code {$errors[$code]}");
	echo "<h1>{$errors[$code]}</h1>";
	exit;
}

function redirect($page)
{
	header("Location: ./?page=$page");
	exit;
}