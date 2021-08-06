CREATE TABLE fe_users (
    tx_tcademo_list int(11) unsigned DEFAULT '0' NOT NULL
);

CREATE TABLE tx_tcademo_domain_model_item (
    uid         int(11) unsigned                 NOT NULL auto_increment,
    pid         int(11)              DEFAULT '0' NOT NULL,

    parent int(11) DEFAULT '0' NOT NULL,
    name varchar(32) DEFAULT '' NOT NULL,

    tstamp      int(11) unsigned     DEFAULT '0' NOT NULL,
    crdate      int(11) unsigned     DEFAULT '0' NOT NULL,
    cruser_id   int(11) unsigned     DEFAULT '0' NOT NULL,
    sorting     smallint(4) unsigned DEFAULT '0' NOT NULL,
    deleted     tinyint(4) unsigned  DEFAULT '0' NOT NULL,
    hidden      tinyint(4) unsigned  DEFAULT '0' NOT NULL,

    PRIMARY KEY (uid),
    KEY parent (pid)
);

CREATE TABLE tx_tcademo_record_item_mm (
    uid int(11) unsigned NOT NULL auto_increment,
    pid int(11) DEFAULT '0' NOT NULL,

    uid_local int(11) DEFAULT '0' NOT NULL,
    uid_foreign int(11) DEFAULT '0' NOT NULL,
    sorting int(11) DEFAULT '0' NOT NULL,
    sorting_foreign int(11) DEFAULT '0' NOT NULL,
    tablenames varchar(64) DEFAULT '' NOT NULL,
    fieldnames varchar(64) DEFAULT '' NOT NULL,

    PRIMARY KEY (uid),
    KEY ppid (pid)
);
