-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2014 at 04:46 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sugarcrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_accnt_id_del` (`id`,`deleted`),
  KEY `idx_accnt_name_del` (`name`,`deleted`),
  KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  KEY `idx_accnt_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `account_type`, `industry`, `annual_revenue`, `phone_fax`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `rating`, `phone_office`, `phone_alternate`, `website`, `ownership`, `employees`, `ticker_symbol`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_postalcode`, `shipping_address_country`, `parent_id`, `sic_code`, `campaign_id`) VALUES
('d51756c7-8d54-930d-aa2d-54253bfacf65', '0926_acc_1', '2014-09-26 10:11:57', '2014-09-26 13:45:02', '1', '1', NULL, 0, '4abda5b9-b267-1f2d-460c-5425691c46d2', NULL, NULL, NULL, NULL, NULL, 'Melbourne', NULL, NULL, NULL, NULL, NULL, NULL, 'http://', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, ''),
('dac39c7e-d11f-d36b-1676-542406bfdb68', 'account1', '2014-09-25 12:10:50', '2014-09-25 12:12:51', '1', '1', NULL, 0, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://google.com.au1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, ''),
('ee689741-a453-2d4f-c42c-54254fb88d21', '0926_acc_2', '2014-09-26 11:34:02', '2014-09-26 11:34:26', '1', '1', NULL, 0, '1', NULL, NULL, NULL, NULL, NULL, 'Melbourne', NULL, NULL, NULL, NULL, NULL, NULL, 'http://', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, ''),
('f2f28af8-c0d0-d8a7-fa2d-5424046957bb', 'contact 1', '2014-09-25 12:04:04', '2014-09-25 12:09:57', '1', '1', NULL, 0, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'google.com.au1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_audit`
--

CREATE TABLE IF NOT EXISTS `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_accounts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_audit`
--

INSERT INTO `accounts_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('2cf70d4a-fde1-7366-1bba-54256d053af5', 'd51756c7-8d54-930d-aa2d-54253bfacf65', '2014-09-26 13:43:07', '1', 'assigned_user_id', 'relate', '1', '4abda5b9-b267-1f2d-460c-5425691c46d2', NULL, NULL),
('5cb3aa01-1b4e-d1b0-8189-54256d89a5ac', 'd51756c7-8d54-930d-aa2d-54253bfacf65', '2014-09-26 13:43:46', '1', 'assigned_user_id', 'relate', '4abda5b9-b267-1f2d-460c-5425691c46d2', '1', NULL, NULL),
('afcc884b-fa3c-37b9-d04a-54256d2092a1', 'd51756c7-8d54-930d-aa2d-54253bfacf65', '2014-09-26 13:45:02', '1', 'assigned_user_id', 'relate', '1', '4abda5b9-b267-1f2d-460c-5425691c46d2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_bugs`
--

