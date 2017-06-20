-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-06-20 07:52:14
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `makeup`
--

-- --------------------------------------------------------

--
-- 表的结构 `age`
--

CREATE TABLE `age` (
  `age_id` smallint(6) NOT NULL,
  `age_name` char(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `age`
--

INSERT INTO `age` (`age_id`, `age_name`) VALUES
(1, 'under 13'),
(2, '14-17'),
(3, '18-24'),
(4, '25-29'),
(5, '30-35'),
(6, '36-40'),
(7, 'below 40');

-- --------------------------------------------------------

--
-- 表的结构 `blusher_region`
--

CREATE TABLE `blusher_region` (
  `blusher_region_id` smallint(11) NOT NULL,
  `blusher_region_name` char(20) CHARACTER SET gb2312 DEFAULT NULL,
  `blusher_region_template` char(20) CHARACTER SET gb2312 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `blusher_region`
--

INSERT INTO `blusher_region` (`blusher_region_id`, `blusher_region_name`, `blusher_region_template`) VALUES
(1, '圆脸腮红区域', NULL),
(2, '长脸腮红区域', NULL),
(3, '椭圆脸腮红区域', NULL),
(4, '梨形脸腮红区域', NULL),
(5, '棱形脸腮红区域', NULL),
(6, '心形脸腮红区域', NULL),
(7, '方脸腮红区域', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `blusher_rgb`
--

CREATE TABLE `blusher_rgb` (
  `blusher_rgb_id` smallint(11) NOT NULL,
  `blusher_rgb_name` char(20) CHARACTER SET gb2312 DEFAULT NULL,
  `blusher_rgb` char(20) CHARACTER SET gbk DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `blusher_rgb`
--

INSERT INTO `blusher_rgb` (`blusher_rgb_id`, `blusher_rgb_name`, `blusher_rgb`) VALUES
(1, '淡粉色', NULL),
(2, '芭比色', NULL),
(3, '橘色', NULL),
(4, '浅橘色', NULL),
(5, '活力粉', NULL),
(6, '婴儿粉', NULL),
(7, '云雾粉', NULL),
(8, '柔粉樱', NULL),
(9, '健康橙', NULL),
(10, '嫩橙色', NULL),
(11, '阳光橘', NULL),
(12, '裸色', NULL),
(13, '玫瑰红', NULL),
(15, '热焰橙', NULL),
(14, '浅沙红', NULL),
(16, '渐变色', NULL),
(17, '粉罂粟', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `concealer_rgb`
--

CREATE TABLE `concealer_rgb` (
  `concealer_rgb_id` smallint(11) NOT NULL,
  `concealer_rgb_name` char(20) CHARACTER SET gb2312 DEFAULT NULL,
  `concealer_rgb` char(20) CHARACTER SET gb2312 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `concealer_rgb`
--

INSERT INTO `concealer_rgb` (`concealer_rgb_id`, `concealer_rgb_name`, `concealer_rgb`) VALUES
(1, '自然色', NULL),
(2, '绿色', NULL),
(3, '象牙白', NULL),
(4, '白色', NULL),
(5, '嫩粉色', NULL),
(6, '小麦色', NULL),
(7, '柔缎色', NULL),
(8, '亮肤色', NULL),
(9, '柔粉色', NULL),
(10, '浅桃色', NULL),
(11, '丝白色', NULL),
(12, '藕粉色', NULL),
(13, '自然藕色', NULL),
(14, '杏色', NULL),
(15, '黄色', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `eyebrow_rgb`
--

CREATE TABLE `eyebrow_rgb` (
  `eyebrow_rgb_id` smallint(11) NOT NULL,
  `eyebrow_rgb_name` char(20) CHARACTER SET gb2312 DEFAULT NULL,
  `eyebrow_rgb` char(20) CHARACTER SET gb2312 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `eyebrow_rgb`
--

INSERT INTO `eyebrow_rgb` (`eyebrow_rgb_id`, `eyebrow_rgb_name`, `eyebrow_rgb`) VALUES
(1, '浅棕', NULL),
(2, '棕', NULL),
(3, '深棕', NULL),
(4, '黑灰', NULL),
(5, '黑', NULL),
(6, '自然棕', NULL),
(7, '咖啡棕', NULL),
(8, '灰黑', NULL),
(9, '亮棕', NULL),
(10, '灰', NULL),
(11, '浅咖', NULL),
(12, '深褐', NULL),
(13, '深咖', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `eyelash`
--

CREATE TABLE `eyelash` (
  `eyelash_id` smallint(11) NOT NULL,
  `eyelash_name` char(20) CHARACTER SET gb2312 DEFAULT NULL,
  `eyelash_template` char(20) CHARACTER SET gb2312 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `eyelash`
--

INSERT INTO `eyelash` (`eyelash_id`, `eyelash_name`, `eyelash_template`) VALUES
(1, '自然交叉短款', NULL),
(2, '单簇纤长卷翘睫毛', NULL),
(3, '自然交叉浓密短款', NULL),
(4, '自然排列短款', NULL),
(5, '自然排列纤长卷翘睫毛', NULL),
(6, '交叉纤长卷翘睫毛', NULL),
(7, '多层排列单簇纤长卷翘睫毛', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `eyeline_region`
--

CREATE TABLE `eyeline_region` (
  `eyeline_region_id` smallint(11) NOT NULL,
  `eyeline_region_name` char(20) CHARACTER SET gb2312 DEFAULT NULL,
  `eyeline_region_template` char(20) CHARACTER SET gb2312 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `eyeline_region`
--

INSERT INTO `eyeline_region` (`eyeline_region_id`, `eyeline_region_name`, `eyeline_region_template`) VALUES
(1, '下垂眼线', NULL),
(2, '圆眼眼线', NULL),
(3, '远心眼眼线', NULL),
(4, '近心眼眼线', NULL),
(5, '细长眼眼线', NULL),
(6, '上扬眼线', NULL),
(7, '全包围眼线', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `eyemakeup_rgb`
--

CREATE TABLE `eyemakeup_rgb` (
  `eyemakeup_rgb_id` smallint(11) NOT NULL,
  `eyemakeup_rgb_name` char(20) CHARACTER SET gb2312 DEFAULT NULL,
  `eyemakeup_rgb` char(20) CHARACTER SET gb2312 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `eyemakeup_rgb`
--

INSERT INTO `eyemakeup_rgb` (`eyemakeup_rgb_id`, `eyemakeup_rgb_name`, `eyemakeup_rgb`) VALUES
(1, '黑色', NULL),
(2, '金棕色', NULL),
(3, '大地色', NULL),
(4, '咖色', NULL),
(5, '灰色', NULL),
(6, '紫色', NULL),
(7, '粉棕', NULL),
(8, '橘米色', NULL),
(9, '西柚色', NULL),
(10, '红棕色', NULL),
(11, '裸金棕色', NULL),
(12, '酒红色', NULL),
(13, '米棕色', NULL),
(14, '珠光白', NULL),
(15, '瑚绿色', NULL),
(16, '棕色', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `eye_shadow_region`
--

CREATE TABLE `eye_shadow_region` (
  `eye_shadow_region_id` smallint(11) NOT NULL,
  `eye_shadow_region_template` char(20) CHARACTER SET gb2312 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `eye_style`
--

CREATE TABLE `eye_style` (
  `eye_style_id` smallint(11) NOT NULL,
  `eye_style_name` char(50) CHARACTER SET gb2312 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `eye_style`
--

INSERT INTO `eye_style` (`eye_style_id`, `eye_style_name`) VALUES
(1, '细长眼'),
(2, '标准眼'),
(3, '圆眼'),
(4, '垂眼'),
(5, '吊眼'),
(6, '近心眼'),
(7, '远心眼');

-- --------------------------------------------------------

--
-- 表的结构 `face_style`
--

CREATE TABLE `face_style` (
  `face_style_id` smallint(11) NOT NULL,
  `face_style_name` char(50) CHARACTER SET gb2312 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `face_style`
--

INSERT INTO `face_style` (`face_style_id`, `face_style_name`) VALUES
(1, '圆脸'),
(2, '长脸'),
(3, '椭圆脸'),
(4, '梨形脸'),
(5, '棱形脸'),
(6, '心形脸'),
(7, '方脸');

-- --------------------------------------------------------

--
-- 表的结构 `female_eyebrow`
--

CREATE TABLE `female_eyebrow` (
  `female_eyebrow_id` smallint(6) NOT NULL,
  `female_eyebrow_name` char(20) CHARACTER SET gb2312 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `female_eyebrow`
--

INSERT INTO `female_eyebrow` (`female_eyebrow_id`, `female_eyebrow_name`) VALUES
(1, '流星眉'),
(2, '无辜眉'),
(3, '总攻眉'),
(4, '一字眉'),
(5, '欧式眉'),
(6, '自然眉');

-- --------------------------------------------------------

--
-- 表的结构 `female_hair_style`
--

CREATE TABLE `female_hair_style` (
  `female_hair_style_id` smallint(11) NOT NULL,
  `female_hair_style_name` char(20) CHARACTER SET gb2312 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `female_hair_style`
--

INSERT INTO `female_hair_style` (`female_hair_style_id`, `female_hair_style_name`) VALUES
(1, '百变精灵短发'),
(2, '甜美可爱蘑菇头'),
(3, '柔美动人荷叶头'),
(4, '清爽纯美丸子头'),
(5, '清纯唯美斜刘海长直发'),
(6, '时尚气质中分长直发'),
(7, '清新迷人平海长直发'),
(8, '午后时光斜刘海长卷发'),
(9, '明艳动人中长卷发'),
(10, '日韩非主流齐刘海蓬松长发'),
(11, '蓬松女生空气刘海长卷发'),
(12, '唯美动人花式编发'),
(13, '无刘海'),
(14, '优雅气质花式盘发'),
(15, 'bobo头');

-- --------------------------------------------------------

--
-- 表的结构 `foundation_rgb`
--

CREATE TABLE `foundation_rgb` (
  `foundation_rgb_id` smallint(6) NOT NULL,
  `foundation_rgb_name` char(20) CHARACTER SET gb2312 DEFAULT NULL,
  `foundation_rgb` char(20) CHARACTER SET gb2312 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `foundation_rgb`
--

INSERT INTO `foundation_rgb` (`foundation_rgb_id`, `foundation_rgb_name`, `foundation_rgb`) VALUES
(1, '自然色', NULL),
(2, '珍珠白', NULL),
(3, '裸米色', NULL),
(4, '象牙白', NULL),
(5, '绿色', NULL),
(6, '浅肤色', NULL),
(7, '丝白色', NULL),
(8, '柔缎色', NULL),
(9, '紫色', NULL),
(10, '纯米色', NULL),
(11, '珊瑚色', NULL),
(12, '白偏黄', NULL),
(13, '小麦色', NULL),
(14, '瓷白色', NULL),
(15, '肌黄色', NULL),
(16, '珠光紫', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `gender`
--

CREATE TABLE `gender` (
  `gender_id` smallint(6) NOT NULL,
  `gender_name` char(5) CHARACTER SET gb2312 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `gender`
--

INSERT INTO `gender` (`gender_id`, `gender_name`) VALUES
(1, '女'),
(2, '男');

-- --------------------------------------------------------

--
-- 表的结构 `high_light_region`
--

CREATE TABLE `high_light_region` (
  `high_light_region_id` smallint(11) NOT NULL,
  `high_light_region_name` char(20) CHARACTER SET gb2312 DEFAULT NULL,
  `high_light_region_template` char(20) CHARACTER SET gb2312 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `high_light_region`
--

INSERT INTO `high_light_region` (`high_light_region_id`, `high_light_region_name`, `high_light_region_template`) VALUES
(1, '圆脸高光区域', NULL),
(2, '长脸高光区域', NULL),
(3, '椭圆脸高光区域', NULL),
(4, '梨形脸高光区域', NULL),
(5, '棱形脸高光区域', NULL),
(6, '心形脸高光区域', NULL),
(7, '方脸高光区域', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `lipstick_rgb`
--

CREATE TABLE `lipstick_rgb` (
  `lipstick_rgb_id` smallint(11) NOT NULL,
  `lipstick_rgb_name` char(20) CHARACTER SET gb2312 DEFAULT NULL,
  `lipstick_rgb` char(20) CHARACTER SET gb2312 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `lipstick_rgb`
--

INSERT INTO `lipstick_rgb` (`lipstick_rgb_id`, `lipstick_rgb_name`, `lipstick_rgb`) VALUES
(1, '蔷薇色', NULL),
(2, '梅子红', NULL),
(3, '红玫瑰', NULL),
(4, '骄阳红', NULL),
(5, '玫红粉色', NULL),
(6, '正红', NULL),
(7, '西柚橙色', NULL),
(8, '豆沙色', NULL),
(9, '深粉色', NULL),
(10, '亮红色', NULL),
(11, '水晶粉', NULL),
(12, '深红粉', NULL),
(13, '活力橙', NULL),
(14, '暖橘', NULL),
(15, '裸橘色', NULL),
(16, '大红色', NULL),
(17, '桃红', NULL),
(18, '糖橘色', NULL),
(19, '珊瑚咖啡色', NULL),
(20, '西瓜色', NULL),
(21, '玫瑰紫', NULL),
(22, '葡萄酒红', NULL),
(23, '砖红色', NULL),
(24, '典礼大红', NULL),
(25, '淡粉色', NULL),
(26, '糖果色', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `makeup_fixer_rgb`
--

CREATE TABLE `makeup_fixer_rgb` (
  `makeup_fixer_rgb_id` int(11) NOT NULL,
  `makeup_fixer_rgb_name` char(20) CHARACTER SET gb2312 DEFAULT NULL,
  `makeup_fixer_rgb` char(20) CHARACTER SET gb2312 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `makeup_fixer_rgb`
--

INSERT INTO `makeup_fixer_rgb` (`makeup_fixer_rgb_id`, `makeup_fixer_rgb_name`, `makeup_fixer_rgb`) VALUES
(1, '自然色', NULL),
(2, '浅肤色', NULL),
(3, '象牙白', NULL),
(4, '粉嫩色', NULL),
(5, '浅粉色', NULL),
(6, '珠光紫', NULL),
(7, '裸米色', NULL),
(8, '绿色', NULL),
(9, '丝白色', NULL),
(10, '柔缎色', NULL),
(11, '紫色', NULL),
(12, '纯米色', NULL),
(13, '珊瑚白', NULL),
(14, '白偏黄', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `makeup_scene`
--

CREATE TABLE `makeup_scene` (
  `makeup_scene_id` smallint(11) NOT NULL,
  `makeup_scene_name` char(20) CHARACTER SET gb2312 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `makeup_scene`
--

INSERT INTO `makeup_scene` (`makeup_scene_id`, `makeup_scene_name`) VALUES
(1, '日常装扮'),
(2, '舞台演出'),
(3, '星路成长'),
(4, '追随时尚'),
(5, '节日派对'),
(6, '恋爱约会'),
(7, '职场妆容'),
(8, '朋友聚会'),
(9, '时间妆容'),
(10, '励志妆容'),
(11, '圈子社交'),
(12, '婚礼新娘'),
(13, '网络主播'),
(14, '社会角色'),
(15, '明星仿妆'),
(16, '幸运开妆'),
(17, '节目主持'),
(18, '商务会见'),
(19, '减龄妆容'),
(20, '休闲旅游'),
(21, '大型宴会'),
(22, '媒体采访');

-- --------------------------------------------------------

--
-- 表的结构 `makeup_style`
--

CREATE TABLE `makeup_style` (
  `makeup_style_id` smallint(11) NOT NULL,
  `makeup_style_name` char(20) CHARACTER SET gb2312 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `makeup_style`
--

INSERT INTO `makeup_style` (`makeup_style_id`, `makeup_style_name`) VALUES
(1, '立体妆'),
(2, '学生妆'),
(3, '芭比妆'),
(4, '咬唇妆'),
(5, '泪滴妆'),
(6, '日系妆'),
(7, '玫瑰妆'),
(8, '珊瑚妆'),
(9, '韩式裸妆'),
(10, '复古妆'),
(11, '烟熏妆'),
(12, '女王妆'),
(13, '约会妆'),
(14, '桃花妆'),
(15, '主持人妆'),
(16, '舞台妆'),
(17, '名媛妆'),
(18, '通勤妆'),
(19, '新娘妆'),
(20, '商务妆'),
(21, '辣妈妆'),
(22, '女神妆'),
(23, '网红妆'),
(24, '混血妆'),
(25, '宴会妆'),
(26, '生活妆'),
(27, '休闲妆'),
(28, '运动妆'),
(29, '受访妆'),
(30, 'PARTY聚会妆'),
(31, '律师妆'),
(32, '教师妆'),
(33, '童星妆'),
(34, '公务员妆'),
(35, '总裁妆'),
(36, '毕业妆'),
(37, '模特妆'),
(38, '办公白领妆'),
(39, '网络主播妆'),
(40, '上市公司CEO妆'),
(41, '明星咖妆'),
(42, '职场精英妆'),
(43, '职场小白妆'),
(44, '晨妆'),
(45, '午间妆'),
(46, '晚妆'),
(47, '晚礼妆'),
(48, '减龄妆'),
(49, '元气妆'),
(50, '闺蜜妆'),
(51, '伴娘妆'),
(52, '开运妆'),
(53, '卧蚕妆'),
(54, '自然证照妆');

-- --------------------------------------------------------

--
-- 表的结构 `makeup_style_images`
--

CREATE TABLE `makeup_style_images` (
  `makeup_style_id` smallint(11) NOT NULL,
  `makeup_style_images_path` char(50) CHARACTER SET gb2312 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `makeup_style_images`
--

INSERT INTO `makeup_style_images` (`makeup_style_id`, `makeup_style_images_path`) VALUES
(1, 'C:\\wamp64\\www\\images\\1立体妆\\LTZ001'),
(1, 'C:\\wamp64\\www\\images\\1立体妆\\LTZ002'),
(1, 'C:\\wamp64\\www\\images\\1立体妆\\LTZ003'),
(1, 'C:\\wamp64\\www\\images\\1立体妆\\LTZ004'),
(1, 'C:\\wamp64\\www\\images\\1立体妆\\LTZ005'),
(1, 'C:\\wamp64\\www\\images\\1立体妆\\LTZ006'),
(1, 'C:\\wamp64\\www\\images\\1立体妆\\LTZ007'),
(1, 'C:\\wamp64\\www\\images\\1立体妆\\LTZ008'),
(1, 'C:\\wamp64\\www\\images\\1立体妆\\LTZ009'),
(1, 'C:\\wamp64\\www\\images\\1立体妆\\LTZ010'),
(2, 'C:\\wamp64\\www\\images\\2学生妆\\XSZ001'),
(2, 'C:\\wamp64\\www\\images\\2学生妆\\XSZ002'),
(2, 'C:\\wamp64\\www\\images\\2学生妆\\XSZ003'),
(2, 'C:\\wamp64\\www\\images\\2学生妆\\XSZ004'),
(2, 'C:\\wamp64\\www\\images\\2学生妆\\XSZ005'),
(2, 'C:\\wamp64\\www\\images\\2学生妆\\XSZ006'),
(2, 'C:\\wamp64\\www\\images\\2学生妆\\XSZ007'),
(2, 'C:\\wamp64\\www\\images\\2学生妆\\XSZ008'),
(2, 'C:\\wamp64\\www\\images\\2学生妆\\XSZ009'),
(2, 'C:\\wamp64\\www\\images\\2学生妆\\XSZ010'),
(3, 'C:\\wamp64\\www\\images\\3芭比妆\\BBZ001'),
(3, 'C:\\wamp64\\www\\images\\3芭比妆\\BBZ002'),
(3, 'C:\\wamp64\\www\\images\\3芭比妆\\BBZ003'),
(3, 'C:\\wamp64\\www\\images\\3芭比妆\\BBZ004'),
(3, 'C:\\wamp64\\www\\images\\3芭比妆\\BBZ005'),
(4, 'C:\\wamp64\\www\\images\\4咬唇妆\\YCZ001'),
(4, 'C:\\wamp64\\www\\images\\4咬唇妆\\YCZ002'),
(4, 'C:\\wamp64\\www\\images\\4咬唇妆\\YCZ003'),
(4, 'C:\\wamp64\\www\\images\\4咬唇妆\\YCZ004'),
(5, 'C:\\wamp64\\www\\images\\5泪滴妆\\LDZ001'),
(5, 'C:\\wamp64\\www\\images\\5泪滴妆\\LDZ002'),
(5, 'C:\\wamp64\\www\\images\\5泪滴妆\\LDZ003'),
(6, 'C:\\wamp64\\www\\images\\6日系妆\\RXZ001'),
(6, 'C:\\wamp64\\www\\images\\6日系妆\\RXZ002'),
(6, 'C:\\wamp64\\www\\images\\6日系妆\\RXZ003'),
(6, 'C:\\wamp64\\www\\images\\6日系妆\\RXZ004'),
(7, 'C:\\wamp64\\www\\images\\7玫瑰妆\\MGZ001'),
(7, 'C:\\wamp64\\www\\images\\7玫瑰妆\\MGZ002'),
(7, 'C:\\wamp64\\www\\images\\7玫瑰妆\\MGZ003'),
(7, 'C:\\wamp64\\www\\images\\7玫瑰妆\\MGZ004'),
(7, 'C:\\wamp64\\www\\images\\7玫瑰妆\\MGZ005'),
(8, 'C:\\wamp64\\www\\images\\8珊瑚妆\\SHZ001'),
(8, 'C:\\wamp64\\www\\images\\8珊瑚妆\\SHZ002'),
(8, 'C:\\wamp64\\www\\images\\8珊瑚妆\\SHZ003'),
(8, 'C:\\wamp64\\www\\images\\8珊瑚妆\\SHZ004'),
(8, 'C:\\wamp64\\www\\images\\8珊瑚妆\\SHZ005'),
(9, 'C:\\wamp64\\www\\images\\9韩式裸妆\\HLZ-001'),
(9, 'C:\\wamp64\\www\\images\\9韩式裸妆\\HLZ-002'),
(9, 'C:\\wamp64\\www\\images\\9韩式裸妆\\HLZ-003'),
(9, 'C:\\wamp64\\www\\images\\9韩式裸妆\\HLZ-004'),
(9, 'C:\\wamp64\\www\\images\\9韩式裸妆\\HLZ-005'),
(9, 'C:\\wamp64\\www\\images\\9韩式裸妆\\HLZ-006'),
(9, 'C:\\wamp64\\www\\images\\9韩式裸妆\\HLZ-007'),
(9, 'C:\\wamp64\\www\\images\\9韩式裸妆\\HLZ-008'),
(9, 'C:\\wamp64\\www\\images\\9韩式裸妆\\HLZ-009'),
(9, 'C:\\wamp64\\www\\images\\9韩式裸妆\\HLZ-010'),
(9, 'C:\\wamp64\\www\\images\\9韩式裸妆\\HLZ-011'),
(9, 'C:\\wamp64\\www\\images\\9韩式裸妆\\HLZ-012'),
(10, 'C:\\wamp64\\www\\images\\10复古妆\\FGZ-001'),
(10, 'C:\\wamp64\\www\\images\\10复古妆\\FGZ-002'),
(10, 'C:\\wamp64\\www\\images\\10复古妆\\FGZ-003'),
(10, 'C:\\wamp64\\www\\images\\10复古妆\\FGZ-004'),
(10, 'C:\\wamp64\\www\\images\\10复古妆\\FGZ-005'),
(10, 'C:\\wamp64\\www\\images\\10复古妆\\FGZ-006'),
(10, 'C:\\wamp64\\www\\images\\10复古妆\\FGZ-007'),
(10, 'C:\\wamp64\\www\\images\\10复古妆\\FGZ-008'),
(10, 'C:\\wamp64\\www\\images\\10复古妆\\FGZ-009'),
(10, 'C:\\wamp64\\www\\images\\10复古妆\\FGZ-010'),
(10, 'C:\\wamp64\\www\\images\\10复古妆\\FGZ-011'),
(10, 'C:\\wamp64\\www\\images\\10复古妆\\FGZ-012'),
(10, 'C:\\wamp64\\www\\images\\10复古妆\\FGZ-013'),
(10, 'C:\\wamp64\\www\\images\\10复古妆\\FGZ-014'),
(10, 'C:\\wamp64\\www\\images\\10复古妆\\FGZ-015'),
(11, 'C:\\wamp64\\www\\images\\11烟熏妆\\YXZ-001'),
(11, 'C:\\wamp64\\www\\images\\11烟熏妆\\YXZ-002'),
(11, 'C:\\wamp64\\www\\images\\11烟熏妆\\YXZ-003'),
(11, 'C:\\wamp64\\www\\images\\11烟熏妆\\YXZ-004'),
(11, 'C:\\wamp64\\www\\images\\11烟熏妆\\YXZ-005'),
(11, 'C:\\wamp64\\www\\images\\11烟熏妆\\YXZ-006'),
(11, 'C:\\wamp64\\www\\images\\11烟熏妆\\YXZ-007'),
(11, 'C:\\wamp64\\www\\images\\11烟熏妆\\YXZ-008'),
(11, 'C:\\wamp64\\www\\images\\11烟熏妆\\YXZ-009'),
(11, 'C:\\wamp64\\www\\images\\11烟熏妆\\YXZ-010'),
(11, 'C:\\wamp64\\www\\images\\11烟熏妆\\YXZ-011'),
(11, 'C:\\wamp64\\www\\images\\11烟熏妆\\YXZ-012'),
(11, 'C:\\wamp64\\www\\images\\11烟熏妆\\YXZ-013'),
(11, 'C:\\wamp64\\www\\images\\11烟熏妆\\YXZ-014'),
(11, 'C:\\wamp64\\www\\images\\11烟熏妆\\YXZ-015'),
(11, 'C:\\wamp64\\www\\images\\11烟熏妆\\YXZ-016'),
(11, 'C:\\wamp64\\www\\images\\11烟熏妆\\YXZ-017'),
(11, 'C:\\wamp64\\www\\images\\11烟熏妆\\YXZ-018'),
(11, 'C:\\wamp64\\www\\images\\11烟熏妆\\YXZ-019'),
(11, 'C:\\wamp64\\www\\images\\11烟熏妆\\YXZ-020'),
(11, 'C:\\wamp64\\www\\images\\11烟熏妆\\YXZ-021'),
(11, 'C:\\wamp64\\www\\images\\11烟熏妆\\YXZ-022'),
(12, 'C:\\wamp64\\www\\images\\12女王妆\\NWZ-001'),
(12, 'C:\\wamp64\\www\\images\\12女王妆\\NWZ-002'),
(12, 'C:\\wamp64\\www\\images\\12女王妆\\NWZ-003'),
(12, 'C:\\wamp64\\www\\images\\12女王妆\\NWZ-004'),
(12, 'C:\\wamp64\\www\\images\\12女王妆\\NWZ-005'),
(12, 'C:\\wamp64\\www\\images\\12女王妆\\NWZ-006'),
(12, 'C:\\wamp64\\www\\images\\12女王妆\\NWZ-007'),
(12, 'C:\\wamp64\\www\\images\\12女王妆\\NWZ-008'),
(12, 'C:\\wamp64\\www\\images\\12女王妆\\NWZ-009'),
(12, 'C:\\wamp64\\www\\images\\12女王妆\\NWZ-010'),
(12, 'C:\\wamp64\\www\\images\\12女王妆\\NWZ-011'),
(12, 'C:\\wamp64\\www\\images\\12女王妆\\NWZ-012'),
(12, 'C:\\wamp64\\www\\images\\12女王妆\\NWZ-013'),
(12, 'C:\\wamp64\\www\\images\\12女王妆\\NWZ-014'),
(12, 'C:\\wamp64\\www\\images\\12女王妆\\NWZ-015'),
(13, 'C:\\wamp64\\www\\images\\13约会妆\\YHZ-001'),
(13, 'C:\\wamp64\\www\\images\\13约会妆\\YHZ-002'),
(13, 'C:\\wamp64\\www\\images\\13约会妆\\YHZ-003'),
(13, 'C:\\wamp64\\www\\images\\13约会妆\\YHZ-004'),
(13, 'C:\\wamp64\\www\\images\\13约会妆\\YHZ-005'),
(13, 'C:\\wamp64\\www\\images\\13约会妆\\YHZ-006'),
(13, 'C:\\wamp64\\www\\images\\13约会妆\\YHZ-007'),
(13, 'C:\\wamp64\\www\\images\\13约会妆\\YHZ-008'),
(13, 'C:\\wamp64\\www\\images\\13约会妆\\YHZ-009'),
(13, 'C:\\wamp64\\www\\images\\13约会妆\\YHZ-010'),
(13, 'C:\\wamp64\\www\\images\\13约会妆\\YHZ-011'),
(13, 'C:\\wamp64\\www\\images\\13约会妆\\YHZ-012'),
(13, 'C:\\wamp64\\www\\images\\13约会妆\\YHZ-013'),
(13, 'C:\\wamp64\\www\\images\\13约会妆\\YHZ-014'),
(13, 'C:\\wamp64\\www\\images\\13约会妆\\YHZ-015'),
(13, 'C:\\wamp64\\www\\images\\13约会妆\\YHZ-016'),
(13, 'C:\\wamp64\\www\\images\\13约会妆\\YHZ-017'),
(13, 'C:\\wamp64\\www\\images\\13约会妆\\YHZ-018'),
(13, 'C:\\wamp64\\www\\images\\13约会妆\\YHZ-019'),
(13, 'C:\\wamp64\\www\\images\\13约会妆\\YHZ-020'),
(13, 'C:\\wamp64\\www\\images\\13约会妆\\YHZ-021'),
(13, 'C:\\wamp64\\www\\images\\13约会妆\\YHZ-022'),
(14, 'C:\\wamp64\\www\\images\\14桃花妆\\THZ-001'),
(14, 'C:\\wamp64\\www\\images\\14桃花妆\\THZ-002'),
(14, 'C:\\wamp64\\www\\images\\14桃花妆\\THZ-003'),
(14, 'C:\\wamp64\\www\\images\\14桃花妆\\THZ-004'),
(14, 'C:\\wamp64\\www\\images\\14桃花妆\\THZ-005'),
(14, 'C:\\wamp64\\www\\images\\14桃花妆\\THZ-006'),
(14, 'C:\\wamp64\\www\\images\\14桃花妆\\THZ-007'),
(15, 'C:\\wamp64\\www\\images\\15主持人妆\\ZCRZ-001'),
(15, 'C:\\wamp64\\www\\images\\15主持人妆\\ZCRZ-002'),
(15, 'C:\\wamp64\\www\\images\\15主持人妆\\ZCRZ-003'),
(15, 'C:\\wamp64\\www\\images\\15主持人妆\\ZCRZ-004'),
(15, 'C:\\wamp64\\www\\images\\15主持人妆\\ZCRZ-005'),
(15, 'C:\\wamp64\\www\\images\\15主持人妆\\ZCRZ-006'),
(15, 'C:\\wamp64\\www\\images\\15主持人妆\\ZCRZ-007'),
(15, 'C:\\wamp64\\www\\images\\15主持人妆\\ZCRZ-008'),
(15, 'C:\\wamp64\\www\\images\\15主持人妆\\ZCRZ-009'),
(16, 'C:\\wamp64\\www\\images\\16舞台妆\\WTZ-001'),
(16, 'C:\\wamp64\\www\\images\\16舞台妆\\WTZ-002'),
(16, 'C:\\wamp64\\www\\images\\16舞台妆\\WTZ-003'),
(16, 'C:\\wamp64\\www\\images\\16舞台妆\\WTZ-004'),
(16, 'C:\\wamp64\\www\\images\\16舞台妆\\WTZ-005'),
(16, 'C:\\wamp64\\www\\images\\16舞台妆\\WTZ-006'),
(16, 'C:\\wamp64\\www\\images\\16舞台妆\\WTZ-007'),
(17, 'C:\\wamp64\\www\\images\\17名媛妆\\MYZ-001'),
(17, 'C:\\wamp64\\www\\images\\17名媛妆\\MYZ-002'),
(17, 'C:\\wamp64\\www\\images\\17名媛妆\\MYZ-003'),
(17, 'C:\\wamp64\\www\\images\\17名媛妆\\MYZ-004'),
(17, 'C:\\wamp64\\www\\images\\17名媛妆\\MYZ-005'),
(17, 'C:\\wamp64\\www\\images\\17名媛妆\\MYZ-006'),
(17, 'C:\\wamp64\\www\\images\\17名媛妆\\MYZ-007'),
(17, 'C:\\wamp64\\www\\images\\17名媛妆\\MYZ-008'),
(17, 'C:\\wamp64\\www\\images\\17名媛妆\\MYZ-009'),
(17, 'C:\\wamp64\\www\\images\\17名媛妆\\MYZ-010'),
(17, 'C:\\wamp64\\www\\images\\17名媛妆\\MYZ-011'),
(17, 'C:\\wamp64\\www\\images\\17名媛妆\\MYZ-012'),
(18, 'C:\\wamp64\\www\\images\\18通勤妆\\TQZ-001'),
(18, 'C:\\wamp64\\www\\images\\18通勤妆\\TQZ-002'),
(18, 'C:\\wamp64\\www\\images\\18通勤妆\\TQZ-003'),
(18, 'C:\\wamp64\\www\\images\\18通勤妆\\TQZ-004'),
(18, 'C:\\wamp64\\www\\images\\18通勤妆\\TQZ-005'),
(18, 'C:\\wamp64\\www\\images\\18通勤妆\\TQZ-006'),
(18, 'C:\\wamp64\\www\\images\\18通勤妆\\TQZ-007'),
(18, 'C:\\wamp64\\www\\images\\18通勤妆\\TQZ-008'),
(18, 'C:\\wamp64\\www\\images\\18通勤妆\\TQZ-009'),
(18, 'C:\\wamp64\\www\\images\\18通勤妆\\TQZ-010'),
(18, 'C:\\wamp64\\www\\images\\18通勤妆\\TQZ-011'),
(18, 'C:\\wamp64\\www\\images\\18通勤妆\\TQZ-012'),
(19, 'C:\\wamp64\\www\\images\\19新娘妆\\XNZ-001'),
(19, 'C:\\wamp64\\www\\images\\19新娘妆\\XNZ-002'),
(19, 'C:\\wamp64\\www\\images\\19新娘妆\\XNZ-003'),
(19, 'C:\\wamp64\\www\\images\\19新娘妆\\XNZ-004'),
(19, 'C:\\wamp64\\www\\images\\19新娘妆\\XNZ-005'),
(19, 'C:\\wamp64\\www\\images\\19新娘妆\\XNZ-006'),
(19, 'C:\\wamp64\\www\\images\\19新娘妆\\XNZ-007'),
(19, 'C:\\wamp64\\www\\images\\19新娘妆\\XNZ-008'),
(19, 'C:\\wamp64\\www\\images\\19新娘妆\\XNZ-009'),
(19, 'C:\\wamp64\\www\\images\\19新娘妆\\XNZ-010'),
(19, 'C:\\wamp64\\www\\images\\19新娘妆\\XNZ-011'),
(19, 'C:\\wamp64\\www\\images\\19新娘妆\\XNZ-012'),
(19, 'C:\\wamp64\\www\\images\\19新娘妆\\XNZ-013'),
(19, 'C:\\wamp64\\www\\images\\19新娘妆\\XNZ-014'),
(20, 'C:\\wamp64\\www\\images\\20商务妆\\SWZ-001'),
(20, 'C:\\wamp64\\www\\images\\20商务妆\\SWZ-002'),
(20, 'C:\\wamp64\\www\\images\\20商务妆\\SWZ-003'),
(20, 'C:\\wamp64\\www\\images\\20商务妆\\SWZ-004'),
(20, 'C:\\wamp64\\www\\images\\20商务妆\\SWZ-005'),
(20, 'C:\\wamp64\\www\\images\\20商务妆\\SWZ-006'),
(20, 'C:\\wamp64\\www\\images\\20商务妆\\SWZ-007'),
(20, 'C:\\wamp64\\www\\images\\20商务妆\\SWZ-008'),
(20, 'C:\\wamp64\\www\\images\\20商务妆\\SWZ-009'),
(20, 'C:\\wamp64\\www\\images\\20商务妆\\SWZ-010'),
(20, 'C:\\wamp64\\www\\images\\20商务妆\\SWZ-011'),
(20, 'C:\\wamp64\\www\\images\\20商务妆\\SWZ-012'),
(20, 'C:\\wamp64\\www\\images\\20商务妆\\SWZ-013'),
(21, 'C:\\wamp64\\www\\images\\21辣妈妆\\LMZ-001'),
(21, 'C:\\wamp64\\www\\images\\21辣妈妆\\LMZ-002'),
(21, 'C:\\wamp64\\www\\images\\21辣妈妆\\LMZ-003'),
(21, 'C:\\wamp64\\www\\images\\21辣妈妆\\LMZ-004'),
(21, 'C:\\wamp64\\www\\images\\21辣妈妆\\LMZ-005'),
(21, 'C:\\wamp64\\www\\images\\21辣妈妆\\LMZ-006'),
(22, 'C:\\wamp64\\www\\images\\22女神妆\\nsz001'),
(22, 'C:\\wamp64\\www\\images\\22女神妆\\NSZ-002'),
(22, 'C:\\wamp64\\www\\images\\22女神妆\\NSZ-003'),
(22, 'C:\\wamp64\\www\\images\\22女神妆\\NSZ-004'),
(22, 'C:\\wamp64\\www\\images\\22女神妆\\NSZ-005'),
(22, 'C:\\wamp64\\www\\images\\22女神妆\\NSZ-006'),
(22, 'C:\\wamp64\\www\\images\\22女神妆\\NSZ-007'),
(22, 'C:\\wamp64\\www\\images\\22女神妆\\NSZ-008'),
(22, 'C:\\wamp64\\www\\images\\22女神妆\\NSZ-009'),
(22, 'C:\\wamp64\\www\\images\\22女神妆\\NSZ-010'),
(23, 'C:\\wamp64\\www\\images\\23网红妆\\WHZ-001'),
(23, 'C:\\wamp64\\www\\images\\23网红妆\\WHZ-002'),
(23, 'C:\\wamp64\\www\\images\\23网红妆\\WHZ-003'),
(23, 'C:\\wamp64\\www\\images\\23网红妆\\WHZ-004'),
(24, 'C:\\wamp64\\www\\images\\24混血妆\\HXZ-001'),
(24, 'C:\\wamp64\\www\\images\\24混血妆\\HXZ-002'),
(24, 'C:\\wamp64\\www\\images\\24混血妆\\HXZ-003'),
(24, 'C:\\wamp64\\www\\images\\24混血妆\\HXZ-004'),
(24, 'C:\\wamp64\\www\\images\\24混血妆\\HXZ-005'),
(24, 'C:\\wamp64\\www\\images\\24混血妆\\HXZ-006'),
(25, 'C:\\wamp64\\www\\images\\25宴会妆\\YHZ-001'),
(25, 'C:\\wamp64\\www\\images\\25宴会妆\\YHZ-002'),
(25, 'C:\\wamp64\\www\\images\\25宴会妆\\YHZ-003'),
(25, 'C:\\wamp64\\www\\images\\25宴会妆\\YHZ-004'),
(25, 'C:\\wamp64\\www\\images\\25宴会妆\\YHZ-005'),
(25, 'C:\\wamp64\\www\\images\\25宴会妆\\YHZ-006'),
(25, 'C:\\wamp64\\www\\images\\25宴会妆\\YHZ-007'),
(25, 'C:\\wamp64\\www\\images\\25宴会妆\\YHZ-008'),
(26, 'C:\\wamp64\\www\\images\\26生活妆\\SHZ-001'),
(26, 'C:\\wamp64\\www\\images\\26生活妆\\SHZ-002'),
(26, 'C:\\wamp64\\www\\images\\26生活妆\\SHZ-003'),
(26, 'C:\\wamp64\\www\\images\\26生活妆\\SHZ-004'),
(26, 'C:\\wamp64\\www\\images\\26生活妆\\SHZ-005'),
(26, 'C:\\wamp64\\www\\images\\26生活妆\\SHZ-006'),
(26, 'C:\\wamp64\\www\\images\\26生活妆\\SHZ-007'),
(26, 'C:\\wamp64\\www\\images\\26生活妆\\SHZ-008'),
(26, 'C:\\wamp64\\www\\images\\26生活妆\\SHZ-009'),
(26, 'C:\\wamp64\\www\\images\\26生活妆\\SHZ-010'),
(27, 'C:\\wamp64\\www\\images\\27休闲妆\\XXZ-001'),
(27, 'C:\\wamp64\\www\\images\\27休闲妆\\XXZ-002'),
(27, 'C:\\wamp64\\www\\images\\27休闲妆\\XXZ-003'),
(27, 'C:\\wamp64\\www\\images\\27休闲妆\\XXZ-004'),
(27, 'C:\\wamp64\\www\\images\\27休闲妆\\XXZ-005'),
(27, 'C:\\wamp64\\www\\images\\27休闲妆\\XXZ-006'),
(27, 'C:\\wamp64\\www\\images\\27休闲妆\\XXZ-007'),
(27, 'C:\\wamp64\\www\\images\\27休闲妆\\XXZ-008'),
(27, 'C:\\wamp64\\www\\images\\27休闲妆\\XXZ-009'),
(28, 'C:\\wamp64\\www\\images\\28运动妆\\YDZ-001'),
(28, 'C:\\wamp64\\www\\images\\28运动妆\\YDZ-002'),
(28, 'C:\\wamp64\\www\\images\\28运动妆\\YDZ-003'),
(28, 'C:\\wamp64\\www\\images\\28运动妆\\YDZ-004'),
(28, 'C:\\wamp64\\www\\images\\28运动妆\\YDZ-005'),
(28, 'C:\\wamp64\\www\\images\\28运动妆\\YDZ-006'),
(28, 'C:\\wamp64\\www\\images\\28运动妆\\YDZ-007'),
(28, 'C:\\wamp64\\www\\images\\28运动妆\\YDZ-008'),
(29, 'C:\\wamp64\\www\\images\\29受访妆\\MTZ-001'),
(29, 'C:\\wamp64\\www\\images\\29受访妆\\MTZ-002'),
(29, 'C:\\wamp64\\www\\images\\29受访妆\\MTZ-003'),
(29, 'C:\\wamp64\\www\\images\\29受访妆\\MTZ-004'),
(29, 'C:\\wamp64\\www\\images\\29受访妆\\MTZ-005'),
(29, 'C:\\wamp64\\www\\images\\29受访妆\\MTZ-006'),
(29, 'C:\\wamp64\\www\\images\\29受访妆\\MTZ-007'),
(29, 'C:\\wamp64\\www\\images\\29受访妆\\MTZ-008'),
(29, 'C:\\wamp64\\www\\images\\29受访妆\\MTZ-009'),
(30, 'C:\\wamp64\\www\\images\\30PARTY聚会妆\\JHZ-001'),
(30, 'C:\\wamp64\\www\\images\\30PARTY聚会妆\\JHZ-002'),
(30, 'C:\\wamp64\\www\\images\\30PARTY聚会妆\\JHZ-003'),
(30, 'C:\\wamp64\\www\\images\\30PARTY聚会妆\\JHZ-004'),
(30, 'C:\\wamp64\\www\\images\\30PARTY聚会妆\\JHZ-005'),
(31, 'C:\\wamp64\\www\\images\\31律师妆\\LSZ-001'),
(31, 'C:\\wamp64\\www\\images\\31律师妆\\LSZ-002'),
(31, 'C:\\wamp64\\www\\images\\31律师妆\\LSZ-003'),
(31, 'C:\\wamp64\\www\\images\\31律师妆\\LSZ-004'),
(31, 'C:\\wamp64\\www\\images\\31律师妆\\LSZ-005'),
(31, 'C:\\wamp64\\www\\images\\31律师妆\\LSZ-006'),
(31, 'C:\\wamp64\\www\\images\\31律师妆\\LSZ-007'),
(31, 'C:\\wamp64\\www\\images\\31律师妆\\LSZ-008'),
(31, 'C:\\wamp64\\www\\images\\31律师妆\\LSZ-009'),
(32, 'C:\\wamp64\\www\\images\\32教师妆\\LSZ-001'),
(32, 'C:\\wamp64\\www\\images\\32教师妆\\LSZ-002'),
(32, 'C:\\wamp64\\www\\images\\32教师妆\\LSZ-003'),
(32, 'C:\\wamp64\\www\\images\\32教师妆\\LSZ-004'),
(32, 'C:\\wamp64\\www\\images\\32教师妆\\LSZ-005'),
(32, 'C:\\wamp64\\www\\images\\32教师妆\\LSZ-006'),
(33, 'C:\\wamp64\\www\\images\\33童星妆\\TXZ-001'),
(33, 'C:\\wamp64\\www\\images\\33童星妆\\TXZ-002'),
(33, 'C:\\wamp64\\www\\images\\33童星妆\\TXZ-003'),
(33, 'C:\\wamp64\\www\\images\\33童星妆\\TXZ-004'),
(33, 'C:\\wamp64\\www\\images\\33童星妆\\TXZ-005'),
(33, 'C:\\wamp64\\www\\images\\33童星妆\\TXZ-006'),
(33, 'C:\\wamp64\\www\\images\\33童星妆\\TXZ-007'),
(34, 'C:\\wamp64\\www\\images\\34公务员妆\\GWZ-001'),
(34, 'C:\\wamp64\\www\\images\\34公务员妆\\GWZ-002'),
(34, 'C:\\wamp64\\www\\images\\34公务员妆\\GWZ-003'),
(34, 'C:\\wamp64\\www\\images\\34公务员妆\\GWZ-004'),
(34, 'C:\\wamp64\\www\\images\\34公务员妆\\GWZ-005'),
(34, 'C:\\wamp64\\www\\images\\34公务员妆\\GWZ-006'),
(34, 'C:\\wamp64\\www\\images\\34公务员妆\\GWZ-007'),
(34, 'C:\\wamp64\\www\\images\\34公务员妆\\GWZ-008'),
(35, 'C:\\wamp64\\www\\images\\35总裁妆\\ZCZ-001'),
(35, 'C:\\wamp64\\www\\images\\35总裁妆\\ZCZ-002'),
(35, 'C:\\wamp64\\www\\images\\35总裁妆\\ZCZ-003'),
(35, 'C:\\wamp64\\www\\images\\35总裁妆\\ZCZ-004'),
(35, 'C:\\wamp64\\www\\images\\35总裁妆\\ZCZ-005'),
(35, 'C:\\wamp64\\www\\images\\35总裁妆\\ZCZ-006'),
(36, 'C:\\wamp64\\www\\images\\36毕业妆\\BYZ-001'),
(36, 'C:\\wamp64\\www\\images\\36毕业妆\\BYZ-002'),
(36, 'C:\\wamp64\\www\\images\\36毕业妆\\BYZ-003'),
(36, 'C:\\wamp64\\www\\images\\36毕业妆\\BYZ-004'),
(36, 'C:\\wamp64\\www\\images\\36毕业妆\\BYZ-005'),
(36, 'C:\\wamp64\\www\\images\\36毕业妆\\BYZ-006'),
(36, 'C:\\wamp64\\www\\images\\36毕业妆\\BYZ-006'),
(36, 'C:\\wamp64\\www\\images\\36毕业妆\\BYZ-006'),
(36, 'C:\\wamp64\\www\\images\\36毕业妆\\BYZ-006'),
(36, 'C:\\wamp64\\www\\images\\36毕业妆\\BYZ-006'),
(37, 'C:\\wamp64\\www\\images\\37模特妆\\MTZ-001'),
(37, 'C:\\wamp64\\www\\images\\37模特妆\\MTZ-002'),
(37, 'C:\\wamp64\\www\\images\\37模特妆\\MTZ-003'),
(37, 'C:\\wamp64\\www\\images\\37模特妆\\MTZ-004'),
(37, 'C:\\wamp64\\www\\images\\37模特妆\\MTZ-005'),
(37, 'C:\\wamp64\\www\\images\\37模特妆\\MTZ-006'),
(37, 'C:\\wamp64\\www\\images\\37模特妆\\MTZ-007'),
(37, 'C:\\wamp64\\www\\images\\37模特妆\\MTZ-008'),
(37, 'C:\\wamp64\\www\\images\\37模特妆\\MTZ-009'),
(37, 'C:\\wamp64\\www\\images\\37模特妆\\MTZ-010'),
(37, 'C:\\wamp64\\www\\images\\37模特妆\\MTZ-011'),
(38, 'C:\\wamp64\\www\\images\\38办公白领妆\\BLZ-001'),
(38, 'C:\\wamp64\\www\\images\\38办公白领妆\\BLZ-002'),
(38, 'C:\\wamp64\\www\\images\\38办公白领妆\\BLZ-003'),
(38, 'C:\\wamp64\\www\\images\\38办公白领妆\\BLZ-004'),
(38, 'C:\\wamp64\\www\\images\\38办公白领妆\\BLZ-005'),
(38, 'C:\\wamp64\\www\\images\\38办公白领妆\\BLZ-006'),
(38, 'C:\\wamp64\\www\\images\\38办公白领妆\\BLZ-007'),
(38, 'C:\\wamp64\\www\\images\\38办公白领妆\\BLZ-008'),
(38, 'C:\\wamp64\\www\\images\\38办公白领妆\\BLZ-009'),
(39, 'C:\\wamp64\\www\\images\\39网络主播妆\\WLZ-001'),
(39, 'C:\\wamp64\\www\\images\\39网络主播妆\\WLZ-002'),
(39, 'C:\\wamp64\\www\\images\\39网络主播妆\\WLZ-003'),
(39, 'C:\\wamp64\\www\\images\\39网络主播妆\\WLZ-004'),
(40, 'C:\\wamp64\\www\\images\\40上市公司CEO妆\\SSZ-001'),
(40, 'C:\\wamp64\\www\\images\\40上市公司CEO妆\\SSZ-002'),
(40, 'C:\\wamp64\\www\\images\\40上市公司CEO妆\\SSZ-003'),
(40, 'C:\\wamp64\\www\\images\\40上市公司CEO妆\\SSZ-004'),
(40, 'C:\\wamp64\\www\\images\\40上市公司CEO妆\\SSZ-005'),
(41, 'C:\\wamp64\\www\\images\\41明星咖妆\\MXZ-001'),
(41, 'C:\\wamp64\\www\\images\\41明星咖妆\\MXZ-002'),
(41, 'C:\\wamp64\\www\\images\\41明星咖妆\\MXZ-003'),
(41, 'C:\\wamp64\\www\\images\\41明星咖妆\\MXZ-004'),
(41, 'C:\\wamp64\\www\\images\\41明星咖妆\\MXZ-005'),
(42, 'C:\\wamp64\\www\\images\\42职场精英妆\\JYZ-001'),
(42, 'C:\\wamp64\\www\\images\\42职场精英妆\\JYZ-002'),
(42, 'C:\\wamp64\\www\\images\\42职场精英妆\\JYZ-003'),
(42, 'C:\\wamp64\\www\\images\\42职场精英妆\\JYZ-004'),
(42, 'C:\\wamp64\\www\\images\\42职场精英妆\\JYZ-005'),
(42, 'C:\\wamp64\\www\\images\\42职场精英妆\\JYZ-006'),
(43, 'C:\\wamp64\\www\\images\\43职场小白妆\\XBZ-001'),
(43, 'C:\\wamp64\\www\\images\\43职场小白妆\\XBZ-002'),
(43, 'C:\\wamp64\\www\\images\\43职场小白妆\\XBZ-003'),
(43, 'C:\\wamp64\\www\\images\\43职场小白妆\\XBZ-004'),
(43, 'C:\\wamp64\\www\\images\\43职场小白妆\\XBZ-005'),
(43, 'C:\\wamp64\\www\\images\\43职场小白妆\\XBZ-006'),
(43, 'C:\\wamp64\\www\\images\\43职场小白妆\\XBZ-007'),
(43, 'C:\\wamp64\\www\\images\\43职场小白妆\\XBZ-008'),
(43, 'C:\\wamp64\\www\\images\\43职场小白妆\\XBZ-009'),
(43, 'C:\\wamp64\\www\\images\\43职场小白妆\\XBZ-010'),
(43, 'C:\\wamp64\\www\\images\\43职场小白妆\\XBZ-011'),
(44, 'C:\\wamp64\\www\\images\\44晨妆\\CZ-001'),
(44, 'C:\\wamp64\\www\\images\\44晨妆\\CZ-002'),
(44, 'C:\\wamp64\\www\\images\\44晨妆\\CZ-003'),
(44, 'C:\\wamp64\\www\\images\\44晨妆\\CZ-004'),
(44, 'C:\\wamp64\\www\\images\\44晨妆\\CZ-005'),
(44, 'C:\\wamp64\\www\\images\\44晨妆\\CZ-006'),
(45, 'C:\\wamp64\\www\\images\\45午间妆\\WJZ-001'),
(45, 'C:\\wamp64\\www\\images\\45午间妆\\WJZ-002'),
(45, 'C:\\wamp64\\www\\images\\45午间妆\\WJZ-003'),
(45, 'C:\\wamp64\\www\\images\\45午间妆\\WJZ-004'),
(45, 'C:\\wamp64\\www\\images\\45午间妆\\WJZ-005'),
(45, 'C:\\wamp64\\www\\images\\45午间妆\\WJZ-006'),
(45, 'C:\\wamp64\\www\\images\\45午间妆\\WJZ-007'),
(45, 'C:\\wamp64\\www\\images\\45午间妆\\WJZ-008'),
(45, 'C:\\wamp64\\www\\images\\45午间妆\\WJZ-009'),
(46, 'C:\\wamp64\\www\\images\\46晚妆\\WZ-001'),
(46, 'C:\\wamp64\\www\\images\\46晚妆\\WZ-002'),
(46, 'C:\\wamp64\\www\\images\\46晚妆\\WZ-003'),
(46, 'C:\\wamp64\\www\\images\\46晚妆\\WZ-004'),
(46, 'C:\\wamp64\\www\\images\\46晚妆\\WZ-005'),
(46, 'C:\\wamp64\\www\\images\\46晚妆\\WZ-006'),
(47, 'C:\\wamp64\\www\\images\\47晚礼妆\\WLZ-001'),
(47, 'C:\\wamp64\\www\\images\\47晚礼妆\\WLZ-002'),
(47, 'C:\\wamp64\\www\\images\\47晚礼妆\\WLZ-003'),
(47, 'C:\\wamp64\\www\\images\\47晚礼妆\\WLZ-004'),
(47, 'C:\\wamp64\\www\\images\\47晚礼妆\\WLZ-005'),
(47, 'C:\\wamp64\\www\\images\\47晚礼妆\\WLZ-006'),
(47, 'C:\\wamp64\\www\\images\\47晚礼妆\\WLZ-007'),
(47, 'C:\\wamp64\\www\\images\\47晚礼妆\\WLZ-008'),
(47, 'C:\\wamp64\\www\\images\\47晚礼妆\\WLZ-009'),
(47, 'C:\\wamp64\\www\\images\\47晚礼妆\\WLZ-010'),
(48, 'C:\\wamp64\\www\\images\\48减龄妆\\JLZ-001'),
(48, 'C:\\wamp64\\www\\images\\48减龄妆\\JLZ-002'),
(48, 'C:\\wamp64\\www\\images\\48减龄妆\\JLZ-003'),
(48, 'C:\\wamp64\\www\\images\\48减龄妆\\JLZ-004'),
(48, 'C:\\wamp64\\www\\images\\48减龄妆\\JLZ-005'),
(48, 'C:\\wamp64\\www\\images\\48减龄妆\\JLZ-006'),
(48, 'C:\\wamp64\\www\\images\\48减龄妆\\JLZ-007'),
(48, 'C:\\wamp64\\www\\images\\48减龄妆\\JLZ-008'),
(49, 'C:\\wamp64\\www\\images\\49元气妆\\YQZ-001'),
(49, 'C:\\wamp64\\www\\images\\49元气妆\\YQZ-002'),
(49, 'C:\\wamp64\\www\\images\\49元气妆\\YQZ-003'),
(49, 'C:\\wamp64\\www\\images\\49元气妆\\YQZ-004'),
(49, 'C:\\wamp64\\www\\images\\49元气妆\\YQZ-005'),
(49, 'C:\\wamp64\\www\\images\\49元气妆\\YQZ-006'),
(50, 'C:\\wamp64\\www\\images\\50闺蜜妆\\GMZ-001'),
(50, 'C:\\wamp64\\www\\images\\50闺蜜妆\\GMZ-002'),
(50, 'C:\\wamp64\\www\\images\\50闺蜜妆\\GMZ-003'),
(50, 'C:\\wamp64\\www\\images\\50闺蜜妆\\GMZ-004'),
(50, 'C:\\wamp64\\www\\images\\50闺蜜妆\\GMZ-005'),
(50, 'C:\\wamp64\\www\\images\\50闺蜜妆\\GMZ-006'),
(50, 'C:\\wamp64\\www\\images\\50闺蜜妆\\GMZ-007'),
(51, 'C:\\wamp64\\www\\images\\51伴娘妆\\BNZ-001'),
(51, 'C:\\wamp64\\www\\images\\51伴娘妆\\BNZ-002'),
(51, 'C:\\wamp64\\www\\images\\51伴娘妆\\BNZ-003'),
(51, 'C:\\wamp64\\www\\images\\51伴娘妆\\BNZ-004'),
(51, 'C:\\wamp64\\www\\images\\51伴娘妆\\BNZ-005'),
(51, 'C:\\wamp64\\www\\images\\51伴娘妆\\BNZ-006'),
(51, 'C:\\wamp64\\www\\images\\51伴娘妆\\BNZ-007'),
(52, 'C:\\wamp64\\www\\images\\52开运妆\\KYZ-001'),
(52, 'C:\\wamp64\\www\\images\\52开运妆\\KYZ-002'),
(52, 'C:\\wamp64\\www\\images\\52开运妆\\KYZ-003'),
(53, 'C:\\wamp64\\www\\images\\53卧蚕妆\\WCZ-001'),
(53, 'C:\\wamp64\\www\\images\\53卧蚕妆\\WCZ-002'),
(53, 'C:\\wamp64\\www\\images\\53卧蚕妆\\WCZ-003'),
(53, 'C:\\wamp64\\www\\images\\53卧蚕妆\\WCZ-004'),
(53, 'C:\\wamp64\\www\\images\\53卧蚕妆\\WCZ-005'),
(53, 'C:\\wamp64\\www\\images\\53卧蚕妆\\WCZ-006'),
(53, 'C:\\wamp64\\www\\images\\53卧蚕妆\\WCZ-007'),
(53, 'C:\\wamp64\\www\\images\\53卧蚕妆\\WCZ-008'),
(53, 'C:\\wamp64\\www\\images\\53卧蚕妆\\WCZ-009'),
(53, 'C:\\wamp64\\www\\images\\53卧蚕妆\\WCZ-010'),
(53, 'C:\\wamp64\\www\\images\\53卧蚕妆\\WCZ-011'),
(54, 'C:\\wamp64\\www\\images\\54自然证照妆\\ZJZ-001'),
(54, 'C:\\wamp64\\www\\images\\54自然证照妆\\ZJZ-002'),
(54, 'C:\\wamp64\\www\\images\\54自然证照妆\\ZJZ-003'),
(54, 'C:\\wamp64\\www\\images\\54自然证照妆\\ZJZ-004'),
(54, 'C:\\wamp64\\www\\images\\54自然证照妆\\ZJZ-005'),
(54, 'C:\\wamp64\\www\\images\\54自然证照妆\\ZJZ-006'),
(54, 'C:\\wamp64\\www\\images\\54自然证照妆\\ZJZ-007'),
(54, 'C:\\wamp64\\www\\images\\54自然证照妆\\ZJZ-008');

-- --------------------------------------------------------

--
-- 表的结构 `male_eyebrow`
--

CREATE TABLE `male_eyebrow` (
  `male_eyebrow_id` smallint(11) NOT NULL,
  `male_eyebrow_name` char(20) CHARACTER SET gb2312 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `male_eyebrow`
--

INSERT INTO `male_eyebrow` (`male_eyebrow_id`, `male_eyebrow_name`) VALUES
(1, NULL),
(2, NULL),
(3, NULL),
(4, NULL),
(5, NULL),
(6, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `male_hair_style`
--

CREATE TABLE `male_hair_style` (
  `male_hair_style_id` smallint(11) NOT NULL,
  `male_hair_style_name` char(20) CHARACTER SET gb2312 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `male_hair_style`
--

INSERT INTO `male_hair_style` (`male_hair_style_id`, `male_hair_style_name`) VALUES
(1, '侧分'),
(2, '寸头'),
(3, '大背头'),
(4, '飞机头'),
(5, '卷发'),
(6, '莫西干'),
(7, '庞克'),
(8, '蓬巴杜'),
(9, '平刘海'),
(10, '睡不醒头'),
(11, '斜刘海'),
(12, '中分');

-- --------------------------------------------------------

--
-- 表的结构 `rec_blusher_rgb_heuristic`
--

CREATE TABLE `rec_blusher_rgb_heuristic` (
  `age_id` smallint(11) NOT NULL,
  `skin_id` smallint(11) NOT NULL,
  `blusher_rgb_id` smallint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `rec_blusher_rgb_heuristic`
--

INSERT INTO `rec_blusher_rgb_heuristic` (`age_id`, `skin_id`, `blusher_rgb_id`) VALUES
(1, 1, 1),
(1, 1, 2),
(1, 1, 3),
(1, 2, 1),
(1, 2, 2),
(1, 2, 3),
(1, 3, 1),
(1, 3, 2),
(1, 3, 3),
(2, 1, 4),
(2, 1, 5),
(2, 2, 6),
(2, 2, 7),
(2, 2, 8),
(2, 3, 9),
(2, 3, 10),
(2, 3, 11),
(3, 1, 4),
(3, 1, 5),
(3, 2, 6),
(3, 3, 9),
(3, 3, 10),
(4, 1, 4),
(4, 1, 5),
(4, 2, 6),
(4, 3, 9),
(4, 3, 10),
(5, 1, 4),
(5, 1, 12),
(5, 1, 13),
(5, 2, 6),
(5, 2, 8),
(5, 3, 9),
(5, 3, 10),
(5, 3, 11),
(5, 3, 15),
(6, 1, 4),
(6, 1, 12),
(6, 1, 13),
(6, 2, 6),
(6, 2, 14),
(6, 2, 16),
(6, 3, 10),
(6, 3, 11),
(6, 3, 17),
(7, 1, 13),
(7, 1, 12),
(7, 2, 14),
(7, 2, 16),
(7, 3, 9),
(7, 3, 11),
(7, 3, 17);

-- --------------------------------------------------------

--
-- 表的结构 `rec_concealer_rgb_heuristic`
--

CREATE TABLE `rec_concealer_rgb_heuristic` (
  `age_id` smallint(11) NOT NULL,
  `skin_id` smallint(11) NOT NULL,
  `concealer_rgb_id` smallint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `rec_concealer_rgb_heuristic`
--

INSERT INTO `rec_concealer_rgb_heuristic` (`age_id`, `skin_id`, `concealer_rgb_id`) VALUES
(1, 2, 3),
(1, 2, 4),
(1, 2, 5),
(1, 3, 6),
(1, 3, 7),
(2, 1, 1),
(2, 1, 7),
(2, 1, 8),
(2, 1, 9),
(2, 1, 13),
(2, 2, 3),
(2, 2, 5),
(2, 2, 10),
(2, 2, 11),
(2, 3, 6),
(3, 1, 1),
(3, 1, 7),
(3, 1, 8),
(3, 1, 9),
(3, 1, 13),
(3, 2, 3),
(3, 2, 5),
(3, 2, 10),
(3, 2, 11),
(3, 3, 6),
(3, 3, 7),
(4, 1, 1),
(4, 1, 7),
(4, 1, 8),
(4, 1, 9),
(4, 1, 13),
(4, 2, 3),
(4, 2, 5),
(4, 2, 10),
(4, 2, 11),
(4, 3, 6),
(5, 1, 1),
(5, 1, 7),
(5, 1, 8),
(5, 1, 9),
(5, 1, 13),
(5, 2, 3),
(5, 2, 5),
(5, 2, 10),
(5, 2, 11),
(5, 3, 6),
(5, 3, 7),
(6, 1, 1),
(6, 1, 14),
(6, 1, 13),
(6, 2, 3),
(6, 2, 9),
(6, 2, 10),
(6, 3, 6),
(6, 3, 15),
(7, 1, 1),
(7, 1, 14),
(7, 1, 13),
(7, 2, 3),
(7, 2, 9),
(7, 2, 10),
(7, 3, 6),
(7, 3, 15);

-- --------------------------------------------------------

--
-- 表的结构 `rec_eyebrow_rgb_heuristic`
--

CREATE TABLE `rec_eyebrow_rgb_heuristic` (
  `age_id` smallint(11) NOT NULL,
  `skin_id` smallint(11) NOT NULL,
  `eyebrow_rgb_id` smallint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `rec_eyebrow_rgb_heuristic`
--

INSERT INTO `rec_eyebrow_rgb_heuristic` (`age_id`, `skin_id`, `eyebrow_rgb_id`) VALUES
(1, 1, 1),
(1, 1, 2),
(1, 1, 3),
(1, 1, 4),
(1, 1, 5),
(1, 2, 1),
(1, 2, 2),
(1, 2, 3),
(1, 2, 4),
(1, 2, 5),
(1, 3, 1),
(1, 3, 2),
(1, 3, 3),
(1, 3, 4),
(1, 3, 5),
(2, 1, 6),
(2, 1, 7),
(2, 1, 8),
(2, 2, 1),
(2, 2, 9),
(2, 3, 3),
(3, 1, 1),
(3, 1, 6),
(3, 1, 7),
(3, 1, 10),
(3, 3, 12),
(3, 3, 3),
(3, 3, 6),
(3, 3, 13),
(4, 1, 1),
(4, 1, 6),
(4, 1, 7),
(4, 1, 8),
(4, 2, 1),
(4, 2, 9),
(4, 2, 11),
(4, 3, 12),
(4, 3, 13),
(5, 1, 1),
(5, 1, 6),
(5, 1, 7),
(5, 1, 8),
(5, 1, 10),
(5, 2, 9),
(5, 2, 11),
(5, 2, 1),
(5, 3, 12),
(5, 3, 13),
(6, 1, 1),
(6, 1, 6),
(6, 1, 7),
(6, 1, 8),
(6, 1, 10),
(6, 2, 9),
(6, 2, 11),
(6, 2, 1),
(6, 3, 12),
(6, 3, 13),
(6, 3, 3),
(6, 3, 6),
(7, 1, 1),
(7, 1, 6),
(7, 1, 7),
(7, 2, 1),
(7, 3, 3),
(7, 3, 6),
(7, 3, 12);

-- --------------------------------------------------------

--
-- 表的结构 `rec_eyelash_heuristic`
--

CREATE TABLE `rec_eyelash_heuristic` (
  `makeup_style_id` smallint(11) NOT NULL,
  `eyelash_id` smallint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `rec_eyelash_heuristic`
--

INSERT INTO `rec_eyelash_heuristic` (`makeup_style_id`, `eyelash_id`) VALUES
(1, 1),
(15, 1),
(18, 1),
(21, 1),
(26, 1),
(27, 1),
(31, 1),
(32, 1),
(34, 1),
(48, 1),
(42, 1),
(44, 1),
(45, 1),
(46, 1),
(2, 2),
(3, 2),
(33, 2),
(53, 2),
(49, 2),
(4, 2),
(5, 2),
(6, 2),
(50, 3),
(43, 3),
(28, 3),
(10, 4),
(12, 4),
(25, 4),
(29, 4),
(47, 4),
(13, 5),
(14, 5),
(8, 5),
(7, 5),
(22, 5),
(36, 5),
(38, 5),
(9, 6),
(20, 6),
(35, 6),
(40, 6),
(11, 7),
(17, 7),
(23, 7),
(24, 7),
(39, 7),
(30, 7),
(37, 7),
(41, 7),
(52, 7),
(51, 7),
(19, 7);

-- --------------------------------------------------------

--
-- 表的结构 `rec_eyeline_region_heuristic`
--

CREATE TABLE `rec_eyeline_region_heuristic` (
  `eye_style_id` smallint(11) NOT NULL,
  `eyeline_region_id` smallint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `rec_eyeline_region_heuristic`
--

INSERT INTO `rec_eyeline_region_heuristic` (`eye_style_id`, `eyeline_region_id`) VALUES
(3, 1),
(3, 2),
(7, 3),
(6, 4),
(1, 5),
(1, 6),
(2, 7),
(3, 7),
(4, 7);

-- --------------------------------------------------------

--
-- 表的结构 `rec_eyemakeup_rgb_heuristic`
--

CREATE TABLE `rec_eyemakeup_rgb_heuristic` (
  `age_id` smallint(11) NOT NULL,
  `skin_id` smallint(11) NOT NULL,
  `eyemakeup_rgb_id` smallint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `rec_eyemakeup_rgb_heuristic`
--

INSERT INTO `rec_eyemakeup_rgb_heuristic` (`age_id`, `skin_id`, `eyemakeup_rgb_id`) VALUES
(1, 1, 1),
(1, 1, 7),
(1, 1, 14),
(1, 1, 15),
(1, 1, 16),
(1, 2, 1),
(1, 2, 7),
(1, 2, 14),
(1, 2, 15),
(1, 2, 16),
(1, 3, 1),
(1, 3, 7),
(1, 3, 14),
(1, 3, 15),
(1, 3, 16),
(2, 1, 1),
(2, 1, 7),
(2, 1, 8),
(2, 1, 9),
(2, 1, 10),
(2, 1, 13),
(2, 1, 16),
(2, 2, 1),
(2, 2, 7),
(2, 2, 8),
(2, 2, 9),
(2, 2, 10),
(2, 2, 13),
(2, 2, 16),
(2, 3, 1),
(2, 3, 7),
(2, 3, 8),
(2, 3, 9),
(2, 3, 10),
(2, 3, 13),
(2, 3, 16),
(3, 1, 1),
(3, 1, 3),
(3, 1, 7),
(3, 1, 10),
(3, 1, 11),
(3, 1, 16),
(3, 2, 1),
(3, 2, 3),
(3, 2, 7),
(3, 2, 10),
(3, 2, 11),
(3, 2, 16),
(3, 3, 1),
(3, 3, 3),
(3, 3, 7),
(3, 3, 10),
(3, 3, 11),
(3, 3, 16),
(4, 1, 1),
(4, 1, 3),
(4, 1, 7),
(4, 1, 10),
(4, 1, 11),
(4, 1, 8),
(4, 1, 9),
(4, 1, 16),
(4, 2, 1),
(4, 2, 3),
(4, 2, 7),
(4, 2, 10),
(4, 2, 11),
(4, 2, 8),
(4, 2, 9),
(4, 2, 16),
(4, 3, 1),
(4, 3, 3),
(4, 3, 7),
(4, 3, 10),
(4, 3, 11),
(4, 3, 8),
(4, 3, 9),
(4, 3, 16),
(5, 1, 1),
(5, 1, 3),
(5, 1, 12),
(5, 1, 10),
(5, 1, 11),
(5, 1, 16),
(5, 2, 1),
(5, 2, 3),
(5, 2, 12),
(5, 2, 10),
(5, 2, 11),
(5, 2, 16),
(5, 3, 1),
(5, 3, 3),
(5, 3, 12),
(5, 3, 10),
(5, 3, 11),
(5, 3, 16),
(6, 1, 1),
(6, 1, 3),
(6, 1, 4),
(6, 1, 7),
(6, 1, 8),
(6, 1, 9),
(6, 2, 1),
(6, 2, 3),
(6, 2, 4),
(6, 2, 7),
(6, 2, 8),
(6, 2, 9),
(6, 3, 1),
(6, 3, 3),
(6, 3, 4),
(6, 3, 7),
(6, 3, 8),
(6, 3, 9),
(7, 1, 1),
(7, 1, 3),
(7, 1, 4),
(7, 1, 2),
(7, 1, 5),
(7, 1, 6),
(7, 2, 1),
(7, 2, 3),
(7, 2, 4),
(7, 2, 2),
(7, 2, 5),
(7, 2, 6),
(7, 3, 1),
(7, 3, 3),
(7, 3, 4),
(7, 3, 2),
(7, 3, 5),
(7, 3, 6);

-- --------------------------------------------------------

--
-- 表的结构 `rec_foundation_rgb_heuristic`
--

CREATE TABLE `rec_foundation_rgb_heuristic` (
  `age_id` smallint(11) NOT NULL,
  `skin_id` smallint(11) NOT NULL,
  `foundation_rgb_id` smallint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `rec_foundation_rgb_heuristic`
--

INSERT INTO `rec_foundation_rgb_heuristic` (`age_id`, `skin_id`, `foundation_rgb_id`) VALUES
(2, 1, 1),
(2, 1, 2),
(2, 1, 3),
(2, 2, 4),
(2, 2, 5),
(2, 2, 6),
(2, 2, 7),
(2, 3, 8),
(2, 3, 9),
(2, 3, 10),
(2, 3, 11),
(2, 3, 12),
(3, 1, 1),
(3, 1, 2),
(3, 1, 3),
(3, 2, 4),
(3, 2, 5),
(3, 2, 6),
(3, 2, 7),
(3, 3, 8),
(3, 3, 9),
(3, 3, 10),
(3, 3, 11),
(3, 3, 12),
(4, 1, 1),
(4, 1, 3),
(4, 2, 4),
(4, 2, 5),
(4, 2, 6),
(4, 2, 7),
(4, 3, 8),
(4, 3, 9),
(4, 3, 10),
(4, 3, 11),
(4, 3, 12),
(5, 1, 1),
(5, 1, 2),
(5, 1, 3),
(5, 2, 4),
(5, 2, 5),
(5, 2, 6),
(5, 2, 7),
(5, 3, 8),
(5, 3, 9),
(5, 3, 10),
(5, 3, 13),
(6, 1, 1),
(6, 1, 3),
(6, 2, 4),
(6, 2, 14),
(6, 2, 6),
(6, 2, 7),
(6, 3, 8),
(6, 3, 9),
(6, 3, 10),
(6, 3, 13),
(7, 1, 1),
(7, 1, 3),
(7, 2, 4),
(7, 2, 14),
(7, 2, 6),
(7, 2, 7),
(7, 3, 10),
(7, 3, 13),
(7, 3, 15),
(7, 3, 16);

-- --------------------------------------------------------

--
-- 表的结构 `rec_lipstick_rgb_heuristic`
--

CREATE TABLE `rec_lipstick_rgb_heuristic` (
  `age_id` smallint(11) NOT NULL,
  `skin_id` smallint(11) NOT NULL,
  `lipstick_rgb_id` smallint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `rec_lipstick_rgb_heuristic`
--

INSERT INTO `rec_lipstick_rgb_heuristic` (`age_id`, `skin_id`, `lipstick_rgb_id`) VALUES
(1, 1, 26),
(1, 2, 26),
(1, 3, 26),
(2, 1, 25),
(2, 2, 11),
(2, 2, 12),
(2, 3, 13),
(2, 3, 14),
(2, 3, 15),
(2, 3, 18),
(3, 1, 3),
(3, 1, 25),
(3, 2, 11),
(3, 2, 12),
(3, 2, 17),
(3, 3, 13),
(3, 3, 14),
(3, 3, 15),
(3, 3, 18),
(4, 1, 19),
(4, 1, 20),
(4, 1, 21),
(4, 2, 4),
(4, 2, 17),
(4, 2, 22),
(4, 3, 23),
(4, 3, 24),
(5, 1, 1),
(5, 1, 3),
(5, 1, 16),
(5, 1, 25),
(5, 2, 4),
(5, 2, 5),
(5, 2, 11),
(5, 2, 12),
(5, 2, 17),
(5, 3, 7),
(5, 3, 13),
(5, 3, 14),
(5, 3, 15),
(5, 3, 18),
(6, 1, 1),
(6, 1, 2),
(6, 1, 3),
(6, 1, 10),
(6, 1, 25),
(6, 2, 4),
(6, 2, 5),
(6, 2, 6),
(6, 2, 11),
(6, 2, 12),
(6, 3, 7),
(6, 3, 8),
(6, 3, 13),
(6, 3, 14),
(6, 3, 15),
(7, 1, 1),
(7, 1, 2),
(7, 1, 3),
(7, 2, 4),
(7, 2, 5),
(7, 2, 6),
(7, 3, 7),
(7, 3, 8);

-- --------------------------------------------------------

--
-- 表的结构 `rec_makeup_fixer_rgb_heuristic`
--

CREATE TABLE `rec_makeup_fixer_rgb_heuristic` (
  `age_id` smallint(11) NOT NULL,
  `skin_id` smallint(11) NOT NULL,
  `makeup_fixer_rgb_id` smallint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `rec_makeup_fixer_rgb_heuristic`
--

INSERT INTO `rec_makeup_fixer_rgb_heuristic` (`age_id`, `skin_id`, `makeup_fixer_rgb_id`) VALUES
(3, 1, 1),
(3, 1, 2),
(3, 2, 3),
(3, 2, 4),
(3, 2, 5),
(3, 3, 5),
(3, 3, 6),
(4, 1, 1),
(4, 1, 2),
(4, 2, 3),
(4, 2, 4),
(4, 2, 5),
(4, 3, 6),
(5, 1, 1),
(5, 1, 2),
(5, 2, 3),
(5, 2, 5),
(5, 3, 6),
(6, 1, 1),
(6, 1, 2),
(6, 2, 3),
(6, 2, 5),
(6, 3, 6),
(7, 1, 1),
(7, 1, 2),
(7, 2, 3),
(7, 2, 5),
(7, 3, 6);

-- --------------------------------------------------------

--
-- 表的结构 `rec_makeup_scene_heuristic`
--

CREATE TABLE `rec_makeup_scene_heuristic` (
  `age_id` smallint(6) NOT NULL,
  `makeup_scene_id` smallint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `rec_makeup_scene_heuristic`
--

INSERT INTO `rec_makeup_scene_heuristic` (`age_id`, `makeup_scene_id`) VALUES
(1, 1),
(4, 7),
(4, 12),
(4, 5),
(4, 8),
(5, 1),
(4, 1),
(4, 11),
(4, 13),
(4, 3),
(4, 14),
(4, 4),
(4, 15),
(4, 16),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 5),
(2, 4),
(3, 1),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(5, 17),
(5, 7),
(5, 18),
(5, 14),
(5, 19),
(5, 9),
(5, 20),
(6, 1),
(6, 21),
(6, 22),
(6, 7);

-- --------------------------------------------------------

--
-- 表的结构 `rec_makeup_style_heuristic`
--

CREATE TABLE `rec_makeup_style_heuristic` (
  `age_id` smallint(11) NOT NULL,
  `makeup_scene_id` smallint(11) NOT NULL,
  `makeup_style_id` smallint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `rec_makeup_style_heuristic`
--

INSERT INTO `rec_makeup_style_heuristic` (`age_id`, `makeup_scene_id`, `makeup_style_id`) VALUES
(1, 1, 2),
(1, 1, 3),
(1, 1, 33),
(1, 2, 16),
(1, 2, 33),
(1, 3, 33),
(1, 4, 3),
(2, 1, 53),
(2, 1, 49),
(2, 1, 6),
(2, 5, 4),
(2, 4, 6),
(3, 1, 8),
(3, 1, 22),
(3, 6, 13),
(3, 6, 14),
(3, 6, 7),
(3, 6, 8),
(3, 6, 22),
(3, 7, 38),
(3, 7, 43),
(3, 8, 50),
(3, 9, 36),
(3, 10, 43),
(4, 1, 52),
(4, 1, 17),
(4, 1, 24),
(4, 1, 41),
(4, 11, 17),
(4, 11, 11),
(4, 11, 30),
(4, 7, 23),
(4, 7, 39),
(4, 7, 37),
(4, 12, 19),
(4, 12, 51),
(4, 5, 30),
(4, 8, 30),
(4, 13, 39),
(4, 3, 41),
(4, 14, 23),
(4, 4, 41),
(4, 15, 41),
(4, 16, 52),
(5, 1, 9),
(5, 1, 3),
(5, 1, 26),
(5, 1, 27),
(5, 17, 15),
(5, 7, 15),
(5, 7, 18),
(5, 7, 20),
(5, 7, 31),
(5, 7, 32),
(5, 7, 34),
(5, 7, 35),
(5, 7, 42),
(5, 18, 20),
(5, 18, 35),
(5, 14, 21),
(5, 14, 15),
(5, 14, 31),
(5, 14, 32),
(5, 14, 34),
(5, 14, 35),
(5, 14, 42),
(5, 19, 21),
(5, 19, 48),
(5, 9, 44),
(5, 9, 45),
(5, 9, 46),
(5, 20, 27),
(6, 1, 10),
(6, 1, 12),
(6, 21, 25),
(6, 21, 47),
(6, 22, 29),
(6, 22, 10),
(6, 7, 40),
(7, 1, 10),
(7, 1, 12),
(7, 21, 25),
(7, 21, 47),
(7, 22, 29),
(7, 22, 10),
(7, 7, 40);

-- --------------------------------------------------------

--
-- 表的结构 `rec_shading_highlight_blusher_heuristic`
--

CREATE TABLE `rec_shading_highlight_blusher_heuristic` (
  `face_style_id` smallint(11) NOT NULL,
  `shading_region_id` smallint(11) NOT NULL,
  `high_light_region_id` smallint(11) NOT NULL,
  `blusher_region_id` smallint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `rec_shading_highlight_blusher_heuristic`
--

INSERT INTO `rec_shading_highlight_blusher_heuristic` (`face_style_id`, `shading_region_id`, `high_light_region_id`, `blusher_region_id`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5),
(6, 6, 6, 6),
(7, 7, 7, 7);

-- --------------------------------------------------------

--
-- 表的结构 `rec_shading_rgb_heuristic`
--

CREATE TABLE `rec_shading_rgb_heuristic` (
  `age_id` smallint(11) NOT NULL,
  `skin_id` smallint(11) NOT NULL,
  `shading_rgb_id` smallint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `rec_shading_rgb_heuristic`
--

INSERT INTO `rec_shading_rgb_heuristic` (`age_id`, `skin_id`, `shading_rgb_id`) VALUES
(2, 1, 1),
(2, 1, 2),
(2, 2, 3),
(2, 2, 4),
(2, 3, 5),
(3, 1, 1),
(3, 1, 2),
(3, 2, 3),
(3, 2, 4),
(3, 3, 5),
(4, 1, 1),
(4, 1, 2),
(4, 2, 3),
(4, 2, 4),
(4, 3, 5),
(5, 1, 1),
(5, 1, 2),
(5, 2, 3),
(5, 2, 4),
(5, 3, 5),
(6, 1, 1),
(6, 1, 2),
(6, 2, 3),
(6, 2, 4),
(6, 3, 5),
(7, 1, 1),
(7, 1, 2),
(7, 2, 3),
(7, 2, 4),
(7, 3, 5);

-- --------------------------------------------------------

--
-- 表的结构 `shading_region`
--

CREATE TABLE `shading_region` (
  `shading_region_id` smallint(11) NOT NULL,
  `shading_region_name` char(20) CHARACTER SET gb2312 DEFAULT NULL,
  `shading_region_template` char(20) CHARACTER SET gb2312 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `shading_region`
--

INSERT INTO `shading_region` (`shading_region_id`, `shading_region_name`, `shading_region_template`) VALUES
(1, '圆脸修容区域', NULL),
(2, '长脸修容区域', NULL),
(3, '椭圆脸修容区域', NULL),
(4, '梨形脸修容区域', NULL),
(5, '棱形脸修容区域', NULL),
(6, '心形脸修容区域', NULL),
(7, '方脸修容区域', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `shading_rgb`
--

CREATE TABLE `shading_rgb` (
  `shading_rgb_id` smallint(11) NOT NULL,
  `shading_rgb_name` char(20) CHARACTER SET gb2312 DEFAULT NULL,
  `shading_rgb` char(20) CHARACTER SET gb2312 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `shading_rgb`
--

INSERT INTO `shading_rgb` (`shading_rgb_id`, `shading_rgb_name`, `shading_rgb`) VALUES
(1, '米色', NULL),
(2, '白瓷色', NULL),
(3, '粉色', NULL),
(4, '自然色', NULL),
(5, '明亮色', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `skin`
--

CREATE TABLE `skin` (
  `skin_id` smallint(6) NOT NULL,
  `skin_name` char(20) CHARACTER SET gb2312 DEFAULT NULL,
  `skin_rgb` char(20) DEFAULT NULL,
  `skin_description` char(20) CHARACTER SET gb2312 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `skin`
--

INSERT INTO `skin` (`skin_id`, `skin_name`, `skin_rgb`, `skin_description`) VALUES
(1, '中性', NULL, '淡黄色'),
(2, '冷色', NULL, '偏白'),
(3, '暖色', NULL, '偏黄');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `user_id` int(8) NOT NULL,
  `occupation` char(20) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `gender` varchar(10) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `age_id` int(10) NOT NULL,
  `education` varchar(10) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `height` int(5) NOT NULL,
  `weight` int(5) NOT NULL,
  `face` varchar(10) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `eye` varchar(10) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `skin` varchar(10) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `spot` varchar(10) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`user_id`, `occupation`, `gender`, `age_id`, `education`, `height`, `weight`, `face`, `eye`, `skin`, `spot`) VALUES
(1, '高级白领', '女', 4, '本科', 165, 53, '圆脸', '标准眼型', '肤白', '雀斑'),
(3, '演员', '女', 3, '本科', 168, 45, '椭圆脸', '标准眼型', '偏黄', '无'),
(4, '学生', '女', 3, '本科', 165, 53, '心形脸', '标准眼型', '肤白', '无'),
(5, '金领', '女', 6, '硕士', 170, 50, '心形脸', '标准眼型', '肤白', '无');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `age`
--
ALTER TABLE `age`
  ADD PRIMARY KEY (`age_id`);

--
-- Indexes for table `blusher_region`
--
ALTER TABLE `blusher_region`
  ADD PRIMARY KEY (`blusher_region_id`);

--
-- Indexes for table `blusher_rgb`
--
ALTER TABLE `blusher_rgb`
  ADD PRIMARY KEY (`blusher_rgb_id`);

--
-- Indexes for table `concealer_rgb`
--
ALTER TABLE `concealer_rgb`
  ADD PRIMARY KEY (`concealer_rgb_id`);

--
-- Indexes for table `eyebrow_rgb`
--
ALTER TABLE `eyebrow_rgb`
  ADD PRIMARY KEY (`eyebrow_rgb_id`);

--
-- Indexes for table `eyelash`
--
ALTER TABLE `eyelash`
  ADD PRIMARY KEY (`eyelash_id`);

--
-- Indexes for table `eyeline_region`
--
ALTER TABLE `eyeline_region`
  ADD PRIMARY KEY (`eyeline_region_id`);

--
-- Indexes for table `eyemakeup_rgb`
--
ALTER TABLE `eyemakeup_rgb`
  ADD PRIMARY KEY (`eyemakeup_rgb_id`);

--
-- Indexes for table `eye_shadow_region`
--
ALTER TABLE `eye_shadow_region`
  ADD PRIMARY KEY (`eye_shadow_region_id`);

--
-- Indexes for table `eye_style`
--
ALTER TABLE `eye_style`
  ADD PRIMARY KEY (`eye_style_id`);

--
-- Indexes for table `face_style`
--
ALTER TABLE `face_style`
  ADD PRIMARY KEY (`face_style_id`);

--
-- Indexes for table `female_eyebrow`
--
ALTER TABLE `female_eyebrow`
  ADD PRIMARY KEY (`female_eyebrow_id`);

--
-- Indexes for table `female_hair_style`
--
ALTER TABLE `female_hair_style`
  ADD PRIMARY KEY (`female_hair_style_id`);

--
-- Indexes for table `foundation_rgb`
--
ALTER TABLE `foundation_rgb`
  ADD PRIMARY KEY (`foundation_rgb_id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`gender_id`);

--
-- Indexes for table `high_light_region`
--
ALTER TABLE `high_light_region`
  ADD PRIMARY KEY (`high_light_region_id`);

--
-- Indexes for table `lipstick_rgb`
--
ALTER TABLE `lipstick_rgb`
  ADD PRIMARY KEY (`lipstick_rgb_id`);

--
-- Indexes for table `makeup_fixer_rgb`
--
ALTER TABLE `makeup_fixer_rgb`
  ADD PRIMARY KEY (`makeup_fixer_rgb_id`);

--
-- Indexes for table `makeup_scene`
--
ALTER TABLE `makeup_scene`
  ADD PRIMARY KEY (`makeup_scene_id`);

--
-- Indexes for table `makeup_style`
--
ALTER TABLE `makeup_style`
  ADD PRIMARY KEY (`makeup_style_id`);

--
-- Indexes for table `male_eyebrow`
--
ALTER TABLE `male_eyebrow`
  ADD PRIMARY KEY (`male_eyebrow_id`);

--
-- Indexes for table `male_hair_style`
--
ALTER TABLE `male_hair_style`
  ADD PRIMARY KEY (`male_hair_style_id`);

--
-- Indexes for table `rec_blusher_rgb_heuristic`
--
ALTER TABLE `rec_blusher_rgb_heuristic`
  ADD KEY `age_id` (`age_id`),
  ADD KEY `skin_id` (`skin_id`),
  ADD KEY `blusher_rgb_id` (`blusher_rgb_id`);

--
-- Indexes for table `rec_concealer_rgb_heuristic`
--
ALTER TABLE `rec_concealer_rgb_heuristic`
  ADD KEY `age_id` (`age_id`),
  ADD KEY `skin_id` (`skin_id`),
  ADD KEY `concealer_rgb_id` (`concealer_rgb_id`);

--
-- Indexes for table `rec_eyebrow_rgb_heuristic`
--
ALTER TABLE `rec_eyebrow_rgb_heuristic`
  ADD KEY `age_id` (`age_id`),
  ADD KEY `skin_id` (`skin_id`),
  ADD KEY `eyebrow_rgb_id` (`eyebrow_rgb_id`);

--
-- Indexes for table `rec_eyelash_heuristic`
--
ALTER TABLE `rec_eyelash_heuristic`
  ADD KEY `makeup_style_id` (`makeup_style_id`),
  ADD KEY `eyelash_id` (`eyelash_id`);

--
-- Indexes for table `rec_eyeline_region_heuristic`
--
ALTER TABLE `rec_eyeline_region_heuristic`
  ADD KEY `eye_style_id` (`eye_style_id`),
  ADD KEY `eyeline_region_id` (`eyeline_region_id`);

--
-- Indexes for table `rec_eyemakeup_rgb_heuristic`
--
ALTER TABLE `rec_eyemakeup_rgb_heuristic`
  ADD KEY `age_id` (`age_id`),
  ADD KEY `skin_id` (`skin_id`),
  ADD KEY `eyemakeup_rgb_id` (`eyemakeup_rgb_id`);

--
-- Indexes for table `rec_foundation_rgb_heuristic`
--
ALTER TABLE `rec_foundation_rgb_heuristic`
  ADD KEY `age_id` (`age_id`),
  ADD KEY `skin_id` (`skin_id`),
  ADD KEY `foundation_rgb_id` (`foundation_rgb_id`);

--
-- Indexes for table `rec_lipstick_rgb_heuristic`
--
ALTER TABLE `rec_lipstick_rgb_heuristic`
  ADD KEY `age_id` (`age_id`),
  ADD KEY `skin_id` (`skin_id`),
  ADD KEY `lipstick_rgb_id` (`lipstick_rgb_id`);

--
-- Indexes for table `rec_makeup_fixer_rgb_heuristic`
--
ALTER TABLE `rec_makeup_fixer_rgb_heuristic`
  ADD KEY `age_id` (`age_id`),
  ADD KEY `skin_id` (`skin_id`),
  ADD KEY `makeup_fixer_rgb_id` (`makeup_fixer_rgb_id`);

--
-- Indexes for table `rec_makeup_style_heuristic`
--
ALTER TABLE `rec_makeup_style_heuristic`
  ADD KEY `age_id` (`age_id`),
  ADD KEY `makeup_scene_id` (`makeup_scene_id`),
  ADD KEY `makeup_style_id` (`makeup_style_id`);

--
-- Indexes for table `rec_shading_highlight_blusher_heuristic`
--
ALTER TABLE `rec_shading_highlight_blusher_heuristic`
  ADD KEY `face_style_id` (`face_style_id`),
  ADD KEY `shading_region_id` (`shading_region_id`),
  ADD KEY `high_light_region_id` (`high_light_region_id`),
  ADD KEY `blusher_region_id` (`blusher_region_id`);

--
-- Indexes for table `rec_shading_rgb_heuristic`
--
ALTER TABLE `rec_shading_rgb_heuristic`
  ADD KEY `age_id` (`age_id`),
  ADD KEY `skin_id` (`skin_id`),
  ADD KEY `shading_rgb_id` (`shading_rgb_id`);

--
-- Indexes for table `shading_region`
--
ALTER TABLE `shading_region`
  ADD PRIMARY KEY (`shading_region_id`);

--
-- Indexes for table `shading_rgb`
--
ALTER TABLE `shading_rgb`
  ADD PRIMARY KEY (`shading_rgb_id`);

--
-- Indexes for table `skin`
--
ALTER TABLE `skin`
  ADD PRIMARY KEY (`skin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `age`
--
ALTER TABLE `age`
  MODIFY `age_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `blusher_region`
--
ALTER TABLE `blusher_region`
  MODIFY `blusher_region_id` smallint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `blusher_rgb`
--
ALTER TABLE `blusher_rgb`
  MODIFY `blusher_rgb_id` smallint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- 使用表AUTO_INCREMENT `concealer_rgb`
--
ALTER TABLE `concealer_rgb`
  MODIFY `concealer_rgb_id` smallint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- 使用表AUTO_INCREMENT `eyebrow_rgb`
--
ALTER TABLE `eyebrow_rgb`
  MODIFY `eyebrow_rgb_id` smallint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `eyelash`
--
ALTER TABLE `eyelash`
  MODIFY `eyelash_id` smallint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `eyeline_region`
--
ALTER TABLE `eyeline_region`
  MODIFY `eyeline_region_id` smallint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `eyemakeup_rgb`
--
ALTER TABLE `eyemakeup_rgb`
  MODIFY `eyemakeup_rgb_id` smallint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- 使用表AUTO_INCREMENT `eye_shadow_region`
--
ALTER TABLE `eye_shadow_region`
  MODIFY `eye_shadow_region_id` smallint(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `eye_style`
--
ALTER TABLE `eye_style`
  MODIFY `eye_style_id` smallint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `face_style`
--
ALTER TABLE `face_style`
  MODIFY `face_style_id` smallint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `female_eyebrow`
--
ALTER TABLE `female_eyebrow`
  MODIFY `female_eyebrow_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `female_hair_style`
--
ALTER TABLE `female_hair_style`
  MODIFY `female_hair_style_id` smallint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- 使用表AUTO_INCREMENT `foundation_rgb`
--
ALTER TABLE `foundation_rgb`
  MODIFY `foundation_rgb_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- 使用表AUTO_INCREMENT `gender`
--
ALTER TABLE `gender`
  MODIFY `gender_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `high_light_region`
--
ALTER TABLE `high_light_region`
  MODIFY `high_light_region_id` smallint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `lipstick_rgb`
--
ALTER TABLE `lipstick_rgb`
  MODIFY `lipstick_rgb_id` smallint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- 使用表AUTO_INCREMENT `makeup_fixer_rgb`
--
ALTER TABLE `makeup_fixer_rgb`
  MODIFY `makeup_fixer_rgb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- 使用表AUTO_INCREMENT `makeup_scene`
--
ALTER TABLE `makeup_scene`
  MODIFY `makeup_scene_id` smallint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- 使用表AUTO_INCREMENT `makeup_style`
--
ALTER TABLE `makeup_style`
  MODIFY `makeup_style_id` smallint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- 使用表AUTO_INCREMENT `male_eyebrow`
--
ALTER TABLE `male_eyebrow`
  MODIFY `male_eyebrow_id` smallint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `male_hair_style`
--
ALTER TABLE `male_hair_style`
  MODIFY `male_hair_style_id` smallint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用表AUTO_INCREMENT `shading_rgb`
--
ALTER TABLE `shading_rgb`
  MODIFY `shading_rgb_id` smallint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `skin`
--
ALTER TABLE `skin`
  MODIFY `skin_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
