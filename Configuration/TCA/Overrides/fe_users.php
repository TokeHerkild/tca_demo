<?php

defined('TYPO3') or die();

call_user_func(function () {

    $tmpColumns = [
        'tx_tcademo_list' => [
            'label' => 'Items',
            'config' => [
                'type' => 'select',
                'renderType' => 'selectMultipleSideBySide',
                'foreign_table' => 'tx_tcademo_domain_model_item',
                'MM' => 'tx_tcademo_record_item_mm',
                'MM_hasUidField' => true,
                'MM_match_fields' => [
                    'tablenames' => 'fe_users',
                    'fieldnames' => 'tx_tcademo_items',
                ],
                'minitems' => 0,
                'maxitems' => 99999,
            ],
        ],
    ];

    \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addTCAcolumns('fe_users', $tmpColumns);
    \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addToAllTCAtypes('fe_users', 'tx_tcademo_list');

});
