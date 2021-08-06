<?php

$EM_CONF[$_EXTKEY] = array(
    'title' => 'TCA Demo',
    'description' => 'Demonstrate issue with selectMultipleSideBySide',
    'category' => 'plugin',
    'author' => 'Toke Herkild',
    'author_email' => 'toke@webto.dk',
    'company' => 'Webto ApS',
    'shy' => '',
    'priority' => '',
    'module' => '',
    'state' => 'stable',
    'internal' => '',
    'uploadfolder' => '0',
    'createDirs' => '',
    'modify_tables' => '',
    'clearCacheOnLoad' => 1,
    'lockType' => '',
    'version' => '1.0.0',
    'constraints' => array(
        'depends' => array(
            'typo3' => '10.4.0-0.0.0',
            'php' => '7.0.0-0.0.0',
        ),
        'conflicts' => array(
        ),
        'suggests' => array(
        ),
    ),
);
