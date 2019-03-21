-- 红包商品表的简化版本，为了方便测试评估，只保留了部分字段
-- 红包商品表
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`
(
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID' ,
  `envelope_no` varchar(32) NOT NULL COMMENT '红包编号，红包唯一标识' ,
  `remain_amount` decimal(30,6) NOT NULL DEFAULT '0.000000' COMMENT '红包剩余金额',
  `remain_quantity` int(10) NOT NULL COMMENT '红包剩余数量',
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3) COMMENT '创建时间',
  `updated_at` datetime(3) NOT NULL DEFAULT current_timestamp(3) on update current_timestamp(3) COMMENT '更新时间',
  primary key (`id`) using btree,
  unique key `envelope_no_idx` (`envelope_no`) using btree
) engine = InnoDB
  AUTO_INCREMENT = 156
  DEFAULT charset = utf8
  row_format = dynamic;

-- 红包商品表的无符号类型字段版本
DROP TABLE IF EXISTS `goods_unsigned`;
CREATE TABLE `goods_unsigned`
(
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID' ,
  `envelope_no` varchar(32) NOT NULL COMMENT '红包编号，红包唯一标识' ,
  `remain_amount` decimal(30,6) unsigned NOT NULL DEFAULT '0.000000' COMMENT '红包剩余金额',
  `remain_quantity` int(10) unsigned NOT NULL COMMENT '红包剩余数量',
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3) COMMENT '创建时间',
  `updated_at` datetime(3) NOT NULL DEFAULT current_timestamp(3) on update current_timestamp(3) COMMENT '更新时间',
  primary key (`id`) using btree,
  unique key `envelope_no_idx` (`envelope_no`) using btree
) engine = InnoDB
  AUTO_INCREMENT = 162
  DEFAULT charset = utf8
  row_format = dynamic;
