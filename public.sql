/*
Navicat PGSQL Data Transfer

Source Server         : Detabase
Source Server Version : 90309
Source Host           : localhost:5432
Source Database       : db_mybatis_pp
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90309
File Encoding         : 65001

Date: 2017-06-27 12:25:51
*/


-- ----------------------------
-- Sequence structure for users_id_seq
-- ----------------------------
DROP SEQUENCE "public"."users_id_seq";
CREATE SEQUENCE "public"."users_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 13
 CACHE 1;
SELECT setval('"public"."users_id_seq"', 13, true);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
"id" int4 DEFAULT nextval('users_id_seq'::regclass) NOT NULL,
"username" varchar(100) COLLATE "default",
"email" varchar(100) COLLATE "default",
"gender" varchar(1) COLLATE "default",
"phonenumber" varchar(100) COLLATE "default",
"status" varchar(1) COLLATE "default",
"user_hash" varchar(100) COLLATE "default",
"created_date" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "public"."users" VALUES ('1', 'Bunnam', 'bunnamsok@gmail.com', 'm', '011472939', null, '5ad5d2d2-6884-4112-9d22-1c6ff17d8b6a', '2017-06-23 22:39:53.257');
INSERT INTO "public"."users" VALUES ('2', 'Summer', 'summer@gmail.com', 'm', '070411110', null, '1c70bb72-1bf9-4cf3-9cc7-490304526e46', '2017-06-27 11:04:11.111');
INSERT INTO "public"."users" VALUES ('3', 'Dara ', 'dara@gmail.com', 'm', '012345678', null, '9a39ac12-2400-464c-9e59-a40ab72e8f9f', '2017-06-27 11:04:32.45');
INSERT INTO "public"."users" VALUES ('4', 'Lina', 'Lina123@yahoo.com', 'f', '012345678', null, '7112708c-f89f-444f-b802-5be0c04fce4c', '2017-06-27 11:04:49.27');
INSERT INTO "public"."users" VALUES ('5', 'dara', 'bunnamsok@gmail.com', 'm', '070411110', null, 'd4ec0786-d9e4-4b27-84ee-b5d44ee0ea39', '2017-06-27 11:05:09.05');
INSERT INTO "public"."users" VALUES ('6', 'Rambo', 'ramboo007@gmail.com', 'm', '012345678', null, 'd5e2f8bf-07c3-4f2e-bba7-9c6cc91889ad', '2017-06-27 11:05:44.324');
INSERT INTO "public"."users" VALUES ('7', 'Steav job ', 'steav@gmail.com', 'm', '012456789', null, '8dcf3ac7-d719-4f50-98ed-11c9fd530887', '2017-06-27 11:05:59.476');
INSERT INTO "public"."users" VALUES ('9', 'bunnamsok', 'bunnamsok@gmail.com', 'm', '07041110', null, 'cf25b80b-04c4-49ab-a006-de284d81e93f', '2017-06-27 11:06:42.074');
INSERT INTO "public"."users" VALUES ('10', 'summer cool', 'summercool@gmail.com', 'm', '070411110', null, '0c979240-2845-4e9e-a64c-d7a47c393b55', '2017-06-27 11:07:19.578');
INSERT INTO "public"."users" VALUES ('11', 'mey mey', 'meymey@gmail.com', 'f', '010223344', null, '83bfffa7-78b6-48a7-9e56-f3b939c17e15', '2017-06-27 11:07:34.066');
INSERT INTO "public"."users" VALUES ('12', 'yong yong ', 'yongyong@gmail.com', 'f', '012678900', null, '631e59e2-1b70-46fe-92d0-bc4da8ea2478', '2017-06-27 11:07:58.751');
INSERT INTO "public"."users" VALUES ('13', 'Bunnam Sok', 'bunnamsok@gmail.com', 'm', '011472939', null, '6ab74335-867c-468f-b60c-32321fc501fa', '2017-06-27 12:02:36.538');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."users_id_seq" OWNED BY "users"."id";

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD PRIMARY KEY ("id");
