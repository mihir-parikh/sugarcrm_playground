-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2014 at 09:56 AM
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
('347c4354-8dd0-3cd7-fc64-545d8bd9e911', '', '2014-11-08 03:19:26', '2014-11-08 03:23:38', '1', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('d1f92ba4-fedf-d288-7b39-54743be97357', 'account_1125', '2014-11-25 08:19:05', '2014-11-25 08:19:05', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('d51756c7-8d54-930d-aa2d-54253bfacf65', '0926_acc_1', '2014-09-26 10:11:57', '2014-09-26 13:45:02', '1', '1', NULL, 0, '4abda5b9-b267-1f2d-460c-5425691c46d2', NULL, NULL, NULL, NULL, NULL, 'Melbourne', NULL, NULL, NULL, NULL, NULL, NULL, 'http://', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, ''),
('dac39c7e-d11f-d36b-1676-542406bfdb68', 'account1', '2014-09-25 12:10:50', '2014-09-25 12:12:51', '1', '1', NULL, 0, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://google.com.au1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, ''),
('dfcd56ec-4167-42e8-18ab-545db0b03492', 'Rest account', '2014-11-08 05:56:11', '2014-11-08 05:56:11', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('ecb4ffe8-45de-770a-c39a-545daf5769ca', 'Rest account', '2014-11-08 05:51:24', '2014-11-08 05:51:24', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('ee689741-a453-2d4f-c42c-54254fb88d21', '0926_acc_2', '2014-09-26 11:34:02', '2014-10-25 09:43:33', '1', '1', NULL, 0, '1', NULL, NULL, '8300000000', NULL, '1 Test street', 'MELBOURNE', 'VIC', NULL, NULL, NULL, NULL, NULL, 'http://', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, ''),
('ef238ff0-42f3-1e59-82fe-54743d8f2573', 'account_1125y', '2014-11-25 08:27:00', '2014-11-25 08:27:01', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, ''),
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
('3b35f6da-76ce-bc96-53b3-54743d5710bb', 'ef238ff0-42f3-1e59-82fe-54743d8f2573', '2014-11-25 08:27:01', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', 'name', 'name', 'account_1125x', 'account_1125y', NULL, NULL),
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
-- Table structure for table `accounts_cstm`
--

CREATE TABLE IF NOT EXISTS `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `quote_c` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_cstm`
--

INSERT INTO `accounts_cstm` (`id_c`, `quote_c`, `currency_id`) VALUES
('347c4354-8dd0-3cd7-fc64-545d8bd9e911', NULL, NULL),
('d1f92ba4-fedf-d288-7b39-54743be97357', NULL, NULL),
('dfcd56ec-4167-42e8-18ab-545db0b03492', NULL, NULL),
('ecb4ffe8-45de-770a-c39a-545daf5769ca', NULL, NULL),
('ee689741-a453-2d4f-c42c-54254fb88d21', NULL, ''),
('ef238ff0-42f3-1e59-82fe-54743d8f2573', NULL, '');

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
('22c58a65-e5b0-8268-f8a8-542e98f50c8f', '2014-10-03 12:35:17', '2014-10-03 12:35:17', '1', '1', 'access', 'ins_p_insurance_policy', 'module', 89, 0),
('249d00aa-4b78-0f0f-43eb-542ea24ac9c0', '2014-10-03 13:19:44', '2014-10-03 13:19:44', '1', '1', 'access', 'aut_d_car_sold_data', 'module', 89, 0),
('24b98928-15f2-87ec-8c22-542e98e9f6fe', '2014-10-03 12:35:17', '2014-10-03 12:35:17', '1', '1', 'view', 'ins_p_insurance_policy', 'module', 90, 0),
('25b38e7c-ff91-3027-3186-542e9897fb8e', '2014-10-03 12:35:17', '2014-10-03 12:35:17', '1', '1', 'list', 'ins_p_insurance_policy', 'module', 90, 0),
('2614025c-5393-0836-6a23-542ea20260d2', '2014-10-03 13:19:44', '2014-10-03 13:19:44', '1', '1', 'view', 'aut_d_car_sold_data', 'module', 90, 0),
('26910137-dad6-097a-8baf-541cfef0383f', '2014-09-20 04:09:46', '2014-09-20 04:09:46', '1', '1', 'delete', 'grp_p_groups', 'module', 90, 0),
('26ec159a-e84c-cbd4-859e-542e989dd2ea', '2014-10-03 12:35:17', '2014-10-03 12:35:17', '1', '1', 'edit', 'ins_p_insurance_policy', 'module', 90, 0),
('270e0425-5de3-2051-5c82-542ea2437369', '2014-10-03 13:19:44', '2014-10-03 13:19:44', '1', '1', 'list', 'aut_d_car_sold_data', 'module', 90, 0),
('27811ddb-5544-f07f-0536-541cc9e71a85', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'massupdate', 'Opportunities', 'module', 90, 0),
('27a79307-64a7-0428-3476-542e98025621', '2014-10-03 12:35:17', '2014-10-03 12:35:17', '1', '1', 'delete', 'ins_p_insurance_policy', 'module', 90, 0),
('27fcf8c1-e384-3003-09a1-541cc96ced7c', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'import', 'Bugs', 'module', 90, 0),
('28080829-d1e2-a6eb-f883-542ea2484930', '2014-10-03 13:19:44', '2014-10-03 13:19:44', '1', '1', 'edit', 'aut_d_car_sold_data', 'module', 90, 0),
('28165667-d6a9-9d17-0833-541cc94a07b0', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'access', 'Notes', 'module', 89, 0),
('2820c29e-c56a-24db-1fdb-541cc9de8e6d', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'delete', 'EmailMarketing', 'module', 90, 0),
('2854d4da-ce5f-1324-d444-541cc90d6360', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'delete', 'Documents', 'module', 90, 0),
('28a1918c-0078-d9c4-efb9-542e98ce43ee', '2014-10-03 12:35:17', '2014-10-03 12:35:17', '1', '1', 'import', 'ins_p_insurance_policy', 'module', 90, 0),
('28c39ce9-1fc9-6bbb-3b3d-542ea251e409', '2014-10-03 13:19:44', '2014-10-03 13:19:44', '1', '1', 'delete', 'aut_d_car_sold_data', 'module', 90, 0),
('295d1e2a-a1a6-a290-4399-542e98b0b882', '2014-10-03 12:35:17', '2014-10-03 12:35:17', '1', '1', 'export', 'ins_p_insurance_policy', 'module', 90, 0),
('29bd9913-dea5-b18e-2eaa-542ea2f908e5', '2014-10-03 13:19:44', '2014-10-03 13:19:44', '1', '1', 'import', 'aut_d_car_sold_data', 'module', 90, 0),
('2a189463-d818-1b9f-b1a4-542e9848a737', '2014-10-03 12:35:17', '2014-10-03 12:35:17', '1', '1', 'massupdate', 'ins_p_insurance_policy', 'module', 90, 0),
('2a79127e-46a4-a3f8-8497-542ea21bb6d4', '2014-10-03 13:19:44', '2014-10-03 13:19:44', '1', '1', 'export', 'aut_d_car_sold_data', 'module', 90, 0),
('2af951f7-3824-1969-a5ea-541cc9d64dc7', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'access', 'ProjectTask', 'module', 89, 0),
('2b731e98-a90b-c44f-f481-542ea2734b04', '2014-10-03 13:19:44', '2014-10-03 13:19:44', '1', '1', 'massupdate', 'aut_d_car_sold_data', 'module', 90, 0),
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
('64cdd0c7-5163-af44-9b58-542eaab68dbe', '2014-10-03 13:53:48', '2014-10-03 13:53:48', '1', '1', 'access', 'car_f_car_file', 'module', 89, 0),
('6669d38d-e684-cb4c-d938-541cc9f06b7c', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'view', 'Cases', 'module', 90, 0),
('66b3b097-ed85-5dbf-fe24-541cc9e8616c', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'export', 'Emails', 'module', 90, 0),
('6700529e-aac3-5acf-da9b-542eaa375209', '2014-10-03 13:53:48', '2014-10-03 13:53:48', '1', '1', 'view', 'car_f_car_file', 'module', 90, 0),
('6838e8ad-b4a6-1adf-e43d-542eaa4c68da', '2014-10-03 13:53:48', '2014-10-03 13:53:48', '1', '1', 'list', 'car_f_car_file', 'module', 90, 0),
('692e1597-3b0e-b3fd-3f81-541cc9c9d87f', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'list', 'Tasks', 'module', 90, 0),
('6a6b6e1d-215a-490f-763a-542eaafeda4d', '2014-10-03 13:53:48', '2014-10-03 13:53:48', '1', '1', 'edit', 'car_f_car_file', 'module', 90, 0),
('6ba3eefa-6863-9c95-5849-542eaa82e7be', '2014-10-03 13:53:48', '2014-10-03 13:53:48', '1', '1', 'delete', 'car_f_car_file', 'module', 90, 0),
('6bfef31a-a77b-8f61-a970-541cc93b05fc', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'list', 'Cases', 'module', 90, 0),
('6d1af9ca-079d-9d0a-2b45-542eaaf29412', '2014-10-03 13:53:48', '2014-10-03 13:53:48', '1', '1', 'import', 'car_f_car_file', 'module', 90, 0),
('6e53726b-33b5-f894-3788-542eaaa55aed', '2014-10-03 13:53:48', '2014-10-03 13:53:48', '1', '1', 'export', 'car_f_car_file', 'module', 90, 0),
('6eb2e0c5-05ff-00eb-8de9-541cc9b03237', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'massupdate', 'Emails', 'module', 90, 0),
('6ec4ab72-ead1-b1a7-4463-541cc98df8cb', '2014-09-20 00:27:01', '2014-09-20 00:27:01', '1', '', 'edit', 'Tasks', 'module', 90, 0),
('70477549-160b-7699-a709-542eaa88490f', '2014-10-03 13:53:48', '2014-10-03 13:53:48', '1', '1', 'massupdate', 'car_f_car_file', 'module', 90, 0),
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

--
-- Dumping data for table `acl_roles`
--

INSERT INTO `acl_roles` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `description`, `deleted`) VALUES
('308cee77-3b6c-86da-5efe-542ea2b6236e', '2014-10-03 13:21:28', '2014-10-03 13:21:28', '1', '1', 'Sales Team', '', 0),
('84feab05-d2be-c60b-7cbb-5440e2eb1221', '2014-10-17 09:33:33', '2014-10-17 09:33:33', '1', '1', 'Technical support', '', 0),
('bbb5e57a-e91a-413f-2731-542e989c8a25', '2014-10-03 12:36:00', '2014-10-03 12:36:00', '1', '1', 'Insurance Agents', '', 0);

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

--
-- Dumping data for table `acl_roles_actions`
--

INSERT INTO `acl_roles_actions` (`id`, `role_id`, `action_id`, `access_override`, `date_modified`, `deleted`) VALUES
('101e85e2-593b-30fb-cd1e-542e9821f08e', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'acefe303-f232-f960-74e7-541cc9f254b1', 0, '2014-10-03 12:36:55', 0),
('1062f7eb-b06d-122d-1675-5440e29f726a', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '5635379d-345e-619f-9bf1-541cc976b04d', 0, '2014-10-17 09:33:39', 0),
('109b915a-5e81-4779-ab18-542e9892a02e', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '842d7aee-16e9-fc5e-16cf-541cc9785189', 0, '2014-10-03 12:36:55', 0),
('115713e5-5d45-a0ad-1abe-542e988b6913', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'c5ad3385-c22b-dceb-8f2e-541cc910c74b', 0, '2014-10-03 12:36:55', 0),
('115d077c-5359-8ed8-8381-5440e28f96b9', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '4e4961d1-0da8-3ece-0089-541cc9ba3d8d', 0, '2014-10-17 09:33:39', 0),
('11d4114a-935d-7ae9-f706-542e98f8bf24', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'e6097af6-05fe-430c-6e56-541cc9c44159', 0, '2014-10-03 12:36:55', 0),
('12570619-b399-4b10-fa52-5440e2be8562', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '3853c4c8-f68f-dfd2-77ca-541cc9b5ae68', 0, '2014-10-17 09:33:39', 0),
('128f9ac8-fe58-4614-cf80-542e9836d322', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'de0948a0-dad5-b722-5a21-541cc908589d', 0, '2014-10-03 12:36:55', 0),
('1312828b-0507-95af-6a6d-5440e2e9eec7', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '5bc1bbda-99e4-1cbc-e2fc-541cc99ee48d', 0, '2014-10-17 09:33:39', 0),
('13c81018-147f-14b1-8f07-542e98da66ef', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'f39b3569-16f0-3536-d33a-541cc912404c', 0, '2014-10-03 12:36:55', 0),
('140c8212-5bbd-ad7b-bfbc-5440e2f7fd03', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '305cb670-ccd7-c9b9-46b1-541cc9cf6a13', 0, '2014-10-17 09:33:39', 0),
('148984ab-1ad9-30b7-aedd-5440e25dc4f0', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'afe44fab-9142-78d5-31cf-541cc95acf59', 0, '2014-10-17 09:33:39', 0),
('1500ac26-d0cf-f54d-c583-542e989aa69c', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'eb937fee-0a53-2669-6b00-541cc98ee675', 0, '2014-10-03 12:36:55', 0),
('15450154-8644-9d2e-c38b-5440e256b25f', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'a6460654-3ca2-a604-a5f8-541cc933eca9', 0, '2014-10-17 09:33:39', 0),
('15faa03d-783f-5bed-49b8-542e98cf316f', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'd870895b-442e-53d6-cf65-541cc9312147', 0, '2014-10-03 12:36:55', 0),
('16009580-0204-d4bb-d87e-5440e23d61ee', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'f3adcd46-807a-2b49-b965-541cc9caae94', 0, '2014-10-17 09:33:39', 0),
('1677ae81-eccf-d66a-fc09-542e9867119d', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '5024042d-1bb3-cfb0-ce95-541cc961a579', 0, '2014-10-03 12:36:55', 0),
('16bc11d8-50f5-2316-4b28-5440e257741f', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '1d77ca32-1f15-e8bd-5dc9-541cc990bda9', 0, '2014-10-17 09:33:39', 0),
('17332dc8-7d13-0988-f4fd-542e984ad349', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'cb0218de-d3b5-c95d-1c5c-541cc90f5d25', 0, '2014-10-03 12:36:55', 0),
('17335313-e88e-3f89-038e-542ea2e2c35a', '308cee77-3b6c-86da-5efe-542ea2b6236e', '844da81b-6c36-c959-4c5c-541cc9fb4ded', 0, '2014-10-03 13:22:06', 0),
('1739143c-ea56-acd7-c74a-5440e27ed928', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '152edb75-f240-0564-b16e-541cc9c4641a', 0, '2014-10-17 09:33:39', 0),
('17e40fe1-8bb4-7940-9ee7-5440e255eb8d', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '97e6aa88-07b1-6755-130c-541cc995cd6b', 0, '2014-10-17 09:33:39', 0),
('17eeaf33-d2cc-fdca-d79d-542e989c7781', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '3b38bce7-7962-ad8d-70db-541cc93fe3c2', 0, '2014-10-03 12:36:55', 0),
('17f499c0-91a2-5c54-ee9f-5440e2548852', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'e61e848f-6f34-7ada-af97-541cc95af0b4', 0, '2014-10-17 09:33:39', 0),
('186be922-84fd-de83-8c81-542ea26d2ea4', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'a7ac76ca-4551-8164-2c21-541cc958c99d', 0, '2014-10-03 13:22:06', 0),
('18aa2277-4565-3021-534c-542e98634adf', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '5bb37071-a6dc-a943-a4a0-541cc9823855', 0, '2014-10-03 12:36:55', 0),
('18e8b1f3-54ac-372c-2cf5-542e98d5c9ec', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '53a365a7-8323-4886-8bc5-541cc9849d84', 0, '2014-10-03 12:36:55', 0),
('18ee9a84-00f0-62b1-9e3d-5440e29eb2d6', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '27811ddb-5544-f07f-0536-541cc9e71a85', 0, '2014-10-17 09:33:39', 0),
('1927627a-f4ba-39bf-b9ab-542ea2daddf3', '308cee77-3b6c-86da-5efe-542ea2b6236e', '9cdf23ab-a0e4-ba94-6f9b-541cc914b6dc', 0, '2014-10-03 13:22:06', 0),
('1965bf8d-d0fb-26e0-0e93-542e984335b3', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '7157c4dd-8e33-8043-9d6d-541cc98c84a1', 0, '2014-10-03 12:36:55', 0),
('19e8ac14-fdda-42b9-a72b-5440e21c3746', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'dc1501a6-87ce-d458-1320-541cc988a499', 0, '2014-10-17 09:33:39', 0),
('1a213ca8-b621-6d95-bb32-542e989d29c1', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '64006cb8-1506-aaf3-490e-541cc9922c0b', 0, '2014-10-03 12:36:55', 0),
('1a2167dc-ba0a-697b-d948-542ea27a7efe', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'b7d8bedb-cc73-4ed9-cd42-541cc9202f5e', 0, '2014-10-03 13:22:06', 0),
('1a65afdf-6259-c0e6-9fcd-5440e284164c', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '2af951f7-3824-1969-a5ea-541cc9d64dc7', 0, '2014-10-17 09:33:39', 0),
('1a9e3dfd-bfef-805f-008b-542e981660dd', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '4b67a106-53d1-1436-34d3-541cc9383b59', 0, '2014-10-03 12:36:55', 0),
('1adcec72-b028-3218-a87f-542ea264b26f', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'afde5ff7-a730-a8a7-a9d3-541cc9b8f0c9', 0, '2014-10-03 13:22:06', 0),
('1b21287f-dc2f-448c-eb5a-5440e2654eab', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '48d83784-9e43-f5e4-6c34-541cc9355fdd', 0, '2014-10-17 09:33:39', 0),
('1b6d0f64-bc48-a580-312b-542e981dbec1', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'f3adcd46-807a-2b49-b965-541cc9caae94', 0, '2014-10-03 12:36:55', 0),
('1b9836ec-4523-fde1-01aa-542e982e522e', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '79a98c94-9475-1c3c-addc-541cc91efd9f', 0, '2014-10-03 12:36:55', 0),
('1b98654b-6bf0-bcfb-5ef4-542ea2692eb3', '308cee77-3b6c-86da-5efe-542ea2b6236e', '94afbd10-c54b-88fb-c500-541cc963b8f3', 0, '2014-10-03 13:22:06', 0),
('1bdcabeb-20de-dfbc-9157-5440e2abc033', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '433f6862-6185-be03-1524-541cc9cffb25', 0, '2014-10-17 09:33:39', 0),
('1c53ba85-e9b2-13a7-5a03-542e98fbf9e0', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '436af26d-9857-e0f2-6c38-541cc962812c', 0, '2014-10-03 12:36:55', 0),
('1c53effd-d712-eaf3-e1f4-542ea2106fac', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'c052942e-5ccc-9ff1-bfd6-541cc91590ac', 0, '2014-10-03 13:22:06', 0),
('1c59a6bf-6fa1-8c80-ae08-5440e294995e', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '53a10c13-591c-0588-a474-541cc92032ce', 0, '2014-10-17 09:33:39', 0),
('1d0f30eb-01b6-fcf3-98f5-542e9842b606', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '58ef6cbb-0d41-5693-528c-541cc9841c32', 0, '2014-10-03 12:36:55', 0),
('1d0f7d67-bb48-4564-4a6c-542ea2228dcf', '308cee77-3b6c-86da-5efe-542ea2b6236e', '8c94b248-3a9d-e4c8-2126-541cc9e39018', 0, '2014-10-03 13:22:06', 0),
('1d1529fe-161a-085a-d73c-5440e2b99507', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '4e1bb596-552c-1c13-e4d1-541cc9dac65e', 0, '2014-10-17 09:33:39', 0),
('1d8c7267-7e1e-cfcf-26f4-542ea2c648d5', '308cee77-3b6c-86da-5efe-542ea2b6236e', '796105a5-edbd-20d4-c48e-541cc99874b6', 0, '2014-10-03 13:22:06', 0),
('1d922d9a-923f-998a-a09d-5440e2ad1327', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '3f5b0917-16cf-c7a9-29af-541cc92b4f8b', 0, '2014-10-17 09:33:39', 0),
('1e094898-f57b-3e7b-c8ab-542e98645142', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '76cc8e5b-08e3-1d2b-6aad-541cc9f3e1eb', 0, '2014-10-03 12:36:55', 0),
('1e09775d-7eac-4a76-01a4-542ea2e6e4aa', '308cee77-3b6c-86da-5efe-542ea2b6236e', '22adaaad-e1d5-9b98-90f9-541cc96a85ff', 0, '2014-10-03 13:22:06', 0),
('1e0f3c08-1937-817a-e20f-5440e2e073cb', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '5b85b55e-ada0-7647-8bc5-541cc980ed50', 0, '2014-10-17 09:33:39', 0),
('1e867055-605a-aa0d-65f4-542ea29c9f21', '308cee77-3b6c-86da-5efe-542ea2b6236e', '1d287499-e76f-8f3f-c719-541cc99e801d', 0, '2014-10-03 13:22:06', 0),
('1ec4c2c7-ccd2-9303-32b9-542e98fe4856', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '6ec4ab72-ead1-b1a7-4463-541cc98df8cb', 0, '2014-10-03 12:36:55', 0),
('1ecab169-7333-e9de-5ad5-5440e2980f09', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '3307da9e-6d24-b8b5-cc0a-541cc95224a0', 0, '2014-10-17 09:33:39', 0),
('1f41cd64-6748-b52a-0f19-542e981b4cff', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '81a63319-d7f7-2cc8-ecf2-541cc90ddb12', 0, '2014-10-03 12:36:55', 0),
('1f41f292-d6dc-4e76-599f-542ea2e8cc9c', '308cee77-3b6c-86da-5efe-542ea2b6236e', '344af59e-e4f4-4019-ce8a-541cc9dcc84b', 0, '2014-10-03 13:22:06', 0),
('1f47ab3e-da74-35e6-3cdd-5440e23a2429', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '7c34ae1f-c145-5a36-b2c4-541cc9969a8b', 0, '2014-10-17 09:33:39', 0),
('1fbefe5d-540d-fb33-63ae-542ea2fdfed0', '308cee77-3b6c-86da-5efe-542ea2b6236e', '27fcf8c1-e384-3003-09a1-541cc96ced7c', 0, '2014-10-03 13:22:06', 0),
('1ffd4810-f2ce-18d8-c219-542e98f10524', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '7c57819b-9b10-b0a9-4c64-541cc9b3fc46', 0, '2014-10-03 12:36:55', 0),
('2003349f-0b22-913c-6497-5440e24e1fa2', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '9798a1a2-d0c1-8599-f06f-541cc9ae68f8', 0, '2014-10-17 09:33:39', 0),
('207a4ea2-8781-6b1c-71c0-542e98bc2084', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '692e1597-3b0e-b3fd-3f81-541cc9c9d87f', 0, '2014-10-03 12:36:55', 0),
('207a7f15-cdea-cc0f-a14f-542ea23fe3ad', '308cee77-3b6c-86da-5efe-542ea2b6236e', '1923e397-54bb-3790-2cf5-541cc99b5420', 0, '2014-10-03 13:22:06', 0),
('208033df-b6de-fcc2-dfb9-5440e2c6c7bf', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '91dd2548-ce5a-9a45-03b3-541cc94c36ce', 0, '2014-10-17 09:33:39', 0),
('20f74d3f-8654-ecfe-4ed0-542e98cf4606', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '873181df-a08a-44f6-acb1-541cc93181c6', 0, '2014-10-03 12:36:55', 0),
('20f78487-0223-8bf8-ab97-542ea218eca1', '308cee77-3b6c-86da-5efe-542ea2b6236e', '383ff038-bc7b-b90d-46dc-541cc99d2f55', 0, '2014-10-03 13:22:06', 0),
('213bbdd1-1b55-d944-32ab-5440e26f8334', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'a4ec0e7b-b4ae-5c1e-2d61-541cc9636e4f', 0, '2014-10-17 09:33:39', 0),
('21745f54-83e4-1f1d-7ac1-542e98c7a478', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '61336183-6a55-de3f-934f-541cc9b16d40', 0, '2014-10-03 12:36:55', 0),
('21748323-eba7-0568-561d-542ea20083cb', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'cd020051-9a0f-1f07-0af3-541cc94dda2c', 0, '2014-10-03 13:22:06', 0),
('21f18b25-f67c-e3c7-2aaa-542ea29322ef', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'a50f9b70-97bb-7653-0cd2-541cc9d880c8', 0, '2014-10-03 13:22:06', 0),
('21f73955-e439-3754-d1d8-5440e24fbbfe', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '9f57c038-f28e-7b72-308f-541cc9e95893', 0, '2014-10-17 09:33:39', 0),
('22f1493c-2647-056c-465e-5440e29ca18d', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '89ca1681-6d25-2148-a9ca-541cc93f0f2b', 0, '2014-10-17 09:33:39', 0),
('236e49e7-f602-9d49-0e0b-5440e2d127ef', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'acefe303-f232-f960-74e7-541cc9f254b1', 0, '2014-10-17 09:33:39', 0),
('24240d52-8407-c59d-3894-542ea2d613b7', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'c5b408b8-481e-51c1-eafc-541cc9e427c3', 0, '2014-10-03 13:22:06', 0),
('246847e6-6de7-7e10-3a20-5440e2dcdc8c', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '842d7aee-16e9-fc5e-16cf-541cc9785189', 0, '2014-10-17 09:33:39', 0),
('24df87cd-a566-1abc-4839-542ea28e3dbb', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'bd7be71c-37ca-ab4c-5b5f-541cc9e44adc', 0, '2014-10-03 13:22:06', 0),
('25624d45-4d5c-ab34-ad03-5440e22673e4', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'c5ad3385-c22b-dceb-8f2e-541cc910c74b', 0, '2014-10-17 09:33:39', 0),
('259b188f-5fc9-c662-25d3-542ea2d7ae69', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'd5cd2970-ae5f-ffe2-f785-541cc9ac10b5', 0, '2014-10-03 13:22:06', 0),
('26181e8d-2169-cc34-f2d2-542ea2fa1f15', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'cddacca3-5ada-5596-c3f0-541cc9d713ae', 0, '2014-10-03 13:22:06', 0),
('265c4fc7-d23b-b23c-1f29-5440e2d4b4e0', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'e6097af6-05fe-430c-6e56-541cc9c44159', 0, '2014-10-17 09:33:39', 0),
('26d9595e-1cd7-2628-9620-5440e26612d9', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'de0948a0-dad5-b722-5a21-541cc908589d', 0, '2014-10-17 09:33:39', 0),
('27121e9a-83a3-a43a-f342-542ea2a01728', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'b54583d8-bb95-409e-bbec-541cc9122e40', 0, '2014-10-03 13:22:06', 0),
('27250b0f-b8c0-4336-b42e-542e982c5192', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '1d77ca32-1f15-e8bd-5dc9-541cc990bda9', 0, '2014-10-03 12:36:55', 0),
('27cd9582-25ad-4999-3ed8-542ea2b7146c', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'de144d19-54f6-22f8-312a-541cc9c61ce1', 0, '2014-10-03 13:22:06', 0),
('27d35177-c739-8d1d-a53c-5440e2253038', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'f39b3569-16f0-3536-d33a-541cc912404c', 0, '2014-10-17 09:33:39', 0),
('28cd5e6f-762f-c3d4-15ec-5440e2065d9c', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'eb937fee-0a53-2669-6b00-541cc98ee675', 0, '2014-10-17 09:33:39', 0),
('29832b5d-f24f-3906-d932-542ea206872d', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'ad440925-6637-44ae-21ad-541cc9dbe6a9', 0, '2014-10-03 13:22:06', 0),
('29c75626-1206-9321-d3d9-5440e240337f', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'd870895b-442e-53d6-cf65-541cc9312147', 0, '2014-10-17 09:33:39', 0),
('2a82d41e-c681-58b7-667a-5440e2d2c8f1', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '5024042d-1bb3-cfb0-ce95-541cc961a579', 0, '2014-10-17 09:33:39', 0),
('2affee95-5db6-ee03-2fb2-5440e2ed2086', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'cb0218de-d3b5-c95d-1c5c-541cc90f5d25', 0, '2014-10-17 09:33:39', 0),
('2b38a0ad-48d4-3c22-8712-542ea2836f29', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'd5de25b0-e5e2-a0dc-1c9d-541cc9a197e2', 0, '2014-10-03 13:22:06', 0),
('2b7ce7e3-7246-d112-b49b-5440e2b45300', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '3b38bce7-7962-ad8d-70db-541cc93fe3c2', 0, '2014-10-17 09:33:39', 0),
('2c386311-d76d-ef99-0d8b-5440e2d18b65', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '5bb37071-a6dc-a943-a4a0-541cc9823855', 0, '2014-10-17 09:33:39', 0),
('2c71241d-03c3-a763-a4d9-542ea2cea28d', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'f3b3212e-6607-7d2d-8978-541cc922cdbd', 0, '2014-10-03 13:22:06', 0),
('2cb5640d-1fa5-2a80-45f4-5440e21aeff6', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '53a365a7-8323-4886-8bc5-541cc9849d84', 0, '2014-10-17 09:33:39', 0),
('2d70ee42-ad08-662d-feac-5440e2a2f6a2', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '7157c4dd-8e33-8043-9d6d-541cc98c84a1', 0, '2014-10-17 09:33:39', 0),
('2ea96e25-c3a2-2883-f5e5-5440e22e1579', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '64006cb8-1506-aaf3-490e-541cc9922c0b', 0, '2014-10-17 09:33:39', 0),
('2ef50787-dc27-ef97-fb56-542e981b0db1', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '152edb75-f240-0564-b16e-541cc9c4641a', 0, '2014-10-03 12:36:55', 0),
('2f64f10f-441c-b47c-48f9-5440e2d1d3ce', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '4b67a106-53d1-1436-34d3-541cc9383b59', 0, '2014-10-17 09:33:39', 0),
('30207faf-7598-8c43-7ead-5440e22f1a3c', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '79a98c94-9475-1c3c-addc-541cc91efd9f', 0, '2014-10-17 09:33:39', 0),
('3097bca2-ea6b-764b-fefe-542ea26674ba', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'eb6e9597-63ab-c038-110a-541cc944f64a', 0, '2014-10-03 13:22:06', 0),
('311a7843-d241-fee5-a111-5440e2083155', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '436af26d-9857-e0f2-6c38-541cc962812c', 0, '2014-10-17 09:33:39', 0),
('319776e6-f9a4-1d62-99d2-5440e215a27c', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '58ef6cbb-0d41-5693-528c-541cc9841c32', 0, '2014-10-17 09:33:39', 0),
('320eca72-631c-6309-b177-542ea2fcb7eb', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'd1cd0a28-b0d4-7fc3-81fc-541cc91d62a4', 0, '2014-10-03 13:22:06', 0),
('32917530-bd45-abdc-4d90-5440e22dc458', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '76cc8e5b-08e3-1d2b-6aad-541cc9f3e1eb', 0, '2014-10-17 09:33:39', 0),
('333c0554-6cd1-36a6-416e-5440e2e28574', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'ad1a13e6-c9d8-79ff-1b72-541cc927259f', 0, '2014-10-17 09:33:39', 0),
('334748c8-f01f-912e-643c-542ea2963095', '308cee77-3b6c-86da-5efe-542ea2b6236e', '790d0b9e-67d9-122a-aa72-541cc91a1d2c', 0, '2014-10-03 13:22:06', 0),
('334d0f96-9897-cb2d-161d-5440e2876874', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '6ec4ab72-ead1-b1a7-4463-541cc98df8cb', 0, '2014-10-17 09:33:39', 0),
('33ca03e7-9e77-ed95-c573-5440e2b51eed', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '81a63319-d7f7-2cc8-ecf2-541cc90ddb12', 0, '2014-10-17 09:33:39', 0),
('347fc14f-b445-5dc4-60f8-542ea240687c', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'e36e6e8c-1bc5-2e58-2a07-541cc9ae7a5f', 0, '2014-10-03 13:22:06', 0),
('34858308-2684-1d67-bfe0-5440e2c1c060', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '7c57819b-9b10-b0a9-4c64-541cc9b3fc46', 0, '2014-10-17 09:33:39', 0),
('357f81ae-4de4-bdc2-fd66-5440e233e50e', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '692e1597-3b0e-b3fd-3f81-541cc9c9d87f', 0, '2014-10-17 09:33:39', 0),
('35f6c71d-9205-23cb-24f5-542ea2074bac', '308cee77-3b6c-86da-5efe-542ea2b6236e', '15526154-9841-18ed-ba6d-541cc90198c5', 0, '2014-10-03 13:22:06', 0),
('363b062d-30fd-25df-a8ec-5440e26aaf30', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '873181df-a08a-44f6-acb1-541cc93181c6', 0, '2014-10-17 09:33:39', 0),
('36c5052c-e6ce-bcbc-1220-542e98c209f6', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'e61e848f-6f34-7ada-af97-541cc95af0b4', 0, '2014-10-03 12:36:55', 0),
('36f0d4f5-472e-fddc-dcf3-542ea2ebd744', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'ddd8b9dd-6e8f-4dda-ac8a-541cc9ca1757', 0, '2014-10-03 13:22:06', 0),
('373507ca-1a6a-db26-d8ca-5440e2eae73f', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '61336183-6a55-de3f-934f-541cc9b16d40', 0, '2014-10-17 09:33:39', 0),
('3923534a-e0c2-c6a6-0b2f-542ea28900bc', '308cee77-3b6c-86da-5efe-542ea2b6236e', '249d00aa-4b78-0f0f-43eb-542ea24ac9c0', 89, '2014-10-03 13:22:06', 0),
('3a1d5f9b-aebd-dffc-aeda-542ea2c2b71f', '308cee77-3b6c-86da-5efe-542ea2b6236e', '28c39ce9-1fc9-6bbb-3b3d-542ea251e409', 90, '2014-10-03 13:22:06', 0),
('3b0c0ba5-f932-6461-481c-5440e29f6abd', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'a78c036e-95ff-ba49-7cac-541cc989dd5a', 0, '2014-10-17 09:33:39', 0),
('3b1761dc-173c-e84c-92be-542ea26e29fa', '308cee77-3b6c-86da-5efe-542ea2b6236e', '28080829-d1e2-a6eb-f883-542ea2484930', 90, '2014-10-03 13:22:06', 0),
('3bd2e604-bc01-dcac-d747-542ea20f429a', '308cee77-3b6c-86da-5efe-542ea2b6236e', '2a79127e-46a4-a3f8-8497-542ea21bb6d4', 90, '2014-10-03 13:22:06', 0),
('3ccce523-9c17-82bf-72bc-542ea2653eb1', '308cee77-3b6c-86da-5efe-542ea2b6236e', '29bd9913-dea5-b18e-2eaa-542ea2f908e5', 90, '2014-10-03 13:22:06', 0),
('3d88598c-7e8f-ed54-8177-542ea293fa15', '308cee77-3b6c-86da-5efe-542ea2b6236e', '270e0425-5de3-2051-5c82-542ea2437369', 90, '2014-10-03 13:22:06', 0),
('3e82602a-9ae9-368e-966d-542ea27a88cd', '308cee77-3b6c-86da-5efe-542ea2b6236e', '2b731e98-a90b-c44f-f481-542ea2734b04', 90, '2014-10-03 13:22:06', 0),
('3f3df6e3-8041-28fc-5dda-542ea2f76e2b', '308cee77-3b6c-86da-5efe-542ea2b6236e', '2614025c-5393-0836-6a23-542ea20260d2', 90, '2014-10-03 13:22:06', 0),
('3fd00767-5b22-ac2e-6321-542e9840dd5e', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'afe44fab-9142-78d5-31cf-541cc95acf59', 0, '2014-10-03 12:36:55', 0),
('3ff97650-1de7-10f6-828c-542ea2a99601', '308cee77-3b6c-86da-5efe-542ea2b6236e', '612acc71-66b0-af32-0fcf-541cc964e073', 0, '2014-10-03 13:22:06', 0),
('40b4f12b-091c-2955-7259-542ea24853cb', '308cee77-3b6c-86da-5efe-542ea2b6236e', '76f876d8-4105-c215-28bb-541cc92fe812', 0, '2014-10-03 13:22:06', 0),
('42a8fb08-21ba-fd66-b1bd-542ea2308e75', '308cee77-3b6c-86da-5efe-542ea2b6236e', '71489c33-deec-9805-0fd8-541cc9b74096', 0, '2014-10-03 13:22:06', 0),
('42dc024f-64a1-4aaa-3d1e-5440e22fba45', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'b7f94f75-5a78-d68e-cc13-541cc9a32c9c', 0, '2014-10-17 09:33:39', 0),
('436484d7-b94a-be2e-5f52-542ea2f7cb72', '308cee77-3b6c-86da-5efe-542ea2b6236e', '81ca2be0-5fc2-1d52-0496-541cc92282ba', 0, '2014-10-03 13:22:06', 0),
('442009fe-70be-eedd-5a25-542ea25b2643', '308cee77-3b6c-86da-5efe-542ea2b6236e', '7c21d50f-97c7-f01b-dcda-541cc94a7565', 0, '2014-10-03 13:22:06', 0),
('449d009d-6bdf-c20a-b89a-542ea2bedd52', '308cee77-3b6c-86da-5efe-542ea2b6236e', '6bfef31a-a77b-8f61-a970-541cc93b05fc', 0, '2014-10-03 13:22:06', 0),
('455880e1-dea4-8924-2972-542ea2ab73a4', '308cee77-3b6c-86da-5efe-542ea2b6236e', '870defdc-ca1f-3c8f-2a30-541cc9d51fff', 0, '2014-10-03 13:22:06', 0),
('46528b0b-bbda-d380-c645-542ea2f4c7c0', '308cee77-3b6c-86da-5efe-542ea2b6236e', '6669d38d-e684-cb4c-d938-541cc9f06b7c', 0, '2014-10-03 13:22:06', 0),
('466605d3-c721-c148-9d29-542e98f05792', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '27811ddb-5544-f07f-0536-541cc9e71a85', 0, '2014-10-03 12:36:55', 0),
('46cf8d45-1184-8330-2c49-542ea265985c', '308cee77-3b6c-86da-5efe-542ea2b6236e', '8f5724ea-0af1-b75f-2db0-541cc97b8431', 0, '2014-10-03 13:22:06', 0),
('478b1a2c-9fa9-1d02-b999-542ea2773078', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'afe14e88-6904-1a0a-d512-541cc97506af', 0, '2014-10-03 13:22:06', 0),
('480816ff-3fcf-d8c9-5425-542ea27de840', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'a7d3ad09-b27c-1132-7582-541cc93472a7', 0, '2014-10-03 13:22:06', 0),
('488519f5-04c7-303e-ba3f-542ea2a441b4', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'c0514bf0-f522-3544-ba45-541cc9b74029', 0, '2014-10-03 13:22:06', 0),
('4940934d-48f0-4142-095f-542ea2b7dea0', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'b7d60ebb-1b3d-1c4a-efda-541cc98b088e', 0, '2014-10-03 13:22:06', 0),
('49bd9da6-e484-1c97-41ec-542ea2d54b1d', '308cee77-3b6c-86da-5efe-542ea2b6236e', '9f9b409d-7ded-dbe5-4fff-541cc9f18bfd', 0, '2014-10-03 13:22:06', 0),
('4a3a9709-2450-3c83-b8f6-542ea273aafc', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'c8351a2f-201b-0f40-057f-541cc9311488', 0, '2014-10-03 13:22:06', 0),
('4af61326-69a5-666d-2b91-542ea2c680c1', '308cee77-3b6c-86da-5efe-542ea2b6236e', '97474d4f-10bb-c47d-cc81-541cc95e4362', 0, '2014-10-03 13:22:06', 0),
('4b731b67-a01d-6821-95c0-542ea2ec81f4', '308cee77-3b6c-86da-5efe-542ea2b6236e', '12ad9c1e-e82e-f5ae-e366-541cc986a887', 0, '2014-10-03 13:22:06', 0),
('4c6d262b-3849-c5c4-d3a9-542ea274f3ae', '308cee77-3b6c-86da-5efe-542ea2b6236e', '2854d4da-ce5f-1324-d444-541cc90d6360', 0, '2014-10-03 13:22:06', 0),
('4d672023-1d6b-6e61-2f4f-542ea2d7f6fb', '308cee77-3b6c-86da-5efe-542ea2b6236e', '22c40c82-2ca4-7b7f-0866-541cc9f8eedf', 0, '2014-10-03 13:22:06', 0),
('4e22aa85-f5c7-58c2-06b3-542ea2a106c8', '308cee77-3b6c-86da-5efe-542ea2b6236e', '33378a90-0a66-8a0a-be1c-541cc96c6f4a', 0, '2014-10-03 13:22:06', 0),
('4e3604a5-1dfb-d778-622a-542e981b27e6', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'dc1501a6-87ce-d458-1320-541cc988a499', 0, '2014-10-03 12:36:55', 0),
('4e9500a7-1ce5-0984-5569-5440e2b4caeb', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'b25bfbfe-bc17-44e3-ff06-541cc9e39653', 0, '2014-10-17 09:33:39', 0),
('4ede294a-8fda-5999-2390-542ea2658152', '308cee77-3b6c-86da-5efe-542ea2b6236e', '2d9eaedc-e0e7-b06e-99d3-541cc91eca68', 0, '2014-10-03 13:22:06', 0),
('4f5b2e9a-1143-481f-0b01-542ea2e09d9b', '308cee77-3b6c-86da-5efe-542ea2b6236e', '1d818806-2916-f5cf-23b5-541cc982d647', 0, '2014-10-03 13:22:06', 0),
('5016b98e-5fca-2f7c-8612-542ea2b47c02', '308cee77-3b6c-86da-5efe-542ea2b6236e', '3879602f-bd90-ac28-cf68-541cc9fff1b4', 0, '2014-10-03 13:22:06', 0),
('5093b216-9ac5-5a57-2ebb-542ea2ad4cd4', '308cee77-3b6c-86da-5efe-542ea2b6236e', '17e608e1-b39c-8b0a-3411-541cc9188e5b', 0, '2014-10-03 13:22:06', 0),
('5110bc34-32ca-3db8-f8b2-542ea24a2983', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'b28b47c1-2bdf-8f5f-459e-541cc9af5f91', 0, '2014-10-03 13:22:06', 0),
('51cc3af8-308e-df2c-cba5-542ea2fb02f4', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'c849d0e6-3a74-ad28-c40c-541cc97e3acd', 0, '2014-10-03 13:22:06', 0),
('52c63b5f-f725-e9fe-3c04-542ea2b7e689', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'c31d29d9-4ecb-8f56-0c03-541cc928abd3', 0, '2014-10-03 13:22:06', 0),
('5381b9e4-cd5f-faf1-5ab9-542ea2be3e30', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'd32d9283-0c45-11de-287f-541cc9cc21ab', 0, '2014-10-03 13:22:06', 0),
('54f8c647-5cb9-a098-6cfa-542ea29d5f8f', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'cdcf3559-0594-5b1e-bdf8-541cc9a536d3', 0, '2014-10-03 13:22:06', 0),
('55b443c9-1e03-3e7b-357e-542ea2ce2428', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'bd66086f-bb89-625b-e961-541cc9be5fe9', 0, '2014-10-03 13:22:06', 0),
('560607c8-b104-71ba-8031-542e98de6b97', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '2af951f7-3824-1969-a5ea-541cc9d64dc7', 0, '2014-10-03 12:36:55', 0),
('563145d6-d128-81c2-8f32-542ea2b43739', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'd8b9599b-d0be-0615-97a0-541cc9e5625c', 0, '2014-10-03 13:22:06', 0),
('56ae434a-983b-5961-6ce1-542ea286d857', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'b8216055-04f5-e547-f50d-541cc92cac4d', 0, '2014-10-03 13:22:06', 0),
('5769cbe0-744f-f995-cb77-542ea2a0474b', '308cee77-3b6c-86da-5efe-542ea2b6236e', '798e037b-a4f6-275b-659a-541cc9e52a93', 0, '2014-10-03 13:22:06', 0),
('58254725-3f4f-0e86-8579-542ea258bff2', '308cee77-3b6c-86da-5efe-542ea2b6236e', '2820c29e-c56a-24db-1fdb-541cc9de8e6d', 0, '2014-10-03 13:22:06', 0),
('58a2565b-28d9-23b8-66a4-542ea2256a4c', '308cee77-3b6c-86da-5efe-542ea2b6236e', '20193ad2-3659-a2e9-d178-541cc98f3783', 0, '2014-10-03 13:22:06', 0),
('595ddeae-729a-7260-79e9-542ea2767fea', '308cee77-3b6c-86da-5efe-542ea2b6236e', '3878d2b8-bda9-3248-4e7b-541cc925e78c', 0, '2014-10-03 13:22:06', 0),
('5a4d0969-e579-9731-8a8a-5440e2f906ee', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'a245068d-ae98-3432-e063-541cc9bc1990', 0, '2014-10-17 09:33:39', 0),
('5a57d826-aa15-c947-c040-542ea284d609', '308cee77-3b6c-86da-5efe-542ea2b6236e', '307eb70c-2593-d41c-0d13-541cc96a0637', 0, '2014-10-03 13:22:06', 0),
('5ad4d808-f98e-d8c4-ff7d-542ea2a285c4', '308cee77-3b6c-86da-5efe-542ea2b6236e', '17db931d-e4f3-eda3-aba7-541cc9147f89', 0, '2014-10-03 13:22:06', 0),
('5b905648-c56a-20dc-f6c8-542ea26c7a83', '308cee77-3b6c-86da-5efe-542ea2b6236e', '40a963ad-4d63-fa2a-0b41-541cc9855f55', 0, '2014-10-03 13:22:06', 0),
('5c0d5d0f-774e-3741-82e2-542ea27c07dd', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'fed00bfb-95d5-e6fc-0032-541cc98704a4', 0, '2014-10-03 13:22:06', 0),
('5c8a535d-bc02-fba8-f64a-542ea2decc65', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'b290d19f-ef4d-1c7c-9712-541cc964a3dc', 0, '2014-10-03 13:22:06', 0),
('5d45e431-5ca0-1c80-57c8-542ea28bc42d', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'd52811a9-bb0c-8d65-6545-541cc9860cbc', 0, '2014-10-03 13:22:06', 0),
('5e3fe92d-b8c5-7179-ec68-542ea2c36120', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'cb0afa12-6e88-1591-3f46-541cc9a42fc9', 0, '2014-10-03 13:22:06', 0),
('5efb6ca1-269b-c015-6a2c-542ea2e80483', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'e35a72ad-a0c9-5e17-ac6d-541cc9d19605', 0, '2014-10-03 13:22:06', 0),
('5fb6e693-e942-eb90-8527-542ea286b79f', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'db5afb61-926d-c43a-1edd-541cc99d49f7', 0, '2014-10-03 13:22:06', 0),
('60726ada-3e59-23c7-b870-542ea2f0f287', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'c2c67ecd-b907-abc8-b787-541cc9f20a06', 0, '2014-10-03 13:22:06', 0),
('612df57a-ec86-3e28-f35a-542ea2566e0e', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'eb8fb3bb-cc14-9497-2ed8-541cc9dc719c', 0, '2014-10-03 13:22:06', 0),
('61e9751c-e768-8be6-5dce-542ea292be06', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'bac614f4-8809-d6a8-4301-541cc94b070b', 0, '2014-10-03 13:22:06', 0),
('62a4fd3b-ad92-a874-0ec1-542ea266a1fc', '308cee77-3b6c-86da-5efe-542ea2b6236e', '3dff212b-8aac-4c30-1571-541cc95025e8', 0, '2014-10-03 13:22:06', 0),
('6321f094-d658-bdf3-6e9c-542ea28a0d7c', '308cee77-3b6c-86da-5efe-542ea2b6236e', '590e5fdc-0640-cdd6-53bb-541cc900fbcf', 0, '2014-10-03 13:22:06', 0),
('639efe75-10db-b984-654a-542ea2c6cce9', '308cee77-3b6c-86da-5efe-542ea2b6236e', '53873156-bbb7-beab-2548-541cc9600743', 0, '2014-10-03 13:22:06', 0),
('641bfba3-9ad2-4be2-6373-542ea26ca3b9', '308cee77-3b6c-86da-5efe-542ea2b6236e', '66b3b097-ed85-5dbf-fe24-541cc9e8616c', 0, '2014-10-03 13:22:06', 0),
('6515f6b3-5451-de0a-4063-542ea2ac9232', '308cee77-3b6c-86da-5efe-542ea2b6236e', '61075f42-77eb-f622-ce88-541cc9248596', 0, '2014-10-03 13:22:06', 0),
('65a601d0-105b-6650-2793-542e98c6840f', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '48d83784-9e43-f5e4-6c34-541cc9355fdd', 0, '2014-10-03 12:36:55', 0),
('65d183e6-e159-41d5-f548-542ea2395bbd', '308cee77-3b6c-86da-5efe-542ea2b6236e', '4b836b7a-c136-2288-2d77-541cc97079f2', 0, '2014-10-03 13:22:06', 0),
('66050dda-540f-46e5-e731-5440e2d37465', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'bd3f4ccb-76a0-11ed-9931-541cc997a8bc', 0, '2014-10-17 09:33:39', 0),
('664e8a81-d372-b897-3ea7-542ea2a61a6e', '308cee77-3b6c-86da-5efe-542ea2b6236e', '6eb2e0c5-05ff-00eb-8de9-541cc9b03237', 0, '2014-10-03 13:22:06', 0),
('67488780-1b31-7f0d-8bfd-542ea218d4e8', '308cee77-3b6c-86da-5efe-542ea2b6236e', '45f78e3e-e911-249f-feb7-541cc99d98d9', 0, '2014-10-03 13:22:06', 0),
('680406af-707c-1a6d-f069-542ea2193d6d', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'ac2b0f83-2f2c-2d97-7c05-541cfedb4ff8', 0, '2014-10-03 13:22:06', 0),
('68fe01d6-7d8a-ea6f-2855-542ea2143e3b', '308cee77-3b6c-86da-5efe-542ea2b6236e', '26910137-dad6-097a-8baf-541cfef0383f', 0, '2014-10-03 13:22:06', 0),
('697b1814-82cd-dd79-efa3-542ea201efbb', '308cee77-3b6c-86da-5efe-542ea2b6236e', '214de507-f44f-2f74-06d7-541cfe7d0b98', 0, '2014-10-03 13:22:06', 0),
('6a369219-438a-057d-b52f-542ea258eb8e', '308cee77-3b6c-86da-5efe-542ea2b6236e', '316afa0e-d515-3a70-1b8a-541cfeb9a5e4', 0, '2014-10-03 13:22:06', 0),
('6ab39619-97a6-8ad0-e914-542ea2498208', '308cee77-3b6c-86da-5efe-542ea2b6236e', '2c47f272-6cdd-d594-d1d1-541cfed3b7d8', 0, '2014-10-03 13:22:06', 0),
('6b6f1930-aae7-9a74-10a6-542ea205600b', '308cee77-3b6c-86da-5efe-542ea2b6236e', '1ba53dcb-4973-9a67-3db6-541cfee6a21c', 0, '2014-10-03 13:22:06', 0),
('6bec1f55-9aca-547c-215b-542ea29b4b8f', '308cee77-3b6c-86da-5efe-542ea2b6236e', '36fd4ab0-dc9b-fa38-e778-541cfe8347c3', 0, '2014-10-03 13:22:06', 0),
('6c69102e-5920-2a17-e872-542ea27310eb', '308cee77-3b6c-86da-5efe-542ea2b6236e', '179ed56b-d05f-508d-4481-541cfeee76c9', 0, '2014-10-03 13:22:06', 0),
('6d249314-e766-7822-0ec2-542ea26c2766', '308cee77-3b6c-86da-5efe-542ea2b6236e', '22c58a65-e5b0-8268-f8a8-542e98f50c8f', 0, '2014-10-03 13:22:06', 0),
('6da194c2-a317-ebba-c802-542ea2ab125f', '308cee77-3b6c-86da-5efe-542ea2b6236e', '27a79307-64a7-0428-3476-542e98025621', 0, '2014-10-03 13:22:06', 0),
('6e9baeab-0ae5-94bf-2a08-542ea26eff7d', '308cee77-3b6c-86da-5efe-542ea2b6236e', '26ec159a-e84c-cbd4-859e-542e989dd2ea', 0, '2014-10-03 13:22:06', 0),
('6fd42fe4-4ea4-c6eb-ecf7-542ea2239e60', '308cee77-3b6c-86da-5efe-542ea2b6236e', '295d1e2a-a1a6-a290-4399-542e98b0b882', 0, '2014-10-03 13:22:06', 0),
('708fafd0-3553-e41b-bed4-542ea26948d7', '308cee77-3b6c-86da-5efe-542ea2b6236e', '28a1918c-0078-d9c4-efb9-542e98ce43ee', 0, '2014-10-03 13:22:06', 0),
('715e0f68-9a32-5694-65b4-542e98210281', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '433f6862-6185-be03-1524-541cc9cffb25', 0, '2014-10-03 12:36:55', 0),
('7189aadc-3174-b469-a39b-542ea2d1c78f', '308cee77-3b6c-86da-5efe-542ea2b6236e', '25b38e7c-ff91-3027-3186-542e9897fb8e', 0, '2014-10-03 13:22:06', 0),
('71bd0cf7-811e-a9ac-6f11-5440e287aa0d', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '9cabbe47-05c3-175e-a7b2-541cc9507bf7', 0, '2014-10-17 09:33:39', 0),
('7283b233-6672-f00d-e385-542ea2fce0c8', '308cee77-3b6c-86da-5efe-542ea2b6236e', '2a189463-d818-1b9f-b1a4-542e9848a737', 0, '2014-10-03 13:22:06', 0),
('73000407-220f-3580-fa9f-5440e2005ec3', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '24b98928-15f2-87ec-8c22-542e98e9f6fe', 0, '2014-10-17 09:33:39', 0),
('7300be6e-7b02-bd64-0b28-542ea2bf6bae', '308cee77-3b6c-86da-5efe-542ea2b6236e', '24b98928-15f2-87ec-8c22-542e98e9f6fe', 0, '2014-10-03 13:22:06', 0),
('73fab393-bacd-d67d-3f4b-542ea27dfd47', '308cee77-3b6c-86da-5efe-542ea2b6236e', '97e6aa88-07b1-6755-130c-541cc995cd6b', 0, '2014-10-03 13:22:06', 0),
('7477bba8-0df3-309a-eb9c-542ea297d2bf', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'ad1a13e6-c9d8-79ff-1b72-541cc927259f', 0, '2014-10-03 13:22:06', 0),
('74f4bdb8-473b-d39f-6ec7-542ea24bdb9b', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'a78c036e-95ff-ba49-7cac-541cc989dd5a', 0, '2014-10-03 13:22:06', 0),
('75b0389b-b2e2-dd40-1afa-542ea2d0ead5', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'b7f94f75-5a78-d68e-cc13-541cc9a32c9c', 0, '2014-10-03 13:22:06', 0),
('766bcf84-55c3-93cb-9c1d-542ea2dd31bf', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'b25bfbfe-bc17-44e3-ff06-541cc9e39653', 0, '2014-10-03 13:22:06', 0),
('7765c6bb-da27-1eac-d6a7-542ea2ee934e', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'a245068d-ae98-3432-e063-541cc9bc1990', 0, '2014-10-03 13:22:06', 0),
('77e2c4e6-5de3-074c-1d9c-542ea29da9e5', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'bd3f4ccb-76a0-11ed-9931-541cc997a8bc', 0, '2014-10-03 13:22:06', 0),
('789e4ef6-858b-e8d4-f442-542ea2d9cfe0', '308cee77-3b6c-86da-5efe-542ea2b6236e', '9cabbe47-05c3-175e-a7b2-541cc9507bf7', 0, '2014-10-03 13:22:06', 0),
('7959cd29-3e17-e013-92ef-542ea20b9863', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'cdd43edc-d6ca-1473-196f-541cc93a8e8b', 0, '2014-10-03 13:22:06', 0),
('79d6ccd3-1629-c493-813b-542ea263c2ef', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'e9019509-d88a-09ce-71d3-541cc9f45d45', 0, '2014-10-03 13:22:06', 0),
('7ad0dc1c-6083-ac3b-6b32-542ea24527cf', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'e356baf6-1e14-28c8-aa8a-541cc9b34719', 0, '2014-10-03 13:22:06', 0),
('7b8c5336-89e0-323d-0c19-542ea2815ce0', '308cee77-3b6c-86da-5efe-542ea2b6236e', '51010fa5-f378-9f86-257e-541cc941b57e', 0, '2014-10-03 13:22:06', 0),
('7c095893-9c0e-788d-2f6e-542ea24a98de', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'f104d9e3-ad81-d829-929f-541cc9116986', 0, '2014-10-03 13:22:06', 0),
('7cc4d138-2e29-fc94-9a62-542ea2d71a5d', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'db5bd6e5-7de8-9fd4-17ec-541cc9058148', 0, '2014-10-03 13:22:06', 0),
('7d80544f-6ad5-5c03-82fb-542ea2688533', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'd1a50214-5c86-4b92-9fb8-541cc951c4f3', 0, '2014-10-03 13:22:06', 0),
('7e7a5924-4893-faae-b82a-542ea21a7311', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'd5c5ffb9-67bc-e4c8-df1b-541cc99658e6', 0, '2014-10-03 13:22:06', 0),
('7ef761b5-7084-feac-be3d-542ea245da7a', '308cee77-3b6c-86da-5efe-542ea2b6236e', '28165667-d6a9-9d17-0833-541cc94a07b0', 0, '2014-10-03 13:22:06', 0),
('7fb2ee20-e6e9-3771-13a4-542ea29000f7', '308cee77-3b6c-86da-5efe-542ea2b6236e', '45eb49c3-521f-a86c-60ba-541cc9993335', 0, '2014-10-03 13:22:06', 0),
('80ace44d-9d7e-d159-79f1-542ea275b5e9', '308cee77-3b6c-86da-5efe-542ea2b6236e', '3dea7de1-cfd9-a32c-826b-541cc96268c3', 0, '2014-10-03 13:22:06', 0),
('8129efce-b6f1-b7f9-ca15-542ea2ea715e', '308cee77-3b6c-86da-5efe-542ea2b6236e', '5635379d-345e-619f-9bf1-541cc976b04d', 0, '2014-10-03 13:22:06', 0),
('81a6efdc-608e-4cc6-978d-542ea23bea9e', '308cee77-3b6c-86da-5efe-542ea2b6236e', '4e4961d1-0da8-3ece-0089-541cc9ba3d8d', 0, '2014-10-03 13:22:06', 0),
('82a0eb02-0b8a-e70b-38d7-542ea218210e', '308cee77-3b6c-86da-5efe-542ea2b6236e', '3853c4c8-f68f-dfd2-77ca-541cc9b5ae68', 0, '2014-10-03 13:22:06', 0),
('831df249-0b9a-c53e-ab51-542ea2b919a8', '308cee77-3b6c-86da-5efe-542ea2b6236e', '5bc1bbda-99e4-1cbc-e2fc-541cc99ee48d', 0, '2014-10-03 13:22:06', 0),
('8417fd16-8df9-20dc-a01d-542ea2da3fbb', '308cee77-3b6c-86da-5efe-542ea2b6236e', '305cb670-ccd7-c9b9-46b1-541cc9cf6a13', 0, '2014-10-03 13:22:06', 0),
('84d37410-36a4-9693-2d01-542ea297336e', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'afe44fab-9142-78d5-31cf-541cc95acf59', 0, '2014-10-03 13:22:06', 0),
('84e70832-a43e-6167-89a6-542e981f67cf', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '53a10c13-591c-0588-a474-541cc92032ce', 0, '2014-10-03 12:36:55', 0),
('85141b71-fa8a-32a2-beed-5440e239ec27', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '844da81b-6c36-c959-4c5c-541cc9fb4ded', 0, '2014-10-17 09:33:39', 0),
('858ef5e5-b6b8-7710-e2e5-542ea2bd3d7a', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'a6460654-3ca2-a604-a5f8-541cc933eca9', 0, '2014-10-03 13:22:06', 0),
('864a7cb5-ce66-c3d5-a107-542ea2b08f0b', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'f3adcd46-807a-2b49-b965-541cc9caae94', 0, '2014-10-03 13:22:06', 0),
('8705f4dd-ff83-a15e-706b-542ea224dd51', '308cee77-3b6c-86da-5efe-542ea2b6236e', '1d77ca32-1f15-e8bd-5dc9-541cc990bda9', 0, '2014-10-03 13:22:06', 0),
('8708200e-960e-36bc-b611-5440e26ab802', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'a7ac76ca-4551-8164-2c21-541cc958c99d', 0, '2014-10-17 09:33:39', 0),
('87830457-b000-bc08-0ad9-542ea2c6f82d', '308cee77-3b6c-86da-5efe-542ea2b6236e', '152edb75-f240-0564-b16e-541cc9c4641a', 0, '2014-10-03 13:22:06', 0),
('87c3af45-320b-fcad-6019-5440e2cc280c', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '9cdf23ab-a0e4-ba94-6f9b-541cc914b6dc', 0, '2014-10-17 09:33:39', 0),
('887d0a6b-8b2c-3446-3334-542ea24c7a2a', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'e61e848f-6f34-7ada-af97-541cc95af0b4', 0, '2014-10-03 13:22:06', 0),
('88bda34d-ffc0-6310-27b4-5440e2a9052f', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'b7d8bedb-cc73-4ed9-cd42-541cc9202f5e', 0, '2014-10-17 09:33:39', 0),
('88fa06ce-3af4-d5d8-38d2-542ea2376b76', '308cee77-3b6c-86da-5efe-542ea2b6236e', '27811ddb-5544-f07f-0536-541cc9e71a85', 0, '2014-10-03 13:22:06', 0),
('8977044a-0812-a39c-0492-542ea2cc1b02', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'dc1501a6-87ce-d458-1320-541cc988a499', 0, '2014-10-03 13:22:06', 0),
('89b7b706-5071-d374-4aa1-5440e29e6287', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'afde5ff7-a730-a8a7-a9d3-541cc9b8f0c9', 0, '2014-10-17 09:33:39', 0),
('8a328270-10ff-970a-8362-542ea23ebb7c', '308cee77-3b6c-86da-5efe-542ea2b6236e', '2af951f7-3824-1969-a5ea-541cc9d64dc7', 0, '2014-10-03 13:22:06', 0),
('8a34b12e-dd8c-a329-cb45-5440e27552cb', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '94afbd10-c54b-88fb-c500-541cc963b8f3', 0, '2014-10-17 09:33:39', 0),
('8aee070c-e628-deb6-4c6d-542ea2e2f6eb', '308cee77-3b6c-86da-5efe-542ea2b6236e', '48d83784-9e43-f5e4-6c34-541cc9355fdd', 0, '2014-10-03 13:22:06', 0),
('8b2ebf5e-e6df-e0d1-3713-5440e2af1f35', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'c052942e-5ccc-9ff1-bfd6-541cc91590ac', 0, '2014-10-17 09:33:39', 0),
('8ba996b0-db36-2fbd-7aeb-542ea249a5dc', '308cee77-3b6c-86da-5efe-542ea2b6236e', '433f6862-6185-be03-1524-541cc9cffb25', 0, '2014-10-03 13:22:06', 0),
('8c28b981-1deb-d142-0d00-5440e2c9b546', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '8c94b248-3a9d-e4c8-2126-541cc9e39018', 0, '2014-10-17 09:33:39', 0),
('8ca39753-dc9c-af22-52f0-542ea22a0bda', '308cee77-3b6c-86da-5efe-542ea2b6236e', '53a10c13-591c-0588-a474-541cc92032ce', 0, '2014-10-03 13:22:06', 0),
('8d160f38-f702-35b7-b526-5440e27c42cb', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'cdd43edc-d6ca-1473-196f-541cc93a8e8b', 0, '2014-10-17 09:33:39', 0),
('8d20994f-6a8f-7674-da61-542ea2978bea', '308cee77-3b6c-86da-5efe-542ea2b6236e', '4e1bb596-552c-1c13-e4d1-541cc9dac65e', 0, '2014-10-03 13:22:06', 0),
('8dde4ad6-717c-0ecf-6af5-5440e2374aed', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '796105a5-edbd-20d4-c48e-541cc99874b6', 0, '2014-10-17 09:33:39', 0),
('8e1a9c87-197a-bf3c-7408-542ea2e8c0fc', '308cee77-3b6c-86da-5efe-542ea2b6236e', '3f5b0917-16cf-c7a9-29af-541cc92b4f8b', 0, '2014-10-03 13:22:06', 0),
('8e97906f-f508-aa80-5777-542ea2805d42', '308cee77-3b6c-86da-5efe-542ea2b6236e', '5b85b55e-ada0-7647-8bc5-541cc980ed50', 0, '2014-10-03 13:22:06', 0),
('8e99cad2-847a-9024-241c-5440e23f27ab', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '22adaaad-e1d5-9b98-90f9-541cc96a85ff', 0, '2014-10-17 09:33:39', 0),
('8f5319c8-a4c7-481c-a506-542ea2e073b0', '308cee77-3b6c-86da-5efe-542ea2b6236e', '3307da9e-6d24-b8b5-cc0a-541cc95224a0', 0, '2014-10-03 13:22:06', 0),
('8f8dd850-69a8-f980-4999-542e985353a0', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '844da81b-6c36-c959-4c5c-541cc9fb4ded', 0, '2014-10-03 12:36:55', 0),
('8f93ccc5-af28-0929-7ae7-5440e2d2fd3c', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '1d287499-e76f-8f3f-c719-541cc99e801d', 0, '2014-10-17 09:33:39', 0),
('9010cb30-3774-3f3b-0a3c-5440e2b93f25', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '344af59e-e4f4-4019-ce8a-541cc9dcc84b', 0, '2014-10-17 09:33:39', 0),
('904d295b-a89f-79c1-2594-542ea2b3b9ea', '308cee77-3b6c-86da-5efe-542ea2b6236e', '7c34ae1f-c145-5a36-b2c4-541cc9969a8b', 0, '2014-10-03 13:22:06', 0),
('9087d297-475a-7c72-66e7-542e9817a8d1', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'a7ac76ca-4551-8164-2c21-541cc958c99d', 0, '2014-10-03 12:36:55', 0),
('909f0a2d-d51a-4bda-b089-542e9882a585', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '4e1bb596-552c-1c13-e4d1-541cc9dac65e', 0, '2014-10-03 12:36:55', 0),
('910ac136-cc10-2f95-5436-5440e2fa7be4', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '27fcf8c1-e384-3003-09a1-541cc96ced7c', 0, '2014-10-17 09:33:39', 0),
('91472fac-fc25-a45b-f304-542ea29a635e', '308cee77-3b6c-86da-5efe-542ea2b6236e', '9798a1a2-d0c1-8599-f06f-541cc9ae68f8', 0, '2014-10-03 13:22:06', 0),
('91feeeb9-fec2-47b8-df5d-542e98dc920b', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '9cdf23ab-a0e4-ba94-6f9b-541cc914b6dc', 0, '2014-10-03 12:36:55', 0),
('9202abed-51af-57c5-9548-542ea295965d', '308cee77-3b6c-86da-5efe-542ea2b6236e', '91dd2548-ce5a-9a45-03b3-541cc94c36ce', 0, '2014-10-03 13:22:06', 0),
('924352bc-b151-3c59-9b25-5440e2da6740', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '1923e397-54bb-3790-2cf5-541cc99b5420', 0, '2014-10-17 09:33:39', 0),
('927fa0a0-74ff-4a70-9c15-542ea29d9e7b', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'a4ec0e7b-b4ae-5c1e-2d61-541cc9636e4f', 0, '2014-10-03 13:22:06', 0),
('92f8ee3e-5e35-5db2-d5cd-542e9894417a', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'b7d8bedb-cc73-4ed9-cd42-541cc9202f5e', 0, '2014-10-03 12:36:55', 0),
('92fcaf3b-0b9f-d4db-ac0c-542ea207a318', '308cee77-3b6c-86da-5efe-542ea2b6236e', '9f57c038-f28e-7b72-308f-541cc9e95893', 0, '2014-10-03 13:22:06', 0),
('933d5994-8411-9485-616f-5440e2d4578f', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '383ff038-bc7b-b90d-46dc-541cc99d2f55', 0, '2014-10-17 09:33:39', 0),
('9379a208-811d-7d8c-d761-542ea2c75c0c', '308cee77-3b6c-86da-5efe-542ea2b6236e', '89ca1681-6d25-2148-a9ca-541cc93f0f2b', 0, '2014-10-03 13:22:06', 0),
('94375e58-0161-c4c5-6b79-5440e299be7b', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'cd020051-9a0f-1f07-0af3-541cc94dda2c', 0, '2014-10-17 09:33:39', 0),
('946fe80a-afae-d570-acaf-542e988b4c36', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'afde5ff7-a730-a8a7-a9d3-541cc9b8f0c9', 0, '2014-10-03 12:36:55', 0),
('9473b51f-f938-b46e-48bf-542ea2e2058b', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'acefe303-f232-f960-74e7-541cc9f254b1', 0, '2014-10-03 13:22:06', 0),
('94e60146-8cc7-b054-3a5b-5440e29c0df4', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'e9019509-d88a-09ce-71d3-541cc9f45d45', 0, '2014-10-17 09:33:39', 0),
('94f0bbc8-b9de-9222-0839-542ea2746d34', '308cee77-3b6c-86da-5efe-542ea2b6236e', '842d7aee-16e9-fc5e-16cf-541cc9785189', 0, '2014-10-03 13:22:06', 0),
('9569e1a3-d579-5b65-295d-542e9822d073', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '94afbd10-c54b-88fb-c500-541cc963b8f3', 0, '2014-10-03 12:36:55', 0),
('956fd98a-481f-b766-9510-5440e2f8f7c9', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'a50f9b70-97bb-7653-0cd2-541cc9d880c8', 0, '2014-10-17 09:33:39', 0),
('95ac3d20-7e9b-0082-f0b9-542ea2fc3fae', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'c5ad3385-c22b-dceb-8f2e-541cc910c74b', 0, '2014-10-03 13:22:06', 0),
('9629354e-d0bc-f273-43e9-542ea21b896d', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'e6097af6-05fe-430c-6e56-541cc9c44159', 0, '2014-10-03 13:22:06', 0),
('9669e9d0-df6a-c9cb-b840-5440e28460b7', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'c5b408b8-481e-51c1-eafc-541cc9e427c3', 0, '2014-10-17 09:33:39', 0),
('96e0f267-81c2-85cf-2780-542e985c124f', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'c052942e-5ccc-9ff1-bfd6-541cc91590ac', 0, '2014-10-03 12:36:55', 0),
('96e4b1e1-fae1-c9e6-8055-542ea2e2cdd3', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'de0948a0-dad5-b722-5a21-541cc908589d', 0, '2014-10-03 13:22:06', 0),
('97256546-c56b-2cd1-e3c6-5440e290030a', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'bd7be71c-37ca-ab4c-5b5f-541cc9e44adc', 0, '2014-10-17 09:33:39', 0),
('97debf00-4fa2-fbdb-6b80-542ea2a8f88e', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'f39b3569-16f0-3536-d33a-541cc912404c', 0, '2014-10-03 13:22:06', 0),
('98197d85-d55d-21bc-974a-542e98b1733d', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '8c94b248-3a9d-e4c8-2126-541cc9e39018', 0, '2014-10-03 12:36:55', 0),
('981f633a-a14a-8f45-8953-5440e29ea7dd', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'd5cd2970-ae5f-ffe2-f785-541cc9ac10b5', 0, '2014-10-17 09:33:39', 0),
('985bc780-64a2-5c48-db9b-542ea2308077', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'eb937fee-0a53-2669-6b00-541cc98ee675', 0, '2014-10-03 13:22:06', 0),
('986f0eca-d05a-0be9-d26e-542e989e02c4', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '3f5b0917-16cf-c7a9-29af-541cc92b4f8b', 0, '2014-10-03 12:36:55', 0),
('989c6823-fa40-abd0-0750-5440e2443854', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'cddacca3-5ada-5596-c3f0-541cc9d713ae', 0, '2014-10-17 09:33:39', 0),
('99174dee-1d72-b4f4-948a-542ea24664ba', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'd870895b-442e-53d6-cf65-541cc9312147', 0, '2014-10-03 13:22:06', 0),
('9951fc7e-3f9a-b57f-0daa-542e98db6ecb', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '796105a5-edbd-20d4-c48e-541cc99874b6', 0, '2014-10-03 12:36:55', 0),
('99966161-ae16-930b-61d7-5440e2a22b0e', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'b54583d8-bb95-409e-bbec-541cc9122e40', 0, '2014-10-17 09:33:39', 0),
('99d2c328-6a9c-f659-f616-542ea2c822f4', '308cee77-3b6c-86da-5efe-542ea2b6236e', '5024042d-1bb3-cfb0-ce95-541cc961a579', 0, '2014-10-03 13:22:06', 0),
('9a136c1e-6c4f-778d-24f4-5440e2abb5ec', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'de144d19-54f6-22f8-312a-541cc9c61ce1', 0, '2014-10-17 09:33:39', 0),
('9a4c02ca-0638-7aec-cbdb-542e988af89c', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '22adaaad-e1d5-9b98-90f9-541cc96a85ff', 0, '2014-10-03 12:36:55', 0),
('9a9060bb-5041-16f1-211d-5440e2c867ed', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'ad440925-6637-44ae-21ad-541cc9dbe6a9', 0, '2014-10-17 09:33:39', 0),
('9accc855-1715-b45a-f267-542ea28dd6b2', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'cb0218de-d3b5-c95d-1c5c-541cc90f5d25', 0, '2014-10-03 13:22:06', 0),
('9b078eec-28c0-8446-57df-542e98468ba2', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '1d287499-e76f-8f3f-c719-541cc99e801d', 0, '2014-10-03 12:36:55', 0),
('9b4bf10a-2c98-f0b9-b802-5440e24804c3', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'd5de25b0-e5e2-a0dc-1c9d-541cc9a197e2', 0, '2014-10-17 09:33:39', 0),
('9b8846cd-f54b-d17b-edd9-542ea218b4f1', '308cee77-3b6c-86da-5efe-542ea2b6236e', '3b38bce7-7962-ad8d-70db-541cc93fe3c2', 0, '2014-10-03 13:22:06', 0),
('9c400160-dc32-2dd6-f893-542e988bb779', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '344af59e-e4f4-4019-ce8a-541cc9dcc84b', 0, '2014-10-03 12:36:55', 0),
('9c8246b9-ff1d-dd18-eb96-542ea22fd413', '308cee77-3b6c-86da-5efe-542ea2b6236e', '5bb37071-a6dc-a943-a4a0-541cc9823855', 0, '2014-10-03 13:22:06', 0),
('9c847afe-bbd2-b104-0f35-5440e2dbdfc9', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'f3b3212e-6607-7d2d-8978-541cc922cdbd', 0, '2014-10-17 09:33:39', 0),
('9cb605f0-4c02-e7df-c292-5440e2963ae8', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'e356baf6-1e14-28c8-aa8a-541cc9b34719', 0, '2014-10-17 09:33:39', 0),
('9d0170df-2907-cb9d-42d4-5440e2b74b8e', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'eb6e9597-63ab-c038-110a-541cc944f64a', 0, '2014-10-17 09:33:39', 0),
('9d7c5872-3fa3-b2fd-8cce-542ea2139ea3', '308cee77-3b6c-86da-5efe-542ea2b6236e', '53a365a7-8323-4886-8bc5-541cc9849d84', 0, '2014-10-03 13:22:06', 0),
('9dbcffe8-98dd-87be-3d63-5440e2c4f35a', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'd1cd0a28-b0d4-7fc3-81fc-541cc91d62a4', 0, '2014-10-17 09:33:39', 0),
('9df58869-fcfe-4175-0509-542e9879d5c4', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '27fcf8c1-e384-3003-09a1-541cc96ced7c', 0, '2014-10-03 12:36:55', 0),
('9e765498-4d99-c11e-72bf-542ea24e209d', '308cee77-3b6c-86da-5efe-542ea2b6236e', '7157c4dd-8e33-8043-9d6d-541cc98c84a1', 0, '2014-10-03 13:22:06', 0),
('9eb6f4b9-5551-3a4b-c782-5440e27e3d85', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '790d0b9e-67d9-122a-aa72-541cc91a1d2c', 0, '2014-10-17 09:33:39', 0),
('9eef9655-3f8f-6e52-4c97-542e9826a1fc', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '1923e397-54bb-3790-2cf5-541cc99b5420', 0, '2014-10-03 12:36:55', 0),
('9ef3540b-8143-140b-3c60-542ea29b7082', '308cee77-3b6c-86da-5efe-542ea2b6236e', '64006cb8-1506-aaf3-490e-541cc9922c0b', 0, '2014-10-03 13:22:06', 0),
('9f7058e8-ab02-cc3a-17ef-542ea2d2bec1', '308cee77-3b6c-86da-5efe-542ea2b6236e', '4b67a106-53d1-1436-34d3-541cc9383b59', 0, '2014-10-03 13:22:06', 0),
('9fb102f1-4486-5be1-deba-5440e2d46904', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'e36e6e8c-1bc5-2e58-2a07-541cc9ae7a5f', 0, '2014-10-17 09:33:39', 0),
('a0281420-d8c7-49a8-e398-542e9830624c', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '383ff038-bc7b-b90d-46dc-541cc99d2f55', 0, '2014-10-03 12:36:55', 0),
('a06a5776-2339-7f58-da6e-542ea2126270', '308cee77-3b6c-86da-5efe-542ea2b6236e', '79a98c94-9475-1c3c-addc-541cc91efd9f', 0, '2014-10-03 13:22:06', 0),
('a1221341-8393-39c6-de91-542e9802e33b', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'cd020051-9a0f-1f07-0af3-541cc94dda2c', 0, '2014-10-03 12:36:55', 0),
('a125e238-051b-53ac-28f0-542ea276f1ce', '308cee77-3b6c-86da-5efe-542ea2b6236e', '436af26d-9857-e0f2-6c38-541cc962812c', 0, '2014-10-03 13:22:06', 0),
('a1a2e6f0-7d7f-ffae-ef05-542ea23a2d36', '308cee77-3b6c-86da-5efe-542ea2b6236e', '58ef6cbb-0d41-5693-528c-541cc9841c32', 0, '2014-10-03 13:22:06', 0),
('a1a506ac-4cc8-1f84-6bcb-5440e2d01db5', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '15526154-9841-18ed-ba6d-541cc90198c5', 0, '2014-10-17 09:33:39', 0),
('a29925a7-f2ce-4ceb-b47a-542e9826dde5', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'a50f9b70-97bb-7653-0cd2-541cc9d880c8', 0, '2014-10-03 12:36:55', 0),
('a29ce7d5-1cb9-df99-2526-542ea25bea12', '308cee77-3b6c-86da-5efe-542ea2b6236e', '76cc8e5b-08e3-1d2b-6aad-541cc9f3e1eb', 0, '2014-10-03 13:22:06', 0),
('a29f0a99-abd2-0d33-bc5f-5440e2db1418', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'ddd8b9dd-6e8f-4dda-ac8a-541cc9ca1757', 0, '2014-10-17 09:33:39', 0),
('a35a931e-6690-6ecc-b593-5440e2714297', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '64cdd0c7-5163-af44-9b58-542eaab68dbe', 0, '2014-10-17 09:33:39', 0),
('a396ec87-4de8-c366-fab4-542ea294f6e7', '308cee77-3b6c-86da-5efe-542ea2b6236e', '6ec4ab72-ead1-b1a7-4463-541cc98df8cb', 0, '2014-10-03 13:22:06', 0),
('a41022d6-aa43-0d12-f422-542e988f102a', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'c5b408b8-481e-51c1-eafc-541cc9e427c3', 0, '2014-10-03 12:36:55', 0);
INSERT INTO `acl_roles_actions` (`id`, `role_id`, `action_id`, `access_override`, `date_modified`, `deleted`) VALUES
('a4161ff6-fc77-8cba-4c8a-5440e27709df', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '6ba3eefa-6863-9c95-5849-542eaa82e7be', 0, '2014-10-17 09:33:39', 0),
('a42701ac-011a-6ee6-e137-542e989beb3a', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '5b85b55e-ada0-7647-8bc5-541cc980ed50', 0, '2014-10-03 12:36:55', 0),
('a452657f-6b5b-a1c3-c509-542ea2a760f8', '308cee77-3b6c-86da-5efe-542ea2b6236e', '81a63319-d7f7-2cc8-ecf2-541cc90ddb12', 0, '2014-10-03 13:22:06', 0),
('a4d19318-225f-527c-e22f-5440e2dbb716', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '6a6b6e1d-215a-490f-763a-542eaafeda4d', 0, '2014-10-17 09:33:39', 0),
('a50de19f-ad7e-fe4f-b06c-542ea2f558f7', '308cee77-3b6c-86da-5efe-542ea2b6236e', '7c57819b-9b10-b0a9-4c64-541cc9b3fc46', 0, '2014-10-03 13:22:06', 0),
('a548a738-f07c-5f40-1515-542e9863722b', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'bd7be71c-37ca-ab4c-5b5f-541cc9e44adc', 0, '2014-10-03 12:36:55', 0),
('a60425e3-4cb5-1eb5-c5b2-542e98afe987', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'd5cd2970-ae5f-ffe2-f785-541cc9ac10b5', 0, '2014-10-03 12:36:55', 0),
('a607fe89-bf03-9573-8e29-542ea20ff14e', '308cee77-3b6c-86da-5efe-542ea2b6236e', '692e1597-3b0e-b3fd-3f81-541cc9c9d87f', 0, '2014-10-03 13:22:06', 0),
('a60a126c-f502-793a-315a-5440e2bb7613', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '6e53726b-33b5-f894-3788-542eaaa55aed', 0, '2014-10-17 09:33:39', 0),
('a6871cdc-1569-deec-c5bd-5440e2d2449b', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '6d1af9ca-079d-9d0a-2b45-542eaaf29412', 0, '2014-10-17 09:33:39', 0),
('a6bfb74c-81d2-5a5a-3a42-542e98873acd', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'cddacca3-5ada-5596-c3f0-541cc9d713ae', 0, '2014-10-03 12:36:55', 0),
('a6c37973-7175-56f2-9502-542ea22fc800', '308cee77-3b6c-86da-5efe-542ea2b6236e', '873181df-a08a-44f6-acb1-541cc93181c6', 0, '2014-10-03 13:22:06', 0),
('a740762b-394d-43b1-7282-542ea2cf3312', '308cee77-3b6c-86da-5efe-542ea2b6236e', '61336183-6a55-de3f-934f-541cc9b16d40', 0, '2014-10-03 13:22:06', 0),
('a77b33fc-a0be-3f63-ac20-542e9827ce69', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'b54583d8-bb95-409e-bbec-541cc9122e40', 0, '2014-10-03 12:36:55', 0),
('a7812c8b-cfd8-12fe-d0fc-5440e2a98faa', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '6838e8ad-b4a6-1adf-e43d-542eaa4c68da', 0, '2014-10-17 09:33:39', 0),
('a7f830b3-492a-ff03-f7d9-542e98d6ba68', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'de144d19-54f6-22f8-312a-541cc9c61ce1', 0, '2014-10-03 12:36:55', 0),
('a83cae23-2c7b-cb2e-65e1-5440e252da26', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '70477549-160b-7699-a709-542eaa88490f', 0, '2014-10-17 09:33:39', 0),
('a86e0a64-d800-778b-8219-5440e2867cf3', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '51010fa5-f378-9f86-257e-541cc941b57e', 0, '2014-10-17 09:33:39', 0),
('a875378f-7e1f-8923-cab1-542e9849729d', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'ad440925-6637-44ae-21ad-541cc9dbe6a9', 0, '2014-10-03 12:36:55', 0),
('a930b115-c7ce-1bd1-fa46-542e98a25b48', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'd5de25b0-e5e2-a0dc-1c9d-541cc9a197e2', 0, '2014-10-03 12:36:55', 0),
('a936a94c-83a7-caf2-0c5e-5440e246e803', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '6700529e-aac3-5acf-da9b-542eaa375209', 0, '2014-10-17 09:33:39', 0),
('a9ec3314-1a67-3356-059c-542e9809c301', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'f3b3212e-6607-7d2d-8978-541cc922cdbd', 0, '2014-10-03 12:36:55', 0),
('aa30a5bd-1ba2-135e-cc36-5440e2f73dd6', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '249d00aa-4b78-0f0f-43eb-542ea24ac9c0', 0, '2014-10-17 09:33:39', 0),
('aa693cba-fc44-906f-5ce3-542e98c59588', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'eb6e9597-63ab-c038-110a-541cc944f64a', 0, '2014-10-03 12:36:55', 0),
('ab2aa0b6-d6bc-044d-a0d0-5440e20a5d2c', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '28c39ce9-1fc9-6bbb-3b3d-542ea251e409', 0, '2014-10-17 09:33:39', 0),
('ab63419e-9692-eb71-c9a4-542e98807778', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'd1cd0a28-b0d4-7fc3-81fc-541cc91d62a4', 0, '2014-10-03 12:36:55', 0),
('abe0426c-62b0-992b-1685-542e989f9644', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '790d0b9e-67d9-122a-aa72-541cc91a1d2c', 0, '2014-10-03 12:36:55', 0),
('abe63d62-042a-7137-c2b9-5440e2ebc009', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '28080829-d1e2-a6eb-f883-542ea2484930', 0, '2014-10-17 09:33:39', 0),
('ac5d4ff4-de26-48ad-e79e-542e98fdb00f', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'e36e6e8c-1bc5-2e58-2a07-541cc9ae7a5f', 0, '2014-10-03 12:36:55', 0),
('acda41cf-7991-2162-5614-542e98f38aa4', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '15526154-9841-18ed-ba6d-541cc90198c5', 0, '2014-10-03 12:36:55', 0),
('ad1eb52a-8e9e-97e9-8638-5440e2b97e8a', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '2a79127e-46a4-a3f8-8497-542ea21bb6d4', 0, '2014-10-17 09:33:39', 0),
('ad5742aa-f50e-2880-a6d7-542e98da61f8', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'ddd8b9dd-6e8f-4dda-ac8a-541cc9ca1757', 0, '2014-10-03 12:36:55', 0),
('ad95ca59-7c9d-8dea-3352-542e9852342f', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '612acc71-66b0-af32-0fcf-541cc964e073', 0, '2014-10-03 12:36:55', 0),
('ae8fc7b8-18c5-a234-82fd-542e98417843', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '76f876d8-4105-c215-28bb-541cc92fe812', 0, '2014-10-03 12:36:55', 0),
('af12b5d1-a5cc-fede-cd68-5440e20d7b4d', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '29bd9913-dea5-b18e-2eaa-542ea2f908e5', 0, '2014-10-17 09:33:39', 0),
('af4b5b96-0fff-7b10-2fb6-542e98ee07b1', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '71489c33-deec-9805-0fd8-541cc9b74096', 0, '2014-10-03 12:36:55', 0),
('b006d0bc-55b0-eb39-b388-542e983485fa', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '81ca2be0-5fc2-1d52-0496-541cc92282ba', 0, '2014-10-03 12:36:55', 0),
('b0c2536b-71f1-600a-ad0c-542e98b915fc', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '7c21d50f-97c7-f01b-dcda-541cc94a7565', 0, '2014-10-03 12:36:55', 0),
('b0c84150-07c6-695d-931c-5440e2919141', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '270e0425-5de3-2051-5c82-542ea2437369', 0, '2014-10-17 09:33:39', 0),
('b1bc59aa-4ab0-f7a3-fd12-542e98a61f65', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '6bfef31a-a77b-8f61-a970-541cc93b05fc', 0, '2014-10-03 12:36:55', 0),
('b23f4d45-def5-f409-4564-5440e22248fe', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '2b731e98-a90b-c44f-f481-542ea2734b04', 0, '2014-10-17 09:33:39', 0),
('b277d0c1-c39b-05f8-f8a2-542e98a6e5d5', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '870defdc-ca1f-3c8f-2a30-541cc9d51fff', 0, '2014-10-03 12:36:55', 0),
('b371e657-b2f6-1847-b5bb-542e986c3e05', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '6669d38d-e684-cb4c-d938-541cc9f06b7c', 0, '2014-10-03 12:36:55', 0),
('b377cda1-e61d-9cad-6033-5440e2b17dac', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '2614025c-5393-0836-6a23-542ea20260d2', 0, '2014-10-17 09:33:39', 0),
('b3c7051a-dada-21e7-04ba-542e98f5ebdb', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '3307da9e-6d24-b8b5-cc0a-541cc95224a0', 0, '2014-10-03 12:36:55', 0),
('b3eee917-77c0-ad7d-03b0-542e98a82363', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '8f5724ea-0af1-b75f-2db0-541cc97b8431', 0, '2014-10-03 12:36:55', 0),
('b471d42d-055b-0f90-d7f7-5440e2de57d3', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '612acc71-66b0-af32-0fcf-541cc964e073', 0, '2014-10-17 09:33:39', 0),
('b4aa609d-e599-3bee-e40c-542e98640205', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'afe14e88-6904-1a0a-d512-541cc97506af', 0, '2014-10-03 12:36:55', 0),
('b56bdb60-15ba-3f51-c401-5440e27a2e47', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '76f876d8-4105-c215-28bb-541cc92fe812', 0, '2014-10-17 09:33:39', 0),
('b5a46894-52f2-2927-bf52-542e982cb4c6', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'a7d3ad09-b27c-1132-7582-541cc93472a7', 0, '2014-10-03 12:36:55', 0),
('b69e6db8-588e-a426-4323-542e98684103', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'c0514bf0-f522-3544-ba45-541cc9b74029', 0, '2014-10-03 12:36:55', 0),
('b6a45758-0eff-1b52-1278-5440e2ecff1c', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '71489c33-deec-9805-0fd8-541cc9b74096', 0, '2014-10-17 09:33:39', 0),
('b759e05a-cb95-4b48-be0d-542e982c0412', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'b7d60ebb-1b3d-1c4a-efda-541cc98b088e', 0, '2014-10-03 12:36:55', 0),
('b7d6f9c6-f1ae-9837-c9cd-542e98993a6b', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '9f9b409d-7ded-dbe5-4fff-541cc9f18bfd', 0, '2014-10-03 12:36:55', 0),
('b7dcda44-eb91-5fe3-762f-5440e2207e59', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '81ca2be0-5fc2-1d52-0496-541cc92282ba', 0, '2014-10-17 09:33:39', 0),
('b80e09b2-a747-fa39-930b-5440e2d373de', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'f104d9e3-ad81-d829-929f-541cc9116986', 0, '2014-10-17 09:33:39', 0),
('b8927e1b-0b58-6716-2f2e-542e988c5a55', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'c8351a2f-201b-0f40-057f-541cc9311488', 0, '2014-10-03 12:36:55', 0),
('b915635d-dfe3-de39-d35c-5440e2d913ab', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '7c21d50f-97c7-f01b-dcda-541cc94a7565', 0, '2014-10-17 09:33:39', 0),
('b94df958-8597-1a43-10d2-542e9800883e', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '97474d4f-10bb-c47d-cc81-541cc95e4362', 0, '2014-10-03 12:36:55', 0),
('ba0f62e5-a3d9-9538-282d-5440e2d00e9c', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '6bfef31a-a77b-8f61-a970-541cc93b05fc', 0, '2014-10-17 09:33:39', 0),
('ba47f5e5-d61b-1620-233f-542e98823317', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '12ad9c1e-e82e-f5ae-e366-541cc986a887', 0, '2014-10-03 12:36:55', 0),
('bb096832-839a-b978-bac3-5440e2e27655', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '870defdc-ca1f-3c8f-2a30-541cc9d51fff', 0, '2014-10-17 09:33:39', 0),
('bb41f3f4-77ae-e8e9-0545-542e98ac9af3', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '2854d4da-ce5f-1324-d444-541cc90d6360', 0, '2014-10-03 12:36:55', 0),
('bc036fb1-cd7b-68fe-3952-5440e21112c4', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '6669d38d-e684-cb4c-d938-541cc9f06b7c', 0, '2014-10-17 09:33:39', 0),
('bc3c0f52-ac07-c276-db50-542e9859e127', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '22c40c82-2ca4-7b7f-0866-541cc9f8eedf', 0, '2014-10-03 12:36:55', 0),
('bcf78dd2-cacb-2bac-7234-542e98d655bf', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '33378a90-0a66-8a0a-be1c-541cc96c6f4a', 0, '2014-10-03 12:36:55', 0),
('bd7a7dd7-1ddd-b0ff-1611-5440e2a0faca', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '8f5724ea-0af1-b75f-2db0-541cc97b8431', 0, '2014-10-17 09:33:39', 0),
('bdf18f14-eafe-70bb-98b6-542e98c09c6d', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '2d9eaedc-e0e7-b06e-99d3-541cc91eca68', 0, '2014-10-03 12:36:55', 0),
('bdf77e31-d9ed-b6ad-24d9-5440e29c6fc2', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'afe14e88-6904-1a0a-d512-541cc97506af', 0, '2014-10-17 09:33:39', 0),
('be6e841d-1391-e3aa-0d0c-542e98a36e15', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '1d818806-2916-f5cf-23b5-541cc982d647', 0, '2014-10-03 12:36:55', 0),
('bf2a0872-70d1-284a-904f-542e983bb62e', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '3879602f-bd90-ac28-cf68-541cc9fff1b4', 0, '2014-10-03 12:36:55', 0),
('bf2ff4af-5985-fa5e-7d41-5440e237e7b3', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'a7d3ad09-b27c-1132-7582-541cc93472a7', 0, '2014-10-17 09:33:39', 0),
('bf7f0ad7-750c-b7f5-20c1-542e98ab887b', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '7c34ae1f-c145-5a36-b2c4-541cc9969a8b', 0, '2014-10-03 12:36:55', 0),
('bfe5800b-331e-a935-a24c-542e9810138b', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '17e608e1-b39c-8b0a-3411-541cc9188e5b', 0, '2014-10-03 12:36:55', 0),
('c029f073-59b9-d50b-d59b-5440e2d71ed9', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'c0514bf0-f522-3544-ba45-541cc9b74029', 0, '2014-10-17 09:33:39', 0),
('c062998c-ef8e-75a3-119d-542e9855b6be', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'b28b47c1-2bdf-8f5f-459e-541cc9af5f91', 0, '2014-10-03 12:36:55', 0),
('c0e579c5-c91b-1fc7-5301-5440e21badd6', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'b7d60ebb-1b3d-1c4a-efda-541cc98b088e', 0, '2014-10-17 09:33:39', 0),
('c15c911a-3629-54ce-6ed1-542e98cec12f', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'c849d0e6-3a74-ad28-c40c-541cc97e3acd', 0, '2014-10-03 12:36:55', 0),
('c1a101ce-11f8-5510-77bd-5440e281fc25', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '9f9b409d-7ded-dbe5-4fff-541cc9f18bfd', 0, '2014-10-17 09:33:39', 0),
('c1d99f13-6f46-cb81-23ef-542e9840c96e', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'c31d29d9-4ecb-8f56-0c03-541cc928abd3', 0, '2014-10-03 12:36:55', 0),
('c29b0cac-5cf9-03f0-c15e-5440e27c8e40', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'c8351a2f-201b-0f40-057f-541cc9311488', 0, '2014-10-17 09:33:39', 0),
('c2d3941d-2efa-9ed1-8065-542e98447688', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'd32d9283-0c45-11de-287f-541cc9cc21ab', 0, '2014-10-03 12:36:55', 0),
('c3950994-33c2-4889-d24c-5440e2a43da0', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '97474d4f-10bb-c47d-cc81-541cc95e4362', 0, '2014-10-17 09:33:39', 0),
('c3c60046-330d-7b9c-cf35-5440e2535a7a', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'db5bd6e5-7de8-9fd4-17ec-541cc9058148', 0, '2014-10-17 09:33:39', 0),
('c40c1bee-6bd2-5697-2af8-542e9848eb84', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'cdcf3559-0594-5b1e-bdf8-541cc9a536d3', 0, '2014-10-03 12:36:55', 0),
('c45085f7-eb3c-f29d-2945-5440e2f5880c', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '12ad9c1e-e82e-f5ae-e366-541cc986a887', 0, '2014-10-17 09:33:39', 0),
('c5062236-a049-4e28-944b-542e981b92b1', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'bd66086f-bb89-625b-e961-541cc9be5fe9', 0, '2014-10-03 12:36:55', 0),
('c54a94d2-01bf-d340-85f9-5440e274a325', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '2854d4da-ce5f-1324-d444-541cc90d6360', 0, '2014-10-17 09:33:39', 0),
('c5c1a509-e8e4-8ba2-53dd-542e98f5b00c', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'd8b9599b-d0be-0615-97a0-541cc9e5625c', 0, '2014-10-03 12:36:55', 0),
('c6061de1-cc2b-09ce-5099-5440e25717ff', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '22c40c82-2ca4-7b7f-0866-541cc9f8eedf', 0, '2014-10-17 09:33:39', 0),
('c67d24f0-e8d7-3137-401b-542e98a740bf', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'b8216055-04f5-e547-f50d-541cc92cac4d', 0, '2014-10-03 12:36:55', 0),
('c6c193f0-7ef3-4f95-6cba-5440e2961a3d', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '33378a90-0a66-8a0a-be1c-541cc96c6f4a', 0, '2014-10-17 09:33:39', 0),
('c6fa24c6-0f75-40cd-2fa1-542e98544521', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '798e037b-a4f6-275b-659a-541cc9e52a93', 0, '2014-10-03 12:36:55', 0),
('c7bb93ac-6a0f-e04e-de35-5440e22089f0', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '2d9eaedc-e0e7-b06e-99d3-541cc91eca68', 0, '2014-10-17 09:33:39', 0),
('c7f42349-768a-662c-f23f-542e988407fa', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '2820c29e-c56a-24db-1fdb-541cc9de8e6d', 0, '2014-10-03 12:36:55', 0),
('c8771216-0bda-44bd-f767-5440e2528390', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '1d818806-2916-f5cf-23b5-541cc982d647', 0, '2014-10-17 09:33:39', 0),
('c8ee399d-5a51-af0c-fa80-542e98062178', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '20193ad2-3659-a2e9-d178-541cc98f3783', 0, '2014-10-03 12:36:55', 0),
('c9329cea-94bb-e9de-a78a-5440e2b29ca5', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '3879602f-bd90-ac28-cf68-541cc9fff1b4', 0, '2014-10-17 09:33:39', 0),
('c96b30c5-dea6-1007-ad95-542e98661d6e', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '3878d2b8-bda9-3248-4e7b-541cc925e78c', 0, '2014-10-03 12:36:55', 0),
('c9e8357f-1032-b31e-c1cf-542e9835c555', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '307eb70c-2593-d41c-0d13-541cc96a0637', 0, '2014-10-03 12:36:55', 0),
('c9ee2391-4397-e3d1-56e6-5440e252085b', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '17e608e1-b39c-8b0a-3411-541cc9188e5b', 0, '2014-10-17 09:33:39', 0),
('caa9ad8e-f50c-c2b6-8b0e-5440e25992e1', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'b28b47c1-2bdf-8f5f-459e-541cc9af5f91', 0, '2014-10-17 09:33:39', 0),
('cae23fd1-ae2a-e84b-0d5b-542e98c86288', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '17db931d-e4f3-eda3-aba7-541cc9147f89', 0, '2014-10-03 12:36:55', 0),
('cb3804e1-c180-a96a-396b-542e980896f7', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '9798a1a2-d0c1-8599-f06f-541cc9ae68f8', 0, '2014-10-03 12:36:55', 0),
('cb5f309b-bfef-f173-0853-542e981bc2c5', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '40a963ad-4d63-fa2a-0b41-541cc9855f55', 0, '2014-10-03 12:36:55', 0),
('cb960e08-9b70-19cf-15de-5440e214a7ff', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'd1a50214-5c86-4b92-9fb8-541cc951c4f3', 0, '2014-10-17 09:33:39', 0),
('cbdc3137-cd9c-d5d5-a9cb-542e986d0aa1', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'fed00bfb-95d5-e6fc-0032-541cc98704a4', 0, '2014-10-03 12:36:55', 0),
('cc5939de-961a-ca47-83e1-542e98ea4573', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'b290d19f-ef4d-1c7c-9712-541cc964a3dc', 0, '2014-10-03 12:36:55', 0),
('cc5f223c-4cd0-d9ba-55b3-5440e2a242fa', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'c849d0e6-3a74-ad28-c40c-541cc97e3acd', 0, '2014-10-17 09:33:39', 0),
('ccd63070-266b-ad34-ba57-542e985e605c', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'd52811a9-bb0c-8d65-6545-541cc9860cbc', 0, '2014-10-03 12:36:55', 0),
('cd1aa926-7c77-e9eb-cd13-5440e25361af', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'c31d29d9-4ecb-8f56-0c03-541cc928abd3', 0, '2014-10-17 09:33:39', 0),
('cd91c6df-15b9-fd28-2c9b-542e985eef88', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'cb0afa12-6e88-1591-3f46-541cc9a42fc9', 0, '2014-10-03 12:36:55', 0),
('ce14b9bb-ee35-4ba0-ce26-5440e29ffe87', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'd32d9283-0c45-11de-287f-541cc9cc21ab', 0, '2014-10-17 09:33:39', 0),
('ce8bc765-ab35-082f-7373-542e984ab2c1', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'e35a72ad-a0c9-5e17-ac6d-541cc9d19605', 0, '2014-10-03 12:36:55', 0),
('ced039e6-363c-6f31-b7c0-5440e25349dc', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'cdcf3559-0594-5b1e-bdf8-541cc9a536d3', 0, '2014-10-17 09:33:39', 0),
('cf474b94-4454-2b79-840f-542e981d24c4', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'db5afb61-926d-c43a-1edd-541cc99d49f7', 0, '2014-10-03 12:36:55', 0),
('cfc44c14-680f-1cbd-80c8-542e98159aeb', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'c2c67ecd-b907-abc8-b787-541cc9f20a06', 0, '2014-10-03 12:36:55', 0),
('d008ba2d-8a56-b771-9242-5440e2d6a216', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'bd66086f-bb89-625b-e961-541cc9be5fe9', 0, '2014-10-17 09:33:39', 0),
('d041448f-e3a8-2386-5da7-542e98674278', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'eb8fb3bb-cc14-9497-2ed8-541cc9dc719c', 0, '2014-10-03 12:36:55', 0),
('d0c43afd-98ee-2074-aaf8-5440e27da44b', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'd8b9599b-d0be-0615-97a0-541cc9e5625c', 0, '2014-10-17 09:33:39', 0),
('d13b545d-f4fa-cc83-a090-542e982273fe', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'bac614f4-8809-d6a8-4301-541cc94b070b', 0, '2014-10-03 12:36:55', 0),
('d17fbe2c-293e-9007-735a-5440e2d7d153', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'b8216055-04f5-e547-f50d-541cc92cac4d', 0, '2014-10-17 09:33:39', 0),
('d1b85e2c-31eb-e6f2-1bf5-542e98b98821', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '3dff212b-8aac-4c30-1571-541cc95025e8', 0, '2014-10-03 12:36:55', 0),
('d23b4d78-bfdc-832f-2cef-5440e2bad88a', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '798e037b-a4f6-275b-659a-541cc9e52a93', 0, '2014-10-17 09:33:39', 0),
('d273dd55-15c0-48cf-7973-542e9824f45d', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '590e5fdc-0640-cdd6-53bb-541cc900fbcf', 0, '2014-10-03 12:36:55', 0),
('d32f58c0-9d65-586d-aab0-542e985da9f0', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '53873156-bbb7-beab-2548-541cc9600743', 0, '2014-10-03 12:36:55', 0),
('d3354af4-47c7-be06-f65d-5440e2901a31', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '2820c29e-c56a-24db-1fdb-541cc9de8e6d', 0, '2014-10-17 09:33:39', 0),
('d367054c-f990-c416-c491-5440e2f69cd4', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'd5c5ffb9-67bc-e4c8-df1b-541cc99658e6', 0, '2014-10-17 09:33:39', 0),
('d3ead47a-6a8a-32c2-52c5-542e988e7584', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '66b3b097-ed85-5dbf-fe24-541cc9e8616c', 0, '2014-10-03 12:36:55', 0),
('d42f41b1-739c-5a43-7578-5440e260a158', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '20193ad2-3659-a2e9-d178-541cc98f3783', 0, '2014-10-17 09:33:39', 0),
('d4a65f1b-b1e5-47c7-1bee-542e9876f6ea', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '61075f42-77eb-f622-ce88-541cc9248596', 0, '2014-10-03 12:36:55', 0),
('d5294163-24c1-93b0-496b-5440e2cffc94', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '3878d2b8-bda9-3248-4e7b-541cc925e78c', 0, '2014-10-17 09:33:39', 0),
('d5a06a7d-4c38-e544-d0a7-542e98f5e443', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '4b836b7a-c136-2288-2d77-541cc97079f2', 0, '2014-10-03 12:36:55', 0),
('d5e4c7e4-9e25-a839-982f-5440e2c6714f', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '307eb70c-2593-d41c-0d13-541cc96a0637', 0, '2014-10-17 09:33:39', 0),
('d65be417-fc60-0119-5791-542e980e5c4f', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '6eb2e0c5-05ff-00eb-8de9-541cc9b03237', 0, '2014-10-03 12:36:55', 0),
('d6dedad8-0e5b-2bd1-dd57-5440e2a8827b', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '17db931d-e4f3-eda3-aba7-541cc9147f89', 0, '2014-10-17 09:33:39', 0),
('d6f003cb-037f-4f6c-db11-542e98b2b2c4', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '91dd2548-ce5a-9a45-03b3-541cc94c36ce', 0, '2014-10-03 12:36:55', 0),
('d755ec1e-5961-48ee-89e8-542e98883756', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '45f78e3e-e911-249f-feb7-541cc99d98d9', 0, '2014-10-03 12:36:55', 0),
('d7d8d31d-2466-6761-bbdc-5440e2ba6e85', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '40a963ad-4d63-fa2a-0b41-541cc9855f55', 0, '2014-10-17 09:33:39', 0),
('d8116f18-3b37-b305-f358-542e98b28977', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'ac2b0f83-2f2c-2d97-7c05-541cfedb4ff8', 0, '2014-10-03 12:36:55', 0),
('d88e6cbe-1cb8-792e-9d81-542e983ea910', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '26910137-dad6-097a-8baf-541cfef0383f', 0, '2014-10-03 12:36:55', 0),
('d8d2d4a2-725b-54a7-e188-5440e2933dca', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'fed00bfb-95d5-e6fc-0032-541cc98704a4', 0, '2014-10-17 09:33:39', 0),
('d90b6317-18d2-d8c9-d92a-542e987c2fed', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '214de507-f44f-2f74-06d7-541cfe7d0b98', 0, '2014-10-03 12:36:55', 0),
('d9c6fce2-7762-9393-d90b-542e984df94d', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '316afa0e-d515-3a70-1b8a-541cfeb9a5e4', 0, '2014-10-03 12:36:55', 0),
('d9ccdccb-f8be-e250-c4d6-5440e2a7797f', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'b290d19f-ef4d-1c7c-9712-541cc964a3dc', 0, '2014-10-17 09:33:39', 0),
('da43ff7e-273c-65de-c5a5-542e98a4f870', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '2c47f272-6cdd-d594-d1d1-541cfed3b7d8', 0, '2014-10-03 12:36:55', 0),
('da885728-c7eb-3f83-8c59-5440e2d29ec3', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'd52811a9-bb0c-8d65-6545-541cc9860cbc', 0, '2014-10-17 09:33:39', 0),
('dac0ff1f-2d95-26bb-1353-542e98873160', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '1ba53dcb-4973-9a67-3db6-541cfee6a21c', 0, '2014-10-03 12:36:55', 0),
('db43e127-1980-f063-3556-5440e2cdad17', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'cb0afa12-6e88-1591-3f46-541cc9a42fc9', 0, '2014-10-17 09:33:39', 0),
('db7c7cef-f93b-5745-aef4-542e98171d54', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '36fd4ab0-dc9b-fa38-e778-541cfe8347c3', 0, '2014-10-03 12:36:55', 0),
('dbf973a2-3a65-08c1-b241-542e98910c15', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '179ed56b-d05f-508d-4481-541cfeee76c9', 0, '2014-10-03 12:36:55', 0),
('dbff600a-9c10-32db-52a5-5440e21fadab', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'e35a72ad-a0c9-5e17-ac6d-541cc9d19605', 0, '2014-10-17 09:33:39', 0),
('dcb4fb06-7b88-1359-0105-542e983afa1f', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '22c58a65-e5b0-8268-f8a8-542e98f50c8f', 89, '2014-10-03 12:36:55', 0),
('dcbaec2f-0381-4fad-3f41-5440e2c4f419', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'db5afb61-926d-c43a-1edd-541cc99d49f7', 0, '2014-10-17 09:33:39', 0),
('dd766de7-da9c-65be-7ee3-5440e2a72210', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'c2c67ecd-b907-abc8-b787-541cc9f20a06', 0, '2014-10-17 09:33:39', 0),
('ddaefd22-6fc2-ac25-b085-542e9825c480', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '27a79307-64a7-0428-3476-542e98025621', 90, '2014-10-03 12:36:55', 0),
('ddf365e2-94ba-dac8-0484-5440e24668ed', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'eb8fb3bb-cc14-9497-2ed8-541cc9dc719c', 0, '2014-10-17 09:33:39', 0),
('de6a88fd-ab09-6512-08bb-542e98b62173', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '26ec159a-e84c-cbd4-859e-542e989dd2ea', 90, '2014-10-03 12:36:55', 0),
('deaee595-a222-c1fe-dd5e-5440e2dda814', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'bac614f4-8809-d6a8-4301-541cc94b070b', 0, '2014-10-17 09:33:39', 0),
('df1f0d56-b02e-cd37-fd47-5440e2ece574', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '28165667-d6a9-9d17-0833-541cc94a07b0', 0, '2014-10-17 09:33:39', 0),
('df2607ed-32a4-9e39-01a2-542e98c0074b', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '295d1e2a-a1a6-a290-4399-542e98b0b882', 90, '2014-10-03 12:36:55', 0),
('dfa8ff20-a82c-353a-ba5a-5440e23e0c20', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '3dff212b-8aac-4c30-1571-541cc95025e8', 0, '2014-10-17 09:33:39', 0),
('dfe18a7b-96f7-2924-5bab-542e9838e053', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '28a1918c-0078-d9c4-efb9-542e98ce43ee', 90, '2014-10-03 12:36:55', 0),
('e05e8c37-a8ae-73e5-97d5-542e9829e72a', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '25b38e7c-ff91-3027-3186-542e9897fb8e', 90, '2014-10-03 12:36:55', 0),
('e1588ef8-86e0-8eb9-6abd-542e982da53c', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '2a189463-d818-1b9f-b1a4-542e9848a737', 90, '2014-10-03 12:36:55', 0),
('e15e723e-c8f8-f1d1-e8fc-5440e2c05193', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '590e5fdc-0640-cdd6-53bb-541cc900fbcf', 0, '2014-10-17 09:33:39', 0),
('e296f81b-8fb1-1b48-92be-5440e2634863', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '53873156-bbb7-beab-2548-541cc9600743', 0, '2014-10-17 09:33:39', 0),
('e2a802a5-7fe7-0711-755b-542e98afb70a', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'a4ec0e7b-b4ae-5c1e-2d61-541cc9636e4f', 0, '2014-10-03 12:36:55', 0),
('e30e14f2-f5bf-7d06-b899-542e98005580', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '24b98928-15f2-87ec-8c22-542e98e9f6fe', 90, '2014-10-03 12:36:55', 0),
('e35281bc-fd4f-13eb-3a13-5440e2976fb8', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '66b3b097-ed85-5dbf-fe24-541cc9e8616c', 0, '2014-10-17 09:33:39', 0),
('e4081934-1078-007f-dd64-542e9822d2af', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '97e6aa88-07b1-6755-130c-541cc995cd6b', 0, '2014-10-03 12:36:55', 0),
('e40e0076-d3ac-55d3-0d0b-5440e2904874', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '61075f42-77eb-f622-ce88-541cc9248596', 0, '2014-10-17 09:33:39', 0),
('e4c98ed7-9060-ec44-f33c-5440e293a893', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '4b836b7a-c136-2288-2d77-541cc97079f2', 0, '2014-10-17 09:33:39', 0),
('e5021c2c-284e-d019-06e8-542e98a50ad6', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'ad1a13e6-c9d8-79ff-1b72-541cc927259f', 0, '2014-10-03 12:36:55', 0),
('e57f1cd6-0647-b93f-f567-542e983d9904', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'a78c036e-95ff-ba49-7cac-541cc989dd5a', 0, '2014-10-03 12:36:55', 0),
('e5c38f30-7512-0584-684e-5440e2781091', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '6eb2e0c5-05ff-00eb-8de9-541cc9b03237', 0, '2014-10-17 09:33:39', 0),
('e67918de-78e0-1c41-f81a-542e98ec8459', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'b7f94f75-5a78-d68e-cc13-541cc9a32c9c', 0, '2014-10-03 12:36:55', 0),
('e67f030f-0e8f-178e-eee8-5440e2925f76', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '45f78e3e-e911-249f-feb7-541cc99d98d9', 0, '2014-10-17 09:33:39', 0),
('e6f62bfd-ebad-b2c6-ef7a-542e988a2bee', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'b25bfbfe-bc17-44e3-ff06-541cc9e39653', 0, '2014-10-03 12:36:55', 0),
('e73a86da-a598-a54e-bd19-5440e2509988', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'ac2b0f83-2f2c-2d97-7c05-541cfedb4ff8', 0, '2014-10-17 09:33:39', 0),
('e7f6180b-b02e-fb46-9f47-5440e28ca298', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '26910137-dad6-097a-8baf-541cfef0383f', 0, '2014-10-17 09:33:39', 0),
('e82ea3f3-a758-31ca-3508-542e98bcd77b', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'a245068d-ae98-3432-e063-541cc9bc1990', 0, '2014-10-03 12:36:55', 0),
('e8abaf94-fde5-bc89-710f-542e98e3ba72', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'bd3f4ccb-76a0-11ed-9931-541cc997a8bc', 0, '2014-10-03 12:36:55', 0),
('e928af99-0d5a-a782-c7ed-542e98a9a590', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '9cabbe47-05c3-175e-a7b2-541cc9507bf7', 0, '2014-10-03 12:36:55', 0),
('e92e90bd-2f3c-2a1a-ae14-5440e25884ff', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '214de507-f44f-2f74-06d7-541cfe7d0b98', 0, '2014-10-17 09:33:39', 0),
('e9a5aa79-5b8c-3200-08e7-542e988b7e12', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'cdd43edc-d6ca-1473-196f-541cc93a8e8b', 0, '2014-10-03 12:36:55', 0),
('e9ea15da-865c-1542-09c9-5440e2a98ca9', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '316afa0e-d515-3a70-1b8a-541cfeb9a5e4', 0, '2014-10-17 09:33:39', 0),
('ea22a023-f808-051b-f948-542e989fefe0', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'e9019509-d88a-09ce-71d3-541cc9f45d45', 0, '2014-10-03 12:36:55', 0),
('ea9fa23a-b4d9-5b60-ef81-542e9874146c', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'e356baf6-1e14-28c8-aa8a-541cc9b34719', 0, '2014-10-03 12:36:55', 0),
('eae41870-216d-95b4-127e-5440e2bc836f', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '2c47f272-6cdd-d594-d1d1-541cfed3b7d8', 0, '2014-10-17 09:33:39', 0),
('eb99b61c-7b18-be53-2408-542e98e39e33', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '51010fa5-f378-9f86-257e-541cc941b57e', 0, '2014-10-03 12:36:55', 0),
('ebde290e-9308-5468-7bf5-5440e21d54d6', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '1ba53dcb-4973-9a67-3db6-541cfee6a21c', 0, '2014-10-17 09:33:39', 0),
('ec16b459-01ea-4520-813e-542e983935f7', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'f104d9e3-ad81-d829-929f-541cc9116986', 0, '2014-10-03 12:36:55', 0),
('ecd23db5-e8ec-84be-bea8-542e98c5e64e', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'db5bd6e5-7de8-9fd4-17ec-541cc9058148', 0, '2014-10-03 12:36:55', 0),
('ecd82852-33eb-f446-0bda-5440e2e39568', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '36fd4ab0-dc9b-fa38-e778-541cfe8347c3', 0, '2014-10-17 09:33:39', 0),
('edcc3b16-8eff-0d05-6fc2-542e98929870', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'd1a50214-5c86-4b92-9fb8-541cc951c4f3', 0, '2014-10-03 12:36:55', 0),
('edd22c6d-1f3d-b694-25da-5440e2c28c2b', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '179ed56b-d05f-508d-4481-541cfeee76c9', 0, '2014-10-17 09:33:39', 0),
('ee87b3c3-5c30-83e5-8bfb-542e989a98c8', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'd5c5ffb9-67bc-e4c8-df1b-541cc99658e6', 0, '2014-10-03 12:36:55', 0),
('eebf0574-c673-c5c5-126d-5440e211ac54', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '45eb49c3-521f-a86c-60ba-541cc9993335', 0, '2014-10-17 09:33:39', 0),
('ef04b6a5-c98e-abc7-5b35-542e98e513c6', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '28165667-d6a9-9d17-0833-541cc94a07b0', 0, '2014-10-03 12:36:55', 0),
('ef492ffc-5ad1-188e-792a-5440e24f93ea', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '22c58a65-e5b0-8268-f8a8-542e98f50c8f', 0, '2014-10-17 09:33:39', 0),
('ef81c9ae-6eaa-f4fe-b253-542e98d3cc72', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '45eb49c3-521f-a86c-60ba-541cc9993335', 0, '2014-10-03 12:36:55', 0),
('efc62c46-bfa9-944d-3178-5440e22babef', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '27a79307-64a7-0428-3476-542e98025621', 0, '2014-10-17 09:33:39', 0),
('f03d4d32-ce89-bcd3-7aeb-542e986c09b6', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '3dea7de1-cfd9-a32c-826b-541cc96268c3', 0, '2014-10-03 12:36:55', 0),
('f0c0312a-846d-57fe-0fa1-5440e20dc26d', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '26ec159a-e84c-cbd4-859e-542e989dd2ea', 0, '2014-10-17 09:33:39', 0),
('f0f8cd35-5531-2f8b-2c61-542e98ac4445', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '5635379d-345e-619f-9bf1-541cc976b04d', 0, '2014-10-03 12:36:55', 0),
('f13d3943-d49c-3183-b196-5440e245403e', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '295d1e2a-a1a6-a290-4399-542e98b0b882', 0, '2014-10-17 09:33:39', 0),
('f175c27d-7e9b-9fe2-259d-542e98ad7e4d', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '4e4961d1-0da8-3ece-0089-541cc9ba3d8d', 0, '2014-10-03 12:36:55', 0),
('f1f8b617-7b69-d614-25ca-5440e205b1de', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '28a1918c-0078-d9c4-efb9-542e98ce43ee', 0, '2014-10-17 09:33:39', 0),
('f23145c0-662c-5d54-f94b-542e98ba9d2c', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '3853c4c8-f68f-dfd2-77ca-541cc9b5ae68', 0, '2014-10-03 12:36:55', 0),
('f248017f-ccb8-afe1-45d0-542e98a1b8da', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '9f57c038-f28e-7b72-308f-541cc9e95893', 0, '2014-10-03 12:36:55', 0),
('f2b4301e-fa69-8a2e-f919-5440e249a735', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '25b38e7c-ff91-3027-3186-542e9897fb8e', 0, '2014-10-17 09:33:39', 0),
('f2eccf4f-eb76-0493-d903-542e98d3f791', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '5bc1bbda-99e4-1cbc-e2fc-541cc99ee48d', 0, '2014-10-03 12:36:55', 0),
('f3313b11-06f5-e9f0-dd5f-5440e267b845', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '2a189463-d818-1b9f-b1a4-542e9848a737', 0, '2014-10-17 09:33:39', 0),
('f3a85ef9-b433-5d83-9b5d-542e9841b5e4', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '305cb670-ccd7-c9b9-46b1-541cc9cf6a13', 0, '2014-10-03 12:36:55', 0),
('fa180ff0-53f9-8963-016c-542e9847778a', 'bbb5e57a-e91a-413f-2731-542e989c8a25', '89ca1681-6d25-2148-a9ca-541cc93f0f2b', 0, '2014-10-03 12:36:55', 0),
('fa760a55-37f9-909c-e017-5440e2296583', '84feab05-d2be-c60b-7cbb-5440e2eb1221', '3dea7de1-cfd9-a32c-826b-541cc96268c3', 0, '2014-10-17 09:33:39', 0),
('fb500600-56ed-a909-d99a-542e98c716f4', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'a6460654-3ca2-a604-a5f8-541cc933eca9', 0, '2014-10-03 12:36:55', 0);

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
-- Table structure for table `aut_d_car_sold_data`
--

CREATE TABLE IF NOT EXISTS `aut_d_car_sold_data` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `make` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `series` varchar(255) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `engine` varchar(255) DEFAULT NULL,
  `style` text,
  `other` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aut_d_car_sold_data_audit`
--

CREATE TABLE IF NOT EXISTS `aut_d_car_sold_data_audit` (
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
  KEY `idx_aut_d_car_sold_data_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aut_d_car_sold_data_leads_c`
--

CREATE TABLE IF NOT EXISTS `aut_d_car_sold_data_leads_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aut_d_car_sold_data_leadsleads_ida` varchar(36) DEFAULT NULL,
  `aut_d_car_sold_data_leadsaut_d_car_sold_data_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aut_d_car_sold_data_leads_ida1` (`aut_d_car_sold_data_leadsleads_ida`),
  KEY `aut_d_car_sold_data_leads_alt` (`aut_d_car_sold_data_leadsaut_d_car_sold_data_idb`)
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

--
-- Dumping data for table `calls`
--

INSERT INTO `calls` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `duration_hours`, `duration_minutes`, `date_start`, `date_end`, `parent_type`, `status`, `direction`, `parent_id`, `reminder_time`, `email_reminder_time`, `email_reminder_sent`, `outlook_id`, `repeat_type`, `repeat_interval`, `repeat_dow`, `repeat_until`, `repeat_count`, `repeat_parent_id`, `recurring_source`) VALUES
('2e7f44c8-db58-998c-923a-544b6245ea24', 'A followup call', '2014-10-25 08:44:41', '2014-10-25 08:44:41', '1', '1', NULL, 0, NULL, 0, 30, '2014-11-01 10:44:43', '2014-11-01 11:14:43', NULL, 'Planned', 'Outbound', NULL, -1, -1, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
('38ea61e9-c6e8-3cda-6635-544b60d9dec0', 'A followup call', '2014-10-25 08:36:05', '2014-10-25 08:36:05', '1', '1', NULL, 0, NULL, 0, 30, '2014-11-01 10:36:07', '2014-11-01 11:06:07', NULL, 'Planned', 'Outbound', NULL, -1, -1, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL);

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

--
-- Dumping data for table `calls_contacts`
--

INSERT INTO `calls_contacts` (`id`, `call_id`, `contact_id`, `required`, `accept_status`, `date_modified`, `deleted`) VALUES
('760a2d8b-91f1-3e2f-0d61-544b620c96ec', '2e7f44c8-db58-998c-923a-544b6245ea24', '79430caa-72ba-5f36-7fcc-542532c5c851', '1', 'none', '2014-10-25 08:44:41', 0);

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
-- Table structure for table `car_f_car_file`
--

CREATE TABLE IF NOT EXISTS `car_f_car_file` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `car_f_car_file_audit`
--

CREATE TABLE IF NOT EXISTS `car_f_car_file_audit` (
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
  KEY `idx_car_f_car_file_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `car_f_car_file_car_f_car_file_c`
--

CREATE TABLE IF NOT EXISTS `car_f_car_file_car_f_car_file_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `car_f_car_file_car_f_car_filecar_f_car_file_ida` varchar(36) DEFAULT NULL,
  `car_f_car_file_car_f_car_filecar_f_car_file_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `car_f_car_file_car_f_car_file_ida1` (`car_f_car_file_car_f_car_filecar_f_car_file_ida`),
  KEY `car_f_car_file_car_f_car_file_alt` (`car_f_car_file_car_f_car_filecar_f_car_file_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `case_number`, `type`, `status`, `priority`, `resolution`, `work_log`, `account_id`) VALUES
('6f5c076f-3361-8032-64aa-545db052f09f', 'case2', '2014-11-08 05:56:13', '2014-11-08 05:56:16', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', NULL, 0, '', 2, NULL, NULL, NULL, NULL, NULL, 'dfcd56ec-4167-42e8-18ab-545db0b03492'),
('88f66c98-ec83-a96d-ea53-545daf91bce7', 'case2', '2014-11-08 05:51:26', '2014-11-08 05:51:29', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', NULL, 0, '', 1, NULL, NULL, NULL, NULL, NULL, 'ecb4ffe8-45de-770a-c39a-545daf5769ca');

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
('MySettings', 'tab', 'YToyMDp7czo0OiJIb21lIjtzOjQ6IkhvbWUiO3M6ODoiQWNjb3VudHMiO3M6ODoiQWNjb3VudHMiO3M6ODoiQ29udGFjdHMiO3M6ODoiQ29udGFjdHMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6NToiTGVhZHMiO3M6NToiTGVhZHMiO3M6ODoiQ2FsZW5kYXIiO3M6ODoiQ2FsZW5kYXIiO3M6OToiRG9jdW1lbnRzIjtzOjk6IkRvY3VtZW50cyI7czo2OiJFbWFpbHMiO3M6NjoiRW1haWxzIjtzOjk6IkNhbXBhaWducyI7czo5OiJDYW1wYWlnbnMiO3M6NToiQ2FsbHMiO3M6NToiQ2FsbHMiO3M6ODoiTWVldGluZ3MiO3M6ODoiTWVldGluZ3MiO3M6NToiVGFza3MiO3M6NToiVGFza3MiO3M6NToiTm90ZXMiO3M6NToiTm90ZXMiO3M6NToiQ2FzZXMiO3M6NToiQ2FzZXMiO3M6OToiUHJvc3BlY3RzIjtzOjk6IlByb3NwZWN0cyI7czoxMzoiUHJvc3BlY3RMaXN0cyI7czoxMzoiUHJvc3BlY3RMaXN0cyI7czoxMjoiZ3JwX3BfZ3JvdXBzIjtzOjEyOiJncnBfcF9ncm91cHMiO3M6MjI6Imluc19wX2luc3VyYW5jZV9wb2xpY3kiO3M6MjI6Imluc19wX2luc3VyYW5jZV9wb2xpY3kiO3M6MTk6ImF1dF9kX2Nhcl9zb2xkX2RhdGEiO3M6MTk6ImF1dF9kX2Nhcl9zb2xkX2RhdGEiO3M6MTQ6ImNhcl9mX2Nhcl9maWxlIjtzOjE0OiJjYXJfZl9jYXJfZmlsZSI7fQ=='),
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
('9a885c27-c3be-d8c5-b268-545da3c883f2', '2014-11-08 04:58:46', '2014-11-08 04:58:46', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', NULL, 0, NULL, NULL, NULL, 'Rest last name', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('bae6f334-b067-5dcb-319e-545d8ccf30ed', '2014-11-08 03:24:24', '2014-11-08 03:24:24', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', NULL, 0, NULL, NULL, NULL, 'Rest last name', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
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
  `account_city_c` varchar(255) DEFAULT NULL,
  `day_time_contact_c` varchar(255) DEFAULT NULL,
  `night_time_contact_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts_cstm`
--

INSERT INTO `contacts_cstm` (`id_c`, `fullname_c`, `weather_info_c`, `account_city_c`, `day_time_contact_c`, `night_time_contact_c`) VALUES
('3cfc5d8c-d79a-082e-ae87-54253299b625', '0926_contact_2 0926_contact_2', '', NULL, NULL, NULL),
('5b2176b3-e193-6aa6-7ba5-5422cd87668b', 'first_name last_name', NULL, NULL, NULL, NULL),
('612785b8-8f32-0869-d45b-5422cd3e121e', 'first_name_blank', NULL, NULL, NULL, NULL),
('79430caa-72ba-5f36-7fcc-542532c5c851', '0926_contact_3 0926_contact_3', '', NULL, NULL, NULL),
('9a885c27-c3be-d8c5-b268-545da3c883f2', 'Rest last name', '', '', '11111111', '22222222'),
('bae6f334-b067-5dcb-319e-545d8ccf30ed', 'Rest last name', '', '', '11111111', '22222222'),
('c8d5011f-c037-4ccb-8cde-542532a798c5', '0926_contact_1 0926_contact_1', '', NULL, NULL, NULL);

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
('10007577-e07a-7bff-eee6-545d7b753893', 'restws_do_not_delete@restwsdonotdelete.com', 'RESTWS_DO_NOT_DELETE@RESTWSDONOTDELETE.COM', 0, 0, '2014-11-08 02:12:03', '2014-11-08 02:12:03', 0),
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
('8b922a25-1c24-4de7-59e1-54257981c893', '8bd0a117-a4d3-9508-046b-54257982d40f', '89dc998d-57d6-adca-d06b-54257971e11c', 'Users', 1, 0, '2014-09-26 14:34:45', '2014-09-26 14:34:45', 0),
('fcd805b9-2678-b679-d688-545d7baa25ff', '10007577-e07a-7bff-eee6-545d7b753893', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', 'Users', 1, 0, '2014-11-08 02:12:03', '2014-11-08 02:12:03', 0);

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
('Accountscurrency_id', 'currency_id', 'LBL_CURRENCY', '', '', 'Accounts', 'currency_id', 36, 0, NULL, '2014-10-25 09:41:28', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Accountsquote_c', 'quote_c', 'LBL_QUOTE', '', '', 'Accounts', 'currency', 26, 0, '', '2014-10-25 09:41:28', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactsaccount_city_c', 'account_city_c', 'LBL_ACCOUNT_CITY', '', '', 'Contacts', 'varchar', 255, 0, '', '2014-09-29 12:19:06', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactsday_time_contact_c', 'day_time_contact_c', 'LBL_DAY_TIME_CONTACT', NULL, NULL, 'Contacts', 'phone', 255, 0, NULL, '2014-11-08 01:30:01', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('Contactsfullname_c', 'fullname_c', 'LBL_FULLNAME', '', '', 'Contacts', 'varchar', 255, 0, '', '2014-09-24 13:32:10', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactsnight_time_contact_c', 'night_time_contact_c', 'LBL_NIGHT_TIME_CONTACT', NULL, NULL, 'Contacts', 'phone', 255, 0, NULL, '2014-11-08 01:30:35', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
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

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`id`, `name`, `folder_type`, `parent_folder`, `has_child`, `is_group`, `is_dynamic`, `dynamic_query`, `assign_to_id`, `created_by`, `modified_by`, `deleted`) VALUES
('cce181a0-d72c-ac31-0f1f-5441031834dc', 'My Email', 'inbound', '', 1, 0, 1, 'SELECT emails.id polymorphic_id, ''Emails'' polymorphic_module FROM emails\r\n								   JOIN emails_text on emails.id = emails_text.email_id\r\n                                   WHERE (type = ''inbound'' OR status = ''inbound'') AND assigned_user_id = ''1'' AND emails.deleted = ''0'' AND status NOT IN (''sent'', ''archived'', ''draft'') AND type NOT IN (''out'', ''archived'', ''draft'')', '', '1', '1', 0),
('cf528fbc-b994-f39b-383e-544103a8abdd', 'My Drafts', 'draft', 'cce181a0-d72c-ac31-0f1f-5441031834dc', 0, 0, 1, 'SELECT emails.id polymorphic_id, ''Emails'' polymorphic_module FROM emails\r\n								   JOIN emails_text on emails.id = emails_text.email_id\r\n                                   WHERE (type = ''draft'' OR status = ''draft'') AND assigned_user_id = ''1'' AND emails.deleted = ''0'' AND status NOT IN (''archived'') AND type NOT IN (''archived'')', '', '1', '1', 0),
('d27f1f89-0b5b-750c-b798-544103b59e8b', 'Sent Emails', 'sent', 'cce181a0-d72c-ac31-0f1f-5441031834dc', 0, 0, 1, 'SELECT emails.id polymorphic_id, ''Emails'' polymorphic_module FROM emails\r\n								   JOIN emails_text on emails.id = emails_text.email_id\r\n                                   WHERE (type = ''out'' OR status = ''sent'') AND assigned_user_id = ''1'' AND emails.deleted = ''0'' AND status NOT IN (''archived'') AND type NOT IN (''archived'')', '', '1', '1', 0),
('d628a3c1-526c-3bf9-45f6-54410305d5e2', 'My Archived Emails', 'archived', 'cce181a0-d72c-ac31-0f1f-5441031834dc', 0, 0, 1, '', '', '1', '1', 0);

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

--
-- Dumping data for table `folders_subscriptions`
--

INSERT INTO `folders_subscriptions` (`id`, `folder_id`, `assigned_user_id`) VALUES
('cd200d65-6295-a6a1-2e8b-5441032ecd7e', 'cce181a0-d72c-ac31-0f1f-5441031834dc', '1'),
('cf528def-b5f2-f162-e972-5441038f9cc7', 'cf528fbc-b994-f39b-383e-544103a8abdd', '1'),
('d27f19f1-c726-6b99-c22a-5441035ce88e', 'd27f1f89-0b5b-750c-b798-544103b59e8b', '1'),
('d628af3b-a55e-f938-58d3-544103718e63', 'd628a3c1-526c-3bf9-45f6-54410305d5e2', '1');

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
-- Table structure for table `ins_p_insurance_policy`
--

CREATE TABLE IF NOT EXISTS `ins_p_insurance_policy` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `premium` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ins_p_insurance_policy_audit`
--

CREATE TABLE IF NOT EXISTS `ins_p_insurance_policy_audit` (
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
  KEY `idx_ins_p_insurance_policy_parent_id` (`parent_id`)
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

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `salutation`, `first_name`, `last_name`, `title`, `department`, `do_not_call`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `assistant`, `assistant_phone`, `converted`, `refered_by`, `lead_source`, `lead_source_description`, `status`, `status_description`, `reports_to_id`, `account_name`, `account_description`, `contact_id`, `account_id`, `opportunity_id`, `opportunity_name`, `opportunity_amount`, `campaign_id`, `birthdate`, `portal_name`, `portal_app`, `website`) VALUES
('eaceec67-400f-6b66-b7b7-542eb46f98e7', '2014-10-03 14:35:44', '2014-10-18 01:34:33', '1', '1', NULL, 0, '1', NULL, NULL, '20141014_1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'Assigned', NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, NULL, 'http://');

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

--
-- Dumping data for table `leads_audit`
--

INSERT INTO `leads_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('79d5c8f7-e9d3-7029-0e6a-5441c304e28b', 'eaceec67-400f-6b66-b7b7-542eb46f98e7', '2014-10-18 01:34:33', '1', 'status', 'enum', 'New', 'Assigned', NULL, NULL);

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

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`assigned_user_id`, `id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `file_mime_type`, `filename`, `parent_type`, `parent_id`, `contact_id`, `portal_flag`, `embed_flag`, `description`, `deleted`) VALUES
(NULL, '26005351-fe30-fb9d-3547-5438efca2d0c', '2014-10-11 08:52:59', '2014-10-11 08:52:59', '1', '1', 'Leads autonote', NULL, NULL, 'Leads', 'eaceec67-400f-6b66-b7b7-542eb46f98e7', NULL, 0, 0, 'This note is autologged for a lead.', 0),
(NULL, '2777c37b-7f08-f530-16d4-5438ef707725', '2014-10-11 08:51:43', '2014-10-11 08:51:43', '1', '1', 'Leads autonote', NULL, NULL, 'Leads', 'eaceec67-400f-6b66-b7b7-542eb46f98e7', NULL, 0, 0, 'This note is autologged for a lead.', 0),
(NULL, '6103378c-47dd-0d48-1766-5438ef100f75', '2014-10-11 08:50:51', '2014-10-11 08:50:51', '1', '1', 'Leads autonote', NULL, NULL, NULL, NULL, NULL, 0, 0, 'This note is autologged for a lead.', 0),
(NULL, '8170cf4b-2766-5a79-3d98-5438f2d754d2', '2014-10-11 09:02:26', '2014-10-11 09:02:26', '1', '1', 'Leads autonote', NULL, NULL, 'Leads', 'eaceec67-400f-6b66-b7b7-542eb46f98e7', NULL, 0, 0, 'This note is autologged for a lead.', 0),
(NULL, '860079d7-dc75-86e4-b504-5438f3d521b0', '2014-10-11 09:08:17', '2014-10-11 09:08:17', '1', '1', 'Leads autonote', NULL, NULL, 'Leads', 'eaceec67-400f-6b66-b7b7-542eb46f98e7', NULL, 0, 0, 'This note is autologged for a lead.', 0);

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
('1056d466-afe7-ff8b-4195-547444a4c0b0', 'opportunity_notes', 'Opportunities', 'opportunities', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('11125119-0144-f5ea-e4d5-5474447ffe4a', 'opportunity_emails', 'Opportunities', 'opportunities', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('118f5f8e-f3c6-5a75-ed97-547444db6c41', 'opportunity_leads', 'Opportunities', 'opportunities', 'id', 'Leads', 'leads', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('124ae4d3-83d1-8281-1f6b-547444f125fa', 'opportunity_currencies', 'Opportunities', 'opportunities', 'currency_id', 'Currencies', 'currencies', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('12c7ee10-9d4f-b554-0c97-54744480bd8f', 'opportunities_campaign', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('133901a3-f3bf-35a8-4f9c-54744479b5df', 'member_accounts', 'Accounts', 'accounts', 'id', 'Accounts', 'accounts', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('15b5ec23-1ffb-1d8a-0e1e-547444002a25', 'emailtemplates_assigned_user', 'Users', 'users', 'id', 'EmailTemplates', 'email_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('18e271a6-25ad-8e30-fe18-54744469b98a', 'notes_assigned_user', 'Users', 'users', 'id', 'Notes', 'notes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('199df90e-9855-b351-a5de-5474441d7037', 'notes_modified_user', 'Users', 'users', 'id', 'Notes', 'notes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1a5976e5-2371-3acf-697f-54744421d550', 'notes_created_by', 'Users', 'users', 'id', 'Notes', 'notes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1b0a0137-fe7a-ac27-11a6-5474443d43e2', 'account_cases', 'Accounts', 'accounts', 'id', 'Cases', 'cases', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1e418cb4-38e8-35f5-fdea-547444af2e87', 'calls_modified_user', 'Users', 'users', 'id', 'Calls', 'calls', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1efd05c0-71f4-c11a-7d0c-5474448b6a61', 'calls_created_by', 'Users', 'users', 'id', 'Calls', 'calls', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1fb887b8-876e-5e03-f7c5-547444ba2263', 'calls_assigned_user', 'Users', 'users', 'id', 'Calls', 'calls', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('20b29d57-6a43-fad5-b186-54744484c41e', 'calls_notes', 'Calls', 'calls', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Calls', 0, 0),
('216e1046-637f-b4f1-447f-5474443b85a1', 'emails_assigned_user', 'Users', 'users', 'id', 'Emails', 'emails', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('22299764-3e4e-c194-1c6f-547444be24ad', 'emails_modified_user', 'Users', 'users', 'id', 'Emails', 'emails', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('22e51528-5f6b-f9dc-09be-5474442d7c49', 'emails_created_by', 'Users', 'users', 'id', 'Emails', 'emails', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('23622f34-648b-fea1-2503-547444722c81', 'emails_notes_rel', 'Emails', 'emails', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('241da432-c06b-a7bb-d04b-5474446145b1', 'emails_contacts_rel', 'Emails', 'emails', 'id', 'Contacts', 'contacts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('249aa303-7ae4-3721-08b1-547444e97e34', 'emails_accounts_rel', 'Emails', 'emails', 'id', 'Accounts', 'accounts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('2517aa31-2384-adbf-8c8d-5474440519b5', 'emails_leads_rel', 'Emails', 'emails', 'id', 'Leads', 'leads', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('25d325d6-9b40-3ff5-e39a-54744403d60c', 'emails_meetings_rel', 'Emails', 'emails', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('26c209c6-8b18-9dc9-2884-54744469b8bb', 'account_tasks', 'Accounts', 'accounts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('2ab53d1c-c49d-326f-57f2-54744426c639', 'meetings_modified_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2b323ca8-0992-05e1-3c93-54744442e48c', 'meetings_created_by', 'Users', 'users', 'id', 'Meetings', 'meetings', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2baf39d5-eccf-c2a1-3708-547444ef20d8', 'meetings_assigned_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2c2c479e-0300-f511-63fc-547444e2e847', 'meetings_notes', 'Meetings', 'meetings', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('2f58cb17-4a7c-a86b-d3c2-547444219296', 'tasks_modified_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3052d191-e111-fef9-890a-547444c7a5ca', 'tasks_created_by', 'Users', 'users', 'id', 'Tasks', 'tasks', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('30cfd488-5bed-c1fb-f20f-5474446f5094', 'tasks_assigned_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('318b5e0a-e4f7-3823-f457-547444433994', 'tasks_notes', 'Tasks', 'tasks', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('327a0e5a-d63d-e9b3-c143-5474440eac0d', 'account_notes', 'Accounts', 'accounts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('3a4a00e5-53fb-f5c0-e9e0-547444c792aa', 'account_meetings', 'Accounts', 'accounts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('42259824-d44e-a3e2-c1aa-54744448ccf3', 'documents_modified_user', 'Users', 'users', 'id', 'Documents', 'documents', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('431f98d0-fde6-98f9-2098-547444d6b2b8', 'documents_created_by', 'Users', 'users', 'id', 'Documents', 'documents', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('441998d0-1d60-2ff5-2b20-547444bd02c8', 'documents_assigned_user', 'Users', 'users', 'id', 'Documents', 'documents', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4496965f-a102-31d0-ae30-547444ea25fa', 'document_revisions', 'Documents', 'documents', 'id', 'DocumentRevisions', 'document_revisions', 'document_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('468aafb9-a145-5e86-6996-5474440a187d', 'revisions_created_by', 'Users', 'users', 'id', 'DocumentRevisions', 'document_revisions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('49ea0f2a-d763-26ca-1045-547444b25ed6', 'account_calls', 'Accounts', 'accounts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('4ce3b6f9-983b-60a3-1370-547444887d4c', 'inbound_email_created_by', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('4dddba9d-acc3-856b-1e7d-547444ca2ba2', 'inbound_email_modified_user_id', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('508d4fc1-16c6-090f-d765-547444a45416', 'saved_search_assigned_user', 'Users', 'users', 'id', 'SavedSearch', 'saved_search', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('55a20bb3-064f-2c57-ec29-54744424390a', 'account_emails', 'Accounts', 'accounts', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('562ad634-f9e0-9163-c0b3-54744468eb9c', 'sugarfeed_modified_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('56e669f7-f0fc-4cf3-d25e-54744485c2c0', 'sugarfeed_created_by', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('57e0667c-fd69-453d-e9ef-5474441bbc54', 'sugarfeed_assigned_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5d730d81-451c-9945-b29c-547444512a70', 'account_leads', 'Accounts', 'accounts', 'id', 'Leads', 'leads', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5eb674df-99e8-0ee9-d46c-547444557651', 'eapm_modified_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5fb0897e-b1e0-56a8-42d7-547444724a19', 'eapm_created_by', 'Users', 'users', 'id', 'EAPM', 'eapm', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('606c0e94-f8e9-c556-a060-547444bab1e1', 'eapm_assigned_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('63d71414-5ea8-ea9b-5374-54744463423d', 'oauthkeys_modified_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauthkeys', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('64d118ff-2a27-d1fa-3992-547444b7d620', 'oauthkeys_created_by', 'Users', 'users', 'id', 'OAuthKeys', 'oauthkeys', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('65cb1749-fc85-c756-bd8a-547444efe09c', 'oauthkeys_assigned_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauthkeys', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('67fda0b9-afd2-23cd-250c-547444e4a766', 'consumer_tokens', 'OAuthKeys', 'oauth_consumer', 'id', 'OAuthTokens', 'oauth_tokens', 'consumer', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('68b92f35-8916-df96-9890-5474448465d3', 'oauthtokens_assigned_user', 'Users', 'users', 'id', 'OAuthTokens', 'oauth_tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('692b03bc-f506-ad61-ee9e-5474448aa925', 'account_campaign_log', 'Accounts', 'accounts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Accounts', 0, 0),
('6cdfb6b0-1a85-bc61-892c-5474442b660f', 'aut_d_car_sold_data_modified_user', 'Users', 'users', 'id', 'aut_d_car_sold_data', 'aut_d_car_sold_data', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6d9b380a-696e-0260-c4d6-54744400e763', 'aut_d_car_sold_data_created_by', 'Users', 'users', 'id', 'aut_d_car_sold_data', 'aut_d_car_sold_data', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6e18378e-bca7-f83c-bed1-5474442a460b', 'aut_d_car_sold_data_assigned_user', 'Users', 'users', 'id', 'aut_d_car_sold_data', 'aut_d_car_sold_data', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('723ecf36-d41d-ba9d-688d-5474443b38c6', 'car_f_car_file_modified_user', 'Users', 'users', 'id', 'car_f_car_file', 'car_f_car_file', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('72fa477e-b335-04a1-8f7f-54744469f809', 'car_f_car_file_created_by', 'Users', 'users', 'id', 'car_f_car_file', 'car_f_car_file', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('73b5cc83-6185-52f4-3aa1-5474440e9056', 'car_f_car_file_assigned_user', 'Users', 'users', 'id', 'car_f_car_file', 'car_f_car_file', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('77dc5ffd-3302-d951-da5e-54744419bc1b', 'grp_p_groups_modified_user', 'Users', 'users', 'id', 'grp_p_groups', 'grp_p_groups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7810069b-6b4f-f54a-daac-547444f363f7', 'accounts_email_addresses_primary', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('789442ec-137a-656c-70ec-547444aba524', 'leads_modified_user', 'Users', 'users', 'id', 'Leads', 'leads', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('78d66edf-fb5b-1355-8134-547444a2f7ba', 'grp_p_groups_created_by', 'Users', 'users', 'id', 'grp_p_groups', 'grp_p_groups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('79536814-bce4-2e09-41bd-5474440e0938', 'grp_p_groups_assigned_user', 'Users', 'users', 'id', 'grp_p_groups', 'grp_p_groups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('79ccd211-c5af-f448-8333-547444feadbf', 'leads_created_by', 'Users', 'users', 'id', 'Leads', 'leads', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('79d061f4-220b-7a45-ffbb-5474445a3bfc', 'group_contacts', 'grp_p_groups', 'grp_p_groups', 'id', 'Contacts', 'contacts', 'group_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7a8be4c4-7fbc-a9a5-03a1-5474444bc947', 'group_account', 'grp_p_groups', 'grp_p_groups', 'id', 'Accounts', 'accounts', 'group_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('7ac6ded7-7215-9bc7-b0bc-5474440a3ebb', 'leads_assigned_user', 'Users', 'users', 'id', 'Leads', 'leads', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7b82541c-68a5-ee79-7723-54744448eed9', 'leads_email_addresses', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('7c7c5f5c-23f5-b491-55db-547444c32c8c', 'leads_email_addresses_primary', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('7cf952b0-e04e-724a-6c50-547444843f36', 'lead_direct_reports', 'Leads', 'leads', 'id', 'Leads', 'leads', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7df35aa0-12f6-d3c3-3494-547444a7780b', 'lead_tasks', 'Leads', 'leads', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('7df6f77c-ac1a-5f02-c6a7-54744488a9b6', 'ins_p_insurance_policy_modified_user', 'Users', 'users', 'id', 'ins_p_insurance_policy', 'ins_p_insurance_policy', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7e73f654-5cd8-74af-1a9e-54744478451e', 'ins_p_insurance_policy_created_by', 'Users', 'users', 'id', 'ins_p_insurance_policy', 'ins_p_insurance_policy', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7eaed109-ba5b-8171-363b-54744475b453', 'lead_notes', 'Leads', 'leads', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('7ef0f1b1-76d0-5666-51d6-547444d1bbb3', 'ins_p_insurance_policy_assigned_user', 'Users', 'users', 'id', 'ins_p_insurance_policy', 'ins_p_insurance_policy', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7f2bd346-f7ba-596c-8b9b-547444454d2b', 'lead_meetings', 'Leads', 'leads', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('8025e2d4-5923-7936-c38b-547444385853', 'lead_calls', 'Leads', 'leads', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('811fe9fd-0358-1f7e-94f6-547444922245', 'lead_emails', 'Leads', 'leads', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('81db6551-d1a5-5f8a-7df1-54744402ba78', 'lead_campaign_log', 'Leads', 'leads', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Leads', 0, 0),
('88769f3b-4077-0acf-53e3-547444ca06da', 'accounts_bugs', 'Accounts', 'accounts', 'id', 'Bugs', 'bugs', 'id', 'accounts_bugs', 'account_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('88f00795-e81c-8580-6de1-5474444f4b3e', 'cases_modified_user', 'Users', 'users', 'id', 'Cases', 'cases', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('89709a1f-8fe6-238c-6a17-54744432a0f3', 'accounts_contacts', 'Accounts', 'accounts', 'id', 'Contacts', 'contacts', 'id', 'accounts_contacts', 'account_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('89ea0031-daf2-582f-b5ef-547444365f35', 'cases_created_by', 'Users', 'users', 'id', 'Cases', 'cases', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('89eda2da-742c-4865-8dcb-5474440b5ec7', 'accounts_opportunities', 'Accounts', 'accounts', 'id', 'Opportunities', 'opportunities', 'id', 'accounts_opportunities', 'account_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('8aa92e75-1a74-1597-a682-547444f50195', 'calls_contacts', 'Calls', 'calls', 'id', 'Contacts', 'contacts', 'id', 'calls_contacts', 'call_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('8ae41737-be3d-5550-7421-5474447c5aed', 'cases_assigned_user', 'Users', 'users', 'id', 'Cases', 'cases', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8ba3260e-9874-9df3-42f1-5474445cb6a6', 'calls_users', 'Calls', 'calls', 'id', 'Users', 'users', 'id', 'calls_users', 'call_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('8bde182a-5428-da77-3e99-54744422bbea', 'case_calls', 'Cases', 'cases', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('8c5ea4d3-0a56-0cfa-eaa7-547444954b5b', 'calls_leads', 'Calls', 'calls', 'id', 'Leads', 'leads', 'id', 'calls_leads', 'call_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('8c999b77-a212-5e6f-3e86-547444432038', 'case_tasks', 'Cases', 'cases', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('8cdba48b-a08f-94cc-e339-54744414304c', 'cases_bugs', 'Cases', 'cases', 'id', 'Bugs', 'bugs', 'id', 'cases_bugs', 'case_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('8d1696f0-b5f7-22f0-bb21-54744406d891', 'case_notes', 'Cases', 'cases', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('8d972e55-8e21-01bf-0bfc-547444fcf080', 'contacts_bugs', 'Contacts', 'contacts', 'id', 'Bugs', 'bugs', 'id', 'contacts_bugs', 'contact_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('8e1091cc-54a8-1557-351f-547444e2e815', 'case_meetings', 'Cases', 'cases', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('8e52bab9-6780-4542-a33c-5474440cdd06', 'contacts_cases', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'id', 'contacts_cases', 'contact_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('8ecc1422-5de3-d3a7-346c-5474443a4adf', 'case_emails', 'Cases', 'cases', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('8f0e396b-7188-5064-b780-547444f4fc09', 'contacts_users', 'Contacts', 'contacts', 'id', 'Users', 'users', 'id', 'contacts_users', 'contact_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('9046b862-4a5f-4146-d76f-5474448696f1', 'emails_bugs_rel', 'Emails', 'emails', 'id', 'Bugs', 'bugs', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Bugs', 0, 0),
('91023946-cb44-5b76-652c-547444ddd89a', 'emails_cases_rel', 'Emails', 'emails', 'id', 'Cases', 'cases', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Cases', 0, 0),
('917f3732-1f84-81d3-4b8b-54744431871b', 'emails_opportunities_rel', 'Emails', 'emails', 'id', 'Opportunities', 'opportunities', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Opportunities', 0, 0),
('923ab5e5-ed6a-a8e2-1be8-5474446d43db', 'emails_tasks_rel', 'Emails', 'emails', 'id', 'Tasks', 'tasks', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Tasks', 0, 0),
('92b425c4-30e6-67de-467d-547444f7d60f', 'bugs_modified_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('92b7c864-d2c3-2b94-a5d4-547444da2bdc', 'emails_users_rel', 'Emails', 'emails', 'id', 'Users', 'users', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('937344ca-ed01-b56e-e788-5474446d9e75', 'emails_project_task_rel', 'Emails', 'emails', 'id', 'ProjectTask', 'project_task', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'ProjectTask', 0, 0),
('93ae3dc7-f0bd-fc5d-0c0f-547444df8778', 'bugs_created_by', 'Users', 'users', 'id', 'Bugs', 'bugs', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9469b6d2-b299-08e1-bb30-547444094e9a', 'bugs_assigned_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('946d4dde-b570-f57f-2696-547444dcd4d8', 'emails_projects_rel', 'Emails', 'emails', 'id', 'Project', 'project', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Project', 0, 0),
('94e6be47-0de8-66f1-0ea7-547444aefe3d', 'bug_tasks', 'Bugs', 'bugs', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('94ea40f9-1e7a-5eb0-b49a-547444f11f21', 'emails_prospects_rel', 'Emails', 'emails', 'id', 'Prospects', 'prospects', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('9563bcf0-c805-670a-7bdf-5474443acc6d', 'bug_meetings', 'Bugs', 'bugs', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('95674987-3d37-dca9-1eb8-547444998d8e', 'meetings_contacts', 'Meetings', 'meetings', 'id', 'Contacts', 'contacts', 'id', 'meetings_contacts', 'meeting_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('961f3a45-838e-0733-61e9-547444fa1af0', 'bug_calls', 'Bugs', 'bugs', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('9661495e-60e3-2856-e74d-547444f45440', 'meetings_users', 'Meetings', 'meetings', 'id', 'Users', 'users', 'id', 'meetings_users', 'meeting_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('969c35dc-ed8a-d615-675e-547444dfb115', 'bug_emails', 'Bugs', 'bugs', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('96de5464-b602-3680-e848-54744487bf42', 'meetings_leads', 'Meetings', 'meetings', 'id', 'Leads', 'leads', 'id', 'meetings_leads', 'meeting_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('979642ca-c0bd-54c9-a3b4-5474440158c4', 'bug_notes', 'Bugs', 'bugs', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('97d85c1e-e7cd-73f2-e904-54744430c6e7', 'opportunities_contacts', 'Opportunities', 'opportunities', 'id', 'Contacts', 'contacts', 'id', 'opportunities_contacts', 'opportunity_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('98555328-1c73-f9b7-ad9f-5474440893c8', 'prospect_list_campaigns', 'ProspectLists', 'prospect_lists', 'id', 'Campaigns', 'campaigns', 'id', 'prospect_list_campaigns', 'prospect_list_id', 'campaign_id', 'many-to-many', NULL, NULL, 0, 0),
('98904d5b-f91f-0ff7-d55c-5474446272e1', 'bugs_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'found_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9910dde6-6afe-0d16-262a-5474442b8e92', 'prospect_list_contacts', 'ProspectLists', 'prospect_lists', 'id', 'Contacts', 'contacts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Contacts', 0, 0),
('998a4dca-d095-6d08-06ea-547444515955', 'bugs_fixed_in_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'fixed_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('998dda68-f72d-72f1-4b3f-5474440261ad', 'prospect_list_prospects', 'ProspectLists', 'prospect_lists', 'id', 'Prospects', 'prospects', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Prospects', 0, 0),
('9a844ae3-9513-e4a0-5008-547444d11a1f', 'user_direct_reports', 'Users', 'users', 'id', 'Users', 'users', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9a87d5bf-cedd-7bf3-4fdf-54744419259d', 'prospect_list_leads', 'ProspectLists', 'prospect_lists', 'id', 'Leads', 'leads', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Leads', 0, 0),
('9b014db5-f6e5-b14c-335d-5474442723c1', 'users_email_addresses', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('9b436307-2a65-c733-8ed1-5474445d009b', 'prospect_list_users', 'ProspectLists', 'prospect_lists', 'id', 'Users', 'users', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Users', 0, 0),
('9bc06fe7-f73c-f941-3a7f-5474447bb4a7', 'prospect_list_accounts', 'ProspectLists', 'prospect_lists', 'id', 'Accounts', 'accounts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Accounts', 0, 0),
('9bfb5f85-279f-6a53-c701-547444d23119', 'users_email_addresses_primary', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('9c3d6ffb-1cb6-2155-3ca0-547444468cf8', 'roles_users', 'Roles', 'roles', 'id', 'Users', 'users', 'id', 'roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('9cf8ea96-ad8c-1dc9-7172-547444ce401c', 'projects_bugs', 'Project', 'project', 'id', 'Bugs', 'bugs', 'id', 'projects_bugs', 'project_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('9db46ef2-9db4-24e9-ce1a-5474449ede4c', 'projects_cases', 'Project', 'project', 'id', 'Cases', 'cases', 'id', 'projects_cases', 'project_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('9e6c5f1e-fc0c-8f23-3cac-54744452de97', 'campaignlog_contact', 'CampaignLog', 'campaign_log', 'related_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9e6fe3a5-18f1-111d-e4a4-547444e5202f', 'projects_accounts', 'Project', 'project', 'id', 'Accounts', 'accounts', 'id', 'projects_accounts', 'project_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('9f2b7c1d-c1cf-b402-a359-547444c011d7', 'projects_contacts', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'projects_contacts', 'project_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('9fe353fb-5121-4875-fcef-547444814d7d', 'campaignlog_lead', 'CampaignLog', 'campaign_log', 'related_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a063fabd-ed16-6ad1-e681-547444643050', 'projects_opportunities', 'Project', 'project', 'id', 'Opportunities', 'opportunities', 'id', 'projects_opportunities', 'project_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('a09eef12-9547-7881-09d1-547444bb576e', 'campaignlog_created_opportunities', 'CampaignLog', 'campaign_log', 'related_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a11f7738-9d2a-968d-7473-547444029897', 'acl_roles_actions', 'ACLRoles', 'acl_roles', 'id', 'ACLActions', 'acl_actions', 'id', 'acl_roles_actions', 'role_id', 'action_id', 'many-to-many', NULL, NULL, 0, 0),
('a15a63d3-9b76-d768-0231-547444527ad1', 'campaignlog_targeted_users', 'CampaignLog', 'campaign_log', 'target_id', 'Users', 'users', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a1d76022-5a67-caa4-68f4-547444e0172f', 'campaignlog_sent_emails', 'CampaignLog', 'campaign_log', 'related_id', 'Emails', 'emails', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a313714a-e266-0448-932a-54744474106e', 'acl_roles_users', 'ACLRoles', 'acl_roles', 'id', 'Users', 'users', 'id', 'acl_roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('a40d8961-224a-d3b7-464c-54744485073b', 'email_marketing_prospect_lists', 'EmailMarketing', 'email_marketing', 'id', 'ProspectLists', 'prospect_lists', 'id', 'email_marketing_prospect_lists', 'email_marketing_id', 'prospect_list_id', 'many-to-many', NULL, NULL, 0, 0),
('a48a8545-36bf-e19f-3d49-5474448fe552', 'leads_documents', 'Leads', 'leads', 'id', 'Documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'Leads', 0, 0),
('a4c577be-73ae-f8e2-7420-547444ad05ce', 'projects_notes', 'Project', 'project', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('a546079b-b54c-af5e-6e36-54744471eac6', 'documents_accounts', 'Documents', 'documents', 'id', 'Accounts', 'accounts', 'id', 'documents_accounts', 'document_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('a5bf7d5b-c4b6-e718-1ce4-54744402c812', 'projects_tasks', 'Project', 'project', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('a60189c5-8460-be0e-ca92-547444278ccf', 'documents_contacts', 'Documents', 'documents', 'id', 'Contacts', 'contacts', 'id', 'documents_contacts', 'document_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('a67af3b7-a3f4-65af-b9a2-5474448eac09', 'projects_meetings', 'Project', 'project', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('a6f7fdd0-4b02-513a-b524-547444762493', 'projects_calls', 'Project', 'project', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('a6fb89c6-90d0-39f1-b6c5-547444552579', 'documents_opportunities', 'Documents', 'documents', 'id', 'Opportunities', 'opportunities', 'id', 'documents_opportunities', 'document_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('a7b3769c-0368-633a-b42a-547444cc8e5a', 'projects_emails', 'Project', 'project', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('a7f59e71-7305-c7a6-0980-547444cbd618', 'documents_cases', 'Documents', 'documents', 'id', 'Cases', 'cases', 'id', 'documents_cases', 'document_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('a86ef825-46fa-229d-dd39-547444c75d8b', 'projects_project_tasks', 'Project', 'project', 'id', 'ProjectTask', 'project_task', 'project_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a92a810f-19d8-482d-c9b8-547444cc5c12', 'projects_assigned_user', 'Users', 'users', 'id', 'Project', 'project', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a92e1e19-f713-3c18-ae7e-5474445f293c', 'documents_bugs', 'Documents', 'documents', 'id', 'Bugs', 'bugs', 'id', 'documents_bugs', 'document_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('a9e60dd9-9e03-9ae3-75a4-54744441edb7', 'projects_modified_user', 'Users', 'users', 'id', 'Project', 'project', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aa281adb-0430-f9d0-06e7-547444cfede9', 'aut_d_car_sold_data_leads', 'Leads', 'leads', 'id', 'aut_d_car_sold_data', 'aut_d_car_sold_data', 'id', 'aut_d_car_sold_data_leads_c', 'aut_d_car_sold_data_leadsleads_ida', 'aut_d_car_sold_data_leadsaut_d_car_sold_data_idb', 'many-to-many', NULL, NULL, 0, 0),
('aa630eb8-73f0-997b-e7d8-547444965cb9', 'projects_created_by', 'Users', 'users', 'id', 'Project', 'project', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ab221c82-ac18-e1c9-d196-547444868d80', 'car_f_car_file_car_f_car_file', 'car_f_car_file', 'car_f_car_file', 'id', 'car_f_car_file', 'car_f_car_file', 'id', 'car_f_car_file_car_f_car_file_c', 'car_f_car_file_car_f_car_filecar_f_car_file_ida', 'car_f_car_file_car_f_car_filecar_f_car_file_idb', 'many-to-many', NULL, NULL, 0, 0),
('ae0c9596-7be7-fa69-7a43-547444be7139', 'project_tasks_notes', 'ProjectTask', 'project_task', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('af069cd3-8006-c364-18f2-54744431f871', 'project_tasks_tasks', 'ProjectTask', 'project_task', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('b03f17bd-2dc8-dff0-f871-547444a58a33', 'project_tasks_meetings', 'ProjectTask', 'project_task', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('b177aa2f-b17c-13e5-9d4b-547444aaa3d8', 'project_tasks_calls', 'ProjectTask', 'project_task', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('b2b02ccd-48d9-c435-6a93-547444b50d91', 'project_tasks_emails', 'ProjectTask', 'project_task', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('b3640b74-e70c-ea60-fc93-54744480a276', 'opportunities_modified_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b36bac62-675f-5b82-4d34-54744457ca34', 'project_tasks_assigned_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b4272083-0239-dab6-2f96-547444ecf417', 'project_tasks_modified_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b4e2a06a-5f33-bd9b-bfec-54744449a1f0', 'project_tasks_created_by', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b947bcaf-07b7-f539-8c73-547444eee47e', 'campaigns_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ba41cb27-2ed4-b621-ec1c-54744485262c', 'campaigns_created_by', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('babec89a-1e9b-47ce-f59c-5474440fe339', 'campaigns_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bbb8c9a1-3c7c-705d-c0e7-547444a9291d', 'campaign_accounts', 'Campaigns', 'campaigns', 'id', 'Accounts', 'accounts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bc744e99-dfc8-d7af-cfea-54744453850e', 'campaign_contacts', 'Campaigns', 'campaigns', 'id', 'Contacts', 'contacts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bcf14b07-7dc1-2304-e608-547444e318a1', 'campaign_leads', 'Campaigns', 'campaigns', 'id', 'Leads', 'leads', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bdeb5d65-a2f4-8282-6b2a-54744421a828', 'campaign_prospects', 'Campaigns', 'campaigns', 'id', 'Prospects', 'prospects', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('be685462-49a8-8c0e-3880-547444e84ed6', 'campaign_opportunities', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bf1c041a-6061-d59f-2533-54744429ed00', 'opportunities_created_by', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bf23da86-25be-62da-f227-5474444d4cc3', 'campaign_email_marketing', 'Campaigns', 'campaigns', 'id', 'EmailMarketing', 'email_marketing', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bfa0dc21-c79f-ad67-1d98-54744427cada', 'campaign_emailman', 'Campaigns', 'campaigns', 'id', 'EmailMan', 'emailman', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c01dd501-d518-6c42-e5a1-547444d4dea8', 'campaign_campaignlog', 'Campaigns', 'campaigns', 'id', 'CampaignLog', 'campaign_log', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c09ad8bd-2dca-0116-ee44-547444de97d3', 'campaign_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c117d4e5-1d79-8195-49b6-547444849b3c', 'campaign_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c482e2e2-8442-2351-17e3-547444adba81', 'prospectlists_assigned_user', 'Users', 'users', 'id', 'prospectlists', 'prospect_lists', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c9a37e26-c98c-bce7-b4e7-547444aab104', 'prospects_modified_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ca9d7a32-fed0-0225-fe26-54744484db0a', 'prospects_created_by', 'Users', 'users', 'id', 'Prospects', 'prospects', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cb1a8712-de52-d435-ad8a-5474447e660b', 'prospects_assigned_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cb978efb-994c-7216-2912-547444826142', 'prospects_email_addresses', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('cc5301ab-9e01-41c2-b217-547444b9ec0f', 'prospects_email_addresses_primary', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('cd0e8d10-36fe-e868-cb22-5474441fac37', 'prospect_tasks', 'Prospects', 'prospects', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('ce0886aa-9a15-a931-d205-5474441f2ae0', 'prospect_notes', 'Prospects', 'prospects', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('ce85819a-db3f-e5a5-d4c0-5474441b880f', 'prospect_meetings', 'Prospects', 'prospects', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('cebc0032-0898-d0cd-d9c5-54744478043a', 'opportunities_assigned_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cf029fc6-c757-0d36-fb3f-547444f6b3af', 'prospect_calls', 'Prospects', 'prospects', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('cfbe1186-07e1-129a-fecd-547444bdc6f5', 'prospect_emails', 'Prospects', 'prospects', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('d0b8183c-71a6-92c1-069c-547444bc0662', 'prospect_campaign_log', 'Prospects', 'prospects', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Prospects', 0, 0),
('d2ea97ee-029e-f6db-7630-54744471bab9', 'email_template_email_marketings', 'EmailTemplates', 'email_templates', 'id', 'EmailMarketing', 'email_marketing', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d51d2367-9ac2-b997-2b14-547444578b98', 'campaign_campaigntrakers', 'Campaigns', 'campaigns', 'id', 'CampaignTrackers', 'campaign_trkrs', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('da7405ae-82d9-92f4-f21a-54744485df24', 'opportunity_calls', 'Opportunities', 'opportunities', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('dd6a4152-8f22-ce38-b184-54744478cf65', 'schedulers_created_by_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('de25c022-3a0c-a39c-18d7-54744423a61a', 'schedulers_modified_user_id_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dee14762-4c0d-d213-20ea-54744461f919', 'schedulers_jobs_rel', 'Schedulers', 'schedulers', 'id', 'SchedulersJobs', 'job_queue', 'scheduler_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dfdb4e0f-2382-3421-f3db-54744414c7ee', 'schedulersjobs_assigned_user', 'Users', 'users', 'id', 'SchedulersJobs', 'schedulersjobs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e2450537-83c8-2b33-b16b-547444666c47', 'opportunity_meetings', 'Opportunities', 'opportunities', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('e578eccb-9da4-7ae2-94a8-5474440167b4', 'contacts_modified_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e6346def-9da0-e2ee-66f1-5474447625d2', 'contacts_created_by', 'Users', 'users', 'id', 'Contacts', 'contacts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e6efe71a-0669-d559-38f5-547444f44f08', 'contacts_assigned_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e72e6e00-f60e-bc0c-2549-547444d42175', 'contacts_email_addresses', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('e7e9e5ef-bfb3-41b4-6da2-5474443227cf', 'contacts_email_addresses_primary', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('e866e365-ded0-4a18-933b-5474443c9217', 'contact_direct_reports', 'Contacts', 'contacts', 'id', 'Contacts', 'contacts', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e9227c88-cd11-c67f-0bcb-5474441efe46', 'contact_leads', 'Contacts', 'contacts', 'id', 'Leads', 'leads', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e9ddf3f8-1b61-208d-c50c-54744433a94f', 'contact_notes', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ea997d07-aea3-6619-9c93-5474448d690b', 'contact_tasks', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eb54fedc-763f-db96-1867-547444404b02', 'contact_tasks_parent', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('ec1073ee-3474-cd83-840f-54744433d62f', 'contact_notes_parent', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('eccbfaa3-58af-1f75-4159-54744412c95e', 'contact_campaign_log', 'Contacts', 'contacts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Contacts', 0, 0),
('f1ae1f1e-3bc6-85a2-cb41-5474443b3ebd', 'accounts_modified_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f1e50e05-4cf9-a6a1-d697-547444d9c1e4', 'opportunity_tasks', 'Opportunities', 'opportunities', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('f26997e4-96fe-ca0f-08f2-547444c0b2be', 'accounts_created_by', 'Users', 'users', 'id', 'Accounts', 'accounts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f2e69068-3153-95fd-553a-547444c17dda', 'accounts_assigned_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f41f17f1-2522-67ee-4ca3-5474446d365f', 'accounts_email_addresses', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0);

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
('aee029f4-69c6-7c88-67bc-545da33ebae2', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:9a885c27-c3be-d8c5-b268-545da3c883f2:Rest last name]', '2014-11-08 04:58:46', '2014-11-08 04:58:46', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', NULL, 0, NULL, 'Contacts', '9a885c27-c3be-d8c5-b268-545da3c883f2', NULL, NULL),
('c37c0c9a-6c94-21bd-debe-5425323f58e9', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:79430caa-72ba-5f36-7fcc-542532c5c851:0926_contact_3 0926_contact_3]', '2014-09-26 09:31:48', '2014-09-26 09:31:48', '1', '1', NULL, 0, '1', 'Contacts', '79430caa-72ba-5f36-7fcc-542532c5c851', NULL, NULL),
('cd76703c-4ed1-693a-d071-545db067fe66', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:6f5c076f-3361-8032-64aa-545db052f09f:case2] {SugarFeed.FOR} [Accounts:dfcd56ec-4167-42e8-18ab-545db0b03492:]: ', '2014-11-08 05:56:13', '2014-11-08 05:56:13', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', NULL, 0, NULL, 'Cases', '6f5c076f-3361-8032-64aa-545db052f09f', NULL, NULL),
('dabfffdc-a7a5-4537-dbc5-545d8c6793c1', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:bae6f334-b067-5dcb-319e-545d8ccf30ed:Rest last name]', '2014-11-08 03:24:24', '2014-11-08 03:24:24', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', NULL, 0, NULL, 'Contacts', 'bae6f334-b067-5dcb-319e-545d8ccf30ed', NULL, NULL),
('ddc5be48-05c7-c910-d697-545daff92952', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:88f66c98-ec83-a96d-ea53-545daf91bce7:case2] {SugarFeed.FOR} [Accounts:ecb4ffe8-45de-770a-c39a-545daf5769ca:]: ', '2014-11-08 05:51:26', '2014-11-08 05:51:26', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', NULL, 0, NULL, 'Cases', '88f66c98-ec83-a96d-ea53-545daf91bce7', NULL, NULL),
('f2220006-732d-de3f-1e09-542eb464a14c', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:eaceec67-400f-6b66-b7b7-542eb46f98e7:20141014_1]', '2014-10-03 14:35:44', '2014-10-03 14:35:44', '1', '1', NULL, 0, '1', 'Leads', 'eaceec67-400f-6b66-b7b7-542eb46f98e7', NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=247 ;

--
-- Dumping data for table `tracker`
--

INSERT INTO `tracker` (`id`, `monitor_id`, `user_id`, `module_name`, `item_id`, `item_summary`, `date_modified`, `action`, `session_id`, `visible`, `deleted`) VALUES
(4, '14a00e16-2ad9-6da8-07b9-5422cddd64d9', '1', 'Contacts', '612785b8-8f32-0869-d45b-5422cd3e121e', 'first_name_blank', '2014-09-24 13:55:04', 'detailview', 'lp5d9imgmgsccbnb9afarsaqj6', 1, 0),
(6, '26361445-6d79-ff11-ef8c-5422cdf4c302', '1', 'Contacts', '5b2176b3-e193-6aa6-7ba5-5422cd87668b', 'first_name last_name', '2014-09-24 13:55:50', 'detailview', 'lp5d9imgmgsccbnb9afarsaqj6', 1, 0),
(13, 'c2df3175-a3d4-965c-a648-5424066e37b3', '1', 'Accounts', 'f2f28af8-c0d0-d8a7-fa2d-5424046957bb', 'contact 1', '2014-09-25 12:09:59', 'detailview', 'lpc2sb3mqplk3p4l1tjno7ej87', 1, 0),
(30, '6f31f6f0-5a70-d776-76bd-5425390c3a16', '1', 'Accounts', 'dac39c7e-d11f-d36b-1676-542406bfdb68', 'account1', '2014-09-26 10:03:24', 'editview', 'lbu3cge652186i7rvgbepvrp06', 1, 0),
(84, '1bf3faed-cc86-bc5c-f06f-54256db67d0e', '1', 'Contacts', 'c8d5011f-c037-4ccb-8cde-542532a798c5', '0926_contact_1 0926_contact_1', '2014-09-26 13:45:09', 'detailview', 'lbu3cge652186i7rvgbepvrp06', 1, 0),
(87, 'be996e6c-efa9-e060-e676-542579cb3363', '1', 'Users', '89dc998d-57d6-adca-d06b-54257971e11c', '0926_user_2', '2014-09-26 14:34:45', 'detailview', 'lbu3cge652186i7rvgbepvrp06', 1, 0),
(123, 'e86323c2-ce72-0c98-71df-54296dc8c2ca', '1', 'Contacts', '3cfc5d8c-d79a-082e-ae87-54253299b625', '0926_contact_2 0926_contact_2', '2014-09-29 14:33:41', 'detailview', '98nas0egpnnnod1c2diott25k6', 1, 0),
(124, 'bc71600f-ab71-f7bd-126c-542e9856909e', '1', 'ACLRoles', 'bbb5e57a-e91a-413f-2731-542e989c8a25', 'Insurance Agents', '2014-10-03 12:36:00', 'save', 'p8ibrjj8ihciaiq0jkcpfj2n42', 1, 0),
(126, '31c56772-99f1-f6f3-180e-542ea237846d', '1', 'ACLRoles', '308cee77-3b6c-86da-5efe-542ea2b6236e', 'Sales Team', '2014-10-03 13:21:28', 'save', 'p8ibrjj8ihciaiq0jkcpfj2n42', 1, 0),
(146, 'ea1c1b7a-2ac5-b671-2a48-5438ef5a5f62', '1', 'Notes', '2777c37b-7f08-f530-16d4-5438ef707725', 'Leads autonote', '2014-10-11 08:52:25', 'detailview', 'rmud3t1qtha55vi6fujrl8fqh2', 1, 0),
(173, '8675b9f3-2e25-cdef-1e0e-5440e28db753', '1', 'ACLRoles', '84feab05-d2be-c60b-7cbb-5440e2eb1221', 'Technical support', '2014-10-17 09:33:33', 'save', '2oqgodipndomjd636kifvktnl1', 1, 0),
(175, 'bf1be262-610b-12d2-ad44-5440f67a23dd', '1', 'Accounts', 'd51756c7-8d54-930d-aa2d-54253bfacf65', '0926_acc_1', '2014-10-17 11:00:06', 'detailview', '2oqgodipndomjd636kifvktnl1', 1, 0),
(199, 'e555a3a2-c1dd-9941-c4c6-5441cbb99556', '1', 'Users', '4abda5b9-b267-1f2d-460c-5425691c46d2', '0926_user_1', '2014-10-18 02:08:10', 'detailview', 'afqkcd3dftrcja9gh0ef9opj15', 1, 0),
(200, '82c00dd1-4ddc-866e-0020-544ae37e59b5', '1', 'Leads', 'eaceec67-400f-6b66-b7b7-542eb46f98e7', '20141014_1', '2014-10-24 23:39:02', 'detailview', 'o9rmppgffd1dnqrtvjbflrvuk0', 1, 0),
(206, '4a3752e9-aacb-aef8-4a81-544b620206d3', '1', 'Contacts', '79430caa-72ba-5f36-7fcc-542532c5c851', '0926_contact_3 0926_contact_3', '2014-10-25 08:44:44', 'detailview', '640qe5cqkpkh6v1plbgsm2mgp3', 1, 0),
(211, '3ff95cc0-e944-ba3b-72b5-544b74c7884d', '1', 'Calls', '38ea61e9-c6e8-3cda-6635-544b60d9dec0', 'A followup call', '2014-10-25 09:58:58', 'detailview', '640qe5cqkpkh6v1plbgsm2mgp3', 1, 0),
(238, '5c451a47-c59a-157a-6787-545d7ce1491c', '1', 'Users', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', 'restws_do_not_delete', '2014-11-08 02:13:26', 'detailview', '8v9gvhot62p2k6adsrgcltes30', 1, 0),
(239, 'e3a2ba2d-0615-870b-027f-545d8dfa954b', '1', 'Contacts', 'bae6f334-b067-5dcb-319e-545d8ccf30ed', 'Rest last name', '2014-11-08 03:24:51', 'detailview', '8v9gvhot62p2k6adsrgcltes30', 1, 0),
(240, 'af9b2199-392c-d1cc-8338-545dac12ebcb', '1', 'Accounts', 'ee689741-a453-2d4f-c42c-54254fb88d21', '0926_acc_2', '2014-11-08 05:40:59', 'detailview', '8v9gvhot62p2k6adsrgcltes30', 1, 0),
(241, '64b9273f-4674-2921-d9c5-545daf6f2c8a', '1', 'Accounts', 'ecb4ffe8-45de-770a-c39a-545daf5769ca', 'Rest account', '2014-11-08 05:52:32', 'detailview', '8v9gvhot62p2k6adsrgcltes30', 1, 0),
(242, 'acca8f82-5410-e4eb-cfda-545daf55de33', '1', 'Cases', '88f66c98-ec83-a96d-ea53-545daf91bce7', 'case2', '2014-11-08 05:52:36', 'detailview', '8v9gvhot62p2k6adsrgcltes30', 1, 0),
(243, '1d76df0d-0c23-b13d-a783-545db7b78c01', '1', 'Contacts', '9a885c27-c3be-d8c5-b268-545da3c883f2', 'Rest last name', '2014-11-08 06:26:41', 'detailview', '8v9gvhot62p2k6adsrgcltes30', 1, 0),
(244, 'c9c53ce2-cc38-24e9-9fae-545db8268f80', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', 'Contacts', '9a885c27-c3be-d8c5-b268-545da3c883f2', 'Rest last name', '2014-11-08 06:30:46', 'detailview', 'nbqok89un0vi9dtdi0835o91g1', 1, 0),
(246, 'd80e0e18-405a-23de-2bf9-547443ee2d41', '1', 'Contacts', '947fd8d8-2629-3848-47ef-542009e4012c', 'name1 name2', '2014-11-25 08:53:56', 'editview', 'e03nq9itc69j7m86hmcil5vu66', 1, 0);

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
('2eac9eac-074b-aece-7350-541cfefea24c', 'upload/upgrades/module/groups_package2014_09_20_060949.zip', '303542a85a982c897700fd59bdb5e682', 'module', 'installed', '1411186188', 'groups_package', '', 'groups_package', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6NToiZ3JwX3AiO3M6NjoiYXV0aG9yIjtzOjEyOiJNaWhpciBQYXJpa2giO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjA6IiI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czoxNDoiZ3JvdXBzX3BhY2thZ2UiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjE5OiIyMDE0LTA5LTIwIDA0OjA5OjQ2IjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjc6InZlcnNpb24iO2k6MTQxMTE4NjE4ODtzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjY6InByb21wdCI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjc6e3M6MjoiaWQiO3M6MTQ6Imdyb3Vwc19wYWNrYWdlIjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjEyOiJncnBfcF9ncm91cHMiO3M6NToiY2xhc3MiO3M6MTI6ImdycF9wX2dyb3VwcyI7czo0OiJwYXRoIjtzOjM3OiJtb2R1bGVzL2dycF9wX2dyb3Vwcy9ncnBfcF9ncm91cHMucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTowOnt9czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YToxOntpOjA7YToyOntzOjQ6ImZyb20iO3M6NDQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvZ3JwX3BfZ3JvdXBzIjtzOjI6InRvIjtzOjIwOiJtb2R1bGVzL2dycF9wX2dyb3VwcyI7fX1zOjg6Imxhbmd1YWdlIjthOjE6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2014-09-20 04:09:46', 1),
('532f1b12-74ad-d82f-5ce2-542e9859c27b', 'upload/upgrades/module/insurance_policy_package2014_10_03_143517.zip', '0961cfb10908d7bff58ec95fdbdbbc4c', 'module', 'installed', '1412339717', 'insurance_policy_package', 'A package to store insurance policies data module.', 'insurance_policy_package', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6NToiaW5zX3AiO3M6NjoiYXV0aG9yIjtzOjEyOiJNaWhpciBQYXJpa2giO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjUwOiJBIHBhY2thZ2UgdG8gc3RvcmUgaW5zdXJhbmNlIHBvbGljaWVzIGRhdGEgbW9kdWxlLiI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czoyNDoiaW5zdXJhbmNlX3BvbGljeV9wYWNrYWdlIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAxNC0xMC0wMyAxMjozNToxNyI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtpOjE0MTIzMzk3MTc7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo3OntzOjI6ImlkIjtzOjI0OiJpbnN1cmFuY2VfcG9saWN5X3BhY2thZ2UiO3M6NToiYmVhbnMiO2E6MTp7aTowO2E6NDp7czo2OiJtb2R1bGUiO3M6MjI6Imluc19wX2luc3VyYW5jZV9wb2xpY3kiO3M6NToiY2xhc3MiO3M6MjI6Imluc19wX2luc3VyYW5jZV9wb2xpY3kiO3M6NDoicGF0aCI7czo1NzoibW9kdWxlcy9pbnNfcF9pbnN1cmFuY2VfcG9saWN5L2luc19wX2luc3VyYW5jZV9wb2xpY3kucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTowOnt9czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YToxOntpOjA7YToyOntzOjQ6ImZyb20iO3M6NTQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvaW5zX3BfaW5zdXJhbmNlX3BvbGljeSI7czoyOiJ0byI7czozMDoibW9kdWxlcy9pbnNfcF9pbnN1cmFuY2VfcG9saWN5Ijt9fXM6ODoibGFuZ3VhZ2UiO2E6MTp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2014-10-03 12:35:17', 1),
('ab365245-09f8-29f0-ac80-542ea23c8bc1', 'upload/upgrades/module/auto_dealership2014_10_03_151944.zip', '5f99005abf3b7e47e099488f8c781268', 'module', 'installed', '1412342384', 'auto_dealership', 'A package to hold Cars sold data module.', 'auto_dealership', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6NToiYXV0X2QiO3M6NjoiYXV0aG9yIjtzOjEyOiJNaWhpciBQYXJpa2giO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjQwOiJBIHBhY2thZ2UgdG8gaG9sZCBDYXJzIHNvbGQgZGF0YSBtb2R1bGUuIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjE1OiJhdXRvX2RlYWxlcnNoaXAiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjE5OiIyMDE0LTEwLTAzIDEzOjE5OjQ0IjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjc6InZlcnNpb24iO2k6MTQxMjM0MjM4NDtzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjY6InByb21wdCI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjk6e3M6MjoiaWQiO3M6MTU6ImF1dG9fZGVhbGVyc2hpcCI7czo1OiJiZWFucyI7YToxOntpOjA7YTo0OntzOjY6Im1vZHVsZSI7czoxOToiYXV0X2RfY2FyX3NvbGRfZGF0YSI7czo1OiJjbGFzcyI7czoxOToiYXV0X2RfY2FyX3NvbGRfZGF0YSI7czo0OiJwYXRoIjtzOjUxOiJtb2R1bGVzL2F1dF9kX2Nhcl9zb2xkX2RhdGEvYXV0X2RfY2FyX3NvbGRfZGF0YS5waHAiO3M6MzoidGFiIjtiOjE7fX1zOjEwOiJsYXlvdXRkZWZzIjthOjE6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo4NDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYXlvdXRkZWZzL2F1dF9kX2Nhcl9zb2xkX2RhdGFfbGVhZHNfTGVhZHMucGhwIjtzOjk6InRvX21vZHVsZSI7czo1OiJMZWFkcyI7fX1zOjEzOiJyZWxhdGlvbnNoaXBzIjthOjE6e2k6MDthOjE6e3M6OToibWV0YV9kYXRhIjtzOjg5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3JlbGF0aW9uc2hpcHMvYXV0X2RfY2FyX3NvbGRfZGF0YV9sZWFkc01ldGFEYXRhLnBocCI7fX1zOjk6ImltYWdlX2RpciI7czoxNjoiPGJhc2VwYXRoPi9pY29ucyI7czo0OiJjb3B5IjthOjE6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo1MToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9hdXRfZF9jYXJfc29sZF9kYXRhIjtzOjI6InRvIjtzOjI3OiJtb2R1bGVzL2F1dF9kX2Nhcl9zb2xkX2RhdGEiO319czo4OiJsYW5ndWFnZSI7YTozOntpOjA7YTozOntzOjQ6ImZyb20iO3M6NzA6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvYXV0X2RfY2FyX3NvbGRfZGF0YS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE5OiJhdXRfZF9jYXJfc29sZF9kYXRhIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjU2OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL0xlYWRzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6NToiTGVhZHMiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjI7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO319czo3OiJ2YXJkZWZzIjthOjI6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo5NToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2F1dF9kX2Nhcl9zb2xkX2RhdGFfbGVhZHNfYXV0X2RfY2FyX3NvbGRfZGF0YS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE5OiJhdXRfZF9jYXJfc29sZF9kYXRhIjt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjgxOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3ZhcmRlZnMvYXV0X2RfY2FyX3NvbGRfZGF0YV9sZWFkc19MZWFkcy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjU6IkxlYWRzIjt9fXM6MTI6ImxheW91dGZpZWxkcyI7YToxOntpOjA7YToxOntzOjE3OiJhZGRpdGlvbmFsX2ZpZWxkcyI7YTowOnt9fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2014-10-03 13:19:44', 1),
('bd4200cd-b3a3-14eb-4929-542eaa9d27c6', 'upload/upgrades/module/car_files_package2014_10_03_155348.zip', '4b812e9ce7c01fe5d954a0a700c8d45e', 'module', 'installed', '1412344428', 'car_files_package', 'A package to hold files module for cars.', 'car_files_package', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6NToiY2FyX2YiO3M6NjoiYXV0aG9yIjtzOjEyOiJNaWhpciBQYXJpa2giO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjQwOiJBIHBhY2thZ2UgdG8gaG9sZCBmaWxlcyBtb2R1bGUgZm9yIGNhcnMuIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjE3OiJjYXJfZmlsZXNfcGFja2FnZSI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMTQtMTAtMDMgMTM6NTM6NDgiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7aToxNDEyMzQ0NDI4O3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6OTp7czoyOiJpZCI7czoxNzoiY2FyX2ZpbGVzX3BhY2thZ2UiO3M6NToiYmVhbnMiO2E6MTp7aTowO2E6NDp7czo2OiJtb2R1bGUiO3M6MTQ6ImNhcl9mX2Nhcl9maWxlIjtzOjU6ImNsYXNzIjtzOjE0OiJjYXJfZl9jYXJfZmlsZSI7czo0OiJwYXRoIjtzOjQxOiJtb2R1bGVzL2Nhcl9mX2Nhcl9maWxlL2Nhcl9mX2Nhcl9maWxlLnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjk3OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xheW91dGRlZnMvY2FyX2ZfY2FyX2ZpbGVfY2FyX2ZfY2FyX2ZpbGVfY2FyX2ZfY2FyX2ZpbGUucGhwIjtzOjk6InRvX21vZHVsZSI7czoxNDoiY2FyX2ZfY2FyX2ZpbGUiO319czoxMzoicmVsYXRpb25zaGlwcyI7YToxOntpOjA7YToxOntzOjk6Im1ldGFfZGF0YSI7czo5MzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9yZWxhdGlvbnNoaXBzL2Nhcl9mX2Nhcl9maWxlX2Nhcl9mX2Nhcl9maWxlTWV0YURhdGEucGhwIjt9fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjQ2OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2Nhcl9mX2Nhcl9maWxlIjtzOjI6InRvIjtzOjIyOiJtb2R1bGVzL2Nhcl9mX2Nhcl9maWxlIjt9fXM6ODoibGFuZ3VhZ2UiO2E6Mjp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjY1OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2Nhcl9mX2Nhcl9maWxlLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTQ6ImNhcl9mX2Nhcl9maWxlIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9fXM6NzoidmFyZGVmcyI7YToxOntpOjA7YToyOntzOjQ6ImZyb20iO3M6OTQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvdmFyZGVmcy9jYXJfZl9jYXJfZmlsZV9jYXJfZl9jYXJfZmlsZV9jYXJfZl9jYXJfZmlsZS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE0OiJjYXJfZl9jYXJfZmlsZSI7fX1zOjEyOiJsYXlvdXRmaWVsZHMiO2E6MTp7aTowO2E6MTp7czoxNzoiYWRkaXRpb25hbF9maWVsZHMiO2E6MDp7fX19fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2014-10-03 13:53:48', 1);

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
('32030e89-7b9e-5f8b-c3ad-545d7bb668dc', 'restws_do_not_delete', '$1$q63.rI0.$gEqBiS9Go2uv7qC63BPB7.', 0, '2014-11-08 02:13:24', NULL, 1, NULL, 'restws_do_not_delete', 1, 0, 1, NULL, '2014-11-08 02:12:03', '2014-11-08 02:13:24', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0),
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
('14d1345b-b14a-3d94-3e0d-545d7c499ead', 'ETag', 0, '2014-11-08 02:13:24', '2014-11-08 02:13:24', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTt9'),
('1b5ec1cd-bc69-2131-dacc-5441046b21c5', 'Meetings2_MEETING', 0, '2014-10-17 11:59:38', '2014-10-17 11:59:38', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1c6c2cf1-9a0e-571f-5556-545d7b3f95df', 'global', 0, '2014-11-08 02:12:03', '2014-11-08 02:13:24', '32030e89-7b9e-5f8b-c3ad-545d7bb668dc', 'YTozNTp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6LTE7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTotMTtzOjg6InRpbWV6b25lIjtzOjEzOiJFdXJvcGUvQmVybGluIjtzOjI6InV0IjtzOjE6IjAiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToiZC9tL1kiO3M6NToidGltZWYiO3M6NDoiaDppYSI7czoxNToibWFpbF9zbXRwc2VydmVyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwdXNlciI7czowOiIiO3M6MTM6Im1haWxfc210cHBhc3MiO3M6MDoiIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjFjMTE1NWVlLWZjNGItYjdjMC01NTg5LTU0NWQ3Yjg0YjJlYiI7czoxNToibG9naW5leHBpcmF0aW9uIjtzOjE6IjAiO3M6NzoibG9ja291dCI7czowOiIiO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO30='),
('3aa4f0fb-cb9c-05b3-04f2-54257940c79c', 'ETag', 0, '2014-09-26 14:35:11', '2014-09-26 14:35:11', '89dc998d-57d6-adca-d06b-54257971e11c', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTt9'),
('4024bfdb-c347-1d47-b5fe-542008e19533', 'Opportunities2_OPPORTUNITY', 0, '2014-09-22 11:32:26', '2014-09-22 11:32:26', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('45ff0ced-0c09-5d47-373c-5420040afe71', 'Accounts2_ACCOUNT', 0, '2014-09-22 11:15:44', '2014-09-22 11:15:44', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4f9fbb86-b5a6-bab3-19c0-542569d18691', 'global', 0, '2014-09-26 13:28:27', '2014-09-26 13:28:27', '4abda5b9-b267-1f2d-460c-5425691c46d2', 'YTozMjp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6LTE7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTotMTtzOjg6InRpbWV6b25lIjtzOjEzOiJFdXJvcGUvQmVybGluIjtzOjI6InV0IjtzOjE6IjAiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToiZC9tL1kiO3M6NToidGltZWYiO3M6NDoiaDppYSI7czoxNToibWFpbF9zbXRwc2VydmVyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwdXNlciI7czowOiIiO3M6MTM6Im1haWxfc210cHBhc3MiO3M6MDoiIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjRmOWZiMTM0LTY1MmUtMzE3MC1iMmVkLTU0MjU2OTAxZGQxYyI7fQ=='),
('53b87699-4f30-f7a9-9064-541ccad2305d', 'Home', 0, '2014-09-20 00:30:34', '2014-09-20 00:30:34', '1', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjg6e3M6MzY6IjgzYWZjZDk5LTNkMmMtYTVkMi03NzRlLTU0MWNjYWRjMjg5ZCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxMzoiaUZyYW1lRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NDoiSG9tZSI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTM6Im1vZHVsZXMvSG9tZS9EYXNobGV0cy9pRnJhbWVEYXNobGV0L2lGcmFtZURhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6Mzp7czoxMDoidGl0bGVMYWJlbCI7czozMDoiTEJMX0RBU0hMRVRfRElTQ09WRVJfU1VHQVJfUFJPIjtzOjM6InVybCI7czo0MjoiaHR0cHM6Ly93d3cuc3VnYXJjcm0uY29tL2NybS9wcm9kdWN0L2dvcHJvIjtzOjY6ImhlaWdodCI7aTozMTU7fX1zOjM2OiI4M2I1NjczNS1jYjQwLTEwZDktNWM3OS01NDFjY2E3NjhhYjAiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTY6IlN1Z2FyRmVlZERhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjk6IlN1Z2FyRmVlZCI7czoxMToiZm9yY2VDb2x1bW4iO2k6MTtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjQ6Im1vZHVsZXMvU3VnYXJGZWVkL0Rhc2hsZXRzL1N1Z2FyRmVlZERhc2hsZXQvU3VnYXJGZWVkRGFzaGxldC5waHAiO31zOjM2OiI4M2I5NDdmOC0wNzdhLTdmODctZmZkZC01NDFjY2FkZjM3MmIiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTM6ImlGcmFtZURhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjQ6IkhvbWUiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjE7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjUzOiJtb2R1bGVzL0hvbWUvRGFzaGxldHMvaUZyYW1lRGFzaGxldC9pRnJhbWVEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjM6e3M6MTA6InRpdGxlTGFiZWwiO3M6MjI6IkxCTF9EQVNITEVUX1NVR0FSX05FV1MiO3M6MzoidXJsIjtzOjQxOiJodHRwczovL3d3dy5zdWdhcmNybS5jb20vY3JtL3Byb2R1Y3QvbmV3cyI7czo2OiJoZWlnaHQiO2k6MzE1O319czozNjoiYzFlY2YwODAtNmY0MS03MjRkLTA3NDktNTQxY2NhNWY2ZjkyIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUNhbGxzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiQ2FsbHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0NhbGxzL0Rhc2hsZXRzL015Q2FsbHNEYXNobGV0L015Q2FsbHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiY2M4OTUwOTgtNmYwYS02ODRlLTIzODYtNTQxY2NhZTY3YmRmIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeU1lZXRpbmdzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiTWVldGluZ3MiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL01lZXRpbmdzL0Rhc2hsZXRzL015TWVldGluZ3NEYXNobGV0L015TWVldGluZ3NEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiZDVmMTdiZjEtYTBlZC1hMDNlLWQ1NzQtNTQxY2NhNTJlODExIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjIyOiJNeU9wcG9ydHVuaXRpZXNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czoxMzoiT3Bwb3J0dW5pdGllcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODA6Im1vZHVsZXMvT3Bwb3J0dW5pdGllcy9EYXNobGV0cy9NeU9wcG9ydHVuaXRpZXNEYXNobGV0L015T3Bwb3J0dW5pdGllc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJlMTY5ZGYwOC1iYzUyLTQyNmQtMDE1Ny01NDFjY2EyNGZlZjEiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15QWNjb3VudHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo4OiJBY2NvdW50cyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvQWNjb3VudHMvRGFzaGxldHMvTXlBY2NvdW50c0Rhc2hsZXQvTXlBY2NvdW50c0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJmMTAxOTE1Yy0xYjI3LWRmYjUtODBmZi01NDFjY2EyMTk5OWMiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15TGVhZHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJMZWFkcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvTGVhZHMvRGFzaGxldHMvTXlMZWFkc0Rhc2hsZXQvTXlMZWFkc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX19czo1OiJwYWdlcyI7YToxOntpOjA7YTozOntzOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6Njp7aTowO3M6MzY6IjgzYWZjZDk5LTNkMmMtYTVkMi03NzRlLTU0MWNjYWRjMjg5ZCI7aToxO3M6MzY6ImMxZWNmMDgwLTZmNDEtNzI0ZC0wNzQ5LTU0MWNjYTVmNmY5MiI7aToyO3M6MzY6ImNjODk1MDk4LTZmMGEtNjg0ZS0yMzg2LTU0MWNjYWU2N2JkZiI7aTozO3M6MzY6ImQ1ZjE3YmYxLWEwZWQtYTAzZS1kNTc0LTU0MWNjYTUyZTgxMSI7aTo0O3M6MzY6ImUxNjlkZjA4LWJjNTItNDI2ZC0wMTU3LTU0MWNjYTI0ZmVmMSI7aTo1O3M6MzY6ImYxMDE5MTVjLTFiMjctZGZiNS04MGZmLTU0MWNjYTIxOTk5YyI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YToyOntpOjA7czozNjoiODNiNTY3MzUtY2I0MC0xMGQ5LTVjNzktNTQxY2NhNzY4YWIwIjtpOjE7czozNjoiODNiOTQ3ZjgtMDc3YS03Zjg3LWZmZGQtNTQxY2NhZGYzNzJiIjt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjIiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19'),
('5422ba24-1a2c-d9ba-6ee6-541cee88163f', 'Cases2_CASE', 0, '2014-09-20 03:01:59', '2014-09-20 03:01:59', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('54e92ff2-600e-74cb-1e9e-542eb4ebb088', 'Leads2_LEAD', 0, '2014-10-03 14:35:09', '2014-10-03 14:35:09', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5fb1cd36-30e9-a444-e80f-541cca99b131', 'Home2_CALL', 0, '2014-09-20 00:30:34', '2014-09-20 00:30:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('603232b5-8c26-1f78-21e0-541cca96d50e', 'ETag', 0, '2014-09-20 00:30:30', '2014-10-03 13:53:48', '1', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6NTt9'),
('65e82e47-763f-b420-b3a0-541cca2780c4', 'Home2_MEETING', 0, '2014-09-20 00:30:34', '2014-09-20 00:30:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('69af5af4-1acd-f579-b80b-54256900df75', 'Users2_USER', 0, '2014-09-26 13:27:30', '2014-09-26 13:27:30', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6ae64434-0359-3d1c-9185-5438ec1eafb6', 'Notes2_NOTE', 0, '2014-10-11 08:39:15', '2014-10-11 08:39:15', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6b871f18-3325-b2c4-600e-541cca8024f5', 'Home2_OPPORTUNITY', 0, '2014-09-20 00:30:34', '2014-09-20 00:30:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('70a58070-01c2-7bef-6af6-541ccafda7a7', 'Home2_ACCOUNT', 0, '2014-09-20 00:30:34', '2014-09-20 00:30:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('76711eef-68f7-2f74-536d-541cca02bd98', 'Home2_LEAD', 0, '2014-09-20 00:30:34', '2014-09-20 00:30:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7bae0240-2b42-06d2-c408-541ccac6728f', 'Home2_SUGARFEED', 0, '2014-09-20 00:30:34', '2014-09-20 00:30:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7f84580b-3d72-618d-ab39-542e9830744f', 'ins_p_insurance_policy2_INS_P_INSURANCE_POLICY', 0, '2014-10-03 12:37:18', '2014-10-03 12:37:18', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8dc4ab1f-6c62-0e16-a9d1-54257926d46c', 'global', 0, '2014-09-26 14:34:45', '2014-09-26 14:35:11', '89dc998d-57d6-adca-d06b-54257971e11c', 'YTozNzp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtpOi0xO3M6ODoidGltZXpvbmUiO3M6MTM6IkV1cm9wZS9CZXJsaW4iO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJkL20vWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjE1OiJtYWlsX3NtdHBzZXJ2ZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHB1c2VyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwcGFzcyI7czowOiIiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjU6InMgZiBsIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjI6Im9uIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTU6ImVtYWlsX2xpbmtfdHlwZSI7czo1OiJzdWdhciI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjIwOiJjYWxlbmRhcl9wdWJsaXNoX2tleSI7czozNjoiOGQ4NjJiZmQtY2RlYS0zMzBiLTUxMTktNTQyNTc5MDA5YjNmIjtzOjE1OiJsb2dpbmV4cGlyYXRpb24iO3M6MToiMCI7czo3OiJsb2Nrb3V0IjtzOjA6IiI7czoxMToibG9naW5mYWlsZWQiO3M6MToiMCI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWdhcjUiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6MzoiQWxsIjt9'),
('a3882429-99ad-d1f2-b60e-542e98f61734', 'ACLRoles2_ACLROLE', 0, '2014-10-03 12:35:42', '2014-10-03 12:35:42', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b29625c2-45dc-69b1-ed16-54410216cfca', 'Campaigns2_CAMPAIGN', 0, '2014-10-17 11:51:52', '2014-10-17 11:51:52', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b9d12765-d4eb-aa9c-a55e-541d283a8eaa', 'grp_p_groups2_GRP_P_GROUPS', 0, '2014-09-20 07:08:52', '2014-09-20 07:08:52', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c0326274-10d3-38bd-58ba-542579e7f544', 'Home', 0, '2014-09-26 14:35:12', '2014-09-26 14:35:12', '89dc998d-57d6-adca-d06b-54257971e11c', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjg6e3M6MzY6IjkwNTdiZjNhLTdmMDItNTQ1OC0wNGNlLTU0MjU3OTljYmZkYiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxMzoiaUZyYW1lRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NDoiSG9tZSI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTM6Im1vZHVsZXMvSG9tZS9EYXNobGV0cy9pRnJhbWVEYXNobGV0L2lGcmFtZURhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6Mzp7czoxMDoidGl0bGVMYWJlbCI7czozMDoiTEJMX0RBU0hMRVRfRElTQ09WRVJfU1VHQVJfUFJPIjtzOjM6InVybCI7czo0MjoiaHR0cHM6Ly93d3cuc3VnYXJjcm0uY29tL2NybS9wcm9kdWN0L2dvcHJvIjtzOjY6ImhlaWdodCI7aTozMTU7fX1zOjM2OiI5MDU3YjJjNS1iMDgyLTM3NjMtNmNlYy01NDI1NzliYmJhNzIiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTY6IlN1Z2FyRmVlZERhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjk6IlN1Z2FyRmVlZCI7czoxMToiZm9yY2VDb2x1bW4iO2k6MTtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjQ6Im1vZHVsZXMvU3VnYXJGZWVkL0Rhc2hsZXRzL1N1Z2FyRmVlZERhc2hsZXQvU3VnYXJGZWVkRGFzaGxldC5waHAiO31zOjM2OiI5MDU3YmI4OS05NzcwLTFmODEtNmM5YS01NDI1Nzk1YmUyZTMiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTM6ImlGcmFtZURhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjQ6IkhvbWUiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjE7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjUzOiJtb2R1bGVzL0hvbWUvRGFzaGxldHMvaUZyYW1lRGFzaGxldC9pRnJhbWVEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjM6e3M6MTA6InRpdGxlTGFiZWwiO3M6MjI6IkxCTF9EQVNITEVUX1NVR0FSX05FV1MiO3M6MzoidXJsIjtzOjQxOiJodHRwczovL3d3dy5zdWdhcmNybS5jb20vY3JtL3Byb2R1Y3QvbmV3cyI7czo2OiJoZWlnaHQiO2k6MzE1O319czozNjoiOTM4NDQzNDctZmYxMi0wZjc2LWIyYmItNTQyNTc5OTY5NzkxIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUNhbGxzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiQ2FsbHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0NhbGxzL0Rhc2hsZXRzL015Q2FsbHNEYXNobGV0L015Q2FsbHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiOTY3MjU5ZjUtYWQxNS03OTRhLTFkYzctNTQyNTc5YWY2ZTkxIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeU1lZXRpbmdzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiTWVldGluZ3MiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL01lZXRpbmdzL0Rhc2hsZXRzL015TWVldGluZ3NEYXNobGV0L015TWVldGluZ3NEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiOTk2MDVlZmItY2ZiZS00MzBhLWQ3ZjgtNTQyNTc5MTI4Yzg1IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjIyOiJNeU9wcG9ydHVuaXRpZXNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czoxMzoiT3Bwb3J0dW5pdGllcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODA6Im1vZHVsZXMvT3Bwb3J0dW5pdGllcy9EYXNobGV0cy9NeU9wcG9ydHVuaXRpZXNEYXNobGV0L015T3Bwb3J0dW5pdGllc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiI5Y2NiNjUxMC1lYmZjLTAzODgtZDViMy01NDI1Nzk1YWFhOTkiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15QWNjb3VudHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo4OiJBY2NvdW50cyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvQWNjb3VudHMvRGFzaGxldHMvTXlBY2NvdW50c0Rhc2hsZXQvTXlBY2NvdW50c0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJhMGIzNzgxZS03MjZmLTFmMzAtZWNhMS01NDI1NzkyMjI2MmUiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15TGVhZHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJMZWFkcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvTGVhZHMvRGFzaGxldHMvTXlMZWFkc0Rhc2hsZXQvTXlMZWFkc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX19czo1OiJwYWdlcyI7YToxOntpOjA7YTozOntzOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6Njp7aTowO3M6MzY6IjkwNTdiZjNhLTdmMDItNTQ1OC0wNGNlLTU0MjU3OTljYmZkYiI7aToxO3M6MzY6IjkzODQ0MzQ3LWZmMTItMGY3Ni1iMmJiLTU0MjU3OTk2OTc5MSI7aToyO3M6MzY6Ijk2NzI1OWY1LWFkMTUtNzk0YS0xZGM3LTU0MjU3OWFmNmU5MSI7aTozO3M6MzY6Ijk5NjA1ZWZiLWNmYmUtNDMwYS1kN2Y4LTU0MjU3OTEyOGM4NSI7aTo0O3M6MzY6IjljY2I2NTEwLWViZmMtMDM4OC1kNWIzLTU0MjU3OTVhYWE5OSI7aTo1O3M6MzY6ImEwYjM3ODFlLTcyNmYtMWYzMC1lY2ExLTU0MjU3OTIyMjYyZSI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YToyOntpOjA7czozNjoiOTA1N2IyYzUtYjA4Mi0zNzYzLTZjZWMtNTQyNTc5YmJiYTcyIjtpOjE7czozNjoiOTA1N2JiODktOTc3MC0xZjgxLTZjOWEtNTQyNTc5NWJlMmUzIjt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjIiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19'),
('c22675ad-286e-d256-1c8f-542579c578b1', 'Home2_CALL', 0, '2014-09-26 14:35:12', '2014-09-26 14:35:12', '89dc998d-57d6-adca-d06b-54257971e11c', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c35efda8-5091-4d1e-1697-5425790661cb', 'Home2_MEETING', 0, '2014-09-26 14:35:12', '2014-09-26 14:35:12', '89dc998d-57d6-adca-d06b-54257971e11c', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c458f187-b685-c02e-eef2-542579adf8fc', 'Home2_OPPORTUNITY', 0, '2014-09-26 14:35:12', '2014-09-26 14:35:12', '89dc998d-57d6-adca-d06b-54257971e11c', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c5d008eb-6198-eaa2-a824-5425796ea99b', 'Home2_ACCOUNT', 0, '2014-09-26 14:35:12', '2014-09-26 14:35:12', '89dc998d-57d6-adca-d06b-54257971e11c', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c6ca0c4c-318a-29c3-88b6-5425793d8e2e', 'Home2_LEAD', 0, '2014-09-26 14:35:12', '2014-09-26 14:35:12', '89dc998d-57d6-adca-d06b-54257971e11c', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c7858a37-8bd3-6ab7-ac4f-542579c59ad9', 'Home2_SUGARFEED', 0, '2014-09-26 14:35:12', '2014-09-26 14:35:12', '89dc998d-57d6-adca-d06b-54257971e11c', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e4d60260-591d-5899-07b9-544103cbc377', 'Emails', 0, '2014-10-17 11:55:02', '2014-10-17 11:59:37', '1', 'YToxOntzOjExOiJmb2N1c0ZvbGRlciI7czo5NjoiYToyOntzOjQ6ImllSWQiO3M6MzY6ImNjZTE4MWEwLWQ3MmMtYWMzMS0wZjFmLTU0NDEwMzE4MzRkYyI7czo2OiJmb2xkZXIiO3M6MTQ6IlNVR0FSLk15IEVtYWlsIjt9Ijt9'),
('f7fc05d6-3232-dae2-9179-544b59e598a9', 'Calls2_CALL', 0, '2014-10-25 08:02:25', '2014-10-25 08:02:25', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');

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

--
-- Dumping data for table `vcals`
--

INSERT INTO `vcals` (`id`, `deleted`, `date_entered`, `date_modified`, `user_id`, `type`, `source`, `content`) VALUES
('7d94de10-3c7f-9f11-f79b-544b6074a064', 0, '2014-10-25 08:36:05', '2014-10-25 08:44:41', '1', 'vfb', 'sugar', 'BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:-//SugarCRM//SugarCRM Calendar//EN\r\nBEGIN:VFREEBUSY\r\nORGANIZER;CN=Mihir Parikh:VFREEBUSY\r\nDTSTART:2014-10-23 13:00:00\r\nDTEND:2014-12-23 13:00:00\r\nDTSTAMP:2014-10-25 08:44:41\r\nEND:VFREEBUSY\r\nEND:VCALENDAR\r\n');

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
('ad54a7cd-741b-73ea-e898-5474442e3e9f', 0, '2014-11-25 08:56:22', '2014-11-25 08:56:22', '1', '1', 'Rebuild Relationships', '4.0.0', '4.0.0'),
('b718c983-dd35-7517-f868-547444a4bbc4', 0, '2014-11-25 08:56:22', '2014-11-25 08:56:22', '1', '1', 'Rebuild Extensions', '4.0.0', '4.0.0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
