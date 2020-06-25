<?php


$link = get_var('link');

if ( ! $result = $db->get_row("SELECT * FROM results WHERE link = '%s' LIMIT 1", $link))
{
	error(404);
}

if ( ! $poll = $db->get_row("SELECT * FROM polls WHERE id = %d LIMIT 1", $result->poll_id))
{
	error(404);
}

if ( ! $quastions =  $db->get_rows("SELECT * FROM quastions WHERE poll_id = %d ORDER BY id", $poll->id))
{
	error(500);
}

foreach ($quastions as $quation)
{
	$quation->options = unserialize($quation->options);
}

print_r($poll);exit;