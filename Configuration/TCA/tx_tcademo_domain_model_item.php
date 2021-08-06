<?php

defined('TYPO3') or die();

return [
    'ctrl' => [
        'title' => 'TCA Demo Items',
        'label' => 'name',
        'tstamp' => 'tstamp',
        'crdate' => 'crdate',
        'cruser_id' => 'cruser_id',
        'dividers2tabs' => true,
        'versioningWS' => true,
        'sortby' => 'sorting',
        'default_sortby' => 'ORDER BY sorting',
        'delete' => 'deleted',
        'enablecolumns' => [
            'disabled' => 'hidden',
        ],
        // 'iconfile' => 'EXT:pm_frelsens/Resources/Public/Icons/answer.gif',
    ],
    'columns' => [
        'parent' => [
            'label' => 'Parent',
            'config' => [
                'type' => 'select',
                'renderType' => 'selectSingle',
                'foreign_table' => 'tx_tcademo_domain_model_item',
                'items' => [
                    ['No parent', 0]
                ],
                'default' => 0,
            ],
        ],
        'name' => [
            'label' => 'Name',
            'config' => [
                'type' => 'input',
                'size' => 32,
                'max' => 32,
                'eval' => 'trim',
            ],
        ]
    ],
    'types' => [
        0 => [
            'showitem' => 'parent,name',
        ],
    ]
];
