-- --------------------------------------------------------

--
-- Database: `opencart`
--

-- --------------------------------------------------------

SET sql_mode = '';
--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE IF NOT EXISTS `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(10, 'Parralax-1', 1),
(15, 'Slideshow', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE IF NOT EXISTS `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=162 ;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
(161, 15, '', 'catalog/slide-3.jpg', 3),
(132, 10, '', 'catalog/parallax-1.jpg', 0),
(160, 15, '', 'catalog/slide-2.jpg', 2),
(159, 15, '', 'catalog/slide-1.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image_description`
--

DROP TABLE IF EXISTS `oc_banner_image_description`;
CREATE TABLE IF NOT EXISTS `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`, `description`) VALUES
(99, 1, 9, 'slide-1', ''),
(100, 1, 9, 'slide-2', ''),
(101, 1, 9, 'slide-3', ''),
(99, 2, 9, 'slide-1', ''),
(100, 2, 9, 'slide-2', ''),
(101, 2, 9, 'slide-3', ''),
(99, 3, 9, 'slide-1', ''),
(100, 3, 9, 'slide-2', ''),
(101, 3, 9, 'slide-3', ''),
(132, 2, 10, 'parallax-1', '&lt;h4&gt;A great source for  &lt;/h4&gt;\r\n&lt;h2&gt;luxury&lt;/h2&gt;\r\n&lt;h1&gt;watches&lt;/h1&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.&lt;/p&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=43&quot;&gt;Shop now!&lt;/a&gt;'),
(132, 3, 10, 'parallax-1', '&lt;h4&gt;A great source for  &lt;/h4&gt;\r\n&lt;h2&gt;luxury&lt;/h2&gt;\r\n&lt;h1&gt;watches&lt;/h1&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.&lt;/p&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=43&quot;&gt;Shop now!&lt;/a&gt;'),
(161, 1, 15, 'slide-3', '&lt;h1&gt;quis nostrud &lt;br /&gt;\r\nullamco &lt;/h1&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.&lt;/p&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=28&quot;&gt;Shop now&lt;/a&gt;\r\n'),
(160, 3, 15, 'slide-2', '&lt;h1&gt;voluptate velit &lt;br /&gt;\r\nesse cillu&lt;/h1&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.&lt;/p&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=42&quot;&gt;Shop now&lt;/a&gt;\r\n'),
(132, 1, 10, 'parallax-1', '&lt;h4&gt;A great source for  &lt;/h4&gt;\r\n&lt;h2&gt;luxury&lt;/h2&gt;\r\n&lt;h1&gt;watches&lt;/h1&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.&lt;/p&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=43&quot;&gt;Shop now!&lt;/a&gt;'),
(160, 1, 15, 'slide-2', '&lt;h1&gt;voluptate velit &lt;br /&gt;\r\nesse cillu&lt;/h1&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.&lt;/p&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=42&quot;&gt;Shop now&lt;/a&gt;\r\n'),
(159, 3, 15, 'slide-1', '&lt;h1&gt;tempor incididunt &lt;br /&gt;\r\nut labore&lt;/h1&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.&lt;/p&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=43&quot;&gt;Shop now&lt;/a&gt;\r\n'),
(159, 2, 15, 'slide-1', '&lt;h1&gt;tempor incididunt &lt;br /&gt;\r\nut labore&lt;/h1&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.&lt;/p&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=43&quot;&gt;Shop now&lt;/a&gt;\r\n'),
(159, 1, 15, 'slide-1', '&lt;h1&gt;tempor incididunt &lt;br /&gt;\r\nut labore&lt;/h1&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.&lt;/p&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=43&quot;&gt;Shop now&lt;/a&gt;\r\n'),
(160, 2, 15, 'slide-2', '&lt;h1&gt;voluptate velit &lt;br /&gt;\r\nesse cillu&lt;/h1&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.&lt;/p&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=42&quot;&gt;Shop now&lt;/a&gt;\r\n'),
(161, 2, 15, 'slide-3', '&lt;h1&gt;quis nostrud &lt;br /&gt;\r\nullamco &lt;/h1&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.&lt;/p&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=28&quot;&gt;Shop now&lt;/a&gt;\r\n'),
(161, 3, 15, 'slide-3', '&lt;h1&gt;quis nostrud &lt;br /&gt;\r\nullamco &lt;/h1&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.&lt;/p&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=28&quot;&gt;Shop now&lt;/a&gt;\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE IF NOT EXISTS `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=448 ;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(390, 'total', 'credit'),
(387, 'shipping', 'flat'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(445, 'module', 'tm_image_category'),
(408, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(427, 'module', 'featured'),
(447, 'module', 'tm_manufacturer'),
(430, 'module', 'tm_category'),
(433, 'module', 'bestseller'),
(434, 'module', 'latest'),
(435, 'module', 'special'),
(436, 'module', 'affiliate'),
(437, 'module', 'information'),
(438, 'module', 'tm_slideshow'),
(440, 'module', 'olark'),
(446, 'module', 'html');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE IF NOT EXISTS `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
CREATE TABLE IF NOT EXISTS `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=610 ;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(592, 4, 'olark.50', 'footer_top', 1),
(589, 8, 'olark.50', 'column_left', 1),
(609, 1, 'tm_manufacturer', 'content_bottom', 1),
(586, 12, 'olark.50', 'footer_top', 1),
(584, 7, 'olark.50', 'footer_top', 1),
(583, 7, 'account', 'column_left', 1),
(581, 3, 'olark.50', 'footer_top', 1),
(579, 10, 'tm_category', 'column_left', 0),
(578, 10, 'affiliate', 'column_left', 1),
(577, 10, 'account', 'column_left', 2),
(574, 6, 'account', 'column_left', 1),
(576, 10, 'olark.50', 'footer_top', 1),
(598, 9, 'account', 'column_left', 1),
(423, 13, 'olark.50', 'footer_top', 1),
(595, 5, 'account', 'column_left', 2),
(591, 4, 'account', 'column_left', 1),
(588, 8, 'account', 'column_left', 1),
(573, 6, 'olark.50', 'footer_top', 1),
(575, 6, 'tm_category', 'column_left', 0),
(580, 3, 'account', 'column_left', 1),
(607, 1, 'latest.55', 'content_top', 3),
(608, 1, 'html.57', 'footer_top', 1),
(415, 11, 'olark.50', 'footer_top', 1),
(594, 5, 'olark.50', 'footer_top', 1),
(420, 2, 'olark.50', 'footer_top', 1),
(606, 1, 'tm_category', 'column_left', 1),
(597, 9, 'olark.50', 'footer_top', 1),
(605, 1, 'tm_image_category', 'content_top', 2),
(603, 1, 'special.54', 'column_left', 2),
(604, 1, 'bestseller.56', 'column_left', 3),
(602, 1, 'tm_slideshow.46', 'content_top', 1),
(601, 1, 'featured.51', 'content_top', 4),
(600, 1, 'olark.50', 'footer_top', 1),
(582, 3, 'tm_category', 'column_left', 0),
(585, 7, 'tm_category', 'column_left', 0),
(587, 12, 'tm_category', 'column_left', 0),
(590, 8, 'tm_category', 'column_left', 0),
(593, 4, 'tm_category', 'column_left', 0),
(596, 5, 'tm_category', 'column_left', 0),
(599, 9, 'tm_category', 'column_left', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE IF NOT EXISTS `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=178 ;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(168, 6, 0, 'account/%'),
(169, 10, 0, 'affiliate/%'),
(170, 3, 0, 'product/category'),
(177, 1, 0, 'common/home'),
(148, 2, 0, 'product/product'),
(146, 11, 0, 'information/information'),
(171, 7, 0, 'checkout/%'),
(173, 8, 0, 'information/contact'),
(176, 9, 0, 'information/sitemap'),
(174, 4, 0, ''),
(175, 5, 0, 'product/manufacturer'),
(172, 12, 0, 'product/compare'),
(149, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
CREATE TABLE IF NOT EXISTS `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(54, 'Aside Specials', 'special', 'a:5:{s:4:"name";s:14:"Aside Specials";s:5:"limit";s:1:"8";s:5:"width";s:3:"100";s:6:"height";s:3:"100";s:6:"status";s:1:"1";}'),
(57, 'HTML Home Page', 'html', 'a:3:{s:4:"name";s:14:"HTML Home Page";s:18:"module_description";a:3:{i:1;a:2:{s:5:"title";s:6:"events";s:11:"description";s:1522:"&lt;div class=&quot;row&quot;&gt;\r\n	&lt;div class=&quot;col-sm-6&quot;&gt;\r\n		&lt;h3&gt;About store&lt;/h3&gt;\r\n		&lt;h5&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.&lt;/h5&gt;\r\n		&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;col-sm-6&quot;&gt;\r\n		&lt;h3&gt;Events&lt;/h3&gt;\r\n		&lt;h5&gt;Lorem ipsum dolor sit amet conse ctetur&lt;/h5&gt;\r\n		&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.&lt;/p&gt;\r\n		&lt;h5&gt;Lorem ipsum dolor sit amet conse ctetur&lt;/h5&gt;\r\n		&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;";}i:2;a:2:{s:5:"title";s:6:"events";s:11:"description";s:1522:"&lt;div class=&quot;row&quot;&gt;\r\n	&lt;div class=&quot;col-sm-6&quot;&gt;\r\n		&lt;h3&gt;About store&lt;/h3&gt;\r\n		&lt;h5&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.&lt;/h5&gt;\r\n		&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;col-sm-6&quot;&gt;\r\n		&lt;h3&gt;Events&lt;/h3&gt;\r\n		&lt;h5&gt;Lorem ipsum dolor sit amet conse ctetur&lt;/h5&gt;\r\n		&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.&lt;/p&gt;\r\n		&lt;h5&gt;Lorem ipsum dolor sit amet conse ctetur&lt;/h5&gt;\r\n		&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;";}i:3;a:2:{s:5:"title";s:6:"events";s:11:"description";s:1522:"&lt;div class=&quot;row&quot;&gt;\r\n	&lt;div class=&quot;col-sm-6&quot;&gt;\r\n		&lt;h3&gt;About store&lt;/h3&gt;\r\n		&lt;h5&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.&lt;/h5&gt;\r\n		&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;col-sm-6&quot;&gt;\r\n		&lt;h3&gt;Events&lt;/h3&gt;\r\n		&lt;h5&gt;Lorem ipsum dolor sit amet conse ctetur&lt;/h5&gt;\r\n		&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.&lt;/p&gt;\r\n		&lt;h5&gt;Lorem ipsum dolor sit amet conse ctetur&lt;/h5&gt;\r\n		&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;";}}s:6:"status";s:1:"1";}'),
(51, 'Featured Home Page', 'featured', 'a:6:{s:4:"name";s:18:"Featured Home Page";s:7:"product";a:12:{i:0;s:2:"35";i:1;s:2:"33";i:2;s:2:"28";i:3;s:2:"30";i:4;s:2:"41";i:5;s:2:"42";i:6;s:2:"31";i:7;s:2:"46";i:8;s:2:"43";i:9;s:2:"45";i:10;s:2:"48";i:11;s:2:"34";}s:5:"limit";s:1:"8";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:6:"status";s:1:"1";}'),
(46, 'Tm Slideshow', 'tm_slideshow', 'a:5:{s:4:"name";s:12:"Tm Slideshow";s:9:"banner_id";s:2:"15";s:5:"width";s:3:"870";s:6:"height";s:3:"380";s:6:"status";s:1:"1";}'),
(50, 'Olark Chat', 'olark', 'a:4:{s:4:"name";s:10:"Olark Chat";s:13:"olark_version";s:5:"2.0.0";s:13:"olark_site_id";s:16:"7830-582-10-3714";s:6:"status";s:1:"1";}'),
(55, 'Latest Home Page', 'latest', 'a:5:{s:4:"name";s:16:"Latest Home Page";s:5:"limit";s:1:"8";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:6:"status";s:1:"1";}'),
(56, 'Aside Bestsellers', 'bestseller', 'a:5:{s:4:"name";s:17:"Aside Bestsellers";s:5:"limit";s:1:"8";s:5:"width";s:3:"100";s:6:"height";s:3:"100";s:6:"status";s:1:"1";}'),
(44, 'Latest Products', 'latest', 'a:5:{s:4:"name";s:15:"Latest Products";s:5:"limit";s:1:"8";s:5:"width";s:3:"220";s:6:"height";s:3:"220";s:6:"status";s:1:"1";}'),
(48, 'Specials Home Page', 'special', 'a:5:{s:4:"name";s:18:"Specials Home Page";s:5:"limit";s:1:"8";s:5:"width";s:3:"220";s:6:"height";s:3:"220";s:6:"status";s:1:"1";}');


