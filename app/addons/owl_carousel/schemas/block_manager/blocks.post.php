<?php

// This schema extends the banner system with a 3rd type
$schema['banners']['templates']['addons/owl_carousel/blocks/owl_carousel.tpl'] = array(
	'settings' => array (
		'not_scroll_automatically' => array (
			'type' => 'checkbox',
			'default_value' => 'N'
		),
		'scroll_per_page' =>  array (
			'type' => 'checkbox',
			'default_value' => 'N'
		),
		'speed' =>  array (
			'type' => 'input',
			'default_value' => 400
		),
		'pause_delay' =>  array (
			'type' => 'input',
			'default_value' => 3
		),
		'item_quantity' =>  array (
			'type' => 'input',
			'default_value' => 6
		),
		'thumbnail_width' =>  array (
			'type' => 'input',
			'default_value' => 50
		),
		'outside_navigation' => array (
			'type' => 'checkbox',
			'default_value' => 'Y'
		)
	),
);

return $schema;