CREATE TABLE IF NOT EXISTS `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_bug_acc` (`account_id`),
  KEY `idx_acc_bug_bug` (`bug_id`),
  KEY `idx_account_bug` (`account_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_cases`
--

CREATE TABLE IF NOT EXISTS `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_case_acc` (`account_id`),
  KEY `idx_acc_acc_case` (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_contacts`
--

CREATE TABLE IF NOT EXISTS `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_contact` (`account_id`,`contact_id`),
  KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_contacts`
--

INSERT INTO `accounts_contacts` (`id`, `contact_id`, `account_id`, `date_modified`, `deleted`) VALUES
('171401e2-1e34-d8f4-7c77-54254ff17521', '3cfc5d8c-d79a-082e-ae87-54253299b625', 'ee689741-a453-2d4f-c42c-54254fb88d21', '2014-09-26 11:34:17', 1),
('19468b5b-c29b-f637-17e6-54254fc7df7e', '79430caa-72ba-5f36-7fcc-542532c5c851', 'ee689741-a453-2d4f-c42c-54254fb88d21', '2014-09-26 11:34:21', 1),
('1afc0d7d-ca0a-961c-abee-54254f30721d', 'c8d5011f-c037-4ccb-8cde-542532a798c5', 'ee689741-a453-2d4f-c42c-54254fb88d21', '2014-09-26 11:34:13', 1),
('372b504b-d262-79af-60b9-54254b3a0396', '3cfc5d8c-d79a-082e-ae87-54253299b625', 'd51756c7-8d54-930d-aa2d-54253bfacf65', '2014-09-26 13:45:02', 0),
('399c62a9-d37f-5840-ae7b-54254b54f906', '79430caa-72ba-5f36-7fcc-542532c5c851', 'd51756c7-8d54-930d-aa2d-54253bfacf65', '2014-09-26 13:45:02', 0),
('3c4be8e0-ca0d-9484-bb57-54254b45342b', 'c8d5011f-c037-4ccb-8cde-542532a798c5', 'd51756c7-8d54-930d-aa2d-54253bfacf65', '2014-09-26 13:45:02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_opportunities`
--

CREATE TABLE IF NOT EXISTS `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_actions`
--

CREATE TABLE IF NOT EXISTS `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclaction_id_del` (`id`,`deleted`),
  KEY `idx_category_name` (`category`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acl_actions`
--

INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('12ad9c1e-e82e-f5ae-e366-541cc986a887', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'access', 'Documents', 'module', 89, 0),
('152edb75-f240-0564-b16e-541cc9c4641a', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'import', 'Opportunities', 'module', 90, 0),
('15526154-9841-18ed-ba6d-541cc90198c5', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'massupdate', 'Campaigns', 'module', 90, 0),
('179ed56b-d05f-508d-4481-541cfeee76c9', '2014-09-20 04:09:46', '2014-09-20 04:09:46', '1', '1', 'view', 'grp_p_groups', 'module', 90, 0),
('17db931d-e4f3-eda3-aba7-541cc9147f89', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'list', 'EmailMarketing', 'module', 90, 0),
('17e608e1-b39c-8b0a-3411-541cc9188e5b', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'view', 'Documents', 'module', 90, 0),
('1923e397-54bb-3790-2cf5-541cc99b5420', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'list', 'Bugs', 'module', 90, 0),
('1ba53dcb-4973-9a67-3db6-541cfee6a21c', '2014-09-20 04:09:46', '2014-09-20 04:09:46', '1', '1', 'list', 'grp_p_groups', 'module', 90, 0),
('1d287499-e76f-8f3f-c719-541cc99e801d', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'edit', 'Bugs', 'module', 90, 0),
('1d77ca32-1f15-e8bd-5dc9-541cc990bda9', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'export', 'Opportunities', 'module', 90, 0),
('1d818806-2916-f5cf-23b5-541cc982d647', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'list', 'Documents', 'module', 90, 0),
('20193ad2-3659-a2e9-d178-541cc98f3783', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'edit', 'EmailMarketing', 'module', 90, 0),
('214de507-f44f-2f74-06d7-541cfe7d0b98', '2014-09-20 04:09:46', '2014-09-20 04:09:46', '1', '1', 'edit', 'grp_p_groups', 'module', 90, 0),
('22adaaad-e1d5-9b98-90f9-541cc96a85ff', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'delete', 'Bugs', 'module', 90, 0),
('22c40c82-2ca4-7b7f-0866-541cc9f8eedf', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'edit', 'Documents', 'module', 90, 0),
('26910137-dad6-097a-8baf-541cfef0383f', '2014-09-20 04:09:46', '2014-09-20 04:09:46', '1', '1', 'delete', 'grp_p_groups', 'module', 90, 0),
('27811ddb-5544-f07f-0536-541cc9e71a85', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'massupdate', 'Opportunities', 'module', 90, 0),
('27fcf8c1-e384-3003-09a1-541cc96ced7c', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'import', 'Bugs', 'module', 90, 0),
('28165667-d6a9-9d17-0833-541cc94a07b0', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'access', 'Notes', 'module', 89, 0),
('2820c29e-c56a-24db-1fdb-541cc9de8e6d', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'delete', 'EmailMarketing', 'module', 90, 0),
('2854d4da-ce5f-1324-d444-541cc90d6360', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'delete', 'Documents', 'module', 90, 0),
('2af951f7-3824-1969-a5ea-541cc9d64dc7', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'access', 'ProjectTask', 'module', 89, 0),
('2c47f272-6cdd-d594-d1d1-541cfed3b7d8', '2014-09-20 04:09:46', '2014-09-20 04:09:46', '1', '1', 'import', 'grp_p_groups', 'module', 90, 0),
('2d9eaedc-e0e7-b06e-99d3-541cc91eca68', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'import', 'Documents', 'module', 90, 0),
('305cb670-ccd7-c9b9-46b1-541cc9cf6a13', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'view', 'Notes', 'module', 90, 0),
('307eb70c-2593-d41c-0d13-541cc96a0637', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'import', 'EmailMarketing', 'module', 90, 0),
('316afa0e-d515-3a70-1b8a-541cfeb9a5e4', '2014-09-20 04:09:46', '2014-09-20 04:09:46', '1', '1', 'export', 'grp_p_groups', 'module', 90, 0),
('3307da9e-6d24-b8b5-cc0a-541cc95224a0', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'view', 'ProjectTask', 'module', 90, 0),
('33378a90-0a66-8a0a-be1c-541cc96c6f4a', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'export', 'Documents', 'module', 90, 0),
('344af59e-e4f4-4019-ce8a-541cc9dcc84b', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'export', 'Bugs', 'module', 90, 0),
('36fd4ab0-dc9b-fa38-e778-541cfe8347c3', '2014-09-20 04:09:46', '2014-09-20 04:09:46', '1', '1', 'massupdate', 'grp_p_groups', 'module', 90, 0),
('383ff038-bc7b-b90d-46dc-541cc99d2f55', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'massupdate', 'Bugs', 'module', 90, 0),
('3853c4c8-f68f-dfd2-77ca-541cc9b5ae68', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'list', 'Notes', 'module', 90, 0),
('3878d2b8-bda9-3248-4e7b-541cc925e78c', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'export', 'EmailMarketing', 'module', 90, 0),
('3879602f-bd90-ac28-cf68-541cc9fff1b4', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'massupdate', 'Documents', 'module', 90, 0),
('3b38bce7-7962-ad8d-70db-541cc93fe3c2', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'access', 'Prospects', 'module', 89, 0),
('3dea7de1-cfd9-a32c-826b-541cc96268c3', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'edit', 'Notes', 'module', 90, 0),
('3dff212b-8aac-4c30-1571-541cc95025e8', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'access', 'Emails', 'module', 89, 0),
('3f5b0917-16cf-c7a9-29af-541cc92b4f8b', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'list', 'ProjectTask', 'module', 90, 0),
('40a963ad-4d63-fa2a-0b41-541cc9855f55', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'massupdate', 'EmailMarketing', 'module', 90, 0),
('433f6862-6185-be03-1524-541cc9cffb25', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'edit', 'ProjectTask', 'module', 90, 0),
('436af26d-9857-e0f2-6c38-541cc962812c', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'view', 'Prospects', 'module', 90, 0),
('45eb49c3-521f-a86c-60ba-541cc9993335', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'delete', 'Notes', 'module', 90, 0),
('45f78e3e-e911-249f-feb7-541cc99d98d9', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'view', 'Emails', 'module', 90, 0),
('48d83784-9e43-f5e4-6c34-541cc9355fdd', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'delete', 'ProjectTask', 'module', 90, 0),
('4b67a106-53d1-1436-34d3-541cc9383b59', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'list', 'Prospects', 'module', 90, 0),
('4b836b7a-c136-2288-2d77-541cc97079f2', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'list', 'Emails', 'module', 90, 0),
('4e1bb596-552c-1c13-e4d1-541cc9dac65e', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'import', 'ProjectTask', 'module', 90, 0),
('4e4961d1-0da8-3ece-0089-541cc9ba3d8d', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'import', 'Notes', 'module', 90, 0),
('5024042d-1bb3-cfb0-ce95-541cc961a579', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'massupdate', 'ProspectLists', 'module', 90, 0),
('51010fa5-f378-9f86-257e-541cc941b57e', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'export', 'Meetings', 'module', 90, 0),
('53873156-bbb7-beab-2548-541cc9600743', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'edit', 'Emails', 'module', 90, 0),
('53a10c13-591c-0588-a474-541cc92032ce', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'export', 'ProjectTask', 'module', 90, 0),
('53a365a7-8323-4886-8bc5-541cc9849d84', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'edit', 'Prospects', 'module', 90, 0),
('5635379d-345e-619f-9bf1-541cc976b04d', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'export', 'Notes', 'module', 90, 0),
('58ef6cbb-0d41-5693-528c-541cc9841c32', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'access', 'Tasks', 'module', 89, 0),
('590e5fdc-0640-cdd6-53bb-541cc900fbcf', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'delete', 'Emails', 'module', 90, 0),
('5b85b55e-ada0-7647-8bc5-541cc980ed50', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'massupdate', 'ProjectTask', 'module', 90, 0),
('5bb37071-a6dc-a943-a4a0-541cc9823855', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'delete', 'Prospects', 'module', 90, 0),
('5bc1bbda-99e4-1cbc-e2fc-541cc99ee48d', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'massupdate', 'Notes', 'module', 90, 0),
('61075f42-77eb-f622-ce88-541cc9248596', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'import', 'Emails', 'module', 90, 0),
('612acc71-66b0-af32-0fcf-541cc964e073', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'access', 'Cases', 'module', 89, 0),
('61336183-6a55-de3f-934f-541cc9b16d40', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'view', 'Tasks', 'module', 90, 0),
('64006cb8-1506-aaf3-490e-541cc9922c0b', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'import', 'Prospects', 'module', 90, 0),
('6669d38d-e684-cb4c-d938-541cc9f06b7c', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'view', 'Cases', 'module', 90, 0),
('66b3b097-ed85-5dbf-fe24-541cc9e8616c', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'export', 'Emails', 'module', 90, 0),
('692e1597-3b0e-b3fd-3f81-541cc9c9d87f', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'list', 'Tasks', 'module', 90, 0),
('6bfef31a-a77b-8f61-a970-541cc93b05fc', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'list', 'Cases', 'module', 90, 0),
('6eb2e0c5-05ff-00eb-8de9-541cc9b03237', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'massupdate', 'Emails', 'module', 90, 0),
('6ec4ab72-ead1-b1a7-4463-541cc98df8cb', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'edit', 'Tasks', 'module', 90, 0),
('71489c33-deec-9805-0fd8-541cc9b74096', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'edit', 'Cases', 'module', 90, 0),
('7157c4dd-8e33-8043-9d6d-541cc98c84a1', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'export', 'Prospects', 'module', 90, 0),
('76cc8e5b-08e3-1d2b-6aad-541cc9f3e1eb', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'delete', 'Tasks', 'module', 90, 0),
('76f876d8-4105-c215-28bb-541cc92fe812', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'delete', 'Cases', 'module', 90, 0),
('790d0b9e-67d9-122a-aa72-541cc91a1d2c', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'import', 'Campaigns', 'module', 90, 0),
('79140f74-0ee5-2f2c-ebdd-541cc9b81df4', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'export', 'Users', 'module', 90, 0),
('796105a5-edbd-20d4-c48e-541cc99874b6', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'access', 'Bugs', 'module', 89, 0),
('798e037b-a4f6-275b-659a-541cc9e52a93', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'access', 'EmailMarketing', 'module', 89, 0),
('79a98c94-9475-1c3c-addc-541cc91efd9f', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'massupdate', 'Prospects', 'module', 90, 0),
('7c21d50f-97c7-f01b-dcda-541cc94a7565', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'import', 'Cases', 'module', 90, 0),
('7c34ae1f-c145-5a36-b2c4-541cc9969a8b', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'access', 'Project', 'module', 89, 0),
('7c57819b-9b10-b0a9-4c64-541cc9b3fc46', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'import', 'Tasks', 'module', 90, 0),
('81a63319-d7f7-2cc8-ecf2-541cc90ddb12', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'export', 'Tasks', 'module', 90, 0),
('81ca2be0-5fc2-1d52-0496-541cc92282ba', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'export', 'Cases', 'module', 90, 0),
('842d7aee-16e9-fc5e-16cf-541cc9785189', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'view', 'Project', 'module', 90, 0),
('844da81b-6c36-c959-4c5c-541cc9fb4ded', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'access', 'Accounts', 'module', 89, 0),
('870defdc-ca1f-3c8f-2a30-541cc9d51fff', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'massupdate', 'Cases', 'module', 90, 0),
('873181df-a08a-44f6-acb1-541cc93181c6', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'massupdate', 'Tasks', 'module', 90, 0),
('89ca1681-6d25-2148-a9ca-541cc93f0f2b', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'list', 'Project', 'module', 90, 0),
('8c94b248-3a9d-e4c8-2126-541cc9e39018', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'view', 'Accounts', 'module', 90, 0),
('8f5724ea-0af1-b75f-2db0-541cc97b8431', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'access', 'Contacts', 'module', 89, 0),
('91dd2548-ce5a-9a45-03b3-541cc94c36ce', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'edit', 'Project', 'module', 90, 0),
('94afbd10-c54b-88fb-c500-541cc963b8f3', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'list', 'Accounts', 'module', 90, 0),
('97474d4f-10bb-c47d-cc81-541cc95e4362', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'view', 'Contacts', 'module', 90, 0),
('9798a1a2-d0c1-8599-f06f-541cc9ae68f8', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'delete', 'Project', 'module', 90, 0),
('97e6aa88-07b1-6755-130c-541cc995cd6b', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'access', 'Leads', 'module', 89, 0),
('9cabbe47-05c3-175e-a7b2-541cc9507bf7', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'view', 'Leads', 'module', 90, 0),
('9cdf23ab-a0e4-ba94-6f9b-541cc914b6dc', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'edit', 'Accounts', 'module', 90, 0),
('9f57c038-f28e-7b72-308f-541cc9e95893', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'import', 'Project', 'module', 90, 0),
('9f9b409d-7ded-dbe5-4fff-541cc9f18bfd', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'list', 'Contacts', 'module', 90, 0),
('a245068d-ae98-3432-e063-541cc9bc1990', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'list', 'Leads', 'module', 90, 0),
('a4ec0e7b-b4ae-5c1e-2d61-541cc9636e4f', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'export', 'Project', 'module', 90, 0),
('a50f9b70-97bb-7653-0cd2-541cc9d880c8', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'access', 'Calls', 'module', 89, 0),
('a6460654-3ca2-a604-a5f8-541cc933eca9', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'delete', 'Opportunities', 'module', 90, 0),
('a78c036e-95ff-ba49-7cac-541cc989dd5a', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'edit', 'Leads', 'module', 90, 0),
('a7ac76ca-4551-8164-2c21-541cc958c99d', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'delete', 'Accounts', 'module', 90, 0),
('a7d3ad09-b27c-1132-7582-541cc93472a7', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'edit', 'Contacts', 'module', 90, 0),
('ac2b0f83-2f2c-2d97-7c05-541cfedb4ff8', '2014-09-20 04:09:46', '2014-09-20 04:09:46', '1', '1', 'access', 'grp_p_groups', 'module', 89, 0),
('acefe303-f232-f960-74e7-541cc9f254b1', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'massupdate', 'Project', 'module', 90, 0),
('ad1a13e6-c9d8-79ff-1b72-541cc927259f', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'delete', 'Leads', 'module', 90, 0),
('ad440925-6637-44ae-21ad-541cc9dbe6a9', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'view', 'Calls', 'module', 90, 0),
('afde5ff7-a730-a8a7-a9d3-541cc9b8f0c9', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'import', 'Accounts', 'module', 90, 0),
('afe14e88-6904-1a0a-d512-541cc97506af', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'delete', 'Contacts', 'module', 90, 0),
('afe44fab-9142-78d5-31cf-541cc95acf59', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'access', 'Opportunities', 'module', 89, 0),
('b25bfbfe-bc17-44e3-ff06-541cc9e39653', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'import', 'Leads', 'module', 90, 0),
('b28b47c1-2bdf-8f5f-459e-541cc9af5f91', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'access', 'EAPM', 'module', 89, 0),
('b290d19f-ef4d-1c7c-9712-541cc964a3dc', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'access', 'EmailTemplates', 'module', 89, 0),
('b503a49e-f33f-fe3d-bf42-541cc9050768', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'access', 'Users', 'module', 89, 0),
('b54583d8-bb95-409e-bbec-541cc9122e40', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'list', 'Calls', 'module', 90, 0),
('b7d60ebb-1b3d-1c4a-efda-541cc98b088e', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'import', 'Contacts', 'module', 90, 0),
('b7d8bedb-cc73-4ed9-cd42-541cc9202f5e', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'export', 'Accounts', 'module', 90, 0),
('b7f94f75-5a78-d68e-cc13-541cc9a32c9c', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'export', 'Leads', 'module', 90, 0),
('b8216055-04f5-e547-f50d-541cc92cac4d', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'view', 'EAPM', 'module', 90, 0),
('baa79fff-925e-5b08-a57b-541cc9830a6d', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'view', 'Users', 'module', 90, 0),
('bac614f4-8809-d6a8-4301-541cc94b070b', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'view', 'EmailTemplates', 'module', 90, 0),
('bd3f4ccb-76a0-11ed-9931-541cc997a8bc', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'massupdate', 'Leads', 'module', 90, 0),
('bd66086f-bb89-625b-e961-541cc9be5fe9', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'list', 'EAPM', 'module', 90, 0),
('bd7be71c-37ca-ab4c-5b5f-541cc9e44adc', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'edit', 'Calls', 'module', 90, 0),
('c0514bf0-f522-3544-ba45-541cc9b74029', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'export', 'Contacts', 'module', 90, 0),
('c052942e-5ccc-9ff1-bfd6-541cc91590ac', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'massupdate', 'Accounts', 'module', 90, 0),
('c2c67ecd-b907-abc8-b787-541cc9f20a06', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'list', 'EmailTemplates', 'module', 90, 0),
('c31d29d9-4ecb-8f56-0c03-541cc928abd3', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'edit', 'EAPM', 'module', 90, 0),
('c5ad3385-c22b-dceb-8f2e-541cc910c74b', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'access', 'ProspectLists', 'module', 89, 0),
('c5b408b8-481e-51c1-eafc-541cc9e427c3', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'delete', 'Calls', 'module', 90, 0),
('c8351a2f-201b-0f40-057f-541cc9311488', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'massupdate', 'Contacts', 'module', 90, 0),
('c849d0e6-3a74-ad28-c40c-541cc97e3acd', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'delete', 'EAPM', 'module', 90, 0),
('cb0218de-d3b5-c95d-1c5c-541cc90f5d25', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'view', 'ProspectLists', 'module', 90, 0),
('cb0afa12-6e88-1591-3f46-541cc9a42fc9', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'edit', 'EmailTemplates', 'module', 90, 0),
('cd020051-9a0f-1f07-0af3-541cc94dda2c', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'view', 'Bugs', 'module', 90, 0),
('cdcf3559-0594-5b1e-bdf8-541cc9a536d3', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'import', 'EAPM', 'module', 90, 0),
('cdd43edc-d6ca-1473-196f-541cc93a8e8b', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'access', 'Meetings', 'module', 89, 0),
('cddacca3-5ada-5596-c3f0-541cc9d713ae', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'import', 'Calls', 'module', 90, 0),
('d1605ba1-996a-fead-b1e7-541cc9fe0886', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'list', 'Users', 'module', 90, 0),
('d1a50214-5c86-4b92-9fb8-541cc951c4f3', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'massupdate', 'Meetings', 'module', 90, 0),
('d1cd0a28-b0d4-7fc3-81fc-541cc91d62a4', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'export', 'Campaigns', 'module', 90, 0),
('d32d9283-0c45-11de-287f-541cc9cc21ab', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'export', 'EAPM', 'module', 90, 0),
('d52811a9-bb0c-8d65-6545-541cc9860cbc', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'delete', 'EmailTemplates', 'module', 90, 0),
('d5c5ffb9-67bc-e4c8-df1b-541cc99658e6', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'view', 'Meetings', 'module', 90, 0),
('d5cd2970-ae5f-ffe2-f785-541cc9ac10b5', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'export', 'Calls', 'module', 90, 0),
('d5de25b0-e5e2-a0dc-1c9d-541cc9a197e2', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'access', 'Campaigns', 'module', 89, 0),
('d870895b-442e-53d6-cf65-541cc9312147', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'list', 'ProspectLists', 'module', 90, 0),
('d8b9599b-d0be-0615-97a0-541cc9e5625c', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'massupdate', 'EAPM', 'module', 90, 0),
('db5afb61-926d-c43a-1edd-541cc99d49f7', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'import', 'EmailTemplates', 'module', 90, 0),
('db5bd6e5-7de8-9fd4-17ec-541cc9058148', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'list', 'Meetings', 'module', 90, 0),
('dc1501a6-87ce-d458-1320-541cc988a499', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'view', 'Opportunities', 'module', 90, 0),
('ddd8b9dd-6e8f-4dda-ac8a-541cc9ca1757', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'view', 'Campaigns', 'module', 90, 0),
('de0948a0-dad5-b722-5a21-541cc908589d', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'edit', 'ProspectLists', 'module', 90, 0),
('de144d19-54f6-22f8-312a-541cc9c61ce1', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'massupdate', 'Calls', 'module', 90, 0),
('e06e20fa-381f-017f-29b8-541cc9257ccc', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'edit', 'Users', 'module', 90, 0),
('e356baf6-1e14-28c8-aa8a-541cc9b34719', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'edit', 'Meetings', 'module', 90, 0),
('e35a72ad-a0c9-5e17-ac6d-541cc9d19605', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'export', 'EmailTemplates', 'module', 90, 0),
('e36e6e8c-1bc5-2e58-2a07-541cc9ae7a5f', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'list', 'Campaigns', 'module', 90, 0),
('e6097af6-05fe-430c-6e56-541cc9c44159', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'delete', 'ProspectLists', 'module', 90, 0),
('e61e848f-6f34-7ada-af97-541cc95af0b4', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'list', 'Opportunities', 'module', 90, 0),
('e9019509-d88a-09ce-71d3-541cc9f45d45', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'delete', 'Meetings', 'module', 90, 0),
('eb5c56c9-501e-864a-675d-541cc915600c', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'delete', 'Users', 'module', 90, 0),
('eb6e9597-63ab-c038-110a-541cc944f64a', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'edit', 'Campaigns', 'module', 90, 0),
('eb8fb3bb-cc14-9497-2ed8-541cc9dc719c', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'massupdate', 'EmailTemplates', 'module', 90, 0),
('eb937fee-0a53-2669-6b00-541cc98ee675', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'import', 'ProspectLists', 'module', 90, 0),
('f0df6888-a1e6-8e33-2f67-541cc9a9c769', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'import', 'Users', 'module', 90, 0),
('f104d9e3-ad81-d829-929f-541cc9116986', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'import', 'Meetings', 'module', 90, 0),
('f39b3569-16f0-3536-d33a-541cc912404c', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'export', 'ProspectLists', 'module', 90, 0),
('f3adcd46-807a-2b49-b965-541cc9caae94', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'edit', 'Opportunities', 'module', 90, 0),
('f3b3212e-6607-7d2d-8978-541cc922cdbd', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'delete', 'Campaigns', 'module', 90, 0),
('f8d90746-f495-d65d-2269-541cc916189c', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'massupdate', 'Users', 'module', 90, 0),
('fed00bfb-95d5-e6fc-0032-541cc98704a4', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'view', 'EmailMarketing', 'module', 90, 0);

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles`
--

CREATE TABLE IF NOT EXISTS `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles_actions`
--

CREATE TABLE IF NOT EXISTS `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acl_role_id` (`role_id`),
  KEY `idx_acl_action_id` (`action_id`),
  KEY `idx_aclrole_action` (`role_id`,`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles_users`
--

CREATE TABLE IF NOT EXISTS `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id` (`role_id`),
  KEY `idx_acluser_id` (`user_id`),
  KEY `idx_aclrole_user` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE IF NOT EXISTS `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL,
  KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bugs`
--

CREATE TABLE IF NOT EXISTS `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bugsnumk` (`bug_number`),
  KEY `bug_number` (`bug_number`),
  KEY `idx_bug_name` (`name`),
  KEY `idx_bugs_assigned_user` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bugs_audit`
--

CREATE TABLE IF NOT EXISTS `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bugs_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls`
--

CREATE TABLE IF NOT EXISTS `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_call_name` (`name`),
  KEY `idx_status` (`status`),
  KEY `idx_calls_date_start` (`date_start`),
  KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_contacts`
--

CREATE TABLE IF NOT EXISTS `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_call_call` (`call_id`),
  KEY `idx_con_call_con` (`contact_id`),
  KEY `idx_call_contact` (`call_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_leads`
--

CREATE TABLE IF NOT EXISTS `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_call_call` (`call_id`),
  KEY `idx_lead_call_lead` (`lead_id`),
  KEY `idx_call_lead` (`call_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_users`
--

CREATE TABLE IF NOT EXISTS `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_call_call` (`call_id`),
  KEY `idx_usr_call_usr` (`user_id`),
  KEY `idx_call_users` (`call_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE IF NOT EXISTS `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_count` int(11) DEFAULT '0',
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT '0',
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text,
  `content` text,
  `frequency` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `camp_auto_tracker_key` (`tracker_key`),
  KEY `idx_campaign_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns_audit`
--

CREATE TABLE IF NOT EXISTS `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_campaigns_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_log`
--

CREATE TABLE IF NOT EXISTS `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_camp_tracker` (`target_tracker_key`),
  KEY `idx_camp_campaign_id` (`campaign_id`),
  KEY `idx_camp_more_info` (`more_information`),
  KEY `idx_target_id` (`target_id`),
  KEY `idx_target_id_deleted` (`target_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_trkrs`
--

CREATE TABLE IF NOT EXISTS `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(30) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `campaign_tracker_key_idx` (`tracker_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE IF NOT EXISTS `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text,
  `work_log` text,
  `account_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `casesnumk` (`case_number`),
  KEY `case_number` (`case_number`),
  KEY `idx_case_name` (`name`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cases_audit`
--

CREATE TABLE IF NOT EXISTS `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_cases_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases_bugs`
--

CREATE TABLE IF NOT EXISTS `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_cas_bug_cas` (`case_id`),
  KEY `idx_cas_bug_bug` (`bug_id`),
  KEY `idx_case_bug` (`case_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text,
  KEY `idx_config_cat` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`category`, `name`, `value`) VALUES
('notify', 'fromaddress', 'do_not_reply@example.com'),
('notify', 'fromname', 'SugarCRM'),
('notify', 'send_by_default', '1'),
('notify', 'on', '1'),
('notify', 'send_from_assigning_user', '0'),
('info', 'sugar_version', '6.5.17'),
('MySettings', 'tab', 'YToxNzp7czo0OiJIb21lIjtzOjQ6IkhvbWUiO3M6ODoiQWNjb3VudHMiO3M6ODoiQWNjb3VudHMiO3M6ODoiQ29udGFjdHMiO3M6ODoiQ29udGFjdHMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6NToiTGVhZHMiO3M6NToiTGVhZHMiO3M6ODoiQ2FsZW5kYXIiO3M6ODoiQ2FsZW5kYXIiO3M6OToiRG9jdW1lbnRzIjtzOjk6IkRvY3VtZW50cyI7czo2OiJFbWFpbHMiO3M6NjoiRW1haWxzIjtzOjk6IkNhbXBhaWducyI7czo5OiJDYW1wYWlnbnMiO3M6NToiQ2FsbHMiO3M6NToiQ2FsbHMiO3M6ODoiTWVldGluZ3MiO3M6ODoiTWVldGluZ3MiO3M6NToiVGFza3MiO3M6NToiVGFza3MiO3M6NToiTm90ZXMiO3M6NToiTm90ZXMiO3M6NToiQ2FzZXMiO3M6NToiQ2FzZXMiO3M6OToiUHJvc3BlY3RzIjtzOjk6IlByb3NwZWN0cyI7czoxMzoiUHJvc3BlY3RMaXN0cyI7czoxMzoiUHJvc3BlY3RMaXN0cyI7czoxMjoiZ3JwX3BfZ3JvdXBzIjtzOjEyOiJncnBfcF9ncm91cHMiO30='),
('portal', 'on', '0'),
('tracker', 'Tracker', '1'),
('system', 'skypeout_on', '1'),
('sugarfeed', 'enabled', '1'),
('sugarfeed', 'module_UserFeed', '1'),
('sugarfeed', 'module_Cases', '1'),
('sugarfeed', 'module_Contacts', '1'),
('sugarfeed', 'module_Leads', '1'),
('sugarfeed', 'module_Opportunities', '1'),
('Update', 'CheckUpdates', 'manual'),
('system', 'name', 'SugarCRM playground'),
('system', 'adminwizard', '1'),
('notify', 'allow_default_outbound', '0'),
('proxy', 'on', '0'),
('proxy', 'host', ''),
('proxy', 'port', ''),
('proxy', 'auth', '0'),
('proxy', 'username', ''),
('proxy', 'password', ''),
('captcha', 'on', '0'),
('captcha', 'public_key', ''),
('captcha', 'private_key', ''),
('ldap', 'hostname', ''),
('ldap', 'port', ''),
('ldap', 'base_dn', ''),
('ldap', 'login_filter', ''),
('ldap', 'bind_attr', ''),
('ldap', 'login_attr', ''),
('ldap', 'group_dn', ''),
('ldap', 'group_name', ''),
('ldap', 'group_user_attr', ''),
('ldap', 'group_attr', ''),
('ldap', 'admin_user', ''),
('ldap', 'admin_password', ''),
('ldap', 'auto_create_users', '0'),
('ldap', 'enc_key', ''),
('system', 'ldap_enabled', '0'),
('ldap', 'group_attr_req_dn', '0'),
('ldap', 'group', '0'),
('ldap', 'authentication', '0');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  KEY `idx_reports_to_id` (`reports_to_id`),
  KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  KEY `idx_cont_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `salutation`, `first_name`, `last_name`, `title`, `department`, `do_not_call`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `assistant`, `assistant_phone`, `lead_source`, `reports_to_id`, `birthdate`, `campaign_id`) VALUES
('3cfc5d8c-d79a-082e-ae87-54253299b625', '2014-09-26 09:31:27', '2014-09-26 13:45:02', '1', '1', NULL, 0, '4abda5b9-b267-1f2d-460c-5425691c46d2', NULL, '0926_contact_2', '0926_contact_2', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Melbourne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, ''),
('5b2176b3-e193-6aa6-7ba5-5422cd87668b', '2014-09-24 13:55:47', '2014-09-24 13:55:47', '1', '1', '', 0, '1', '', 'first_name', 'last_name', '', '', 0, NULL, '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, ''),
('612785b8-8f32-0869-d45b-5422cd3e121e', '2014-09-24 13:55:01', '2014-09-24 13:55:01', '1', '1', '', 0, '1', '', '', 'first_name_blank', '', '', 0, NULL, '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, ''),
('79430caa-72ba-5f36-7fcc-542532c5c851', '2014-09-26 09:31:48', '2014-09-26 13:45:02', '1', '1', NULL, 0, '4abda5b9-b267-1f2d-460c-5425691c46d2', NULL, '0926_contact_3', '0926_contact_3', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Melbourne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, ''),
('947fd8d8-2629-3848-47ef-542009e4012c', '2014-09-22 11:34:57', '2014-09-22 11:34:57', '1', '1', '', 0, '1', '', 'name1', 'name2', '', '', 0, NULL, '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, ''),
('c8d5011f-c037-4ccb-8cde-542532a798c5', '2014-09-26 09:31:02', '2014-09-26 13:45:02', '1', '1', NULL, 0, '4abda5b9-b267-1f2d-460c-5425691c46d2', NULL, '0926_contact_1', '0926_contact_1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Melbourne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `contacts_audit`
--

CREATE TABLE IF NOT EXISTS `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_contacts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts_audit`
--

INSERT INTO `contacts_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('8d5f8eea-fa60-21c8-1f55-54256de9a703', '3cfc5d8c-d79a-082e-ae87-54253299b625', '2014-09-26 13:45:02', '1', 'assigned_user_id', 'relate', '1', '4abda5b9-b267-1f2d-460c-5425691c46d2', NULL, NULL),
('a7026e59-c066-ef76-bb49-54256dcac557', '79430caa-72ba-5f36-7fcc-542532c5c851', '2014-09-26 13:45:02', '1', 'assigned_user_id', 'relate', '1', '4abda5b9-b267-1f2d-460c-5425691c46d2', NULL, NULL),
('aaabf2f8-3eed-81c3-3f4a-54256dc8b237', 'c8d5011f-c037-4ccb-8cde-542532a798c5', '2014-09-26 13:45:02', '1', 'assigned_user_id', 'relate', '1', '4abda5b9-b267-1f2d-460c-5425691c46d2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts_bugs`
--

CREATE TABLE IF NOT EXISTS `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_bug_con` (`contact_id`),
  KEY `idx_con_bug_bug` (`bug_id`),
  KEY `idx_contact_bug` (`contact_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_cases`
--

CREATE TABLE IF NOT EXISTS `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_case_con` (`contact_id`),
  KEY `idx_con_case_case` (`case_id`),
  KEY `idx_contacts_cases` (`contact_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_cstm`
--

CREATE TABLE IF NOT EXISTS `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `fullname_c` varchar(255) DEFAULT NULL,
  `weather_info_c` text,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts_cstm`
--

INSERT INTO `contacts_cstm` (`id_c`, `fullname_c`, `weather_info_c`) VALUES
('3cfc5d8c-d79a-082e-ae87-54253299b625', '0926_contact_2 0926_contact_2', ''),
('5b2176b3-e193-6aa6-7ba5-5422cd87668b', 'first_name last_name', NULL),
('612785b8-8f32-0869-d45b-5422cd3e121e', 'first_name_blank', NULL),
('79430caa-72ba-5f36-7fcc-542532c5c851', '0926_contact_3 0926_contact_3', ''),
('c8d5011f-c037-4ccb-8cde-542532a798c5', '0926_contact_1 0926_contact_1', '');

-- --------------------------------------------------------

--
-- Table structure for table `contacts_users`
--

CREATE TABLE IF NOT EXISTS `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_users_con` (`contact_id`),
  KEY `idx_con_users_user` (`user_id`),
  KEY `idx_contacts_users` (`contact_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cron_remove_documents`
--

CREATE TABLE IF NOT EXISTS `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  KEY `idx_cron_remove_document_stamp` (`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE IF NOT EXISTS `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT '0',
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_currency_name` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE IF NOT EXISTS `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT '0',
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_beanid_set_num` (`bean_id`,`set_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_doc_cat` (`category_id`,`subcategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_accounts`
--

CREATE TABLE IF NOT EXISTS `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  KEY `documents_accounts_document_id` (`document_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_bugs`
--

CREATE TABLE IF NOT EXISTS `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  KEY `documents_bugs_document_id` (`document_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_cases`
--

CREATE TABLE IF NOT EXISTS `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_cases_case_id` (`case_id`,`document_id`),
  KEY `documents_cases_document_id` (`document_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_contacts`
--

CREATE TABLE IF NOT EXISTS `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  KEY `documents_contacts_document_id` (`document_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_opportunities`
--

CREATE TABLE IF NOT EXISTS `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `document_revisions`
--

CREATE TABLE IF NOT EXISTS `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documentrevision_mimetype` (`file_mime_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eapm`
--

CREATE TABLE IF NOT EXISTS `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emailman`
--

CREATE TABLE IF NOT EXISTS `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  KEY `idx_eman_campaign_id` (`campaign_id`),
  KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE IF NOT EXISTS `emails` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_name` (`name`),
  KEY `idx_message_id` (`message_id`),
  KEY `idx_email_parent_id` (`parent_id`),
  KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails_beans`
--

CREATE TABLE IF NOT EXISTS `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emails_beans_bean_id` (`bean_id`),
  KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails_email_addr_rel`
--

CREATE TABLE IF NOT EXISTS `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  KEY `idx_eearl_address_id` (`email_address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails_text`
--

CREATE TABLE IF NOT EXISTS `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`email_id`),
  KEY `emails_textfromaddr` (`from_addr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_addresses`
--

CREATE TABLE IF NOT EXISTS `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_addresses`
--

INSERT INTO `email_addresses` (`id`, `email_address`, `email_address_caps`, `invalid_email`, `opt_out`, `date_created`, `date_modified`, `deleted`) VALUES
('4d2eb7ed-cbe7-bca9-2a14-5425698a229d', '0926_user_1@test.com', '0926_USER_1@TEST.COM', 0, 0, '2014-09-26 13:28:27', '2014-09-26 13:28:27', 0),
('57cb9384-47a1-5573-ee24-541ccacec84a', 'mihir1408@gmail.com', 'MIHIR1408@GMAIL.COM', 0, 0, '2014-09-20 00:30:30', '2014-09-20 00:30:30', 0),
('8bd0a117-a4d3-9508-046b-54257982d40f', '0926_user_2@as.as', '0926_USER_2@AS.AS', 0, 0, '2014-09-26 14:34:45', '2014-09-26 14:34:45', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_addr_bean_rel`
--

CREATE TABLE IF NOT EXISTS `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_email_address_id` (`email_address_id`),
  KEY `idx_bean_id` (`bean_id`,`bean_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_addr_bean_rel`
--

INSERT INTO `email_addr_bean_rel` (`id`, `email_address_id`, `bean_id`, `bean_module`, `primary_address`, `reply_to_address`, `date_created`, `date_modified`, `deleted`) VALUES
('4cf0322a-6f2e-71a3-6e86-542569688bf7', '4d2eb7ed-cbe7-bca9-2a14-5425698a229d', '4abda5b9-b267-1f2d-460c-5425691c46d2', 'Users', 1, 0, '2014-09-26 13:28:27', '2014-09-26 13:28:27', 0),
('579631cb-5fed-d379-6278-541cca21526a', '57cb9384-47a1-5573-ee24-541ccacec84a', '1', 'Users', 1, 0, '2014-09-20 00:30:30', '2014-09-20 00:30:30', 0),
('8b922a25-1c24-4de7-59e1-54257981c893', '8bd0a117-a4d3-9508-046b-54257982d40f', '89dc998d-57d6-adca-d06b-54257971e11c', 'Users', 1, 0, '2014-09-26 14:34:45', '2014-09-26 14:34:45', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_cache`
--

CREATE TABLE IF NOT EXISTS `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) unsigned DEFAULT NULL,
  `imap_uid` int(10) unsigned DEFAULT NULL,
  `msgno` int(10) unsigned DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL,
  KEY `idx_ie_id` (`ie_id`),
  KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  KEY `idx_mail_subj` (`subject`),
  KEY `idx_mail_to` (`toaddr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_marketing`
--

CREATE TABLE IF NOT EXISTS `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emmkt_name` (`name`),
  KEY `idx_emmkit_del` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_marketing_prospect_lists`
--

CREATE TABLE IF NOT EXISTS `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE IF NOT EXISTS `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  `body_html` text,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_template_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `published`, `name`, `description`, `subject`, `body`, `body_html`, `deleted`, `assigned_user_id`, `text_only`, `type`) VALUES
('d6d5a0ba-cb53-7dc3-474c-541cc90455d2', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '1', 'off', 'System-generated password email', 'This template is used when the System Administrator sends a new password to a user.', 'New account information', '\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.', '<div><table width="550"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>', 0, NULL, 0, NULL),
('e202fcce-938a-9cba-3c79-541cc937a1b5', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '1', 'off', 'Forgot Password email', 'This template is used to send a user a link to click to reset the user''s account password.', 'Reset your account password', '\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid', '<div><table width="550"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>', 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fields_meta_data`
--

CREATE TABLE IF NOT EXISTS `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint(6) DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text,
  PRIMARY KEY (`id`),
  KEY `idx_meta_id_del` (`id`,`deleted`),
  KEY `idx_meta_cm_del` (`custom_module`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fields_meta_data`
--

INSERT INTO `fields_meta_data` (`id`, `name`, `vname`, `comments`, `help`, `custom_module`, `type`, `len`, `required`, `default_value`, `date_modified`, `deleted`, `audited`, `massupdate`, `duplicate_merge`, `reportable`, `importable`, `ext1`, `ext2`, `ext3`, `ext4`) VALUES
('Contactsfullname_c', 'fullname_c', 'LBL_FULLNAME', '', '', 'Contacts', 'varchar', 255, 0, '', '2014-09-24 13:32:10', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactsweather_info_c', 'weather_info_c', 'LBL_WEATHER_INFO', '', '', 'Contacts', 'text', NULL, 0, '', '2014-09-26 12:01:08', 0, 0, 0, 0, 1, 'true', '', '4', '20', '');

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE IF NOT EXISTS `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_folder` (`parent_folder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `folders_rel`
--

CREATE TABLE IF NOT EXISTS `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `folders_subscriptions`
--

CREATE TABLE IF NOT EXISTS `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `grp_p_groups`
--

CREATE TABLE IF NOT EXISTS `grp_p_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `group_address_street` varchar(150) DEFAULT NULL,
  `group_address_city` varchar(100) DEFAULT NULL,
  `group_address_state` varchar(100) DEFAULT NULL,
  `group_address_postalcode` varchar(20) DEFAULT NULL,
  `group_address_country` varchar(255) DEFAULT NULL,
  `phone_group` varchar(100) DEFAULT NULL,
  `group_phone_extension` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `grp_p_groups_audit`
--

CREATE TABLE IF NOT EXISTS `grp_p_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_grp_p_groups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `import_maps`
--

CREATE TABLE IF NOT EXISTS `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email`
--

CREATE TABLE IF NOT EXISTS `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text,
  `delete_seen` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email_autoreply`
--

CREATE TABLE IF NOT EXISTS `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ie_autoreplied_to` (`autoreplied_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email_cache_ts`
--

CREATE TABLE IF NOT EXISTS `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `job_queue`
--

CREATE TABLE IF NOT EXISTS `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text,
  `target` varchar(255) DEFAULT NULL,
  `data` text,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  KEY `idx_status_entered` (`status`,`date_entered`),
  KEY `idx_status_modified` (`status`,`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE IF NOT EXISTS `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  KEY `idx_lead_assigned` (`assigned_user_id`),
  KEY `idx_lead_contact` (`contact_id`),
  KEY `idx_reports_to` (`reports_to_id`),
  KEY `idx_lead_phone_work` (`phone_work`),
  KEY `idx_leads_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leads_audit`
--

CREATE TABLE IF NOT EXISTS `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_leads_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `linked_documents`
--

CREATE TABLE IF NOT EXISTS `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE IF NOT EXISTS `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT '0',
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mtg_name` (`name`),
  KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  KEY `idx_meet_date_start` (`date_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_contacts`
--

CREATE TABLE IF NOT EXISTS `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_mtg_mtg` (`meeting_id`),
  KEY `idx_con_mtg_con` (`contact_id`),
  KEY `idx_meeting_contact` (`meeting_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_leads`
--

CREATE TABLE IF NOT EXISTS `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_meeting_meeting` (`meeting_id`),
  KEY `idx_lead_meeting_lead` (`lead_id`),
  KEY `idx_meeting_lead` (`meeting_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_users`
--

CREATE TABLE IF NOT EXISTS `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_mtg_mtg` (`meeting_id`),
  KEY `idx_usr_mtg_usr` (`user_id`),
  KEY `idx_meeting_users` (`meeting_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE IF NOT EXISTS `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT '0',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_note_name` (`name`),
  KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  KEY `idx_note_contact` (`contact_id`),
  KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_consumer`
--

CREATE TABLE IF NOT EXISTS `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ckey` (`c_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_nonce`
--

CREATE TABLE IF NOT EXISTS `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`conskey`,`nonce`),
  KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`,`deleted`),
  KEY `oauth_state_ts` (`tstate`,`token_ts`),
  KEY `constoken_key` (`consumer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities`
--

CREATE TABLE IF NOT EXISTS `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_opp_name` (`name`),
  KEY `idx_opp_assigned` (`assigned_user_id`),
  KEY `idx_opp_id_deleted` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_audit`
--

CREATE TABLE IF NOT EXISTS `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_opportunities_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_contacts`
--

CREATE TABLE IF NOT EXISTS `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_opp_con` (`contact_id`),
  KEY `idx_con_opp_opp` (`opportunity_id`),
  KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `outbound_email`
--

CREATE TABLE IF NOT EXISTS `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` int(5) DEFAULT '0',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `oe_user_id_idx` (`id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `outbound_email`
--

INSERT INTO `outbound_email` (`id`, `name`, `type`, `user_id`, `mail_sendtype`, `mail_smtptype`, `mail_smtpserver`, `mail_smtpport`, `mail_smtpuser`, `mail_smtppass`, `mail_smtpauth_req`, `mail_smtpssl`) VALUES
('7fa5ec9f-087f-27c2-f96b-541cca482e74', 'system', 'system', '1', 'SMTP', 'other', '', 25, '', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_accounts`
--

CREATE TABLE IF NOT EXISTS `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_acct_proj` (`project_id`),
  KEY `idx_proj_acct_acct` (`account_id`),
  KEY `projects_accounts_alt` (`project_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_bugs`
--

CREATE TABLE IF NOT EXISTS `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_bug_proj` (`project_id`),
  KEY `idx_proj_bug_bug` (`bug_id`),
  KEY `projects_bugs_alt` (`project_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_cases`
--

CREATE TABLE IF NOT EXISTS `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_case_proj` (`project_id`),
  KEY `idx_proj_case_case` (`case_id`),
  KEY `projects_cases_alt` (`project_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_contacts`
--

CREATE TABLE IF NOT EXISTS `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_con_proj` (`project_id`),
  KEY `idx_proj_con_con` (`contact_id`),
  KEY `projects_contacts_alt` (`project_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_opportunities`
--

CREATE TABLE IF NOT EXISTS `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_opp_proj` (`project_id`),
  KEY `idx_proj_opp_opp` (`opportunity_id`),
  KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_products`
--

CREATE TABLE IF NOT EXISTS `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_prod_project` (`project_id`),
  KEY `idx_proj_prod_product` (`product_id`),
  KEY `projects_products_alt` (`project_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_task`
--

CREATE TABLE IF NOT EXISTS `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `description` text,
  `predecessors` text,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT '1',
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int(11) DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_task_audit`
--

CREATE TABLE IF NOT EXISTS `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_project_task_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospects`
--

CREATE TABLE IF NOT EXISTS `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospect_auto_tracker_key` (`tracker_key`),
  KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  KEY `idx_prospects_id_del` (`id`,`deleted`),
  KEY `idx_prospects_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_lists`
--

CREATE TABLE IF NOT EXISTS `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text,
  `domain_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_prospect_list_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_lists_prospects`
--

CREATE TABLE IF NOT EXISTS `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_plp_pro_id` (`prospect_list_id`),
  KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_list_campaigns`
--

CREATE TABLE IF NOT EXISTS `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_pro_id` (`prospect_list_id`),
  KEY `idx_cam_id` (`campaign_id`),
  KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `relationships`
--

CREATE TABLE IF NOT EXISTS `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(128) DEFAULT NULL,
  `join_key_lhs` varchar(128) DEFAULT NULL,
  `join_key_rhs` varchar(128) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_rel_name` (`relationship_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `relationships`
--

INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('109879b7-e9f6-f292-ecb6-54257c3bc017', 'prospects_modified_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('119270f9-a422-cd4d-7de5-54257c57d0dc', 'prospects_created_by', 'Users', 'users', 'id', 'Prospects', 'prospects', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('124dfc9e-d1ac-a8cd-07cd-54257c8b27e0', 'prospects_assigned_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1309733b-b85b-2cf5-49fd-54257c427c48', 'prospects_email_addresses', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('13867741-5125-f38f-d167-54257c484f0c', 'prospects_email_addresses_primary', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('1442031d-8d56-8c91-d23d-54257cb00dff', 'prospect_tasks', 'Prospects', 'prospects', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('14fd885a-9c1e-f560-cf0c-54257c5fcc71', 'prospect_notes', 'Prospects', 'prospects', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('15b90c88-02e7-50a7-3687-54257cc128ce', 'prospect_meetings', 'Prospects', 'prospects', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('163609af-4813-a90f-9231-54257c8f0f32', 'prospect_calls', 'Prospects', 'prospects', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('16f18f05-fbdf-cf85-d6a0-54257cbf0789', 'prospect_emails', 'Prospects', 'prospects', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('17ad0012-82df-052a-df70-54257c646b15', 'prospect_campaign_log', 'Prospects', 'prospects', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Prospects', 0, 0),
('19a119dc-0378-2270-3685-54257c17c630', 'email_template_email_marketings', 'EmailTemplates', 'email_templates', 'id', 'EmailMarketing', 'email_marketing', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1b3b0049-86f9-5ee7-e4ba-54257c076571', 'campaigns_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1bd39574-f5f4-b0db-e829-54257c0f7dac', 'campaign_campaigntrakers', 'Campaigns', 'campaigns', 'id', 'CampaignTrackers', 'campaign_trkrs', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('22a9bf9a-8236-f733-0801-54257caf420f', 'schedulers_created_by_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('2326b23b-f8fb-53fe-90a1-54257cdd5552', 'schedulers_modified_user_id_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('23e23c10-dd0d-e17d-92c4-54257c5542c8', 'schedulers_jobs_rel', 'Schedulers', 'schedulers', 'id', 'SchedulersJobs', 'job_queue', 'scheduler_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('249db9dc-080e-6d84-1558-54257ca67a63', 'schedulersjobs_assigned_user', 'Users', 'users', 'id', 'SchedulersJobs', 'schedulersjobs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('26f304ad-80b4-f59a-3f3b-54257cc3ff52', 'campaigns_created_by', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2a3b51f3-15a7-1511-a28b-54257c44835f', 'contacts_modified_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2b35525a-4599-47be-e5cb-54257c8c141b', 'contacts_created_by', 'Users', 'users', 'id', 'Contacts', 'contacts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2bb25218-17be-65c9-d7ac-54257cca73b3', 'contacts_assigned_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2c6dd0a4-ec90-6a81-2d6f-54257c40e289', 'contacts_email_addresses', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('2cead0f2-4f14-3c9a-a8b7-54257c776156', 'contacts_email_addresses_primary', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('2da6626f-e037-8cc0-f801-54257c77ff10', 'contact_direct_reports', 'Contacts', 'contacts', 'id', 'Contacts', 'contacts', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2e236d96-8231-13cd-8e70-54257c157adc', 'contact_leads', 'Contacts', 'contacts', 'id', 'Leads', 'leads', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2ec40349-8dbf-88b0-1134-54257cd75875', 'campaigns_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2edeef28-0337-c3f7-cf2a-54257c3c8437', 'contact_notes', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2f5be776-11a2-3911-7fa6-54257c43f1aa', 'contact_tasks', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2fd8eaeb-3fd1-20ac-0f09-54257caa6c13', 'contact_tasks_parent', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('30176dab-2c63-4e25-a1ce-54257cd174d3', 'contact_notes_parent', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('30946750-3591-a3ec-0cd2-54257cde86f3', 'contact_campaign_log', 'Contacts', 'contacts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Contacts', 0, 0),
('3537fb1a-8cf4-91fb-f1ff-54257c45949f', 'accounts_modified_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('35b4fbac-e86f-0f3a-5c92-54257cf4f120', 'accounts_created_by', 'Users', 'users', 'id', 'Accounts', 'accounts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('36af0e03-5f35-08fc-03ee-54257cf31445', 'accounts_assigned_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('376a8646-d77b-ad25-e308-54257c872c7f', 'accounts_email_addresses', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('38648c6f-ad0c-cdfc-2ec1-54257c8f3fd7', 'accounts_email_addresses_primary', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('39200b7e-3869-3523-1d77-54257c5b3f4d', 'member_accounts', 'Accounts', 'accounts', 'id', 'Accounts', 'accounts', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('399d05bf-61b8-0dae-410e-54257c572728', 'account_cases', 'Accounts', 'accounts', 'id', 'Cases', 'cases', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3a58994e-5197-fa7d-fc1f-54257c611bb3', 'account_tasks', 'Accounts', 'accounts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('3a7c065c-582d-4ba3-3c75-54257c4f6bdf', 'campaign_accounts', 'Campaigns', 'campaigns', 'id', 'Accounts', 'accounts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3ad59229-07b9-efe2-3fe9-54257cac1033', 'account_notes', 'Accounts', 'accounts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('3b911c37-8f3c-4638-adf9-54257c344534', 'account_meetings', 'Accounts', 'accounts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('3c8b1bad-f0dc-fcfe-f9b6-54257c77fca4', 'account_calls', 'Accounts', 'accounts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('3d851c80-873c-7fb7-d560-54257cbc1817', 'account_emails', 'Accounts', 'accounts', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('3e409ef4-5bbc-e3d7-ab93-54257c4bad0f', 'account_leads', 'Accounts', 'accounts', 'id', 'Leads', 'leads', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3efc2c39-3223-593a-c71b-54257ce12ec5', 'account_campaign_log', 'Accounts', 'accounts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Accounts', 0, 0),
('424c0f76-12b0-6f99-1ac6-54257c26660f', 'campaign_contacts', 'Campaigns', 'campaigns', 'id', 'Contacts', 'contacts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('42e43b51-c0c9-2248-2767-54257c074e2a', 'opportunities_modified_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('43de37fa-7817-51eb-27f5-54257c084e5b', 'opportunities_created_by', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('445b30e5-1c84-2eb3-861e-54257caf76bc', 'opportunities_assigned_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('44d8385d-ae42-c1ca-04c9-54257c370fce', 'opportunity_calls', 'Opportunities', 'opportunities', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('45553745-b5f8-c2d9-9b96-54257cbd2ffd', 'opportunity_meetings', 'Opportunities', 'opportunities', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('45d232af-46c3-aefb-b64b-54257c2584fb', 'opportunity_tasks', 'Opportunities', 'opportunities', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('464f398b-dd6d-1690-e0e6-54257cdc7228', 'opportunity_notes', 'Opportunities', 'opportunities', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('46cc3ae0-aedf-e8ae-a97d-54257ce48ced', 'opportunity_emails', 'Opportunities', 'opportunities', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('474946af-3da4-1dc2-f310-54257c4c59eb', 'opportunity_leads', 'Opportunities', 'opportunities', 'id', 'Leads', 'leads', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('47c64a1d-9603-619a-6a20-54257c543acd', 'opportunity_currencies', 'Opportunities', 'opportunities', 'currency_id', 'Currencies', 'currencies', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4881c5a8-1676-8393-d786-54257c1bd715', 'opportunities_campaign', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4a1c02a4-4c10-4bd5-52e2-54257c1682f2', 'campaign_leads', 'Campaigns', 'campaigns', 'id', 'Leads', 'leads', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4b315662-40f6-f8a6-a853-54257cbe037a', 'emailtemplates_assigned_user', 'Users', 'users', 'id', 'EmailTemplates', 'email_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4e040b59-6fb8-7f25-aa7d-54257ca940f4', 'campaign_prospects', 'Campaigns', 'campaigns', 'id', 'Prospects', 'prospects', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4e9c51c2-989d-3b24-c8d8-54257c92e9fd', 'notes_assigned_user', 'Users', 'users', 'id', 'Notes', 'notes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4f57d2bd-f9d3-9e68-3db9-54257c750dd2', 'notes_modified_user', 'Users', 'users', 'id', 'Notes', 'notes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4fd4e2ac-f9b5-03f6-da5f-54257cb1cc56', 'notes_created_by', 'Users', 'users', 'id', 'Notes', 'notes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('53fb70b7-d6b3-c3f6-2ab1-54257cebb64d', 'calls_modified_user', 'Users', 'users', 'id', 'Calls', 'calls', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('54787383-a0fd-a695-3657-54257ca34343', 'calls_created_by', 'Users', 'users', 'id', 'Calls', 'calls', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('54b6fac5-3ddb-74b9-b8dd-54257c84b084', 'calls_assigned_user', 'Users', 'users', 'id', 'Calls', 'calls', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('55b0f2d2-9bdb-32a9-91cc-54257c819bb5', 'calls_notes', 'Calls', 'calls', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Calls', 0, 0),
('56aaf7df-e443-0037-e92a-54257c852ff0', 'emails_assigned_user', 'Users', 'users', 'id', 'Emails', 'emails', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('57667c49-6f30-725e-f9e6-54257c91089e', 'emails_modified_user', 'Users', 'users', 'id', 'Emails', 'emails', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('58220cc7-a824-25e7-a505-54257c994a53', 'emails_created_by', 'Users', 'users', 'id', 'Emails', 'emails', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('58dd84d1-0fae-7a2c-4b6e-54257cc91888', 'emails_notes_rel', 'Emails', 'emails', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('59990084-5866-6497-235c-54257cad15e4', 'emails_contacts_rel', 'Emails', 'emails', 'id', 'Contacts', 'contacts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('59bc0812-f219-248b-1950-54257c127261', 'campaign_opportunities', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5a54859e-8973-6365-eea9-54257c144ca3', 'emails_accounts_rel', 'Emails', 'emails', 'id', 'Accounts', 'accounts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('5b100057-4b4a-4000-c6de-54257c7cb97f', 'emails_leads_rel', 'Emails', 'emails', 'id', 'Leads', 'leads', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('5b8d05eb-69e4-862f-5911-54257c04a36c', 'emails_meetings_rel', 'Emails', 'emails', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5f751375-c10f-f0fe-6918-54257c6c0b62', 'meetings_modified_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6030919c-3dc9-e898-ddf3-54257cd8027b', 'meetings_created_by', 'Users', 'users', 'id', 'Meetings', 'meetings', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('612aa0f3-00d0-5198-6a11-54257cad1f60', 'meetings_assigned_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('618c0b88-669f-9622-1a13-54257ce246ba', 'campaign_email_marketing', 'Campaigns', 'campaigns', 'id', 'EmailMarketing', 'email_marketing', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('61a7a924-c73e-11f9-5241-54257cc5bcdc', 'meetings_notes', 'Meetings', 'meetings', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('65ce30c7-94ad-f828-e3fe-54257ca29890', 'tasks_modified_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('66c83354-f5e5-8f3d-4209-54257c6b6f1d', 'tasks_created_by', 'Users', 'users', 'id', 'Tasks', 'tasks', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6745390e-e42a-5584-e710-54257cea76d4', 'tasks_assigned_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('683f3f8f-a2f7-40cc-97c8-54257c39f700', 'tasks_notes', 'Tasks', 'tasks', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('695c02b6-f83c-fecf-4043-54257c9325c6', 'campaign_emailman', 'Campaigns', 'campaigns', 'id', 'EmailMan', 'emailman', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('712d097a-18ea-9d83-fdc4-54257c1d5d56', 'campaign_campaignlog', 'Campaigns', 'campaigns', 'id', 'CampaignLog', 'campaign_log', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('76a6f25a-a817-e514-6b41-54257c112e76', 'documents_modified_user', 'Users', 'users', 'id', 'Documents', 'documents', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('77a0f082-aa76-53f6-ffea-54257cf0f676', 'documents_created_by', 'Users', 'users', 'id', 'Documents', 'documents', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('781df7bf-32b3-4648-faf0-54257c31c0e1', 'documents_assigned_user', 'Users', 'users', 'id', 'Documents', 'documents', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('789afb84-86ea-be58-4620-54257c371030', 'document_revisions', 'Documents', 'documents', 'id', 'DocumentRevisions', 'document_revisions', 'document_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7b0c0285-0513-72d1-a643-54257cd73025', 'revisions_created_by', 'Users', 'users', 'id', 'DocumentRevisions', 'document_revisions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7ce50900-7195-378f-e99e-54257cd57874', 'campaign_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('80e81288-9dfb-5600-eb27-54257cd2a319', 'inbound_email_created_by', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('8165183b-0dee-47a2-a96a-54257c7aa409', 'inbound_email_modified_user_id', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('8414a37c-2849-468b-dc92-54257c1f976a', 'saved_search_assigned_user', 'Users', 'users', 'id', 'SavedSearch', 'saved_search', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('88b83ea5-9192-96d1-9809-54257cb737d4', 'sugarfeed_modified_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('893530ba-b7f7-2da0-f0d6-54257c462d9d', 'sugarfeed_created_by', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('89b232a0-6fe4-9465-6d92-54257c6851b8', 'sugarfeed_assigned_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8c850c55-c046-c69d-684a-54257caab6d5', 'campaign_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8f4fc6bc-5fb4-2a9f-59b7-54257c5e1679', 'eapm_modified_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9049d051-d7b0-4d3b-a213-54257cfae291', 'eapm_created_by', 'Users', 'users', 'id', 'EAPM', 'eapm', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('90c6dd5f-6731-5d6d-d6ea-54257cd3b615', 'eapm_assigned_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('93b4dd6d-30d4-7efd-1c02-54257c42cb97', 'oauthkeys_modified_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauthkeys', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('94aee957-508a-63b8-2421-54257cb85cfc', 'oauthkeys_created_by', 'Users', 'users', 'id', 'OAuthKeys', 'oauthkeys', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('956a6eab-b868-de07-9ce8-54257ca8d90a', 'oauthkeys_assigned_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauthkeys', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('979ceebb-2178-a9df-4f75-54257c8db4f0', 'consumer_tokens', 'OAuthKeys', 'oauth_consumer', 'id', 'OAuthTokens', 'oauth_tokens', 'consumer', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9896f274-23ce-0faf-b0b0-54257c416954', 'oauthtokens_assigned_user', 'Users', 'users', 'id', 'OAuthTokens', 'oauth_tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9cfc006e-30d2-c1dc-4d13-54257c45101d', 'grp_p_groups_modified_user', 'Users', 'users', 'id', 'grp_p_groups', 'grp_p_groups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9db78da6-698f-d3bc-959d-54257cfa5a69', 'grp_p_groups_created_by', 'Users', 'users', 'id', 'grp_p_groups', 'grp_p_groups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9e348eac-71c2-6df2-930f-54257c400ae3', 'grp_p_groups_assigned_user', 'Users', 'users', 'id', 'grp_p_groups', 'grp_p_groups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9eb18395-7c53-aa19-4675-54257cd5aeb9', 'group_contacts', 'grp_p_groups', 'grp_p_groups', 'id', 'Contacts', 'contacts', 'group_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9ef0027b-2b3b-ffe5-26a2-54257c74108a', 'group_account', 'grp_p_groups', 'grp_p_groups', 'id', 'Accounts', 'accounts', 'group_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('a681ab4b-bda8-0b2e-7087-54257cc212a2', 'accounts_bugs', 'Accounts', 'accounts', 'id', 'Bugs', 'bugs', 'id', 'accounts_bugs', 'account_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('a73d246e-3269-9532-8e14-54257c83da55', 'accounts_contacts', 'Accounts', 'accounts', 'id', 'Contacts', 'contacts', 'id', 'accounts_contacts', 'account_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('a7f8a698-9ea3-6e44-4cb2-54257cb253ea', 'accounts_opportunities', 'Accounts', 'accounts', 'id', 'Opportunities', 'opportunities', 'id', 'accounts_opportunities', 'account_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('a8b42ff1-e5f5-3635-fc6f-54257c6e43ac', 'calls_contacts', 'Calls', 'calls', 'id', 'Contacts', 'contacts', 'id', 'calls_contacts', 'call_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('a931346c-5d40-f34f-39f9-54257c92d26c', 'calls_users', 'Calls', 'calls', 'id', 'Users', 'users', 'id', 'calls_users', 'call_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('a9ecb716-6f44-c98a-47cc-54257c3d7693', 'calls_leads', 'Calls', 'calls', 'id', 'Leads', 'leads', 'id', 'calls_leads', 'call_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('aa69bf11-f058-3003-de1a-54257cdfebf6', 'cases_bugs', 'Cases', 'cases', 'id', 'Bugs', 'bugs', 'id', 'cases_bugs', 'case_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('ab63b6e5-cff3-8d8d-30d0-54257cbfa783', 'contacts_bugs', 'Contacts', 'contacts', 'id', 'Bugs', 'bugs', 'id', 'contacts_bugs', 'contact_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('ac1f3044-7d28-9c7f-4543-54257cb6f6cb', 'contacts_cases', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'id', 'contacts_cases', 'contact_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('ad193a07-1b94-8c7c-73ec-54257c531e53', 'contacts_users', 'Contacts', 'contacts', 'id', 'Users', 'users', 'id', 'contacts_users', 'contact_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('ad964c44-a33e-0349-7afa-54257cd7bbcf', 'emails_bugs_rel', 'Emails', 'emails', 'id', 'Bugs', 'bugs', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Bugs', 0, 0),
('ae9044eb-3d70-bb8e-56ee-54257c1d2b97', 'emails_cases_rel', 'Emails', 'emails', 'id', 'Cases', 'cases', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Cases', 0, 0),
('af8a4818-ceb6-38a8-27fd-54257cbe9446', 'emails_opportunities_rel', 'Emails', 'emails', 'id', 'Opportunities', 'opportunities', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Opportunities', 0, 0),
('b084494a-1258-9941-c732-54257c2b6afb', 'emails_tasks_rel', 'Emails', 'emails', 'id', 'Tasks', 'tasks', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Tasks', 0, 0),
('b13fc3df-e69e-86a4-8559-54257cdd6cae', 'emails_users_rel', 'Emails', 'emails', 'id', 'Users', 'users', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('b1fb5fbb-89b0-0d1b-fe4f-54257c83700d', 'emails_project_task_rel', 'Emails', 'emails', 'id', 'ProjectTask', 'project_task', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'ProjectTask', 0, 0),
('b2b6d80b-0be1-3f3a-4a90-54257c94f33c', 'emails_projects_rel', 'Emails', 'emails', 'id', 'Project', 'project', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Project', 0, 0),
('b3b0d3d2-8c9e-6313-5a21-54257ca32728', 'emails_prospects_rel', 'Emails', 'emails', 'id', 'Prospects', 'prospects', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('b42ddc6e-7930-380c-20ae-54257c3e6dc2', 'meetings_contacts', 'Meetings', 'meetings', 'id', 'Contacts', 'contacts', 'id', 'meetings_contacts', 'meeting_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('b4e95d54-0a60-f9b1-70bf-54257cbadf5f', 'meetings_users', 'Meetings', 'meetings', 'id', 'Users', 'users', 'id', 'meetings_users', 'meeting_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('b56650b6-beef-abf9-d46e-54257c44af9e', 'meetings_leads', 'Meetings', 'meetings', 'id', 'Leads', 'leads', 'id', 'meetings_leads', 'meeting_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('b621e89f-4c4c-dcc2-9f33-54257ce4be7b', 'opportunities_contacts', 'Opportunities', 'opportunities', 'id', 'Contacts', 'contacts', 'id', 'opportunities_contacts', 'opportunity_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('b69eeab2-6d91-3c88-3436-54257c2353aa', 'prospect_list_campaigns', 'ProspectLists', 'prospect_lists', 'id', 'Campaigns', 'campaigns', 'id', 'prospect_list_campaigns', 'prospect_list_id', 'campaign_id', 'many-to-many', NULL, NULL, 0, 0),
('b71be7ca-2360-5625-c20d-54257c7b641f', 'prospect_list_contacts', 'ProspectLists', 'prospect_lists', 'id', 'Contacts', 'contacts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Contacts', 0, 0),
('b798ec86-2d5a-2290-5a69-54257c27e1af', 'prospect_list_prospects', 'ProspectLists', 'prospect_lists', 'id', 'Prospects', 'prospects', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Prospects', 0, 0),
('b815eb30-337a-f413-4d50-54257cd03dc9', 'prospect_list_leads', 'ProspectLists', 'prospect_lists', 'id', 'Leads', 'leads', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Leads', 0, 0),
('b892e133-2ce5-33b0-7b21-54257c9438c6', 'prospect_list_users', 'ProspectLists', 'prospect_lists', 'id', 'Users', 'users', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Users', 0, 0),
('b98ce5ec-b8a3-e924-f5f7-54257cd1b195', 'prospect_list_accounts', 'ProspectLists', 'prospect_lists', 'id', 'Accounts', 'accounts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Accounts', 0, 0),
('ba09ed75-51cc-6d99-0a2f-54257c3a98d9', 'roles_users', 'Roles', 'roles', 'id', 'Users', 'users', 'id', 'roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('ba86f493-788b-d8bb-8fc0-54257c3346b9', 'projects_bugs', 'Project', 'project', 'id', 'Bugs', 'bugs', 'id', 'projects_bugs', 'project_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('bb03f02e-a30b-5368-ea9e-54257c54c683', 'projects_cases', 'Project', 'project', 'id', 'Cases', 'cases', 'id', 'projects_cases', 'project_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('bbbf7615-e0a9-188d-a63a-54257cc77d23', 'projects_accounts', 'Project', 'project', 'id', 'Accounts', 'accounts', 'id', 'projects_accounts', 'project_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('bbfdfad6-7135-232d-174a-54257c2398d3', 'projects_contacts', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'projects_contacts', 'project_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('bc38e5fb-08c3-4f73-0759-54257c4d97c5', 'leads_modified_user', 'Users', 'users', 'id', 'Leads', 'leads', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bc7afa01-bf36-0ab8-570c-54257c17ca45', 'projects_opportunities', 'Project', 'project', 'id', 'Opportunities', 'opportunities', 'id', 'projects_opportunities', 'project_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('bd7164ef-6bc0-761a-4a3c-54257ccceda2', 'leads_created_by', 'Users', 'users', 'id', 'Leads', 'leads', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bd74f005-4c5a-b1c5-bc24-54257cd023cc', 'acl_roles_actions', 'ACLRoles', 'acl_roles', 'id', 'ACLActions', 'acl_actions', 'id', 'acl_roles_actions', 'role_id', 'action_id', 'many-to-many', NULL, NULL, 0, 0),
('bdf1fe26-9e58-065f-10cf-54257cc3e187', 'acl_roles_users', 'ACLRoles', 'acl_roles', 'id', 'Users', 'users', 'id', 'acl_roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('be2ce878-7c0c-13e9-c27c-54257cc8543e', 'leads_assigned_user', 'Users', 'users', 'id', 'Leads', 'leads', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('be6eff27-bc00-5e0e-fa9b-54257c226488', 'email_marketing_prospect_lists', 'EmailMarketing', 'email_marketing', 'id', 'ProspectLists', 'prospect_lists', 'id', 'email_marketing_prospect_lists', 'email_marketing_id', 'prospect_list_id', 'many-to-many', NULL, NULL, 0, 0),
('beec09e5-6d73-3e93-a868-54257c26b401', 'leads_documents', 'Leads', 'leads', 'id', 'Documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'Leads', 0, 0),
('bf26eb68-a4fa-5c91-8bdb-54257cf428bb', 'leads_email_addresses', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('bf4e0b64-659d-7498-5f3f-54257cc36073', 'prospectlists_assigned_user', 'Users', 'users', 'id', 'prospectlists', 'prospect_lists', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bfa3fd1b-6e12-6f7d-82d6-54257cb496af', 'leads_email_addresses_primary', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('bfa786a2-5e54-b88a-e25c-54257c12b432', 'documents_accounts', 'Documents', 'documents', 'id', 'Accounts', 'accounts', 'id', 'documents_accounts', 'document_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('c05f74ff-c814-6f63-5dae-54257c3d882f', 'lead_direct_reports', 'Leads', 'leads', 'id', 'Leads', 'leads', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c0630b6f-6a0e-5a58-d6ff-54257cf502d0', 'documents_contacts', 'Documents', 'documents', 'id', 'Contacts', 'contacts', 'id', 'documents_contacts', 'document_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('c0dc7f20-9b2c-c3cd-3073-54257c7f3a15', 'lead_tasks', 'Leads', 'leads', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('c11e8e13-daca-b671-59be-54257c1abde7', 'documents_opportunities', 'Documents', 'documents', 'id', 'Opportunities', 'opportunities', 'id', 'documents_opportunities', 'document_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('c159771e-5b2d-c977-41e3-54257cf54acc', 'lead_notes', 'Leads', 'leads', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('c1d67fa1-8fa8-8bc3-2da2-54257cba4d78', 'lead_meetings', 'Leads', 'leads', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('c1da0ef2-c5cb-f0b8-41d3-54257c051b33', 'documents_cases', 'Documents', 'documents', 'id', 'Cases', 'cases', 'id', 'documents_cases', 'document_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('c2537a65-d832-e41d-6d16-54257cd4bb64', 'lead_calls', 'Leads', 'leads', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('c2958563-8935-16fd-0e44-54257c8922e0', 'documents_bugs', 'Documents', 'documents', 'id', 'Bugs', 'bugs', 'id', 'documents_bugs', 'document_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('c2d07960-c39e-dfbf-fcf3-54257c1ec508', 'lead_emails', 'Leads', 'leads', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('c34d785c-f911-3036-0ac2-54257c811cec', 'lead_campaign_log', 'Leads', 'leads', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Leads', 0, 0),
('c6b88218-d9cf-5064-d2cc-54257c1b28b1', 'cases_modified_user', 'Users', 'users', 'id', 'Cases', 'cases', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c7b289d2-fef0-2e2f-039c-54257c0c411f', 'cases_created_by', 'Users', 'users', 'id', 'Cases', 'cases', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c82f978c-2350-64b0-b2ef-54257c7e4924', 'cases_assigned_user', 'Users', 'users', 'id', 'Cases', 'cases', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c8eb1553-823c-cb82-34c6-54257ccc17e7', 'case_calls', 'Cases', 'cases', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('c9a69a37-5763-7bdf-ca64-54257cbb5921', 'case_tasks', 'Cases', 'cases', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('ca621b24-fbc8-c803-c7ba-54257cffd6f7', 'case_notes', 'Cases', 'cases', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('cb5c1cf2-5292-073c-f265-54257cd48b9e', 'case_meetings', 'Cases', 'cases', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('cc562759-7eda-e05f-61e3-54257c7d8e28', 'case_emails', 'Cases', 'cases', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('d0f9b418-b8c6-2cf0-6945-54257c748b47', 'bugs_modified_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d1b5353f-198a-8960-1a48-54257c1e26cd', 'bugs_created_by', 'Users', 'users', 'id', 'Bugs', 'bugs', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d2323179-53f5-7f21-2337-54257c5b497d', 'bugs_assigned_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d2edb94d-5720-0d4b-a35b-54257ce568d4', 'bug_tasks', 'Bugs', 'bugs', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('d36ab2a5-6773-cd42-e040-54257c6c7d2e', 'bug_meetings', 'Bugs', 'bugs', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('d3e7bf35-8b13-5704-832d-54257c662d68', 'bug_calls', 'Bugs', 'bugs', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('d4e1c374-79c3-4be3-8138-54257c4e129e', 'bug_emails', 'Bugs', 'bugs', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('d59d4534-e5b0-f391-15c4-54257c918356', 'bug_notes', 'Bugs', 'bugs', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('d61a42ec-77ce-72ff-091e-54257ce717d7', 'bugs_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'found_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d69744d8-c82b-f6ed-456d-54257c7dd122', 'bugs_fixed_in_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'fixed_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d7cfc184-c77c-2e1d-ebe6-54257c2b1f0f', 'user_direct_reports', 'Users', 'users', 'id', 'Users', 'users', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d8c9c394-272d-bfbd-6ef8-54257c8ea479', 'users_email_addresses', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('d9c3d61e-261d-1d69-e43f-54257c705d6a', 'users_email_addresses_primary', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('dc34d2b6-5265-6205-63cd-54257c4342e4', 'campaignlog_contact', 'CampaignLog', 'campaign_log', 'related_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dd2eed82-073e-0554-67a5-54257c83e287', 'campaignlog_lead', 'CampaignLog', 'campaign_log', 'related_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ddabe7e3-e761-e5f6-2827-54257c103d31', 'campaignlog_created_opportunities', 'CampaignLog', 'campaign_log', 'related_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('de67632d-68db-3af9-bc8f-54257c5c053b', 'campaignlog_targeted_users', 'CampaignLog', 'campaign_log', 'target_id', 'Users', 'users', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dee4626a-97b7-6fd0-e366-54257c82f705', 'campaignlog_sent_emails', 'CampaignLog', 'campaign_log', 'related_id', 'Emails', 'emails', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e1d27458-aa5a-dfc6-0a64-54257c439aea', 'projects_notes', 'Project', 'project', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('e28df9e7-8497-1d6d-7699-54257c4a7512', 'projects_tasks', 'Project', 'project', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('e387fe30-21ee-25a1-6f1e-54257cbb5a76', 'projects_meetings', 'Project', 'project', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('e404fbe2-387b-dd11-49c3-54257ce3c630', 'projects_calls', 'Project', 'project', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('e4fef9d7-293b-2b1b-cbf2-54257c7001a8', 'projects_emails', 'Project', 'project', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('e57bf5e6-dcc3-05f2-da28-54257cc0790d', 'projects_project_tasks', 'Project', 'project', 'id', 'ProjectTask', 'project_task', 'project_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e6760a7a-1ae6-a126-9b7d-54257c0171b7', 'projects_assigned_user', 'Users', 'users', 'id', 'Project', 'project', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e7ae877d-93ca-a0e4-6b31-54257ca693bf', 'projects_modified_user', 'Users', 'users', 'id', 'Project', 'project', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e8a88611-02db-7c58-283d-54257c3c0cff', 'projects_created_by', 'Users', 'users', 'id', 'Project', 'project', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ec139776-e286-4d44-6fd4-54257c2e378f', 'project_tasks_notes', 'ProjectTask', 'project_task', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('ed0d9639-b78a-47e7-3e2a-54257ccf208d', 'project_tasks_tasks', 'ProjectTask', 'project_task', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('edc9158f-1e66-fe6f-95f1-54257c5d999d', 'project_tasks_meetings', 'ProjectTask', 'project_task', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('ee84a661-422c-95a5-892f-54257ce0781c', 'project_tasks_calls', 'ProjectTask', 'project_task', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('ef01a3cb-11bc-0c05-703b-54257ce18b84', 'project_tasks_emails', 'ProjectTask', 'project_task', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('efbd26aa-c77f-59ac-ab61-54257c0eedd0', 'project_tasks_assigned_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f0b72150-6dca-8d46-714f-54257c7827f3', 'project_tasks_modified_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f1342b3a-a40e-5fcf-bd57-54257c5b2f5e', 'project_tasks_created_by', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `releases`
--

CREATE TABLE IF NOT EXISTS `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_releases` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_role_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles_modules`
--

CREATE TABLE IF NOT EXISTS `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_module_id` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles_users`
--

CREATE TABLE IF NOT EXISTS `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ru_role_id` (`role_id`),
  KEY `idx_ru_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `saved_search`
--

CREATE TABLE IF NOT EXISTS `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `idx_desc` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `schedulers`
--

CREATE TABLE IF NOT EXISTS `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_schedule` (`date_time_start`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schedulers`
--

INSERT INTO `schedulers` (`id`, `deleted`, `date_entered`, `date_modified`, `created_by`, `modified_user_id`, `name`, `job`, `date_time_start`, `date_time_end`, `job_interval`, `time_from`, `time_to`, `last_run`, `status`, `catch_up`) VALUES
('1a27b98b-fd33-acf4-f6f1-541cc9d92fa5', 0, '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '1', 'Prune Tracker Tables', 'function::trimTracker', '2005-01-01 13:00:01', '2020-12-31 23:59:59', '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('21e9e591-d7ed-6f75-5553-541cc9896a1e', 0, '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '1', 'Check Inbound Mailboxes', 'function::pollMonitoredInboxes', '2005-01-01 08:00:01', '2020-12-31 23:59:59', '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('25b2749f-61fe-e95e-31e3-541cc9a16a1a', 0, '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '1', 'Run Nightly Process Bounced Campaign Emails', 'function::pollMonitoredInboxesForBouncedCampaignEmails', '2005-01-01 10:00:01', '2020-12-31 23:59:59', '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('2af58579-6a9f-b1b8-c188-541cc9156cd6', 0, '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '1', 'Run Nightly Mass Email Campaigns', 'function::runMassEmailCampaign', '2005-01-01 07:30:01', '2020-12-31 23:59:59', '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('3094984c-523f-4240-50d6-541cc979a7a5', 0, '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '1', 'Prune Database on 1st of Month', 'function::pruneDatabase', '2005-01-01 08:45:01', '2020-12-31 23:59:59', '0::4::1::*::*', NULL, NULL, NULL, 'Inactive', 0),
('35e008b8-19e7-d305-52d2-541cc90c1539', 0, '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '1', 'Run Email Reminder Notifications', 'function::sendEmailReminders', '2008-01-01 14:30:01', '2020-12-31 23:59:59', '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('3b72dbe3-9824-51d1-916d-541cc9751010', 0, '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '1', 'Clean Jobs Queue', 'function::cleanJobQueue', '2012-01-01 19:45:01', '2030-12-31 23:59:59', '0::5::*::*::*', NULL, NULL, NULL, 'Active', 0),
('40a8cadf-3d11-5fc4-e43c-541cc9cf30a6', 0, '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '1', 'Removal of documents from filesystem', 'function::removeDocumentsFromFS', '2012-01-01 12:00:01', '2030-12-31 23:59:59', '0::3::1::*::*', NULL, NULL, NULL, 'Active', 0),
('46536b57-e866-4f58-2604-541cc9fd4704', 0, '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '1', 'Prune SugarFeed Tables', 'function::trimSugarFeeds', '2005-01-01 17:45:01', '2020-12-31 23:59:59', '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sugarfeed`
--

CREATE TABLE IF NOT EXISTS `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sgrfeed_date` (`date_entered`,`deleted`),
  KEY `idx_sgrfeed_rmod_rid_date` (`related_module`,`related_id`,`date_entered`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sugarfeed`
--

INSERT INTO `sugarfeed` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `related_module`, `related_id`, `link_url`, `link_type`) VALUES
('1518f301-83fe-4fb3-d011-542532fee528', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:c8d5011f-c037-4ccb-8cde-542532a798c5:0926_contact_1 0926_contact_1]', '2014-09-26 09:31:02', '2014-09-26 09:31:02', '1', '1', NULL, 0, '1', 'Contacts', 'c8d5011f-c037-4ccb-8cde-542532a798c5', NULL, NULL),
('419febd5-607d-3460-ff2b-542532fdf6b9', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:3cfc5d8c-d79a-082e-ae87-54253299b625:0926_contact_2 0926_contact_2]', '2014-09-26 09:31:27', '2014-09-26 09:31:27', '1', '1', NULL, 0, '1', 'Contacts', '3cfc5d8c-d79a-082e-ae87-54253299b625', NULL, NULL),
('70ea6956-baa5-5603-4190-5422cde29014', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:5b2176b3-e193-6aa6-7ba5-5422cd87668b:first_name last_name]', '2014-09-24 13:55:47', '2014-09-24 13:55:47', '1', '1', NULL, 0, '1', 'Contacts', '5b2176b3-e193-6aa6-7ba5-5422cd87668b', NULL, NULL),
('825ff66b-d150-561f-8e2e-5422cdbdb16a', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:612785b8-8f32-0869-d45b-5422cd3e121e:first_name_blank]', '2014-09-24 13:55:01', '2014-09-24 13:55:01', '1', '1', NULL, 0, '1', 'Contacts', '612785b8-8f32-0869-d45b-5422cd3e121e', NULL, NULL),
('ab453666-0e1f-6e40-d982-5420090287ea', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:947fd8d8-2629-3848-47ef-542009e4012c:name1 name2]', '2014-09-22 11:34:57', '2014-09-22 11:34:57', '1', '1', NULL, 0, '1', 'Contacts', '947fd8d8-2629-3848-47ef-542009e4012c', NULL, NULL),
('c37c0c9a-6c94-21bd-debe-5425323f58e9', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:79430caa-72ba-5f36-7fcc-542532c5c851:0926_contact_3 0926_contact_3]', '2014-09-26 09:31:48', '2014-09-26 09:31:48', '1', '1', NULL, 0, '1', 'Contacts', '79430caa-72ba-5f36-7fcc-542532c5c851', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE IF NOT EXISTS `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tsk_name` (`name`),
  KEY `idx_task_con_del` (`contact_id`,`deleted`),
  KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_task_assigned` (`assigned_user_id`),
  KEY `idx_task_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tracker`
--

CREATE TABLE IF NOT EXISTS `tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_tracker_iid` (`item_id`),
  KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  KEY `idx_tracker_monitor_id` (`monitor_id`),
  KEY `idx_tracker_date_modified` (`date_modified`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=88 ;

--
-- Dumping data for table `tracker`
--

INSERT INTO `tracker` (`id`, `monitor_id`, `user_id`, `module_name`, `item_id`, `item_summary`, `date_modified`, `action`, `session_id`, `visible`, `deleted`) VALUES
(2, '4f23a34c-3931-1941-5ac5-542009bcfffb', '1', 'Contacts', '947fd8d8-2629-3848-47ef-542009e4012c', 'name1 name2', '2014-09-22 11:35:00', 'detailview', 'j9j360dk2ohgfbrn4q9koohcs7', 1, 0),
(4, '14a00e16-2ad9-6da8-07b9-5422cddd64d9', '1', 'Contacts', '612785b8-8f32-0869-d45b-5422cd3e121e', 'first_name_blank', '2014-09-24 13:55:04', 'detailview', 'lp5d9imgmgsccbnb9afarsaqj6', 1, 0),
(6, '26361445-6d79-ff11-ef8c-5422cdf4c302', '1', 'Contacts', '5b2176b3-e193-6aa6-7ba5-5422cd87668b', 'first_name last_name', '2014-09-24 13:55:50', 'detailview', 'lp5d9imgmgsccbnb9afarsaqj6', 1, 0),
(13, 'c2df3175-a3d4-965c-a648-5424066e37b3', '1', 'Accounts', 'f2f28af8-c0d0-d8a7-fa2d-5424046957bb', 'contact 1', '2014-09-25 12:09:59', 'detailview', 'lpc2sb3mqplk3p4l1tjno7ej87', 1, 0),
(17, '165189e7-37cb-3523-1c2d-542532b8d564', '1', 'Contacts', 'c8d5011f-c037-4ccb-8cde-542532a798c5', '0926_contact_1 0926_contact_1', '2014-09-26 09:31:02', 'save', 'lbu3cge652186i7rvgbepvrp06', 1, 0),
(19, '444f7d94-4098-a639-0619-542532c62e8f', '1', 'Contacts', '3cfc5d8c-d79a-082e-ae87-54253299b625', '0926_contact_2 0926_contact_2', '2014-09-26 09:31:27', 'save', 'lbu3cge652186i7rvgbepvrp06', 1, 0),
(21, 'd70403f2-7830-744b-b5db-542532c0fe79', '1', 'Contacts', '79430caa-72ba-5f36-7fcc-542532c5c851', '0926_contact_3 0926_contact_3', '2014-09-26 09:31:48', 'save', 'lbu3cge652186i7rvgbepvrp06', 1, 0),
(24, '4d62f6b4-6f6e-bd8b-a977-542532e77c36', '1', 'Contacts', '79430caa-72ba-5f36-7fcc-542532c5c851', '0926_contact_3 0926_contact_3', '2014-09-26 09:32:05', 'save', 'lbu3cge652186i7rvgbepvrp06', 1, 0),
(30, '6f31f6f0-5a70-d776-76bd-5425390c3a16', '1', 'Accounts', 'dac39c7e-d11f-d36b-1676-542406bfdb68', 'account1', '2014-09-26 10:03:24', 'editview', 'lbu3cge652186i7rvgbepvrp06', 1, 0),
(64, '8edc2ba8-30c6-989a-a4e9-542569dde431', '1', 'Users', '4abda5b9-b267-1f2d-460c-5425691c46d2', '0926_user_1', '2014-09-26 13:28:27', 'detailview', 'lbu3cge652186i7rvgbepvrp06', 1, 0),
(72, 'c812ba84-6f98-e607-d5fe-54256d08e24e', '1', 'Accounts', 'ee689741-a453-2d4f-c42c-54254fb88d21', '0926_acc_2', '2014-09-26 13:42:32', 'detailview', 'lbu3cge652186i7rvgbepvrp06', 1, 0),
(83, 'e7b5e521-8667-370d-7390-54256da49923', '1', 'Accounts', 'd51756c7-8d54-930d-aa2d-54253bfacf65', '0926_acc_1', '2014-09-26 13:45:02', 'detailview', 'lbu3cge652186i7rvgbepvrp06', 1, 0),
(84, '1bf3faed-cc86-bc5c-f06f-54256db67d0e', '1', 'Contacts', 'c8d5011f-c037-4ccb-8cde-542532a798c5', '0926_contact_1 0926_contact_1', '2014-09-26 13:45:09', 'detailview', 'lbu3cge652186i7rvgbepvrp06', 1, 0),
(85, '71b89a46-7cb1-2c00-c67f-54256dfea209', '1', 'Contacts', '3cfc5d8c-d79a-082e-ae87-54253299b625', '0926_contact_2 0926_contact_2', '2014-09-26 13:45:15', 'detailview', 'lbu3cge652186i7rvgbepvrp06', 1, 0),
(86, 'd7dc9354-fe48-6e7e-e1da-54256d4a6a0c', '1', 'Contacts', '79430caa-72ba-5f36-7fcc-542532c5c851', '0926_contact_3 0926_contact_3', '2014-09-26 13:45:21', 'detailview', 'lbu3cge652186i7rvgbepvrp06', 1, 0),
(87, 'be996e6c-efa9-e060-e676-542579cb3363', '1', 'Users', '89dc998d-57d6-adca-d06b-54257971e11c', '0926_user_2', '2014-09-26 14:34:45', 'detailview', 'lbu3cge652186i7rvgbepvrp06', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `upgrade_history`
--

CREATE TABLE IF NOT EXISTS `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upgrade_history`
--

INSERT INTO `upgrade_history` (`id`, `filename`, `md5sum`, `type`, `status`, `version`, `name`, `description`, `id_name`, `manifest`, `date_entered`, `enabled`) VALUES
('2eac9eac-074b-aece-7350-541cfefea24c', 'upload/upgrades/module/groups_package2014_09_20_060949.zip', '303542a85a982c897700fd59bdb5e682', 'module', 'installed', '1411186188', 'groups_package', '', 'groups_package', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6NToiZ3JwX3AiO3M6NjoiYXV0aG9yIjtzOjEyOiJNaWhpciBQYXJpa2giO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjA6IiI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czoxNDoiZ3JvdXBzX3BhY2thZ2UiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjE5OiIyMDE0LTA5LTIwIDA0OjA5OjQ2IjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjc6InZlcnNpb24iO2k6MTQxMTE4NjE4ODtzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjY6InByb21wdCI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjc6e3M6MjoiaWQiO3M6MTQ6Imdyb3Vwc19wYWNrYWdlIjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjEyOiJncnBfcF9ncm91cHMiO3M6NToiY2xhc3MiO3M6MTI6ImdycF9wX2dyb3VwcyI7czo0OiJwYXRoIjtzOjM3OiJtb2R1bGVzL2dycF9wX2dyb3Vwcy9ncnBfcF9ncm91cHMucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTowOnt9czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YToxOntpOjA7YToyOntzOjQ6ImZyb20iO3M6NDQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvZ3JwX3BfZ3JvdXBzIjtzOjI6InRvIjtzOjIwOiJtb2R1bGVzL2dycF9wX2dyb3VwcyI7fX1zOjg6Imxhbmd1YWdlIjthOjE6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2014-09-20 04:09:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`,`first_name`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_hash`, `system_generated_password`, `pwd_last_changed`, `authenticate_id`, `sugar_login`, `first_name`, `last_name`, `is_admin`, `external_auth_only`, `receive_notifications`, `description`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `title`, `department`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `status`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postalcode`, `deleted`, `portal_only`, `show_on_employees`, `employee_status`, `messenger_id`, `messenger_type`, `reports_to_id`, `is_group`) VALUES
('1', 'mihir1408', '$1$bG3.Ip/.$46wLmvngXctp33PRQgsAE1', 0, NULL, NULL, 1, 'Mihir', 'Parikh', 1, 0, 1, NULL, '2014-09-20 00:27:01', '2014-09-20 00:30:30', '1', '', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0),
('4abda5b9-b267-1f2d-460c-5425691c46d2', '0926_user_1', NULL, 0, NULL, NULL, 1, '', '0926_user_1', 0, 0, 1, '', '2014-09-26 13:28:27', '2014-09-26 13:28:27', '1', '1', '', '', '', '', '', '', '', 'Active', '', '', '', '', '', 0, 0, 1, 'Active', '', '', '', 0),
('89dc998d-57d6-adca-d06b-54257971e11c', '0926_user_2', '$1$EF0.7N..$09XFL/YxfCs.Tkt8MJJC21', 0, '2014-09-26 14:34:00', NULL, 1, NULL, '0926_user_2', 0, 0, 1, NULL, '2014-09-26 14:34:45', '2014-09-26 14:35:11', '89dc998d-57d6-adca-d06b-54257971e11c', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_feeds`
--

CREATE TABLE IF NOT EXISTS `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_ud_user_id` (`user_id`,`feed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_last_import`
--

CREATE TABLE IF NOT EXISTS `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_password_link`
--

CREATE TABLE IF NOT EXISTS `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_signatures`
--

CREATE TABLE IF NOT EXISTS `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text,
  PRIMARY KEY (`id`),
  KEY `idx_usersig_uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_preferences`
--

CREATE TABLE IF NOT EXISTS `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_userprefnamecat` (`assigned_user_id`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `category`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`) VALUES
('136d45cc-61b8-ff68-dae0-541cc9f20bbd', 'global', 0, '2014-09-20 00:27:01', '2014-09-26 14:34:05', '1', 'YToyNzp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjEzMWIwMmFjLTU3ZTAtZDljMi1iNGNkLTU0MWNjOTIxN2E5ZCI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWdhcjUiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mjoib24iO3M6ODoidGltZXpvbmUiO3M6MTk6IkF1c3RyYWxpYS9NZWxib3VybmUiO3M6MTY6InN3YXBfbGFzdF92aWV3ZWQiO3M6MDoiIjtzOjE0OiJzd2FwX3Nob3J0Y3V0cyI7czowOiIiO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MjoiZ20iO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTotMTtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo1OiJkYXRlZiI7czo1OiJkL20vWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjE5OiJ0aGVtZV9jdXJyZW50X2dyb3VwIjtzOjM6IkFsbCI7fQ=='),
('137347ea-bf32-d58a-5dbc-541d2cceed34', 'Contacts2_CONTACT', 0, '2014-09-20 07:29:37', '2014-09-20 07:29:37', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3aa4f0fb-cb9c-05b3-04f2-54257940c79c', 'ETag', 0, '2014-09-26 14:35:11', '2014-09-26 14:35:11', '89dc998d-57d6-adca-d06b-54257971e11c', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTt9'),
('4024bfdb-c347-1d47-b5fe-542008e19533', 'Opportunities2_OPPORTUNITY', 0, '2014-09-22 11:32:26', '2014-09-22 11:32:26', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('45ff0ced-0c09-5d47-373c-5420040afe71', 'Accounts2_ACCOUNT', 0, '2014-09-22 11:15:44', '2014-09-22 11:15:44', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4f9fbb86-b5a6-bab3-19c0-542569d18691', 'global', 0, '2014-09-26 13:28:27', '2014-09-26 13:28:27', '4abda5b9-b267-1f2d-460c-5425691c46d2', 'YTozMjp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6LTE7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTotMTtzOjg6InRpbWV6b25lIjtzOjEzOiJFdXJvcGUvQmVybGluIjtzOjI6InV0IjtzOjE6IjAiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToiZC9tL1kiO3M6NToidGltZWYiO3M6NDoiaDppYSI7czoxNToibWFpbF9zbXRwc2VydmVyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwdXNlciI7czowOiIiO3M6MTM6Im1haWxfc210cHBhc3MiO3M6MDoiIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjRmOWZiMTM0LTY1MmUtMzE3MC1iMmVkLTU0MjU2OTAxZGQxYyI7fQ=='),
('53b87699-4f30-f7a9-9064-541ccad2305d', 'Home', 0, '2014-09-20 00:30:34', '2014-09-20 00:30:34', '1', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjg6e3M6MzY6IjgzYWZjZDk5LTNkMmMtYTVkMi03NzRlLTU0MWNjYWRjMjg5ZCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxMzoiaUZyYW1lRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NDoiSG9tZSI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTM6Im1vZHVsZXMvSG9tZS9EYXNobGV0cy9pRnJhbWVEYXNobGV0L2lGcmFtZURhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6Mzp7czoxMDoidGl0bGVMYWJlbCI7czozMDoiTEJMX0RBU0hMRVRfRElTQ09WRVJfU1VHQVJfUFJPIjtzOjM6InVybCI7czo0MjoiaHR0cHM6Ly93d3cuc3VnYXJjcm0uY29tL2NybS9wcm9kdWN0L2dvcHJvIjtzOjY6ImhlaWdodCI7aTozMTU7fX1zOjM2OiI4M2I1NjczNS1jYjQwLTEwZDktNWM3OS01NDFjY2E3NjhhYjAiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTY6IlN1Z2FyRmVlZERhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjk6IlN1Z2FyRmVlZCI7czoxMToiZm9yY2VDb2x1bW4iO2k6MTtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjQ6Im1vZHVsZXMvU3VnYXJGZWVkL0Rhc2hsZXRzL1N1Z2FyRmVlZERhc2hsZXQvU3VnYXJGZWVkRGFzaGxldC5waHAiO31zOjM2OiI4M2I5NDdmOC0wNzdhLTdmODctZmZkZC01NDFjY2FkZjM3MmIiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTM6ImlGcmFtZURhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjQ6IkhvbWUiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjE7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjUzOiJtb2R1bGVzL0hvbWUvRGFzaGxldHMvaUZyYW1lRGFzaGxldC9pRnJhbWVEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjM6e3M6MTA6InRpdGxlTGFiZWwiO3M6MjI6IkxCTF9EQVNITEVUX1NVR0FSX05FV1MiO3M6MzoidXJsIjtzOjQxOiJodHRwczovL3d3dy5zdWdhcmNybS5jb20vY3JtL3Byb2R1Y3QvbmV3cyI7czo2OiJoZWlnaHQiO2k6MzE1O319czozNjoiYzFlY2YwODAtNmY0MS03MjRkLTA3NDktNTQxY2NhNWY2ZjkyIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUNhbGxzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiQ2FsbHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0NhbGxzL0Rhc2hsZXRzL015Q2FsbHNEYXNobGV0L015Q2FsbHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiY2M4OTUwOTgtNmYwYS02ODRlLTIzODYtNTQxY2NhZTY3YmRmIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeU1lZXRpbmdzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiTWVldGluZ3MiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL01lZXRpbmdzL0Rhc2hsZXRzL015TWVldGluZ3NEYXNobGV0L015TWVldGluZ3NEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiZDVmMTdiZjEtYTBlZC1hMDNlLWQ1NzQtNTQxY2NhNTJlODExIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjIyOiJNeU9wcG9ydHVuaXRpZXNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czoxMzoiT3Bwb3J0dW5pdGllcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODA6Im1vZHVsZXMvT3Bwb3J0dW5pdGllcy9EYXNobGV0cy9NeU9wcG9ydHVuaXRpZXNEYXNobGV0L015T3Bwb3J0dW5pdGllc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJlMTY5ZGYwOC1iYzUyLTQyNmQtMDE1Ny01NDFjY2EyNGZlZjEiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15QWNjb3VudHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo4OiJBY2NvdW50cyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvQWNjb3VudHMvRGFzaGxldHMvTXlBY2NvdW50c0Rhc2hsZXQvTXlBY2NvdW50c0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJmMTAxOTE1Yy0xYjI3LWRmYjUtODBmZi01NDFjY2EyMTk5OWMiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15TGVhZHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJMZWFkcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvTGVhZHMvRGFzaGxldHMvTXlMZWFkc0Rhc2hsZXQvTXlMZWFkc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX19czo1OiJwYWdlcyI7YToxOntpOjA7YTozOntzOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6Njp7aTowO3M6MzY6IjgzYWZjZDk5LTNkMmMtYTVkMi03NzRlLTU0MWNjYWRjMjg5ZCI7aToxO3M6MzY6ImMxZWNmMDgwLTZmNDEtNzI0ZC0wNzQ5LTU0MWNjYTVmNmY5MiI7aToyO3M6MzY6ImNjODk1MDk4LTZmMGEtNjg0ZS0yMzg2LTU0MWNjYWU2N2JkZiI7aTozO3M6MzY6ImQ1ZjE3YmYxLWEwZWQtYTAzZS1kNTc0LTU0MWNjYTUyZTgxMSI7aTo0O3M6MzY6ImUxNjlkZjA4LWJjNTItNDI2ZC0wMTU3LTU0MWNjYTI0ZmVmMSI7aTo1O3M6MzY6ImYxMDE5MTVjLTFiMjctZGZiNS04MGZmLTU0MWNjYTIxOTk5YyI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YToyOntpOjA7czozNjoiODNiNTY3MzUtY2I0MC0xMGQ5LTVjNzktNTQxY2NhNzY4YWIwIjtpOjE7czozNjoiODNiOTQ3ZjgtMDc3YS03Zjg3LWZmZGQtNTQxY2NhZGYzNzJiIjt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjIiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19'),
('5422ba24-1a2c-d9ba-6ee6-541cee88163f', 'Cases2_CASE', 0, '2014-09-20 03:01:59', '2014-09-20 03:01:59', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5fb1cd36-30e9-a444-e80f-541cca99b131', 'Home2_CALL', 0, '2014-09-20 00:30:34', '2014-09-20 00:30:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('603232b5-8c26-1f78-21e0-541cca96d50e', 'ETag', 0, '2014-09-20 00:30:30', '2014-09-20 04:09:46', '1', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mjt9'),
('65e82e47-763f-b420-b3a0-541cca2780c4', 'Home2_MEETING', 0, '2014-09-20 00:30:34', '2014-09-20 00:30:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('69af5af4-1acd-f579-b80b-54256900df75', 'Users2_USER', 0, '2014-09-26 13:27:30', '2014-09-26 13:27:30', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6b871f18-3325-b2c4-600e-541cca8024f5', 'Home2_OPPORTUNITY', 0, '2014-09-20 00:30:34', '2014-09-20 00:30:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('70a58070-01c2-7bef-6af6-541ccafda7a7', 'Home2_ACCOUNT', 0, '2014-09-20 00:30:34', '2014-09-20 00:30:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('76711eef-68f7-2f74-536d-541cca02bd98', 'Home2_LEAD', 0, '2014-09-20 00:30:34', '2014-09-20 00:30:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7bae0240-2b42-06d2-c408-541ccac6728f', 'Home2_SUGARFEED', 0, '2014-09-20 00:30:34', '2014-09-20 00:30:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8dc4ab1f-6c62-0e16-a9d1-54257926d46c', 'global', 0, '2014-09-26 14:34:45', '2014-09-26 14:35:11', '89dc998d-57d6-adca-d06b-54257971e11c', 'YTozNzp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtpOi0xO3M6ODoidGltZXpvbmUiO3M6MTM6IkV1cm9wZS9CZXJsaW4iO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJkL20vWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjE1OiJtYWlsX3NtdHBzZXJ2ZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHB1c2VyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwcGFzcyI7czowOiIiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjU6InMgZiBsIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjI6Im9uIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTU6ImVtYWlsX2xpbmtfdHlwZSI7czo1OiJzdWdhciI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjIwOiJjYWxlbmRhcl9wdWJsaXNoX2tleSI7czozNjoiOGQ4NjJiZmQtY2RlYS0zMzBiLTUxMTktNTQyNTc5MDA5YjNmIjtzOjE1OiJsb2dpbmV4cGlyYXRpb24iO3M6MToiMCI7czo3OiJsb2Nrb3V0IjtzOjA6IiI7czoxMToibG9naW5mYWlsZWQiO3M6MToiMCI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWdhcjUiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6MzoiQWxsIjt9'),
('b9d12765-d4eb-aa9c-a55e-541d283a8eaa', 'grp_p_groups2_GRP_P_GROUPS', 0, '2014-09-20 07:08:52', '2014-09-20 07:08:52', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c0326274-10d3-38bd-58ba-542579e7f544', 'Home', 0, '2014-09-26 14:35:12', '2014-09-26 14:35:12', '89dc998d-57d6-adca-d06b-54257971e11c', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjg6e3M6MzY6IjkwNTdiZjNhLTdmMDItNTQ1OC0wNGNlLTU0MjU3OTljYmZkYiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxMzoiaUZyYW1lRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NDoiSG9tZSI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTM6Im1vZHVsZXMvSG9tZS9EYXNobGV0cy9pRnJhbWVEYXNobGV0L2lGcmFtZURhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6Mzp7czoxMDoidGl0bGVMYWJlbCI7czozMDoiTEJMX0RBU0hMRVRfRElTQ09WRVJfU1VHQVJfUFJPIjtzOjM6InVybCI7czo0MjoiaHR0cHM6Ly93d3cuc3VnYXJjcm0uY29tL2NybS9wcm9kdWN0L2dvcHJvIjtzOjY6ImhlaWdodCI7aTozMTU7fX1zOjM2OiI5MDU3YjJjNS1iMDgyLTM3NjMtNmNlYy01NDI1NzliYmJhNzIiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTY6IlN1Z2FyRmVlZERhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjk6IlN1Z2FyRmVlZCI7czoxMToiZm9yY2VDb2x1bW4iO2k6MTtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjQ6Im1vZHVsZXMvU3VnYXJGZWVkL0Rhc2hsZXRzL1N1Z2FyRmVlZERhc2hsZXQvU3VnYXJGZWVkRGFzaGxldC5waHAiO31zOjM2OiI5MDU3YmI4OS05NzcwLTFmODEtNmM5YS01NDI1Nzk1YmUyZTMiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTM6ImlGcmFtZURhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjQ6IkhvbWUiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjE7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjUzOiJtb2R1bGVzL0hvbWUvRGFzaGxldHMvaUZyYW1lRGFzaGxldC9pRnJhbWVEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjM6e3M6MTA6InRpdGxlTGFiZWwiO3M6MjI6IkxCTF9EQVNITEVUX1NVR0FSX05FV1MiO3M6MzoidXJsIjtzOjQxOiJodHRwczovL3d3dy5zdWdhcmNybS5jb20vY3JtL3Byb2R1Y3QvbmV3cyI7czo2OiJoZWlnaHQiO2k6MzE1O319czozNjoiOTM4NDQzNDctZmYxMi0wZjc2LWIyYmItNTQyNTc5OTY5NzkxIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUNhbGxzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiQ2FsbHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0NhbGxzL0Rhc2hsZXRzL015Q2FsbHNEYXNobGV0L015Q2FsbHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiOTY3MjU5ZjUtYWQxNS03OTRhLTFkYzctNTQyNTc5YWY2ZTkxIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeU1lZXRpbmdzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiTWVldGluZ3MiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL01lZXRpbmdzL0Rhc2hsZXRzL015TWVldGluZ3NEYXNobGV0L015TWVldGluZ3NEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiOTk2MDVlZmItY2ZiZS00MzBhLWQ3ZjgtNTQyNTc5MTI4Yzg1IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjIyOiJNeU9wcG9ydHVuaXRpZXNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czoxMzoiT3Bwb3J0dW5pdGllcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODA6Im1vZHVsZXMvT3Bwb3J0dW5pdGllcy9EYXNobGV0cy9NeU9wcG9ydHVuaXRpZXNEYXNobGV0L015T3Bwb3J0dW5pdGllc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiI5Y2NiNjUxMC1lYmZjLTAzODgtZDViMy01NDI1Nzk1YWFhOTkiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15QWNjb3VudHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo4OiJBY2NvdW50cyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvQWNjb3VudHMvRGFzaGxldHMvTXlBY2NvdW50c0Rhc2hsZXQvTXlBY2NvdW50c0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJhMGIzNzgxZS03MjZmLTFmMzAtZWNhMS01NDI1NzkyMjI2MmUiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15TGVhZHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJMZWFkcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvTGVhZHMvRGFzaGxldHMvTXlMZWFkc0Rhc2hsZXQvTXlMZWFkc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX19czo1OiJwYWdlcyI7YToxOntpOjA7YTozOntzOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6Njp7aTowO3M6MzY6IjkwNTdiZjNhLTdmMDItNTQ1OC0wNGNlLTU0MjU3OTljYmZkYiI7aToxO3M6MzY6IjkzODQ0MzQ3LWZmMTItMGY3Ni1iMmJiLTU0MjU3OTk2OTc5MSI7aToyO3M6MzY6Ijk2NzI1OWY1LWFkMTUtNzk0YS0xZGM3LTU0MjU3OWFmNmU5MSI7aTozO3M6MzY6Ijk5NjA1ZWZiLWNmYmUtNDMwYS1kN2Y4LTU0MjU3OTEyOGM4NSI7aTo0O3M6MzY6IjljY2I2NTEwLWViZmMtMDM4OC1kNWIzLTU0MjU3OTVhYWE5OSI7aTo1O3M6MzY6ImEwYjM3ODFlLTcyNmYtMWYzMC1lY2ExLTU0MjU3OTIyMjYyZSI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YToyOntpOjA7czozNjoiOTA1N2IyYzUtYjA4Mi0zNzYzLTZjZWMtNTQyNTc5YmJiYTcyIjtpOjE7czozNjoiOTA1N2JiODktOTc3MC0xZjgxLTZjOWEtNTQyNTc5NWJlMmUzIjt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjIiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19'),
('c22675ad-286e-d256-1c8f-542579c578b1', 'Home2_CALL', 0, '2014-09-26 14:35:12', '2014-09-26 14:35:12', '89dc998d-57d6-adca-d06b-54257971e11c', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c35efda8-5091-4d1e-1697-5425790661cb', 'Home2_MEETING', 0, '2014-09-26 14:35:12', '2014-09-26 14:35:12', '89dc998d-57d6-adca-d06b-54257971e11c', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c458f187-b685-c02e-eef2-542579adf8fc', 'Home2_OPPORTUNITY', 0, '2014-09-26 14:35:12', '2014-09-26 14:35:12', '89dc998d-57d6-adca-d06b-54257971e11c', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c5d008eb-6198-eaa2-a824-5425796ea99b', 'Home2_ACCOUNT', 0, '2014-09-26 14:35:12', '2014-09-26 14:35:12', '89dc998d-57d6-adca-d06b-54257971e11c', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c6ca0c4c-318a-29c3-88b6-5425793d8e2e', 'Home2_LEAD', 0, '2014-09-26 14:35:12', '2014-09-26 14:35:12', '89dc998d-57d6-adca-d06b-54257971e11c', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c7858a37-8bd3-6ab7-ac4f-542579c59ad9', 'Home2_SUGARFEED', 0, '2014-09-26 14:35:12', '2014-09-26 14:35:12', '89dc998d-57d6-adca-d06b-54257971e11c', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');

-- --------------------------------------------------------

--
-- Table structure for table `vcals`
--

CREATE TABLE IF NOT EXISTS `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `idx_vcal` (`type`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE IF NOT EXISTS `versions` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_version` varchar(255) DEFAULT NULL,
  `db_version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_version` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `versions`
--

INSERT INTO `versions` (`id`, `deleted`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `file_version`, `db_version`) VALUES
('a335df35-74f6-235b-183f-541cc960dd35', 0, '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '1', 'Chart Data Cache', '3.5.1', '3.5.1'),
('a970bcc9-49a7-6fb9-3923-541cc9772904', 0, '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '1', 'htaccess', '3.5.1', '3.5.1'),
('c4c81952-172d-f4c8-8743-54257c709b30', 0, '2014-09-26 14:45:55', '2014-09-26 14:45:55', '1', '1', 'Rebuild Relationships', '4.0.0', '4.0.0'),
('d041c9f9-a880-3aef-094e-54257cee3dae', 0, '2014-09-26 14:45:55', '2014-09-26 14:45:55', '1', '1', 'Rebuild Extensions', '4.0.0', '4.0.0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
