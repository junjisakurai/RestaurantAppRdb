CREATE TABLE drink (
menu_id          CHAR(10)    NOT NULL COMMENT 'メニューID',
hot_ice          CHAR(1)     NOT NULL COMMENT 'アイス/ホット',
alcol            CHAR(2)     NOT NULL COMMENT 'アルコール度数',
drink_kbn        CHAR(1)     NOT NULL COMMENT 'ドリンク区分',
PRIMARY KEY(menu_id))