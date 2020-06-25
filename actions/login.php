<?php 

if (IS_LOGGED) redirect('main');

if (IS_POST)
{
	$login = get_var('login');
	$pass  = get_var('pass');
	
	if ($login == 'admin' && $pass == ADMIN_PASS)
	{
		$_SESSION['is_logged'] = true;
		redirect('main');
	}
	
	$_GET['error'] = 'Неверный логин и/или пароль';
}