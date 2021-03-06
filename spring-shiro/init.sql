-- 权限表 --
CREATE TABLE permission
(
  pid  int(11)      NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL DEFAULT '',
  url  varchar(255) not null DEFAULT '',
  PRIMARY KEY (pid)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

INSERT  INTO permission VALUES ('1','add','');
INSERT  INTO permission VALUES ('2','delete','');
INSERT  INTO permission VALUES ('3','edit','');
INSERT  INTO permission VALUES ('4','query','');

-- 用户表 --
CREATE TABLE user
(
  uid      int(11)      NOT NULL AUTO_INCREMENT,
  username VARCHAR(255) NOT NULL DEFAULT '',
  password varchar(255) not null DEFAULT '',
  PRIMARY KEY (uid)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

INSERT  INTO user VALUES ('1','admin','123');
INSERT  INTO user VALUES ('2','demo','123');

-- 权限表 --
CREATE TABLE role
(
  rid  int(11)      NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY (rid)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

INSERT  INTO role VALUES ('1','admin');
INSERT  INTO role VALUES ('2','customer');
-- 权限角色关系表 --

CREATE TABLE permission_role
(
  rid INT(11) NOT NULL,
  pid INT(11) NOT NULL,
  KEY idx_rid (rid),
  KEY idx_pid (pid)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

INSERT  INTO permission_role VALUES ('1','1');
INSERT  INTO permission_role VALUES ('1','2');
INSERT  INTO permission_role VALUES ('1','3');
INSERT  INTO permission_role VALUES ('1','4');
INSERT  INTO permission_role VALUES ('2','1');
INSERT  INTO permission_role VALUES ('2','4');

-- 用户角色关系表 --
CREATE TABLE user_role
(
  uid INT(11) NOT NULL,
  rid INT(11) NOT NULL,
  KEY idx_rid (uid),
  KEY idx_pid (rid)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

INSERT  INTO user_role VALUES ('1','1');
INSERT  INTO user_role VALUES ('2','2');