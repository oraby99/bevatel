-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 30, 2024 at 02:43 PM
-- Server version: 8.0.30
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bevatel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(2, 'cat two', 'test for test', '2024-01-27 14:19:00', '2024-01-27 14:19:00'),
(4, 'post man', 'post man desc', '2024-01-28 13:02:34', '2024-01-28 13:02:34'),
(5, 'post man u', 'post man desc u', '2024-01-28 13:04:45', '2024-01-28 13:04:45'),
(7, 'update 2', 'test 2', '2024-01-28 13:26:38', '2024-01-28 13:26:38'),
(8, 'update 22', 'test 22', '2024-01-28 13:27:31', '2024-01-28 13:27:31'),
(9, 'cc', 'cc', '2024-01-28 13:38:46', '2024-01-28 13:38:46'),
(10, 'cc', 'cc', '2024-01-28 13:39:49', '2024-01-28 13:39:49'),
(11, 'cc', 'cc', '2024-01-28 13:52:43', '2024-01-28 13:52:43'),
(14, '66', '66', '2024-01-28 13:56:29', '2024-01-28 13:56:29'),
(15, '66', '66', '2024-01-28 13:57:15', '2024-01-28 13:57:15'),
(16, 'cc', 'cc desc', '2024-01-28 13:57:53', '2024-01-28 13:57:53'),
(17, 'cc', 'cc desc', '2024-01-28 13:58:30', '2024-01-28 13:58:30'),
(18, 'cc', 'cc desc', '2024-01-28 13:59:12', '2024-01-28 13:59:12'),
(20, 'cc', 'cc desc', '2024-01-28 14:01:13', '2024-01-28 14:01:13'),
(21, 'cc', 'cc desc', '2024-01-28 14:03:05', '2024-01-28 14:03:05'),
(22, 'cc', 'cc desc', '2024-01-28 14:05:08', '2024-01-28 14:05:08'),
(23, 'ali', 'test', '2024-01-28 14:42:04', '2024-01-28 14:42:04'),
(24, 'ali', 'test', '2024-01-28 14:42:11', '2024-01-28 14:42:11'),
(25, 'cc', 'cc desctop', '2024-01-28 14:42:27', '2024-01-28 14:42:27'),
(26, 'cc', 'cc desctop', '2024-01-28 14:56:37', '2024-01-28 14:56:37'),
(27, 'cc', 'cc desctop', '2024-01-28 15:51:37', '2024-01-28 15:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `language_lines`
--

CREATE TABLE `language_lines` (
  `id` bigint UNSIGNED NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` json NOT NULL,
  `metadata` json DEFAULT NULL,
  `namespace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '*',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_lines`
--

INSERT INTO `language_lines` (`id`, `group`, `key`, `text`, `metadata`, `namespace`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'translation', 'notification', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(2, 'translation', 'menu', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(3, 'translation', 'label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(4, 'translation', 'title.home', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(5, 'translation', 'group', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(6, 'translation', 'namespace', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(7, 'translation', 'key', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(8, 'translation', 'text', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(9, 'global', 'created_at', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(10, 'global', 'updated_at', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(11, 'translation', 'title.create', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(12, 'translation', 'title.edit', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(13, 'translation', 'title.list', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(14, 'translation', 'scan', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(15, 'translation', 'scan', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(16, 'translation', 'modal.setting', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(17, 'translation', 'modal.heading', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(18, 'translation', 'modal.button', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(19, 'translation', 'modal.select', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(20, 'translation', 'loaded', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(21, 'money', 'invalid-currency', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(22, 'components', 'select.max_items_message', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(23, 'table', 'columns.tags.more', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(24, 'table', 'pagination.buttons.go_to_page.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(25, 'table', 'selection_indicator.buttons.select_all.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(26, 'pagination', 'previous', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(27, 'pagination', 'next', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(28, 'auth', 'failed', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(29, 'auth', 'throttle', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(30, 'validation', 'uploaded', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(31, 'translations', 'translatable', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(32, 'messages', 'welcome', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(33, 'validation', 'required', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(34, '*', 'Login', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(35, '*', 'Email Address', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(36, '*', 'Password', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(37, '*', 'Remember Me', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(38, '*', 'Forgot Your Password?', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(39, '*', 'Confirm Password', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(40, '*', 'Please confirm your password before continuing.', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(41, '*', 'Reset Password', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(42, '*', 'Send Password Reset Link', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(43, '*', 'Register', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(44, '*', 'Name', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(45, '*', 'Verify Your Email Address', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(46, '*', 'A fresh verification link has been sent to your email address.', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(47, '*', 'Before proceeding, please check your email for a verification link.', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(48, '*', 'If you did not receive the email', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(49, '*', 'click here to request another', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(50, '*', 'Dashboard', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(51, '*', 'You are logged in!', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(52, '*', 'Toggle navigation', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(53, '*', 'Logout', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(54, '*', 'filament-breezy::default.profile.2fa.title', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(55, '*', 'filament-breezy::default.profile.2fa.description', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(56, '*', 'filament-breezy::default.profile.2fa.enabled.title', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(57, '*', 'filament-breezy::default.profile.2fa.enabled.description', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(58, '*', 'filament-breezy::default.profile.2fa.enabled.store_codes', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(59, '*', 'filament-breezy::default.profile.2fa.finish_enabling.title', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(60, '*', 'filament-breezy::default.profile.2fa.finish_enabling.description', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(61, '*', 'filament-breezy::default.profile.2fa.setup_key', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(62, '*', 'filament-breezy::default.profile.2fa.not_enabled.title', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(63, '*', 'filament-breezy::default.profile.2fa.not_enabled.description', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(64, '*', 'filament-breezy::default.profile.2fa.enabled.hide_codes', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(65, '*', 'filament-breezy::default.profile.2fa.enabled.show_codes', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(66, '*', 'filament-breezy::default.profile.2fa.actions.confirm_finish', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(67, '*', 'filament-breezy::default.profile.2fa.actions.cancel_setup', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(68, '*', 'filament-breezy::default.profile.password.heading', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(69, '*', 'filament-breezy::default.profile.password.subheading', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(70, '*', 'filament-breezy::default.profile.password.submit.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(71, '*', 'filament-breezy::default.profile.personal_info.heading', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(72, '*', 'filament-breezy::default.profile.personal_info.subheading', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(73, '*', 'filament-breezy::default.profile.personal_info.submit.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(74, '*', 'filament-breezy::default.profile.sanctum.title', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(75, '*', 'filament-breezy::default.profile.sanctum.description', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(76, '*', 'filament-breezy::default.profile.sanctum.create.submit.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(77, '*', 'filament::login.heading', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(78, '*', 'filament-breezy::default.or', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(79, '*', 'filament-breezy::default.registration.heading', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(80, '*', 'filament::login.buttons.submit.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(81, '*', 'filament-breezy::default.login.forgot_password_link', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(82, '*', 'filament-breezy::default.registration.submit.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(83, '*', 'filament-breezy::default.reset_password.heading', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(84, '*', 'filament-breezy::default.reset_password.submit.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(85, '*', 'filament-breezy::default.reset_password.notification_success', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(86, '*', 'filament-breezy::default.two_factor.recovery.heading', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(87, '*', 'filament-breezy::default.two_factor.heading', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(88, '*', 'filament-breezy::default.two_factor.recovery.description', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(89, '*', 'filament-breezy::default.two_factor.description', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(90, '*', 'filament-breezy::default.two_factor.back_to_login_link', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(91, '*', 'filament-breezy::default.two_factor.recovery_code_text', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(92, '*', 'filament-breezy::default.cancel', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(93, '*', 'filament-breezy::default.two_factor.recovery_code_link', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(94, '*', 'filament-breezy::default.verification.heading', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(95, '*', 'filament-breezy::default.verification.before_proceeding', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(96, '*', 'filament-breezy::default.verification.not_receive', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(97, '*', 'filament-breezy::default.verification.request_another', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(98, '*', 'filament-breezy::default.verification.notification_success', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(99, '*', 'filament-breezy::default.verification.submit.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(100, '*', 'filament::global-search.field.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(101, '*', 'filament::global-search.field.placeholder', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(102, '*', 'filament::global-search.no_results_message', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(103, '*', 'filament::layout.buttons.sidebar.collapse.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(104, '*', 'filament::layout.buttons.sidebar.expand.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(105, '*', 'filament::layout.buttons.database_notifications.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(106, '*', 'filament::layout.buttons.user_menu.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(107, '*', 'filament::layout.buttons.light_mode.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(108, '*', 'filament::layout.buttons.dark_mode.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(109, '*', 'filament::layout.buttons.logout.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(110, '*', 'filament::layout.direction', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(111, '*', 'filament::widgets/account-widget.buttons.logout.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(112, '*', 'filament::widgets/filament-info-widget.buttons.visit_documentation.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(113, '*', 'filament::widgets/filament-info-widget.buttons.visit_github.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(114, '*', 'Home', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(115, '*', 'Back', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(116, '*', 'Save File', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(117, '*', 'Browser', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(118, '*', 'Menus', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(119, '*', 'Menu Title', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(120, '*', 'Menu Key', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(121, '*', 'Menu Location', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(122, '*', 'Item Title', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(123, '*', 'Item URL', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(124, '*', 'Item Route', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(125, '*', 'Settings', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(126, '*', 'Generate Sitemap', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(127, '*', 'Active', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(128, '*', 'Preview', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(129, '*', 'Delete', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(130, '*', 'Sorry No themes found please create new', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(131, '*', 'Your Theme Has Been Deleted', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(132, '*', 'filament-shield::filament-shield.resource_permission_prefixes_labels.$permission', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(133, '*', 'filament-shield::filament-shield.field.name', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(134, '*', 'filament-shield::filament-shield.field.guard_name', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(135, '*', 'filament-shield::filament-shield.field.select_all.name', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(136, '*', 'filament-shield::filament-shield.field.select_all.message', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(137, '*', 'filament-shield::filament-shield.resources', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(138, '*', 'filament-shield::filament-shield.pages', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(139, '*', 'filament-shield::filament-shield.widgets', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(140, '*', 'filament-shield::filament-shield.custom', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(141, '*', 'filament-shield::filament-shield.column.name', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(142, '*', 'filament-shield::filament-shield.column.guard_name', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(143, '*', 'filament-shield::filament-shield.column.permissions', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(144, '*', 'filament-shield::filament-shield.column.updated_at', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(145, '*', 'filament-shield::filament-shield.resource.label.role', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(146, '*', 'filament-shield::filament-shield.resource.label.roles', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(147, '*', 'filament-shield::filament-shield.nav.group', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(148, '*', 'filament-shield::filament-shield.nav.role.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(149, '*', 'filament-shield::filament-shield.nav.role.icon', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(150, '*', 'filament-shield::filament-shield.forbidden', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(151, '*', 'filament/resources/customer.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(152, '*', 'filament/resources/customer.plural_label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(153, '*', 'filament/resources/customer.navigation_label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(154, '*', 'filament/navigation.groups.shop', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(155, '*', 'filament::login.messages.failed', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(156, '*', 'filament::login.fields.email.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(157, '*', 'filament::login.fields.password.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(158, '*', 'filament::login.fields.remember.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(159, '*', 'filament::login.title', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(160, '*', 'filament-support::actions/create.single.modal.actions.create.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(161, '*', 'filament-support::actions/create.single.modal.actions.create_another.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(162, '*', 'filament-support::actions/create.single.messages.created', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(163, '*', 'filament-support::actions/delete.single.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(164, '*', 'filament-support::actions/delete.single.modal.actions.delete.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(165, '*', 'filament-support::actions/delete.single.messages.deleted', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(166, '*', 'filament-support::actions/edit.single.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(167, '*', 'filament-support::actions/force-delete.single.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(168, '*', 'filament-support::actions/force-delete.single.modal.actions.delete.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(169, '*', 'filament-support::actions/restore.single.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(170, '*', 'filament-support::actions/restore.single.modal.actions.restore.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(171, '*', 'filament-support::actions/restore.single.messages.restored', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(172, '*', 'filament-support::actions/view.single.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(173, '*', 'filament::pages/dashboard.title', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(174, '*', 'filament::resources/pages/create-record.breadcrumb', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(175, '*', 'filament::resources/pages/create-record.messages.created', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(176, '*', 'filament::resources/pages/create-record.form.actions.create.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(177, '*', 'filament::resources/pages/create-record.form.actions.create_another.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(178, '*', 'filament::resources/pages/create-record.form.actions.cancel.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(179, '*', 'filament::resources/pages/edit-record.breadcrumb', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(180, '*', 'filament::resources/pages/edit-record.form.tab.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(181, '*', 'filament::resources/pages/edit-record.messages.saved', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(182, '*', 'filament::resources/pages/edit-record.form.actions.save.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(183, '*', 'filament::resources/pages/edit-record.form.actions.cancel.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(184, '*', 'filament::resources/pages/list-records.breadcrumb', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(185, '*', 'filament-support::actions/delete.multiple.messages.deleted', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(186, '*', 'filament-support::actions/edit.single.messages.saved', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(187, '*', 'filament::resources/pages/view-record.breadcrumb', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(188, '*', 'filament::resources/pages/view-record.form.tab.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(189, '*', 'filament-support::actions/associate.single.modal.fields.record_id.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(190, '*', 'filament-support::actions/associate.single.messages.associated', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(191, '*', 'filament-support::actions/attach.single.modal.fields.record_id.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(192, '*', 'filament-support::actions/attach.single.messages.attached', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(193, '*', 'filament-support::actions/detach.single.messages.detached', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(194, '*', 'filament-support::actions/detach.multiple.messages.detached', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(195, '*', 'filament-support::actions/dissociate.single.messages.dissociated', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(196, '*', 'filament-support::actions/dissociate.multiple.messages.dissociated', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(197, '*', 'fields.name', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(198, '*', 'blocks.heading', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(199, '*', 'forms::components.builder.buttons.collapse_all.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(200, '*', 'forms::components.builder.buttons.expand_all.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(201, '*', 'forms::components.builder.buttons.move_item.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(202, '*', 'forms::components.builder.buttons.move_item_up.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(203, '*', 'forms::components.builder.buttons.move_item_down.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(204, '*', 'forms::components.builder.buttons.clone_item.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(205, '*', 'forms::components.builder.buttons.delete_item.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(206, '*', 'forms::components.builder.buttons.collapse_item.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(207, '*', 'forms::components.builder.buttons.expand_item.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(208, '*', 'forms::components.builder.collapsed', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(209, '*', 'forms::components.checkbox_list.buttons.select_all.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(210, '*', 'forms::components.checkbox_list.buttons.deselect_all.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(211, '*', 'forms::components.markdown_editor.toolbar_buttons.bold', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(212, '*', 'forms::components.markdown_editor.toolbar_buttons.italic', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(213, '*', 'forms::components.markdown_editor.toolbar_buttons.strike', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(214, '*', 'forms::components.markdown_editor.toolbar_buttons.link', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(215, '*', 'forms::components.markdown_editor.toolbar_buttons.code_block', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(216, '*', 'forms::components.markdown_editor.toolbar_buttons.bullet_list', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(217, '*', 'forms::components.markdown_editor.toolbar_buttons.ordered_list', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(218, '*', 'forms::components.markdown_editor.toolbar_buttons.attach_files', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(219, '*', 'forms::components.markdown_editor.toolbar_buttons.edit', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(220, '*', 'forms::components.markdown_editor.toolbar_buttons.preview', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(221, '*', 'forms::components.repeater.buttons.collapse_all.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(222, '*', 'forms::components.repeater.buttons.expand_all.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(223, '*', 'forms::components.repeater.buttons.move_item.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(224, '*', 'forms::components.repeater.buttons.move_item_up.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(225, '*', 'forms::components.repeater.buttons.move_item_down.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(226, '*', 'forms::components.repeater.buttons.clone_item.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(227, '*', 'forms::components.repeater.buttons.delete_item.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(228, '*', 'forms::components.repeater.buttons.collapse_item.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(229, '*', 'forms::components.repeater.buttons.expand_item.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(230, '*', 'forms::components.repeater.collapsed', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(231, '*', 'forms::components.rich_editor.toolbar_buttons.bold', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(232, '*', 'forms::components.rich_editor.toolbar_buttons.italic', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(233, '*', 'forms::components.rich_editor.toolbar_buttons.underline', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(234, '*', 'forms::components.rich_editor.toolbar_buttons.strike', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(235, '*', 'forms::components.rich_editor.toolbar_buttons.link', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(236, '*', 'forms::components.rich_editor.toolbar_buttons.h1', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(237, '*', 'forms::components.rich_editor.toolbar_buttons.h2', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(238, '*', 'forms::components.rich_editor.toolbar_buttons.h3', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(239, '*', 'forms::components.rich_editor.toolbar_buttons.blockquote', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(240, '*', 'forms::components.rich_editor.toolbar_buttons.code_block', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(241, '*', 'forms::components.rich_editor.toolbar_buttons.bullet_list', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(242, '*', 'forms::components.rich_editor.toolbar_buttons.ordered_list', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(243, '*', 'forms::components.rich_editor.toolbar_buttons.attach_files', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(244, '*', 'forms::components.rich_editor.toolbar_buttons.undo', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(245, '*', 'forms::components.rich_editor.toolbar_buttons.redo', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(246, '*', 'forms::components.rich_editor.dialogs.link.placeholder', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(247, '*', 'forms::components.rich_editor.dialogs.link.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(248, '*', 'forms::components.rich_editor.dialogs.link.buttons.link', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(249, '*', 'forms::components.rich_editor.dialogs.link.buttons.unlink', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(250, '*', 'forms::components.wizard.buttons.previous_step.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(251, '*', 'forms::components.wizard.buttons.next_step.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(252, '*', 'forms::components.builder.buttons.create_item_between.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(253, '*', 'forms::components.select.no_search_results_message', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(254, '*', 'forms::components.select.search_prompt', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(255, '*', 'forms::components.select.searching_message', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(256, '*', 'forms::components.select.loading_message', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(257, '*', 'forms::components.key_value.buttons.add.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(258, '*', 'forms::components.key_value.buttons.delete.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(259, '*', 'forms::components.key_value.buttons.reorder.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(260, '*', 'forms::components.key_value.fields.key.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(261, '*', 'forms::components.key_value.fields.value.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(262, '*', 'forms::components.select.placeholder', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(263, '*', 'forms::components.select.boolean.true', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(264, '*', 'forms::components.select.boolean.false', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(265, '*', 'forms::components.select.actions.create_option.modal.heading', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(266, '*', 'forms::components.select.actions.create_option.modal.actions.create.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(267, '*', 'forms::components.tags_input.placeholder', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(268, '*', 'notifications::database.modal.buttons.mark_all_as_read.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(269, '*', 'notifications::database.modal.buttons.clear.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(270, '*', 'notifications::database.modal.empty.heading', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(271, '*', 'notifications::database.modal.empty.description', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(272, '*', 'notifications::database.modal.heading', '[]', NULL, '*', NULL, '2024-01-25 05:45:14', '2024-01-25 05:45:14'),
(273, '*', 'filament-spatie-laravel-settings-plugin::pages/settings-page.messages.saved', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(274, '*', 'filament-spatie-laravel-settings-plugin::pages/settings-page.form.actions.save.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(275, '*', 'filament-support::actions/group.trigger.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(276, '*', 'filament-support::components/button.messages.uploading_file', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(277, '*', 'filament-support::components/modal.actions.close.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(278, '*', 'filament-support::actions/modal.actions.cancel.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(279, '*', 'filament-support::actions/modal.actions.submit.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(280, '*', 'filament-support::actions/replicate.single.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(281, '*', 'filament-support::actions/replicate.single.modal.actions.replicate.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(282, '*', 'filament-support::actions/replicate.single.messages.replicated', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(283, '*', 'filament-support::actions/modal.confirmation', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(284, '*', 'filament-support::actions/modal.actions.confirm.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(285, '*', 'Title', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(286, '*', 'statuses.{$state}', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(287, '*', 'Is featured', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(288, '*', 'Edit', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(289, '*', 'tables::table.buttons.open_actions.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(290, '*', 'tables::table.empty.buttons.reset_column_searches.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(291, '*', 'tables::table.filters.buttons.reset.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(292, '*', 'tables::table.filters.indicator', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(293, '*', 'tables::table.filters.buttons.remove.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(294, '*', 'tables::table.filters.buttons.remove_all.tooltip', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(295, '*', 'tables::table.filters.buttons.remove_all.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(296, '*', 'tables::table.buttons.filter.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(297, '*', 'tables::table.sorting.fields.column.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(298, '*', 'tables::table.sorting.fields.direction.options.desc', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(299, '*', 'tables::table.sorting.fields.direction.options.asc', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(300, '*', 'tables::table.pagination.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(301, '*', 'tables::table.pagination.buttons.previous.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(302, '*', 'tables::table.pagination.buttons.next.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(303, '*', 'tables::table.pagination.fields.records_per_page.options.all', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(304, '*', 'tables::table.pagination.fields.records_per_page.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(305, '*', 'tables::table.reorder_indicator', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(306, '*', 'tables::table.buttons.disable_reordering.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(307, '*', 'tables::table.buttons.enable_reordering.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(308, '*', 'tables::table.fields.search_query.placeholder', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(309, '*', 'tables::table.fields.search_query.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(310, '*', 'tables::table.selection_indicator.selected_count', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(311, '*', 'tables::table.selection_indicator.buttons.deselect_all.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(312, '*', 'tables::table.buttons.toggle_columns.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(313, '*', 'tables::table.fields.bulk_select_page.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(314, '*', 'tables::table.sorting.fields.direction.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(315, '*', 'filament-support::actions/associate.single.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(316, '*', 'filament-support::actions/associate.single.modal.actions.associate.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(317, '*', 'filament-support::actions/associate.single.modal.actions.associate_another.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(318, '*', 'filament-support::actions/attach.single.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(319, '*', 'filament-support::actions/attach.single.modal.actions.attach.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(320, '*', 'filament-support::actions/attach.single.modal.actions.attach_another.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(321, '*', 'filament-support::actions/delete.multiple.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(322, '*', 'filament-support::actions/delete.multiple.modal.actions.delete.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(323, '*', 'filament-support::actions/detach.single.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(324, '*', 'filament-support::actions/detach.single.modal.actions.detach.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(325, '*', 'filament-support::actions/detach.multiple.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(326, '*', 'filament-support::actions/detach.multiple.modal.actions.detach.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(327, '*', 'filament-support::actions/dissociate.single.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(328, '*', 'filament-support::actions/dissociate.single.modal.actions.dissociate.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(329, '*', 'filament-support::actions/dissociate.multiple.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(330, '*', 'filament-support::actions/dissociate.multiple.modal.actions.dissociate.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(331, '*', 'filament-support::actions/edit.single.modal.actions.save.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(332, '*', 'filament-support::actions/force-delete.single.messages.deleted', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(333, '*', 'filament-support::actions/force-delete.multiple.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(334, '*', 'filament-support::actions/force-delete.multiple.modal.actions.delete.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(335, '*', 'filament-support::actions/force-delete.multiple.messages.deleted', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(336, '*', 'filament-support::actions/restore.multiple.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(337, '*', 'filament-support::actions/restore.multiple.modal.actions.restore.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(338, '*', 'filament-support::actions/restore.multiple.messages.restored', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(339, '*', 'filament-support::actions/view.single.modal.actions.close.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(340, '*', 'tables::table.columns.messages.copied', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(341, '*', 'tables::table.filters.multi_select.placeholder', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(342, '*', 'tables::table.filters.select.placeholder', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(343, '*', 'tables::table.filters.trashed.label', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(344, '*', 'tables::table.filters.trashed.without_trashed', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(345, '*', 'tables::table.filters.trashed.with_trashed', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(346, '*', 'tables::table.filters.trashed.only_trashed', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(347, '*', 'tables::table.empty.heading', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(348, '*', 'filament-breezy::default.password_confirm.heading', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(349, '*', 'filament-breezy::default.password_confirm.description', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(350, '*', 'filament-breezy::default.password_confirm.current_password', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(351, '*', 'passwords.reset', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(352, '*', 'filament-breezy::default.profile.2fa.confirmation.invalid_code', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(353, '*', 'filament-breezy::default.fields.2fa_recovery_code', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(354, '*', 'filament-breezy::default.fields.2fa_code', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(355, '*', 'filament-breezy::default.two_factor.recovery_code_placeholder', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(356, '*', 'filament-breezy::default.two_factor.code_placeholder', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(357, '*', 'filament-breezy::default.fields.login', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(358, '*', 'filament-breezy::default.registration.notification_unique', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(359, '*', 'filament-breezy::default.fields.name', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(360, '*', 'filament-breezy::default.fields.email', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(361, '*', 'filament-breezy::default.fields.password', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(362, '*', 'filament-breezy::default.fields.password_confirm', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(363, '*', 'filament-breezy::default.registration.title', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(364, '*', 'filament-breezy::default.reset_password.notification_error', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(365, '*', 'filament-breezy::default.reset_password.notification_error_link_text', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(366, '*', 'passwords.throttled', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(367, '*', 'passwords.user', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(368, '*', 'filament-breezy::default.reset_password.title', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(369, '*', 'filament-breezy::default.verification.notification_resend', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(370, '*', 'filament-breezy::default.verification.title', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(371, '*', 'filament-breezy::default.fields.abilities', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(372, '*', 'filament-breezy::default.profile.sanctum.update.notify', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(373, '*', 'filament-breezy::default.profile.personal_info.notify', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(374, '*', 'filament-breezy::default.fields.new_password', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(375, '*', 'filament-breezy::default.fields.new_password_confirmation', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(376, '*', 'filament-breezy::default.profile.password.notify', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(377, '*', 'filament-breezy::default.fields.token_name', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(378, '*', 'filament-breezy::default.profile.sanctum.create.notify', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(379, '*', 'filament-breezy::default.profile.profile', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(380, '*', 'filament-breezy::default.profile.account', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(381, '*', 'filament-breezy::default.profile.my_profile', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(382, '*', 'filament-breezy::default.profile.2fa.confirmation.success_notification', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(383, '*', 'filament-breezy::default.profile.2fa.actions.enable', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(384, '*', 'filament-breezy::default.profile.2fa.actions.regenerate_codes', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(385, '*', 'filament-breezy::default.profile.2fa.actions.disable', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(386, '*', 'Unauthorized', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(387, '*', 'Payment Required', '[]', NULL, '*', NULL, '2024-01-25 05:45:15', '2024-01-25 05:45:15'),
(388, '*', 'Forbidden', '[]', NULL, '*', NULL, '2024-01-25 05:45:18', '2024-01-25 05:45:18'),
(389, '*', 'Not Found', '[]', NULL, '*', NULL, '2024-01-25 05:45:18', '2024-01-25 05:45:18'),
(390, '*', 'Page Expired', '[]', NULL, '*', NULL, '2024-01-25 05:45:18', '2024-01-25 05:45:18'),
(391, '*', 'Too Many Requests', '[]', NULL, '*', NULL, '2024-01-25 05:45:18', '2024-01-25 05:45:18'),
(392, '*', 'Server Error', '[]', NULL, '*', NULL, '2024-01-25 05:45:18', '2024-01-25 05:45:18'),
(393, '*', 'Service Unavailable', '[]', NULL, '*', NULL, '2024-01-25 05:45:18', '2024-01-25 05:45:18'),
(394, '*', 'pagination.previous', '[]', NULL, '*', NULL, '2024-01-25 05:45:18', '2024-01-25 05:45:18'),
(395, '*', 'pagination.next', '[]', NULL, '*', NULL, '2024-01-25 05:45:18', '2024-01-25 05:45:18'),
(396, '*', 'Showing', '[]', NULL, '*', NULL, '2024-01-25 05:45:18', '2024-01-25 05:45:18');
INSERT INTO `language_lines` (`id`, `group`, `key`, `text`, `metadata`, `namespace`, `deleted_at`, `created_at`, `updated_at`) VALUES
(397, '*', 'to', '[]', NULL, '*', NULL, '2024-01-25 05:45:18', '2024-01-25 05:45:18'),
(398, '*', 'of', '[]', NULL, '*', NULL, '2024-01-25 05:45:18', '2024-01-25 05:45:18'),
(399, '*', 'results', '[]', NULL, '*', NULL, '2024-01-25 05:45:18', '2024-01-25 05:45:18'),
(400, '*', 'Pagination Navigation', '[]', NULL, '*', NULL, '2024-01-25 05:45:18', '2024-01-25 05:45:18');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'header',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items` longtext COLLATE utf8mb4_unicode_ci,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_01_25_010712_create_language_lines_table', 1),
(7, '2024_01_25_070430_create_permission_tables', 2),
(8, '2022_12_14_083707_create_settings_table', 3),
(9, '2024_01_25_070846_themes_settings', 3),
(10, '2022_04_02_192724_create_menus_table', 4),
(11, '2011_12_14_083707_create_settings_table', 5),
(12, '2024_01_26_232048_create_categories_table', 5),
(13, '2024_01_26_232106_create_products_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_role', 'web', '2024-01-25 05:04:41', '2024-01-25 05:04:41'),
(2, 'view_any_role', 'web', '2024-01-25 05:04:41', '2024-01-25 05:04:41'),
(3, 'create_role', 'web', '2024-01-25 05:04:41', '2024-01-25 05:04:41'),
(4, 'update_role', 'web', '2024-01-25 05:04:41', '2024-01-25 05:04:41'),
(5, 'delete_role', 'web', '2024-01-25 05:04:41', '2024-01-25 05:04:41'),
(6, 'delete_any_role', 'web', '2024-01-25 05:04:41', '2024-01-25 05:04:41'),
(7, 'view_translation', 'web', '2024-01-25 05:04:41', '2024-01-25 05:04:41'),
(8, 'view_any_translation', 'web', '2024-01-25 05:04:41', '2024-01-25 05:04:41'),
(9, 'create_translation', 'web', '2024-01-25 05:04:41', '2024-01-25 05:04:41'),
(10, 'update_translation', 'web', '2024-01-25 05:04:41', '2024-01-25 05:04:41'),
(11, 'restore_translation', 'web', '2024-01-25 05:04:41', '2024-01-25 05:04:41'),
(12, 'restore_any_translation', 'web', '2024-01-25 05:04:41', '2024-01-25 05:04:41'),
(13, 'replicate_translation', 'web', '2024-01-25 05:04:41', '2024-01-25 05:04:41'),
(14, 'reorder_translation', 'web', '2024-01-25 05:04:42', '2024-01-25 05:04:42'),
(15, 'delete_translation', 'web', '2024-01-25 05:04:42', '2024-01-25 05:04:42'),
(16, 'delete_any_translation', 'web', '2024-01-25 05:04:42', '2024-01-25 05:04:42'),
(17, 'force_delete_translation', 'web', '2024-01-25 05:04:42', '2024-01-25 05:04:42'),
(18, 'force_delete_any_translation', 'web', '2024-01-25 05:04:42', '2024-01-25 05:04:42'),
(19, 'page_Themes', 'web', '2024-01-25 05:04:42', '2024-01-25 05:04:42');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(8,2) NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT '1',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `is_available`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'pr 1', 'pr 1 desc', 1000.00, 1, 'products/S6G3UNLODVex3iYQ22fe5EJm2VUfY9-metaU2NyZWVuc2hvdCAyMDIyLTA2LTI4IDAxNDUzNi5wbmc=-.png', 1, '2024-01-27 14:49:26', '2024-01-27 14:49:26'),
(2, 'pr 1', 'dd', 1000.00, 0, NULL, 2, '2024-01-27 15:24:28', '2024-01-27 15:24:28'),
(3, 'pr 1', 'dd', 1000.00, 1, NULL, 3, '2024-01-27 15:29:35', '2024-01-27 15:29:35'),
(4, 'post man products', 'post man desc products', 100.00, 1, NULL, 1, '2024-01-28 15:53:53', '2024-01-28 15:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2024-01-25 05:04:41', '2024-01-25 05:04:41'),
(2, 'filament_user', 'web', '2024-01-25 05:04:42', '2024-01-25 05:04:42');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `payload` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `lang`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$12$SYbVDSdoBjPGAlrP8DURjOjmdZshwJfBr3zYHlSBAtc5r1XNrG2yW', NULL, '2024-01-25 05:05:27', '2024-01-25 15:26:30', 'en'),
(2, 'ahmed oraby', '01205082343ahmed@gmail.com', NULL, '$2y$12$SALByKb45d/wpnvpL0WAVOQURWDKjCeNQdzG1yJWPm7EO8QsQesYW', NULL, '2024-01-28 23:27:50', '2024-01-28 23:27:50', 'en');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `language_lines`
--
ALTER TABLE `language_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_lines_group_index` (`group`),
  ADD KEY `language_lines_namespace_index` (`namespace`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_key_unique` (`key`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_group_name_unique` (`group`,`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `language_lines`
--
ALTER TABLE `language_lines`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
