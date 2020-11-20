CREATE TABLE menu_m (
menu_id char(10) NOT NULL COMMENT 'メニューID',
menu_name varchar(255) NOT NULL COMMENT 'メニュー名',
menu_img_url varchar(255) NOT NULL COMMENT 'メニュー画像URL',
price int(10) NOT NULL COMMENT '値段',
menu_kbn char(1) NOT NULL DEFAULT '0' COMMENT 'メニュー区分',
create_date TIMESTAMP(5) NOT NULL DEFAULT CURRENT_TIMESTAMP(5) COMMENT '作成日時',
create_op_cd CHAR(10) NOT NULL DEFAULT 'Umknown' COMMENT '作成担当コード',
update_date TIMESTAMP(5) NOT NULL DEFAULT CURRENT_TIMESTAMP(5) COMMENT '更新日時',
update_op_cd CHAR(10) NOT NULL DEFAULT 'Umknown' COMMENT '更新担当コード',
abolish_date TIMESTAMP(5) NULL DEFAULT NULL COMMENT '廃止日時',
abolish_op_cd CHAR(10) NOT NULL DEFAULT 'Umknown' COMMENT '廃止担当コード',
PRIMARY KEY(menu_id))

CREATE TABLE drink (
menu_id          CHAR(10)    NOT NULL COMMENT 'メニューID',
hot_ice          CHAR(1)     NOT NULL COMMENT 'アイス/ホット',
alcol            CHAR(2)     NOT NULL COMMENT 'アルコール度数',
drink_kbn        CHAR(1)     NOT NULL COMMENT 'ドリンク区分',
create_date TIMESTAMP(5) NOT NULL DEFAULT CURRENT_TIMESTAMP(5) COMMENT '作成日時',
create_op_cd CHAR(10) NOT NULL DEFAULT 'Umknown' COMMENT '作成担当コード',
update_date TIMESTAMP(5) NOT NULL DEFAULT CURRENT_TIMESTAMP(5) COMMENT '更新日時',
update_op_cd CHAR(10) NOT NULL DEFAULT 'Umknown' COMMENT '更新担当コード',
abolish_date TIMESTAMP(5) NULL DEFAULT NULL COMMENT '廃止日時',
abolish_op_cd CHAR(10) NOT NULL DEFAULT 'Umknown' COMMENT '廃止担当コード',
PRIMARY KEY(menu_id))

CREATE TABLE food (
menu_id          CHAR(10)    NOT NULL COMMENT 'メニューID',
spicy            CHAR(2)     NOT NULL COMMENT '辛さ',
foo_kbn          CHAR(1)     NOT NULL COMMENT 'フード区分',
create_date TIMESTAMP(5) NOT NULL DEFAULT CURRENT_TIMESTAMP(5) COMMENT '作成日時',
create_op_cd CHAR(10) NOT NULL DEFAULT 'Umknown' COMMENT '作成担当コード',
update_date TIMESTAMP(5) NOT NULL DEFAULT CURRENT_TIMESTAMP(5) COMMENT '更新日時',
update_op_cd CHAR(10) NOT NULL DEFAULT 'Umknown' COMMENT '更新担当コード',
abolish_date TIMESTAMP(5) NULL DEFAULT NULL COMMENT '廃止日時',
abolish_op_cd CHAR(10) NOT NULL DEFAULT 'Umknown' COMMENT '廃止担当コード',
PRIMARY KEY(menu_id))

CREATE TABLE user_m (
user_id         CHAR(10)    NOT NULL COMMENT 'ユーザーID',
user_name       VARCHAR(255) NOT NULL COMMENT 'ユーザー名',
sex             CHAR(1)     NOT NULL COMMENT '性別',
age             CHAR(3)     NOT NULL COMMENT '年齢',
user_kbn        CHAR(1)     NOT NULL COMMENT 'ユーザー区分',
create_date TIMESTAMP(5) NOT NULL DEFAULT CURRENT_TIMESTAMP(5) COMMENT '作成日時',
create_op_cd CHAR(10) NOT NULL DEFAULT 'Umknown' COMMENT '作成担当コード',
update_date TIMESTAMP(5) NOT NULL DEFAULT CURRENT_TIMESTAMP(5) COMMENT '更新日時',
update_op_cd CHAR(10) NOT NULL DEFAULT 'Umknown' COMMENT '更新担当コード',
abolish_date TIMESTAMP(5) NULL DEFAULT NULL COMMENT '廃止日時',
abolish_op_cd CHAR(10) NOT NULL DEFAULT 'Umknown' COMMENT '廃止担当コード',
PRIMARY KEY(user_id))

CREATE TABLE review (
menu_id          CHAR(10)    NOT NULL COMMENT 'メニューID',
user_id          CHAR(10)    NOT NULL COMMENT 'ユーザーID',
review           VARCHAR(255) NULL DEFAULT NULL COMMENT 'レビュー文',
evaluation       CHAR(1)     NOT NULL COMMENT '評価(1～5)',
create_date TIMESTAMP(5) NOT NULL DEFAULT CURRENT_TIMESTAMP(5) COMMENT '作成日時',
create_op_cd CHAR(10) NOT NULL DEFAULT 'Umknown' COMMENT '作成担当コード',
update_date TIMESTAMP(5) NOT NULL DEFAULT CURRENT_TIMESTAMP(5) COMMENT '更新日時',
update_op_cd CHAR(10) NOT NULL DEFAULT 'Umknown' COMMENT '更新担当コード',
abolish_date TIMESTAMP(5) NULL DEFAULT NULL COMMENT '廃止日時',
abolish_op_cd CHAR(10) NOT NULL DEFAULT 'Umknown' COMMENT '廃止担当コード',
PRIMARY KEY(user_id, menu_id))