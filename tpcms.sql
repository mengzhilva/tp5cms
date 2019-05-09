/*
Navicat MySQL Data Transfer

Source Server         : lll
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : tpcms

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2019-05-09 16:37:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `content` text,
  `add_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `hits` tinyint(10) DEFAULT '1' COMMENT '点击',
  `isindex` tinyint(2) DEFAULT '0' COMMENT '是否首页',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '啊啊啊', '新闻头条', '1', '阿斯顿发啊', null, null, null, '阿斯顿发', '/uploads/file/20190410\\f1397eed06715820988419c55270ede2.png', '321', '1', '0');
INSERT INTO `article` VALUES ('2', '关于我们', '新闻头条', '1', '关于我们', null, null, null, '关于我们', '/uploads/file/20190411\\1a75aa3889346b590660844cee160469.png', '321', '1', '1');
INSERT INTO `article` VALUES ('3', '我们的产品', '产品中心', '3', '我们的产品我们的产品', '<p>我们的产品我们的产品我们的产品我们的产品我们的产品我们的产品我们的产品我们的产品我们的产品我们的产品我们的产品我们的产品我们的产品我们的产品</p>\r\n', null, '2019-05-09 11:12:27', '我们的产品', '/uploads/file/20190508\\07dc59cef163850b042d1cc36159917c.png', '321', '1', '1');

-- ----------------------------
-- Table structure for article_class
-- ----------------------------
DROP TABLE IF EXISTS `article_class`;
CREATE TABLE `article_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_class
-- ----------------------------
INSERT INTO `article_class` VALUES ('1', '新闻头条', '新闻头条');
INSERT INTO `article_class` VALUES ('2', '产品新闻', '产品新闻');
INSERT INTO `article_class` VALUES ('3', '产品中心', '产品中心');
INSERT INTO `article_class` VALUES ('4', '公司动态', '公司动态');

-- ----------------------------
-- Table structure for article_dy
-- ----------------------------
DROP TABLE IF EXISTS `article_dy`;
CREATE TABLE `article_dy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `content` text,
  `add_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `hits` tinyint(10) DEFAULT '1' COMMENT '点击',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_dy
-- ----------------------------
INSERT INTO `article_dy` VALUES ('1', '啊啊啊', '阿斯顿发啊', null, null, null, '阿斯顿发', '/uploads/file/20190410\\f1397eed06715820988419c55270ede2.png', '321', '1');
INSERT INTO `article_dy` VALUES ('2', '关于我们', '关于我们', '<p>This is my textarea to be replaced with CKE关于我们关于我们关于我们关于我们关于我们关于我们ditor.</p>\r\n', null, null, '关于我们', '/uploads/file/20190411\\34bcb6f7284913257afe42518a357d6c.png', '321', '1');
INSERT INTO `article_dy` VALUES ('3', '联系我们', '联系我们', null, null, null, '联系我们', '/uploads/file/20190412\\8cda2579e02788e2fc39ad04aa609bcb.png', '321', '1');

-- ----------------------------
-- Table structure for hdp
-- ----------------------------
DROP TABLE IF EXISTS `hdp`;
CREATE TABLE `hdp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hdp
-- ----------------------------
INSERT INTO `hdp` VALUES ('1', '企业网站模板', '企业网站模板，基于tp5的企业网站模板', '/uploads/file/20190413\\805b8e8c770453675da8df29ebeefe60.png', '2019-04-13 10:51:18', '#');
INSERT INTO `hdp` VALUES ('2', '网站移动化', '网站移动化，网站移动化', '/uploads/file/20190413\\3768ac300a0017f43264551786062a97.png', '2019-04-13 11:00:51', '');
INSERT INTO `hdp` VALUES ('3', 'HTML5移动开发', 'HTML5移动开发，网站同时支持手机与电脑，一站两用。', '/uploads/file/20190413\\19a78c8a4f5e98a440561b105f64a5fd.png', '2019-05-09 16:00:55', '/admin/menu/list/');

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) DEFAULT NULL,
  `TeamName` varchar(50) DEFAULT NULL,
  `ClassID` int(11) DEFAULT NULL,
  `ClassName` varchar(50) DEFAULT NULL,
  `JobNum` int(11) DEFAULT NULL,
  `CityID` int(11) DEFAULT NULL,
  `CityName` varchar(50) DEFAULT NULL,
  `JobNote` longtext,
  `JobRequire` longtext,
  `JobEmail` varchar(50) DEFAULT NULL,
  `AddTime` date DEFAULT '0000-00-00',
  `EndTime` date DEFAULT '0000-00-00',
  `JobType` varchar(50) DEFAULT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT '0',
  `StatusInfo` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES ('1', '店面经理', '营销中心', '17', '社会招聘', '2', '1', '北京', '1、开发有潜力的小区，按照公司流程与小区拓展部合作，协助解决问题，努力为公司创造利润；\r\n2、完成公司下达的月度、季度、年度业绩底线任务及基本任务；\r\n3、负责店面人员培训、定期进行技能考核；\r\n4、协调好当地管辖业务关系（如工商..税务.小区物业等）；\r\n5、协助其它部门解决客户投诉；\r\n6、负责各月支出和收入金额预测；\r\n7、调动设计师工作积极性，组织并保持店面的正常营业秩序，有权调配客户资源。', '1、市场营销学或相关专业专科以上学历，有组织能力，正面的感染力\r\n2、对家居家装行业有详细的了解，以身作则、严于律己\r\n3、要有2年以上相关工作经验', 'langli@sc.cc', '2015-03-10', '2016-03-09', '销售类', '1', '');
INSERT INTO `job` VALUES ('4', '实习生', '设计部', '15', '实习生招聘', '3', '20', '邯郸', '', '1、有志在公司长期发展\r\n2、有强烈意愿从事设计和管理岗位工作\r\n3、工作仔细认真，较强的工作责任心，进取心，诚实肯干，学习能力强。\r\n', '0310—7059802', '2015-03-26', '2015-05-26', 'seo', '1', null);
INSERT INTO `job` VALUES ('5', '高端工作室设计师', '设计部', '17', '社会招聘', '1', '20', '邯郸', '1、熟练使用室内设计绘图软件,熟悉工艺材料 \r\n2、有室内外建筑装饰行业的设计经验、懂报价预算、量房等知识； \r\n3、熟悉装饰施工工艺，具较高的工作协调能力、沟通能力，具团队精神、爱岗敬业。 \r\n4、形象气质良好，较强的客户洽谈的能力。 \r\n5、相关艺术专业专科以上学历。 \r\n6、对家居家装行业有一定的了解。 \r\n7、3年以上相关工作经验。\r\n', '1、三年以上相关工作经验，有大中型项目设计经验者优先考虑； \r\n2、有较强的视觉搭配能力，能熟练操作AutoCAD、、PowerPoint、Photoshop、等软件； \r\n3、学习能力强、热爱设计工作、有创新精神； \r\n4、 善于沟通，表达能力强，有团队精神； \r\n5、 富有创意及执行力，有责任感、表达能力强\r\n', '0310—7059802', '2015-03-26', '2015-05-26', '销售类', '1', null);
INSERT INTO `job` VALUES ('6', '市场主管', '市场部', '17', '社会招聘', '1', '20', '邯郸', '1.市场营销等相关专业， 1年以上管理经验；\r\n2.具有良好的语言表达能力，出色的沟通、协调、领导能力；\r\n3.工作认真、积极、主动，责任心强，能吃苦耐劳；\r\n4.具备良好的沟通技巧和人际关系技巧；\r\n5.具有装饰（家装）、建筑类行业小区开发从业经验；\r\n6.了解家装业务，并知道如何做家装预算；\r\n7.具备管理经验，有良好的分析能力及解决问题的技巧；\r\n8.具备团队合作精神。\r\n', '1.搜寻楼盘,确定开发项目，定期参与小区开发会议,与物业及销售公司积极接洽；\r\n2.负责策划小区开发前的宣传、组织工作，制订完整的小区开发及拓展计划，并合理安排各类开发所需宣传物料；\r\n3.负责解决客户的投诉情况的了解，解释辅助处理的工作。\r\n', '03107059802', '2015-03-26', '2015-05-26', '销售类', '1', null);
INSERT INTO `job` VALUES ('7', '设计师', '设计部', '17', '社会招聘', '3', '20', '邯郸', '1、熟练使用室内设计绘图软件,熟悉工艺材料\r\n2、有室内外建筑装饰行业的设计经验、懂报价预算、量房等知识；\r\n3、熟悉装饰施工工艺，具较高的工作协调能力、沟通能力，具团队精神、爱岗敬业。\r\n4、形象气质良好，较强的客户洽谈的能力。\r\n5、相关艺术专业专科以上学历。\r\n6、对家居家装行业有一定的了解。\r\n7、1年以上相关工作经验。\r\n', '1、一年以上相关工作经验，有大中型项目设计经验者优先考虑；\r\n2、有较强的视觉搭配能力，能熟练操作AutoCAD、、PowerPoint、Photoshop、等软件；\r\n3、学习能力强、热爱设计工作、有创新精神；\r\n4、 善于沟通，表达能力强，有团队精神；\r\n5、 富有创意及执行力，有责任感、表达能力强\r\n', '0310—7059802', '2015-03-26', '2015-05-26', '销售类', '1', null);
INSERT INTO `job` VALUES ('8', '店长助理', '设计部', '17', '社会招聘', '3', '20', '邯郸', '全面协助店长处理店内事务，全面整合各方面资源提高销售业绩。\r\n', '欢迎有志青年加入我们的团队，只要你有理想和目标，实创会给你一个没有天花板的舞台。\r\n', '0310—7059802', '2015-03-26', '2015-05-26', '销售类', '1', null);
INSERT INTO `job` VALUES ('9', '主任设计师', '设计部', '17', '社会招聘', '1', '20', '邯郸', '1、熟练使用室内设计绘图软件,熟悉工艺材料\r\n2、有室内外建筑装饰行业的设计经验、懂报价预算、量房等知识；\r\n3、熟悉装饰施工工艺，具较高的工作协调能力、沟通能力，具团队精神、爱岗敬业。\r\n4、形象气质良好，较强的客户洽谈的能力。\r\n5、相关艺术专业专科以上学历。\r\n6、对家居家装行业有一定的了解。\r\n7、2年以上相关工作经验。\r\n', '1、两年以上相关工作经验，有大中型项目设计经验者优先考虑；\r\n2、有较强的视觉搭配能力，能熟练操作AutoCAD、、PowerPoint、Photoshop、等软件；\r\n3、学习能力强、热爱设计工作、有创新精神；\r\n4、 善于沟通，表达能力强，有团队精神；\r\n5、 富有创意及执行力，有责任感、表达能力强\r\n', '0310—7059802', '2015-03-26', '2015-06-26', '销售类', '1', null);
INSERT INTO `job` VALUES ('10', '储备干部', '业务部', '16', '校园招聘', '10', '23', '广州', '岗位职责：\r\n\r\n1、客户承接和客情分析及接待；\r\n\r\n2、协助店面经理管理及派单；\r\n\r\n3、提高客户满意度，提高回单量；\r\n\r\n4、提高客户到访率及转化率。\r\n', '任职要求：\r\n\r\n1、形象气质佳，性格外向，具有狼性；\r\n\r\n2、较强的沟通表达能力，热爱销售工作，具有开拓意识、具有良好的抗压能力；\r\n\r\n3、优秀应届生。', '1450497265@qq.com', '2015-06-24', '2015-12-01', '销售类', '1', null);
INSERT INTO `job` VALUES ('11', '业务员', '业务部', '17', '社会招聘', '8', '23', '广州', '岗位职责： \r\n1、销售人员职位，在上级的领导和监督下定期完成量化的工作要求，并能独立处理和解决所负责的任务；\r\n2、通过培训能准确向客户传递有效信息； \r\n3、独立开发小区新客户流，接洽楼盘售楼处，掌握目标小区信息； \r\n4、寻找潜在客户，建立联系，协助设计师与客户进一步沟通，并做跟踪； \r\n5、完成上级主管分派的任务，有效完成业绩目标； \r\n6、完成领导安排的其他工作事宜。', '任职要求： \r\n1、高中以上学历。 \r\n2、有物业公司、售楼、保险及家装行业工作经验者优先。', '1450497265@qq.com', '2015-06-24', '2015-12-01', '销售类', '1', null);
INSERT INTO `job` VALUES ('12', '网销专员', '电子商务部', '17', '社会招聘', '5', '23', '广州', '作职责\r\n1、分析市场需求，依据产品特点，制定网络营销方案；\r\n2、按时完成各类网络渠道的开发、推广、销售信息的发布；\r\n3、利用网络媒体收集市场动态和信息；\r\n4、竞争对手各类网销信息的收集与整理，同行运营趋势、广告、促销政策的分析；\r\n5、通过网络渠道开发客户资源，完成本部门的销售任务\r\n', '任职资格：\r\n1、大专以上学历；\r\n2、思路和文笔清晰，思维敏捷，应变能力强，文字和语言组织能力强，熟悉网络社区语言；3、能够熟练使用常用的新媒体软件，如：QQ、微信、微博等；\r\n4、具备团队合作精神；\r\n5、有1年以上的家装行业从业经验或有1年以上的网络销售工作经验', '1450497265@qq.com', '2015-06-24', '2015-12-01', '销售类', '1', null);
INSERT INTO `job` VALUES ('13', '实习室内设计师', '设计中心', '15', '实习生招聘', '10', '23', '广州', '职位描述： \r\n1、协助室内设计师出图； \r\n2、配合设计师外出量房； \r\n3、协助设计师谈单，服务客户。', '位要求： \r\n1、室内设计专业优先， \r\n2、自主性强，乐于学习，认真负责。', '1450497265@qq.com', '2015-06-24', '2015-12-01', '技术类', '1', null);
INSERT INTO `job` VALUES ('14', '室内设计师', '设计中心', '17', '社会招聘', '10', '23', '广州', '岗位职责： \r\n1、 参与公司装饰工程项目的设计管理，提出设计意见； \r\n2、 负责装修施工质量管理、招投标管理； \r\n3、 参加方案设计、初步设计、施工图设计审核；制定项目设计计划及设计任务书； \r\n4、 参加市场调研，编制本系统相关技术经济方案； \r\n5、 负责对项目进行跟踪和监督； \r\n6、 设计师应协助材料部对装修项目材料进行确认工作； \r\n7、 负责案例，技术及资源的整理； \r\n8、 配合项目经理制定工作进度。', '任职资格： \r\n1、 有较强的视觉搭配能力，能熟练操作AutoCAD 、PowerPoint、Photoshop 等软件； \r\n2、 学习能力强、热爱设计工作、有创新精神； \r\n3、 善于沟通，表达能力强，有团队精神； \r\n4、 富有创意及执行力，有责任感、表达能力强。', '1450497265@qq.com', '2015-06-24', '2015-12-01', '技术类', '1', null);
INSERT INTO `job` VALUES ('15', '网络营销专员', '网络营销', '17', '社会招聘', '5', '16', '济南', '1、网络推广工作  \r\n2、负责公司网站后台的更新与维护，包括活动、设计师作品等的及时更新； \r\n3、负责个人开发的网站、博客、贴吧等网络推广渠道内容的每天及时更新； \r\n4、通过QQ群、邮件、微博、微信等其他电子商务平台获取客户信息； \r\n5、依据公司每期活动安排确保能将活动信息传达到客户，并做好相关邀约工作； \r\n6、客户到访前，及时跟踪、联系并做好客户回访记录，以便后期跟进，全面掌握客户动向； ', '1、大专以上学历，男女不限，电子商务或计算机相关专业； \r\n2、电子商务、网络营销相关基础、较强的沟通、协调能力； \r\n3、相关工作经验优先； \r\n4、工作积极认真，具有较强的责任心与学习能力。\r\n职位发展通道：网络销售专员--网络销售主管--网络销售经理\r\n以上岗位一经录用，签订劳动合同，提供广阔发展空间及竞争力薪资！\r\n待遇：底薪+提成（2000-10000）\r\n工作时间：早9:00-晚7:30   \r\n联系电话：400-15-38800', '4001538800', '2015-10-28', '2015-12-31', '销售类', '1', null);

-- ----------------------------
-- Table structure for jobclass
-- ----------------------------
DROP TABLE IF EXISTS `jobclass`;
CREATE TABLE `jobclass` (
  `ClassID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` varchar(50) DEFAULT NULL,
  `ClassNote` varchar(255) DEFAULT NULL,
  `ParentID` int(11) DEFAULT NULL,
  `OrderID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ClassID`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobclass
-- ----------------------------
INSERT INTO `jobclass` VALUES ('15', '实习生招聘', '实习生招聘', '0', '4');
INSERT INTO `jobclass` VALUES ('16', '校园招聘', '校园招聘', '0', '5');
INSERT INTO `jobclass` VALUES ('17', '社会招聘', '社会招聘', '0', '6');

-- ----------------------------
-- Table structure for jobtype
-- ----------------------------
DROP TABLE IF EXISTS `jobtype`;
CREATE TABLE `jobtype` (
  `ClassID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` varchar(50) DEFAULT NULL,
  `ClassNote` varchar(255) DEFAULT NULL,
  `ParentID` int(11) DEFAULT NULL,
  `OrderID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ClassID`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobtype
-- ----------------------------
INSERT INTO `jobtype` VALUES ('15', 'seo', 'seo', '0', '4');
INSERT INTO `jobtype` VALUES ('16', '销售类', '销售类', '0', '5');
INSERT INTO `jobtype` VALUES ('17', '技术类', '技术类', '0', '6');

-- ----------------------------
-- Table structure for link
-- ----------------------------
DROP TABLE IF EXISTS `link`;
CREATE TABLE `link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of link
-- ----------------------------
INSERT INTO `link` VALUES ('1', '百度', '/uploads/file/20190508\\308e60c31c8b37e2a8179b29f7621549.png', '/admin/menu/list/', null, '是是是');
INSERT INTO `link` VALUES ('2', '法泰', '/uploads/file/20190508\\db41fd8576463c141ef1a1f30cc1d890.png', '/admin/Setting/modulelist/', null, '');
INSERT INTO `link` VALUES ('3', '光明网', '/uploads/file/20190508\\351d77e89e4cb8a450492b7aef4fa57b.png', 'gm', null, '');
INSERT INTO `link` VALUES ('4', 'Microsoft', '/uploads/file/20190508\\16298d9851cf6b47511bbea2501479a7.png', 'Microsoft', null, '');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_en` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` tinyint(2) DEFAULT '0',
  `sort` int(11) DEFAULT '0',
  `type` tinyint(4) DEFAULT '1' COMMENT '1文章分类，2单页',
  `class_id` int(11) DEFAULT '0',
  `status` tinyint(3) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', null, '新闻头条', '333', '0', '/article/class/1', '0', '1', '1', '1', '1');
INSERT INTO `menu` VALUES ('2', null, '关于我们', '', '0', '/articledy/2', '0', '3', '2', '2', '1');
INSERT INTO `menu` VALUES ('3', null, '产品新闻', '', '1', '/article/class/2', '0', '1', '1', '2', '1');
INSERT INTO `menu` VALUES ('4', null, '产品中心', '', '0', '/article/class/3', '0', '3', '1', '3', '1');
INSERT INTO `menu` VALUES ('5', null, '联系我们', '', '0', '/articledy/3', '0', '4', '2', '3', '1');
INSERT INTO `menu` VALUES ('6', null, '公司动态', '', '0', '/article/class/4', '0', '4', '1', '4', '1');

-- ----------------------------
-- Table structure for settings_module
-- ----------------------------
DROP TABLE IF EXISTS `settings_module`;
CREATE TABLE `settings_module` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `url` varchar(128) NOT NULL,
  `sort` int(11) unsigned NOT NULL DEFAULT '1',
  `desc` varchar(255) DEFAULT NULL,
  `icon` varchar(32) DEFAULT 'icon-th' COMMENT '菜单模块图标',
  `online` int(11) NOT NULL DEFAULT '1' COMMENT '模块是否在线',
  `groups` tinyint(4) DEFAULT '0' COMMENT '分组，0基础，1crm，2订单，3工厂',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='菜单模块';

-- ----------------------------
-- Records of settings_module
-- ----------------------------
INSERT INTO `settings_module` VALUES ('1', '系统设置', '', '5', '', 'fa fa-fw fa-asterisk', '1', '0');
INSERT INTO `settings_module` VALUES ('33', '管理员管理', '', '6', '                    sdfsdf', 'fa fa-fw fa-user-secret', '1', '0');
INSERT INTO `settings_module` VALUES ('34', '菜单管理', '/admin/menu/list/', '1', '', 'fa fa-fw fa-bars', '1', '0');
INSERT INTO `settings_module` VALUES ('35', '文章管理', '', '1', '文章管理', 'fa fa-fw fa-book', '1', '0');

-- ----------------------------
-- Table structure for settings_url
-- ----------------------------
DROP TABLE IF EXISTS `settings_url`;
CREATE TABLE `settings_url` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `module_id` int(11) NOT NULL,
  `is_show` tinyint(4) NOT NULL COMMENT '是否在sidebar里出现',
  `online` int(11) NOT NULL DEFAULT '1' COMMENT '在线状态，还是下线状态，即可用，不可用。',
  `desc` varchar(255) DEFAULT NULL,
  `father_menu` int(11) NOT NULL DEFAULT '0' COMMENT '上一级菜单',
  `icon` varchar(64) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `issj` tinyint(2) DEFAULT '0' COMMENT '是否创建数据权限1是',
  `sjtype` tinyint(4) DEFAULT '1' COMMENT '数据权限，1私有，2公开',
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=utf8 COMMENT='功能链接（菜单链接）';

-- ----------------------------
-- Records of settings_url
-- ----------------------------
INSERT INTO `settings_url` VALUES ('1', '管理员列表', '/admin/users/lists', '33', '1', '1', '', '0', 'fa fa-fw fa-user-secret', '1', '0', '1');
INSERT INTO `settings_url` VALUES ('260', '模块列表', '/admin/Setting/modulelist/', '1', '1', '1', '', '0', 'fa fa-fw fa-archive', '1', '0', '1');
INSERT INTO `settings_url` VALUES ('261', '应用列表', '/admin/Setting/urllist/', '1', '1', '1', '', '0', 'fa fa-fw fa-medium', '3', '0', '1');
INSERT INTO `settings_url` VALUES ('262', '菜单列表', '/admin/menu/index/', '34', '1', '1', '', '0', 'fa fa-fw fa-bars', '1', '0', '1');
INSERT INTO `settings_url` VALUES ('263', '文章管理', '/admin/article/index/', '35', '1', '1', '', '0', 'fa fa-fw fa-book', '1', '0', '1');
INSERT INTO `settings_url` VALUES ('264', '文章分类管理', '/admin/articleclass/index/', '35', '1', '1', '', '0', 'fa fa-fw fa-bug', '2', '0', '1');
INSERT INTO `settings_url` VALUES ('265', '单页管理', '/admin/articledy/index/', '35', '1', '1', '', '0', 'fa fa-fw fa-bookmark-o', '5', '0', '1');
INSERT INTO `settings_url` VALUES ('266', '网站设置', '/admin/website/edit/', '1', '1', '1', '', '0', 'fa fa-fw fa-anchor', '3', '0', '1');
INSERT INTO `settings_url` VALUES ('267', '幻灯片管理', '/admin/hdp/index/', '1', '1', '1', '', '0', 'fa fa-fw fa-file-movie-o', '4', '0', '1');
INSERT INTO `settings_url` VALUES ('268', '友情链接', '/admin/link/index/', '1', '1', '1', '', '0', 'fa fa-fw fa-user-secret', '5', '0', '1');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(2) NOT NULL,
  `va` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1233234234', 'aa');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `lastlogintime` datetime DEFAULT NULL,
  `registertime` datetime DEFAULT NULL,
  `realname` varchar(200) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `role_id` tinyint(4) DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `found_id` int(11) DEFAULT '0' COMMENT '创建人id',
  `sex` int(11) DEFAULT '0' COMMENT '创建人id',
  `telephone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `city` int(11) DEFAULT NULL COMMENT '市',
  `country` int(11) DEFAULT NULL COMMENT '区',
  `province` int(11) DEFAULT NULL COMMENT '省',
  `address` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `emergency_people` varchar(200) DEFAULT NULL COMMENT '紧急联系人',
  `emergency_telephone` varchar(32) DEFAULT NULL COMMENT '紧急联系人电话',
  `idnumber` varchar(11) DEFAULT NULL COMMENT '身份证号',
  `company_id` int(11) DEFAULT NULL COMMENT '公司id',
  `customer_id` int(11) DEFAULT '0' COMMENT '前台用户id',
  `department_id` int(11) DEFAULT '0' COMMENT '部门id',
  `creater_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('132', 'admin', '21232f297a57a5a743894a0e4a801fc3', null, null, 'admin', null, '1', '1', '0', '0', '137012933333', null, null, null, null, null, null, null, null, '0', '0', null);

-- ----------------------------
-- Table structure for website
-- ----------------------------
DROP TABLE IF EXISTS `website`;
CREATE TABLE `website` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `gonggao` text,
  `myserver` text COMMENT '我们的服务',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of website
-- ----------------------------
INSERT INTO `website` VALUES ('1', '企业模板', '15112222221', '123', '企业模板', '/uploads/file/20190412\\2ba4796179c1a8f270aa586806c3d113.png', '企业模板', '企业模板', '公司的核心优势是什么，都有哪些，下面显示具体推荐首页文章。', '                                                                ');
