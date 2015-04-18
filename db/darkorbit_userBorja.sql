-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-03-2015 a las 17:05:55
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `darkorbit`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms`
--

CREATE TABLE IF NOT EXISTS `cms` (
`id` int(11) NOT NULL,
  `handler` varchar(250) NOT NULL,
  `setting` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cms`
--

INSERT INTO `cms` (`id`, `handler`, `setting`) VALUES
(1, 'banner', './templates/Default/images/banner.jpg'),
(2, 'slogan', 'Game for life');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `filecollection_file`
--

CREATE TABLE IF NOT EXISTS `filecollection_file` (
  `id` int(255) NOT NULL,
  `id_name` text NOT NULL,
  `version` int(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `level` int(2) NOT NULL DEFAULT '0',
  `location` longtext NOT NULL,
  `cdn` varchar(255) NOT NULL,
  `debugView` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `filecollection_file`
--

INSERT INTO `filecollection_file` (`id`, `id_name`, `version`, `type`, `name`, `level`, `location`, `cdn`, `debugView`) VALUES
(0, 'havoc-1_63x63', 1, 'png', 'havoc-1', 1, 'items_drone_designs', '9328098cf6f61f9a15c186cda93bb400', 'false'),
(1, 'cbo-100_30x30', 1, 'png', 'cbo-100', 0, 'items_ammunition_laser', 'db93d3453bc121ed8ce8347aad962d00', 'false'),
(2, 'havoc_30x30', 1, 'png', 'havoc', 0, 'items_drone_designs', '3d777293c382668bf651ce89c3523f00', 'false'),
(3, 'plt-2026_100x100', 1, 'png', 'plt-2026', 0, 'items_ammunition_rocket', '58fdf543bd4fbd7bfd7bcb011c9d1100', 'false'),
(4, 'ammo_lcb-10_100x100', 1, 'png', 'ammo', 0, 'items', 'noCDN', 'false'),
(5, 'dr-02_30x30', 1, 'png', 'dr-02', 0, 'items_equipment_extra_cpu', '4ff7b62c45133a5a0afa1c3fa14a7100', 'false'),
(6, 'havoc-5_top', 1, 'png', 'havoc-5', 5, 'items_drone_designs', 'eefe025cd0af4d1d82f0b324d787200', 'false'),
(7, 'g3n-2010_100x100', 1, 'png', 'g3n-2010', 0, 'items_equipment_generator_speed', '6d7f8f5feb80ad35a1f47b76c0216700', 'false'),
(8, 'g3n-2010_30x30', 1, 'png', 'g3n-2010', 0, 'items_equipment_generator_speed', '205d6901282719db5574e251935cf800', 'false'),
(9, 'aim-01_100x100', 1, 'png', 'aim-01', 0, 'items_equipment_extra_cpu', '9b5cb30e69d3871b077b2c9a16138600', 'false'),
(10, 'phoenix_100x100', 1, 'png', 'phoenix', 0, 'items_ship', 'c8fdab3ed091595e5a4d122ef33eee00', 'false'),
(11, 'shd-b01_100x100', 1, 'png', 'shd-b01', 0, 'items_equipment_booster', '26828274f23f698b9b5fc8b882f48300', 'false'),
(12, 'resource-deal-bk-102_100x100', 1, 'png', 'resource-deal-bk-102', 0, 'items', 'b1766983bc556105d36c282cdfe77a00', 'false'),
(13, 'venom_63x63', 1, 'png', 'venom', 0, 'items_ship_goliath_design', '3c4547b6d7a21fabdc28c1930521c100', 'false'),
(14, 'mamba_100x100', 1, 'png', 'mamba', 0, 'items_ship_bigboy_design', '1845671280176e9e3002aae4f38a0c00', 'false'),
(15, 'ai-al1_100x100', 1, 'png', 'ai-al1', 0, 'items_equipment_aiprotocol', 'e2fe99aff30dc11255e7398acc5dcd00', 'false'),
(16, 'drone_formation_f-12-ba_100x100', 1, 'png', 'drone', 0, 'items', 'noCDN', 'false'),
(17, 'r-310_63x63', 1, 'png', 'r-310', 0, 'items_ammunition_rocket', 'bd4b785081ad98c8a38efd38c1443b00', 'false'),
(18, 'apis-3_63x63', 1, 'png', 'apis-3', 3, 'items_drone', '2357d5c44516a90c65f7e6f849c09b00', 'false'),
(19, 'ship_leonov_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(20, 'icon_elite_12x7', 1, 'png', 'icon', 0, 'items', 'noCDN', 'false'),
(21, 'lightning_100x100', 1, 'png', 'lightning', 0, 'items_ship_vengeance_design', 'a8f63bb998c50d36cfa4c4e03b1c4d00', 'false'),
(22, 'ai-sm1_63x63', 1, 'png', 'ai-sm1', 0, 'items_equipment_aiprotocol', 'e03deebe495a15d898e166dee04a0d00', 'false'),
(23, 'shd-b02_30x30', 1, 'png', 'shd-b02', 0, 'items_equipment_booster', '22486a4c1c487dc763a0e534e5c08300', 'false'),
(24, 'solace_100x100', 1, 'png', 'solace', 0, 'items_ship_goliath_design', '1f2e50beede5485d5852a2fb64d3df00', 'false'),
(25, 'generator_g3n-3210_100x100', 1, 'png', 'generator', 0, 'items', 'noCDN', 'false'),
(26, 'dcr-250_100x100', 1, 'png', 'dcr-250', 0, 'items_ammunition_specialammo', 'afa8d1471065deb26672ce7c88c9ab00', 'false'),
(27, 'rd-x_100x100', 1, 'png', 'rd-x', 0, 'items_equipment_extra_cpu', '597c2f3075c6a0453bae7dd1902dda00', 'false'),
(28, 'iris-1_63x63', 1, 'png', 'iris-1', 1, 'items_drone', '66f6d38952f8fb800abbd5e5d96f7700', 'false'),
(29, 'lf-4_100x100', 1, 'png', 'lf-4', 0, 'items_equipment_weapon_laser', 'eb976bb32197c21a8b6be56eb65e1d00', 'false'),
(30, 'havoc-3_30x30', 1, 'png', 'havoc-3', 3, 'items_drone_designs', '1e46e2cef4d5c5d3800098f043877e00', 'false'),
(31, 'drone_formation_f-10-cr_100x100', 1, 'png', 'drone', 0, 'items', 'noCDN', 'false'),
(32, 'plt-2021_100x100', 1, 'png', 'plt-2021', 0, 'items_ammunition_rocket', '57dc1c46160862d3e6e73e451764ab00', 'false'),
(33, 'eco-10_100x100', 1, 'png', 'eco-10', 0, 'items_ammunition_rocket', 'f2728f6bf3b750a5b68d7adf3a898200', 'false'),
(34, 'fwx-s_63x63', 1, 'png', 'fwx-s', 0, 'items_ammunition_firework', 'a45fdf5e4e251f9de4e49d2b4617ce00', 'false'),
(35, 'design_d-av-01_100x100', 1, 'png', 'design', 0, 'items', 'noCDN', 'false'),
(36, 'ship_yamato_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(37, 'ai-al1_63x63', 1, 'png', 'ai-al1', 0, 'items_equipment_aiprotocol', '872b980001c1dedc590c9143dcf2f000', 'false'),
(38, 'defcom-default_top', 1, 'png', 'defcom-default', 0, 'items_ship_model', '52aaa11eae4b9a0ca19bfa1601a44200', 'false'),
(39, 'havoc-1_top', 1, 'png', 'havoc-1', 1, 'items_drone_designs', 'ebc18fd76fd5733d370a8cd5cbfb0200', 'false'),
(40, 'design_sd-all_100x100', 1, 'gif', 'design', 0, 'items', 'noCDN', 'false'),
(41, 'saturn_30x30', 1, 'png', 'saturn', 0, 'items_ship', '9fb81a05a011a164cd6a52b53defab00', 'false'),
(42, 'sar-02_100x100', 1, 'png', 'sar-02', 0, 'items', 'e71bbf67775146cacab9fd82bb4e5e00', 'false'),
(43, 'alb-x_30x30', 1, 'png', 'alb-x', 0, 'items_equipment_extra_cpu', 'b958f5e2676c44aef2a6d784ba15ef00', 'false'),
(44, 'sg3n-b02_63x63', 1, 'png', 'sg3n-b02', 0, 'items_equipment_generator_shield', 'b718b6cf1c30cde1d53056c8ad186c00', 'false'),
(45, 'g-el1_100x100', 1, 'png', 'g-el1', 0, 'items_equipment_petgear', 'fa541d3a91aabc670fb9b48223a3c000', 'false'),
(46, 'spectrum_63x63', 1, 'png', 'spectrum', 0, 'items_ship_goliath_design', 'dd45110cd14d657cee0ba24b27eae00', 'false'),
(47, 'ship_goliath_design_centaur_30x30', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(48, 'vengeance_100x100', 1, 'png', 'vengeance', 0, 'items_ship', 'c54de458c43424b804b155068265600', 'false'),
(49, 'xp-b01_30x30', 1, 'png', 'xp-b01', 0, 'items_equipment_booster', '7c3a42aac82c076cf6cddfaca9613b00', 'false'),
(50, 'palladium_63x63', 1, 'png', 'palladium', 0, 'items_resource_ore', '1265217356d6dda552d24354897afc00', 'false'),
(51, 'xp-b02_63x63', 1, 'png', 'xp-b02', 0, 'items_equipment_booster', '8b435dd5e42858ff2945f2ca2a205300', 'false'),
(52, 'ai-r1_63x63', 1, 'png', 'ai-r1', 0, 'items_equipment_aiprotocol', 'f3a9e70662dea822ae60c589629d8400', 'false'),
(53, 'mcb-50_63x63', 1, 'png', 'mcb-50', 0, 'items_ammunition_laser', '386dd5328b039cc7594c36f8875af400', 'false'),
(54, 'ammo_rsb-75_100x100', 1, 'png', 'ammo', 0, 'items', 'noCDN', 'false'),
(55, 'lf-1_63x63', 1, 'png', 'lf-1', 0, 'items_equipment_weapon_laser', '21840bc7163a5ba6b23a843b00b34500', 'false'),
(56, 'plt-2026_30x30', 1, 'png', 'plt-2026', 0, 'items_ammunition_rocket', 'eb7d727d0e8d7c05ad9121573a6b200', 'false'),
(57, 'spearhead-vru_top', 1, 'png', 'spearhead-vru', 0, 'items_ship', '72a14351239d131a9a41ecfa7477f200', 'false'),
(58, 'ammo_ucb-100_100x100', 1, 'png', 'ammo', 0, 'items', 'noCDN', 'false'),
(59, 'cpu_dr-01_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(60, 'cl04k-m_63x63', 1, 'png', 'cl04k-m', 0, 'items_equipment_extra_cpu', '2389a6be163abc512ad8845f53494400', 'false'),
(61, 'rocket_sar-02_100x100', 1, 'png', 'rocket', 0, 'items', 'noCDN', 'false'),
(62, 'palladium_30x30', 1, 'png', 'palladium', 0, 'items_resource_ore', '739d31694cf4adb3efc93ff72d516d00', 'false'),
(63, 'corsair_top', 1, 'png', 'corsair', 0, 'items_ship_vengeance_design', '8a276cc4e482e42c36e7b0ac101de200', 'false'),
(64, 'zeus-part_63x63', 1, 'png', 'zeus-part', 0, 'items_resource_blueprint', '7e7707b4db2fa9350102f6ea07bd8f00', 'false'),
(65, 'pet10-12_top', 1, 'png', 'pet10-12', 0, 'items_pet', '8e17281870f0063a0b88200d3625eb00', 'false'),
(66, 'sl-01_100x100', 1, 'png', 'sl-01', 0, 'items_ammunition_mine', '8705e1b6cb2aecd1038773cbae391200', 'false'),
(67, 'cpu_smb-01_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(68, 'design_d-all_100x100', 1, 'gif', 'design', 0, 'items', 'noCDN', 'false'),
(69, 'robot_rep-4_100x100', 1, 'png', 'robot', 0, 'items', 'noCDN', 'false'),
(70, 'booty-key-red_30x30', 1, 'png', 'booty-key-red', 0, 'items_resource', 'c83bfff4da634da06045fa7e201bae00', 'false'),
(71, 'bastion_100x100', 1, 'png', 'bastion', 0, 'items_ship_goliath_design', 'c7844e1cfd08b5709cf816acc4a00000', 'false'),
(72, 'rok-t01_63x63', 1, 'png', 'rok-t01', 0, 'items_equipment_extra_cpu', '6ecb7fdfb1593bb65b43b39476aae200', 'false'),
(73, 'g-al1_100x100', 1, 'png', 'g-al1', 0, 'items_equipment_petgear', '3a6fe2c1d7e793fec4d697b90721f700', 'false'),
(74, 'flax-0_30x30', 1, 'png', 'flax-0', 0, 'items_drone', '642f6be370832ed3b213cb8420475c00', 'false'),
(75, 'booster_xp-b01_100x100', 1, 'png', 'booster', 0, 'items', 'noCDN', 'false'),
(76, 'iris-0_100x100', 1, 'png', 'iris-0', 0, 'items_drone', 'afba9239e233f506eff21528ab4e8f00', 'false'),
(77, 'icon_design_28x7', 1, 'png', 'icon', 0, 'items', 'noCDN', 'false'),
(78, 'spectrum_100x100', 1, 'png', 'spectrum', 0, 'items_ship_goliath_design', '35f4bb3311c6b4aa47a16fd180008900', 'false'),
(79, 'zeus-2_30x30', 1, 'png', 'zeus-2', 2, 'items_drone', '91e6fb4a78451d59f6ccb587b351500', 'false'),
(80, 'ship_spearhead-mmo_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(81, 'hercules_30x30', 1, 'png', 'hercules', 0, 'items_drone_designs', '81fcb28481530aea405e79da7f959000', 'false'),
(82, 'sapphire_30x30', 1, 'png', 'sapphire', 0, 'items_ship_goliath_design', '140905e7ecc7ee7e6ed1df1c058faa00', 'false'),
(83, 'mp-1_63x63', 1, 'png', 'mp-1', 0, 'items_equipment_weapon_laser', '52eb84ef703379bc9cc9268f59ff5a00', 'false'),
(84, 'sreg-b01_100x100', 1, 'png', 'sreg-b01', 0, 'items_equipment_booster', '3c700738b5565b7352285dd259c5c200', 'false'),
(85, 'apis-5_63x63', 1, 'png', 'apis-5', 5, 'items_drone', '691122b1882ae1f6eeef9ddbc166c200', 'false'),
(86, 'empm-01_30x30', 1, 'png', 'empm-01', 0, 'items_ammunition_mine', 'b5bbdd393160dea5072c9c29925fb600', 'false'),
(87, 'apis-0_top', 1, 'png', 'apis-0', 0, 'items_drone', 'f3bfce2ad389d3f2439b0619f9884800', 'false'),
(88, 'nostromo_top', 1, 'png', 'nostromo', 0, 'items_ship', 'ff51eab9cb12377314f48ca78cffc500', 'false'),
(89, 'sentinel_30x30', 1, 'png', 'sentinel', 0, 'items_ship_goliath_design', 'aebc8c1ee1d83f778a61e7c75f258800', 'false'),
(90, 'havoc-2_63x63', 1, 'png', 'havoc-2', 2, 'items_drone_designs', '6e5545393ae996b3d88176e082881f00', 'false'),
(91, 'goal_top', 1, 'png', 'goal', 0, 'items_ship_goliath_design', '95cc2e4d7028f5edd9d426420315ea00', 'false'),
(92, 'pet_protocol_g-tra1_100x100', 1, 'png', 'pet', 0, 'items', 'noCDN', 'false'),
(93, 'nc-awb-x_63x63', 1, 'png', 'nc-awb-x', 0, 'items_equipment_extra_cpu', 'ec1c7aae930d30936fdeb954b1bc2000', 'false'),
(94, 'g3n-3210_100x100', 1, 'png', 'g3n-3210', 0, 'items_equipment_generator_speed', '5d50a4d1ad1ff13a891ee79b15b31100', 'false'),
(95, 'f-01-tu_63x63', 1, 'png', 'f-01-tu', 0, 'items_drone_formation', '40039420f0bf49d22a9026845750bc00', 'false'),
(96, 'slm-01_63x63', 1, 'png', 'slm-01', 0, 'items_ammunition_mine', '7712a19b219d98191682ed7247715600', 'false'),
(97, 'flax-1_63x63', 1, 'png', 'flax-1', 1, 'items_drone', '285ba0eda8d9bd9700569b41c1353800', 'false'),
(98, 'hon-b01_30x30', 1, 'png', 'hon-b01', 0, 'items_equipment_booster', '6051aa706c4b66386bac6575efd32700', 'false'),
(99, 'ai-sm1_30x30', 1, 'png', 'ai-sm1', 0, 'items_equipment_aiprotocol', 'fed796ecf85c4e4650c495579a0b3000', 'false'),
(100, 'havoc-0_63x63', 1, 'png', 'havoc-0', 0, 'items_drone_designs', '4cc2e5f6780d0a710d0c537d29551500', 'false'),
(101, 'ship_nostromo_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(102, 'cpu_sle-03_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(103, 'nc-rrb-x_30x30', 1, 'png', 'nc-rrb-x', 0, 'items_equipment_extra_cpu', 'b476120c9737e4789f1da17faaecf600', 'false'),
(104, 'flax-4_63x63', 1, 'png', 'flax-4', 4, 'items_drone', '4439186801e3196bb7c0fc411a7000', 'false'),
(105, 'design_d-re-01_100x100', 1, 'png', 'design', 0, 'items', 'noCDN', 'false'),
(106, 'havoc-0_top', 1, 'png', 'havoc-0', 0, 'items_drone_designs', 'f3bfce2ad389d3f2439b0619f9884800', 'false'),
(107, 'sar-01_100x100', 1, 'png', 'sar-01', 0, 'items_ammunition_rocketlauncher', '8a240cd56aafb6e2f731693a9eda5c00', 'false'),
(108, 'iris-0_63x63', 1, 'png', 'iris-0', 0, 'items_drone', '9e918d6b19b7d5ead16addad0cc35200', 'false'),
(109, 'mine_ddm-01_100x100', 1, 'png', 'mine', 0, 'items', 'noCDN', 'false'),
(110, 'drone_formation_f-02-ar_100x100', 1, 'png', 'drone', 0, 'items', 'noCDN', 'false'),
(111, 'flax-4_100x100', 1, 'png', 'flax-4', 4, 'items_drone', 'dd309b7a069bfa3b796a1356e602b200', 'false'),
(112, 'sreg-b02_100x100', 1, 'png', 'sreg-b02', 0, 'items_equipment_booster', '2c18bcff3eee30f4c973116ab316f800', 'false'),
(113, 'yamato-default_top', 1, 'png', 'yamato-default', 0, 'items_ship_model', 'd12641e622d8655aae4a22f816da8f00', 'false'),
(114, 'promerium_63x63', 1, 'png', 'promerium', 0, 'items_resource_ore', 'b244214822eee368245b2940e1b5300', 'false'),
(115, 'iris-3_top', 1, 'png', 'iris-3', 3, 'items_drone', '873f7968e96ba2b2aa6a867938171b00', 'false'),
(116, 'bdr-1211_63x63', 1, 'png', 'bdr-1211', 0, 'items_ammunition_rocket', '469999ff72fe170e7341636c620b0600', 'false'),
(117, 'g-tra1_100x100', 1, 'png', 'g-tra1', 0, 'items_equipment_petgear', '971fa24c7f7da534d8280f558c08f600', 'false'),
(118, 'sle-01_63x63', 1, 'png', 'sle-01', 0, 'items_equipment_extra_cpu', '4c8b2134dc2163588182776c483d8a00', 'false'),
(119, 'yamato_63x63', 1, 'png', 'yamato', 0, 'items_ship', 'a22af71d3f9f6b3565475c005300ac00', 'false'),
(120, 'sreg-b01_30x30', 1, 'png', 'sreg-b01', 0, 'items_equipment_booster', 'a0407f48f4a3b0d21cef8c0f02a54e00', 'false'),
(121, 'rsb-75_63x63', 1, 'png', 'rsb-75', 0, 'items_ammunition_laser', '50206543ccd2bc1002d106f117756600', 'false'),
(122, 'zeus-5_30x30', 1, 'png', 'zeus-5', 5, 'items_drone', '4ee8791ebb639511adef50aaf9c5b600', 'false'),
(123, 'zeus-0_100x100', 1, 'png', 'zeus-0', 0, 'items_drone', '811fd8fc71c0e6aa74b129d7fa6d2200', 'false'),
(124, 'pet10-15_top', 1, 'png', 'pet10-15', 0, 'items_pet', 'ec53e1b9c8177ea21cf9f70656854100', 'false'),
(125, 'lcb-10_30x30', 1, 'png', 'lcb-10', 0, 'items_ammunition_laser', 'dae4f308e45cc4a93ac36451afabc700', 'false'),
(126, 'venom_100x100', 1, 'png', 'venom', 0, 'items_ship_goliath_design', '2d89b696366df9a1559dc8d702d08f00', 'false'),
(127, 'lgf_100x100', 1, 'png', 'lgf', 0, 'items_resource', '69a613d0e4cd72e90afd6cdc68fcfb00', 'false'),
(128, 'sab-50_100x100', 1, 'png', 'sab-50', 0, 'items_ammunition_laser', '8c128831210a77fdebfc8085f0de2700', 'false'),
(129, 'ship_citadel-eic_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(130, 'f-12-ba_63x63', 1, 'png', 'f-12-ba', 0, 'items_drone_formation', '327081fa1cdb923ad20ac36d43b9d700', 'false'),
(131, 'ish-01_30x30', 1, 'png', 'ish-01', 0, 'items_equipment_extra_cpu', 'b5303220b6ebbf91ae9f1203d99b1900', 'false'),
(132, 'g-ex1_30x30', 1, 'png', 'g-ex1', 0, 'items_equipment_petgear', '1b2a1bf981d2718438c924a17081de00', 'false'),
(133, 'plt-2021_63x63', 1, 'png', 'plt-2021', 0, 'items_ammunition_rocket', '4913b7d593e9d812b05c4f3eaaf40100', 'false'),
(134, 'referee_top', 1, 'png', 'referee', 0, 'items_ship_goliath_design', '5f60a1ad5ecaf8246c0873ae10838d00', 'false'),
(135, 'flax-1_30x30', 1, 'png', 'flax-1', 1, 'items_drone', '341f84cf5421047ef7f7f6dd8221ac00', 'false'),
(136, 'saturn_top', 1, 'png', 'saturn', 0, 'items_ship', '74b03339d4a0466c3c0c791c24146600', 'false'),
(137, 'ship_pack-trinity-mmo_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(138, 'xp-b02_30x30', 1, 'png', 'xp-b02', 0, 'items_equipment_booster', '2befa14e50165953e40edf7a2d3faf00', 'false'),
(139, 'f-05-pi_63x63', 1, 'png', 'f-05-pi', 0, 'items_drone_formation', '20452d49362eb16ca7165110108eea00', 'false'),
(140, 'cl04k-m_30x30', 1, 'png', 'cl04k-m', 0, 'items_equipment_extra_cpu', '69d7b48403e27694ba1e567c65ede300', 'false'),
(141, 'hst-1_63x63', 1, 'png', 'hst-1', 0, 'items_equipment_weapon_rocketlauncher', '7e61b1762e2b96671390e0ff30524700', 'false'),
(142, 'g3x-crgo-x_63x63', 1, 'png', 'g3x-crgo-x', 0, 'items_equipment_extra_cpu', '472cdbd24653ffd02cfa9d78f109c700', 'false'),
(143, 'centaur_top', 1, 'png', 'centaur', 0, 'items_ship_goliath_design', '10e97f1d09ae38fb6cd4761239df2700', 'false'),
(144, 'drone_formation_f-11-he_100x100', 1, 'png', 'drone', 0, 'items', 'noCDN', 'false'),
(145, 'sle-01_100x100', 1, 'png', 'sle-01', 0, 'items_equipment_extra_cpu', '99ea1c9b0f2945903e1940e185656000', 'false'),
(146, 'cl04k-xs_30x30', 1, 'png', 'cl04k-xs', 0, 'items_equipment_extra_cpu', 'ff4a801692d7e78b75491daa5af27300', 'false'),
(147, 'bigboy_63x63', 1, 'png', 'bigboy', 0, 'items_ship', '84f9930b0a6dcc761e8181809002cc00', 'false'),
(148, 'eco-10_63x63', 1, 'png', 'eco-10', 0, 'items_ammunition_rocketlauncher', '12045ffd885f2549b7898a8b541e2700', 'false'),
(149, 'pet10_63x63', 1, 'png', 'pet10', 0, 'items_pet', '914f7da0e50393dd5acf247001f22500', 'false'),
(150, 'booty-key_30x30', 1, 'png', 'booty-key', 0, 'items_resource', 'ffbc72514edc29adbcb69b1da2c23a00', 'false'),
(151, 'havoc-4_top', 1, 'png', 'havoc-4', 4, 'items_drone_designs', '2c343d1411545d71f2ac5d473be80f00', 'false'),
(152, 'pet10_100x100', 1, 'png', 'pet10', 0, 'items_pet', 'e8bbd8e957933caf10200c8ae422b400', 'false'),
(153, 'iris-2_30x30', 1, 'png', 'iris-2', 2, 'items_drone', 'b10d193b55f89656936668c1bc559900', 'false'),
(154, 'f-03-la_63x63', 1, 'png', 'f-03-la', 0, 'items_drone_formation', 'd9f4cea713c8fc5adf8a05edf1be5000', 'false'),
(155, 'hmd-07_100x100', 1, 'png', 'hmd-07', 0, 'items_equipment_extra', '13dee6dcb1f39fc812db55e2db0ec800', 'false'),
(156, 'booster_hon-b01_100x100', 1, 'png', 'booster', 0, 'items', 'noCDN', 'false'),
(157, 'rllb-x_100x100', 1, 'png', 'rllb-x', 0, 'items_equipment_extra_cpu', 'c02ef79c7fb09afb18efa7bacb68e300', 'false'),
(158, 'ship_aegis-eic_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(159, 'aegis-mmo_63x63', 1, 'png', 'aegis-mmo', 0, 'items_ship', 'e22393125d160cd92dc6548106523c00', 'false'),
(160, 'nc-rrb-x_63x63', 1, 'png', 'nc-rrb-x', 0, 'items_equipment_extra_cpu', 'a08b6fd485a562a84505c37f4b226200', 'false'),
(161, 'rb-02_100x100', 1, 'png', 'rb-02', 0, 'items_ammunition_mine', '10afe33dcf289a7f8ed03eda793aa200', 'false'),
(162, 'shg-01_100x100', 1, 'png', 'shg-01', 0, 'items_ammunition_rocketlauncher', '9706f47d9c8c2dd290a869fdb7b7eb00', 'false'),
(163, 'zeus-5_100x100', 1, 'png', 'zeus-5', 5, 'items_drone', '98e8d2cdceb6412e5b9c69ebb7444a00', 'false'),
(164, 'f-02-ar_63x63', 1, 'png', 'f-02-ar', 0, 'items_drone_formation', '46d6a4e6f63e31a827ba49311c0d2000', 'false'),
(165, 'bigboy_100x100', 1, 'png', 'bigboy', 0, 'items_ship', '47451983296c2b3216aa523e944ced00', 'false'),
(166, 'res-b01_30x30', 1, 'png', 'res-b01', 0, 'items_equipment_booster', '64c6ae622588f1f1d88ee18099faae00', 'false'),
(167, 'iris-5_63x63', 1, 'png', 'iris-5', 5, 'items_drone', 'cd363e0f68297796aeb1a1dc8725500', 'false'),
(168, 'f-11-he_100x100', 1, 'png', 'f-11-he', 0, 'items_drone_formation', 'd2e530e6ce2a0e187c6ecb0fd7148100', 'false'),
(169, 'rok-t01_30x30', 1, 'png', 'rok-t01', 0, 'items_equipment_extra_cpu', '9670fe405d1999f3e075d4e065cd8700', 'false'),
(170, 'f-03-la_100x100', 1, 'png', 'f-03-la', 0, 'items', 'a4fcab3976f58229ef5b722a22dfeb00', 'false'),
(171, 'generator_sg3n-a01_100x100', 1, 'png', 'generator', 0, 'items', 'noCDN', 'false'),
(172, 'ajp-01_30x30', 1, 'png', 'ajp-01', 0, 'items_equipment_extra_cpu', '513cb86be4b07adda776f39f45147800', 'false'),
(173, 'sg3n-a02_63x63', 1, 'png', 'sg3n-a02', 0, 'items_equipment_generator_shield', '311654cd6187f4d509c3a0322ea09500', 'false'),
(174, 'xp-b01_100x100', 1, 'png', 'xp-b01', 0, 'items_equipment_booster', '604d97b01116e0e162f45ca9d2da7c00', 'false'),
(175, 'flax-2_top', 1, 'png', 'flax-2', 2, 'items_drone', '4f590ee2ee587d4df9e41729f63f0900', 'false'),
(176, 'sg3n-a01_30x30', 1, 'png', 'sg3n-a01', 0, 'items_equipment_generator_shield', '8c0b74bf0cc43c58fb39e6d48c495000', 'false'),
(177, 'cpu_g3x-amry-l_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(178, 'sl-01_63x63', 1, 'png', 'sl-01', 0, 'items_ammunition_mine', '1b601c1d7b1fc78ef8c334cbb7b5f500', 'false'),
(179, 'weapon_hst2_100x100', 1, 'png', 'weapon', 0, 'items', 'noCDN', 'false'),
(180, 'hst-2_30x30', 1, 'png', 'hst-2', 0, 'items_equipment_weapon_rocketlauncher', 'b50011779dba406b663876c313436c00', 'false'),
(181, 'aegis-eic_top', 1, 'png', 'aegis-eic', 0, 'items_ship', '73a4596f78155b457fc9ac150e1c3700', 'false'),
(182, 'hon-b02_30x30', 1, 'png', 'hon-b02', 0, 'items_equipment_booster', '1def246555fcbeab09549afd94807600', 'false'),
(183, 'nc-awb-x_30x30', 1, 'png', 'nc-awb-x', 0, 'items_equipment_extra_cpu', 'ab35aad749b236d4975a977110ff1400', 'false'),
(184, 'rep-b01_100x100', 1, 'png', 'rep-b01', 0, 'items_equipment_booster', '7653d8de407d2c4adbb74d7e99894b00', 'false'),
(185, 'rb-e02_100x100', 1, 'png', 'rb-e02', 0, 'items_ammunition_mine', '975eabb65ef0c789fc3fcdf16c5c5e00', 'false'),
(186, 'cpu_rb-x_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(187, 'pet_protocol_g-pd1_100x100', 1, 'png', 'pet', 0, 'items', 'noCDN', 'false'),
(188, 'g3x-amry-s_30x30', 1, 'png', 'g3x-amry-s', 0, 'items_equipment_extra_cpu', '5b5088d2c981e0cd73df005aca6ed700', 'false'),
(189, 'cpu_ish-01_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(190, 'corsair_100x100', 1, 'png', 'corsair', 0, 'items_ship_vengeance_design', 'fdb5d76fec778ab933511af5c45a8e00', 'false'),
(191, 'g-rl1_30x30', 1, 'png', 'g-rl1', 0, 'items_equipment_petgear', '8251de16a588598e3c175e23139d2f00', 'false'),
(192, 'g3n-6900_100x100', 1, 'png', 'g3n-6900', 0, 'items_equipment_generator_speed', 'ebd1850eecd35679b614d38a62786f00', 'false'),
(193, 'saturn_100x100', 1, 'png', 'saturn', 0, 'items_ship', '37621b30d34eb7bd11a6112f967ad600', 'false'),
(194, 'exalted_63x63', 1, 'png', 'exalted', 0, 'items_ship_goliath_design', 'ac8e12195d070eed94ce15b3523ba500', 'false'),
(195, 'emp-01_30x30', 1, 'png', 'emp-01', 0, 'items_ammunition_specialammo', '738e8f623811f85c1235b1c8c56c1100', 'false'),
(196, 'crimson_30x30', 1, 'png', 'crimson', 0, 'items_ship_goliath_design', '12f6523bf590a66e9d6ca1348433d900', 'false'),
(197, 'terbium_63x63', 1, 'png', 'terbium', 0, 'items_resource_ore', '6c2fb01e0f3e51a3ed2965d63a707900', 'false'),
(198, 'independence_top', 1, 'png', 'independence', 0, 'items_ship_goliath_design', '2da9e0c7f20f73fc1264316bcc7e6b00', 'false'),
(199, 'lf-3_30x30', 1, 'png', 'lf-3', 0, 'items_equipment_weapon_laser', 'dc3f2118a4fae31b28744f5f69b53e00', 'false'),
(200, 'pet10-14_top', 1, 'png', 'pet10-14', 0, 'items_pet', '179a5e30a4a8324ac3ff0d91ab204200', 'false'),
(201, 'booster_rep-b02_100x100', 1, 'png', 'booster', 0, 'items', 'noCDN', 'false'),
(202, 'g3n-6900_63x63', 1, 'png', 'g3n-6900', 0, 'items_equipment_generator_speed', 'd3511da1ba864dbfb783a1a694842100', 'false'),
(203, 'goal_63x63', 1, 'png', 'goal', 0, 'items_ship_goliath_design', '17f9935c499ab4e909f7ca10a2d1e00', 'false'),
(204, 'res-b01_63x63', 1, 'png', 'res-b01', 0, 'items_equipment_booster', 'f70b3a463a9cf513bbf95c8f7da9dd00', 'false'),
(205, 'mcb-50_30x30', 1, 'png', 'mcb-50', 0, 'items_ammunition_laser', 'e6c8656cf822817bf38242c131a9c00', 'false'),
(206, 'booster_hp-b02_100x100', 1, 'png', 'booster', 0, 'items', 'noCDN', 'false'),
(207, 'g-ar1_30x30', 1, 'png', 'g-ar1', 0, 'items_equipment_petgear', '56078f012cb43df403c4781f8ddfb000', 'false'),
(208, 'design_d-ex-01_100x100', 1, 'png', 'design', 0, 'items', 'noCDN', 'false'),
(209, 'cpu_g3x-amry-m_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(210, 'shg-01_30x30', 1, 'png', 'shg-01', 0, 'items_ammunition_rocketlauncher', 'e504895a8f3a276638388748ebe97900', 'false'),
(211, 'f-06-da_30x30', 1, 'png', 'f-06-da', 0, 'items_drone_formation', 'f03ffc87eb8c8d9f5c2fbcbf8f35a300', 'false'),
(212, 'alb-x_100x100', 1, 'png', 'alb-x', 0, 'items_equipment_extra_cpu', '21e336721d12e791fb7e7c6414d86300', 'false'),
(213, 'saturn_63x63', 1, 'png', 'saturn', 0, 'items_ship', '54439862c283606a1ec37aa2c7eeca00', 'false'),
(214, 'lf-2_100x100', 1, 'png', 'lf-2', 0, 'items_equipment_weapon_laser', '803197c677b55ef80655269c1efc0100', 'false'),
(215, 'res-b01_100x100', 1, 'png', 'res-b01', 0, 'items_equipment_booster', 'f6ea27eb30cc27d1ab0d0610ffcc5c00', 'false'),
(216, 'ship_pack-trinity-eic_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(217, 'empm-01_63x63', 1, 'png', 'empm-01', 0, 'items_ammunition_mine', '23688e527b8f6d6263134a5cbcc8b100', 'false'),
(218, 'resource_lgf_100x100', 1, 'png', 'resource', 0, 'items', 'noCDN', 'false'),
(219, 'havoc-2_30x30', 1, 'png', 'havoc-2', 2, 'items_drone_designs', 'dbc0d478691de052745cf612593e0100', 'false'),
(220, 'res-b02_30x30', 1, 'png', 'res-b02', 0, 'items_equipment_booster', '14a021121b8a1ee16e1533570db15b00', 'false'),
(221, 'iris-5_top', 1, 'png', 'iris-5', 5, 'items_drone', 'b6aae2912b6e0eb1b49d50ab5caef400', 'false'),
(222, 'drone_formation_f-03-la_100x100', 1, 'png', 'drone', 0, 'items', 'noCDN', 'false'),
(223, 'rep-2_30x30', 1, 'png', 'rep-2', 0, 'items_equipment_extra_repbot', 'e24096312c50b1d21fa3210bcb375a00', 'false'),
(224, 'weapon_hst1_100x100', 1, 'png', 'weapon', 0, 'items', 'noCDN', 'false'),
(225, 'phoenix_top', 1, 'png', 'phoenix', 0, 'items_ship', 'c96f80f53d3010ddbdfa5f88ad2d4e00', 'false'),
(226, 'nc-awr-x_100x100', 1, 'png', 'nc-awr-x', 0, 'items_equipment_extra_cpu', 'dd4d95f1e348e27ba53a6edf5f0ae000', 'false'),
(227, 'nostromo_63x63', 1, 'png', 'nostromo', 0, 'items_ship', 'c6c9e599093f98c72f19c07ca342ac00', 'false'),
(228, 'aim-01_63x63', 1, 'png', 'aim-01', 0, 'items_equipment_extra_cpu', 'b01ffaf8334bd3f76bc2cadad6198200', 'false'),
(229, 'sreg-b01_63x63', 1, 'png', 'sreg-b01', 0, 'items_equipment_booster', 'c6bd6117d3f1a9562b4ac9459a365c00', 'false'),
(230, 'ai-sm1_100x100', 1, 'png', 'ai-sm1', 0, 'items_equipment_aiprotocol', '4d7b65b79553a236d3b0c3399066d500', 'false'),
(231, 'g-kk1_100x100', 1, 'png', 'g-kk1', 0, 'items_equipment_petgear', 'ea7e148224933dbbfc36ddee26f79600', 'false'),
(232, 'rocket_r-310_100x100', 1, 'png', 'rocket', 0, 'items', 'noCDN', 'false'),
(233, 'ai-s1_30x30', 1, 'png', 'ai-s1', 0, 'items_equipment_aiprotocol', '5dc683cb08cc876f303ce5aa557da400', 'false'),
(234, 'sreg-b02_30x30', 1, 'png', 'sreg-b02', 0, 'items_equipment_booster', '22486a4c1c487dc763a0e534e5c08300', 'false'),
(235, 'mine_empm-01_100x100', 1, 'png', 'mine', 0, 'items', 'noCDN', 'false'),
(236, 'drone_formation_f-06-da_100x100', 1, 'png', 'drone', 0, 'items', 'noCDN', 'false'),
(237, 'cpu_nc-agb-x_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(238, 'flax-3_63x63', 1, 'png', 'flax-3', 3, 'items_drone', 'b38a0a555f3df682bd86e68dec933700', 'false'),
(239, 'mamba_63x63', 1, 'png', 'mamba', 0, 'items_ship_bigboy_design', '95e9033f03752c48df8852823d483200', 'false'),
(240, 'generator_sg3n-b01_100x100', 1, 'png', 'generator', 0, 'items', 'noCDN', 'false'),
(241, 'f-09-mo_63x63', 1, 'png', 'f-09-mo', 0, 'items_drone_formation', 'ba0c62f66247f42903c4a7e4ad99a00', 'false'),
(242, 'iris-2_63x63', 1, 'png', 'iris-2', 2, 'items_drone', 'e3ab25f382927dfd082f290967524500', 'false'),
(243, 'shipempty_top', 1, 'png', 'shipempty', 0, 'items_ship', 'b32af8472fe0942be26fecfc71ac5800', 'false'),
(244, 'resource-deal-lgf-100_100x100', 1, 'png', 'resource-deal-lgf-100', 0, 'items', '442d63f845b88b340554e42e1fa56200', 'false'),
(245, 'drone_formation_f-01-tu_100x100', 1, 'png', 'drone', 0, 'items', 'noCDN', 'false'),
(246, 'apis-3_30x30', 1, 'png', 'apis-3', 3, 'items_drone', '1e46e2cef4d5c5d3800098f043877e00', 'false'),
(247, 'generator_g3n-7900_100x100', 1, 'png', 'generator', 0, 'items', 'noCDN', 'false'),
(248, 'rep-b01_63x63', 1, 'png', 'rep-b01', 0, 'items_equipment_booster', '901b96b36798672405a0dde74e71f700', 'false'),
(249, 'f-10-cr_100x100', 1, 'png', 'f-10-cr', 0, 'items_drone_formation', 'f92c0bec627cfffc18d5c229fc65500', 'false'),
(250, 'sg3n-a03_63x63', 1, 'png', 'sg3n-a03', 0, 'items_equipment_generator_shield', 'e775ee19bac6ca833965f19f7f8d3a00', 'false'),
(251, 'generator_sg3n-a03_100x100', 1, 'png', 'generator', 0, 'items', 'noCDN', 'false'),
(252, 'g3n-3210_30x30', 1, 'png', 'g3n-3210', 0, 'items_equipment_generator_speed', 'f0bb2d49c69daf1b7125623d78c1b700', 'false'),
(253, 'zeus-2_100x100', 1, 'png', 'zeus-2', 2, 'items_drone', '1efc2236c0a9a0110b622ee5c0a02200', 'false'),
(254, 'lf-4_30x30', 1, 'png', 'lf-4', 0, 'items_equipment_weapon_laser', '12046c7960d4b8dcb3b42b9ae3bbbe00', 'false'),
(255, 'adept_30x30', 1, 'png', 'adept', 0, 'items_ship_vengeance_design', 'fd0cbde8e47cd940de99ea626a3fb100', 'false'),
(256, 'apis-3_100x100', 1, 'png', 'apis-3', 3, 'items_drone', '3185178fc45a92070ddd8afead91f800', 'false'),
(257, 'smb-01_100x100', 1, 'png', 'smb-01', 0, 'items_equipment_extra_cpu', 'ad7e7ff45f564293dcac06b878e57b00', 'false'),
(258, 'pet10-10_top', 1, 'png', 'pet10-10', 0, 'items_pet', '1185755c1a4bf5bda75d0f81ab89300', 'false'),
(259, 'ship_piranha_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(260, 'ddm-01_30x30', 1, 'png', 'ddm-01', 0, 'items_ammunition_mine', 'c8300a9d1b414c5dc4e868daf247e100', 'false'),
(261, 'dmg-b02_100x100', 1, 'png', 'dmg-b02', 0, 'items_equipment_booster', '7476a8dfc78fb115dca50581932beb00', 'false'),
(262, 'spearhead-eic_63x63', 1, 'png', 'spearhead-eic', 0, 'items_ship', 'e298dbf18f7525d1f70d9e0a4b8e8200', 'false'),
(263, 'venom_top', 1, 'png', 'venom', 0, 'items_ship_goliath_design', '13e3a904adbf3017e4561b98a2e14a00', 'false'),
(264, 'ai-aim1_30x30', 1, 'png', 'ai-aim1', 0, 'items_equipment_aiprotocol', '88cc1eb2a2b8d502de9f80a0dca65500', 'false'),
(265, 'f-12-ba_100x100', 1, 'png', 'f-12-ba', 0, 'items_drone_formation', '2f1585c4255fada896ece0bf0e314700', 'false'),
(266, 'cpu_rllb-x_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(267, 'lf-2_30x30', 1, 'png', 'lf-2', 0, 'items_equipment_weapon_laser', '156cf2ddc0e14ff43bfe6552f1585f00', 'false'),
(268, 'rep-2_100x100', 1, 'png', 'rep-2', 0, 'items_equipment_extra_repbot', '90cbd18d53f4340e7a28254367338800', 'false'),
(269, 'csr-02_63x63', 1, 'png', 'csr-02', 0, 'items_equipment_aiprotocol', '1db69aa1af5ac186b2c427f0d576ba00', 'false'),
(270, 'exalted_30x30', 1, 'png', 'exalted', 0, 'items_ship_goliath_design', '72c2127019b2e3e28757998649a5cb00', 'false'),
(271, 'zeus-1_63x63', 1, 'png', 'zeus-1', 1, 'items_drone', '365124dd741333c886ee48bded223800', 'false'),
(272, 'ai-cr1_30x30', 1, 'png', 'ai-cr1', 0, 'items_equipment_aiprotocol', 'ac92207def2860061b3ff02d00f12000', 'false'),
(273, 'hmd-07_30x30', 1, 'png', 'hmd-07', 0, 'items_equipment_extra', '82fc02e71a87a1c22d3c60d097293100', 'false'),
(274, 'liberator_63x63', 1, 'png', 'liberator', 0, 'items_ship', '1fd1699b162b315e7d7097c79019e700', 'false'),
(275, 'flax-5_30x30', 1, 'png', 'flax-5', 5, 'items_drone', '9f39bee7d90fee95bee00070f29bc900', 'false'),
(276, 'r-310_100x100', 1, 'png', 'r-310', 0, 'items_ammunition_rocket', '9d29b47ca17ee0316f80a4bee39c9600', 'false'),
(277, 'hst-1_100x100', 1, 'png', 'hst-1', 0, 'items_equipment_weapon_rocketlauncher', '4d3a4c3fcc183b86a549d099de824800', 'false'),
(278, 'independence_100x100', 1, 'png', 'independence', 0, 'items_ship_goliath_design', 'c87ee15e93461ae67bc0c84855d3f000', 'false'),
(279, 'cl04k-xl_63x63', 1, 'png', 'cl04k-xl', 0, 'items_equipment_extra_cpu', '3c3954049d50e00d9e4c41e2455cde00', 'false'),
(280, 'res-b02_63x63', 1, 'png', 'res-b02', 0, 'items_equipment_booster', '2c72acdaad285520f34506a31bc05900', 'false'),
(281, 'lcb-10_63x63', 1, 'png', 'lcb-10', 0, 'items_ammunition_laser', 'c02154d2ce135d660f647631dbbfbc00', 'false'),
(282, 'promerium_30x30', 1, 'png', 'promerium', 0, 'items_resource_ore', 'e814113277b6260618e4ab5969e20a00', 'false'),
(283, 'ship_goliath_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(284, 'ship_phoenix_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(285, 'leonov-default_top', 1, 'png', 'leonov-default', 0, 'items_ship_model', '415d77665462f6e1610485619a4000', 'false'),
(286, 'hangar_slot_100x100', 1, 'png', 'hangar', 0, 'items', 'noCDN', 'false'),
(287, 'zeus-0_63x63', 1, 'png', 'zeus-0', 0, 'items_drone', '95b0b3e0577188d582bf2fdd85cb2d00', 'false'),
(288, 'ai-lm1_100x100', 1, 'png', 'ai-lm1', 0, 'items_equipment_aiprotocol', 'b5bd078a802e328c0c21032534aa8100', 'false'),
(289, 'sreg-b02_63x63', 1, 'png', 'sreg-b02', 0, 'items_equipment_booster', '2caf5f4659048e2571ad327a1ded0100', 'false'),
(290, 'ish-01_100x100', 1, 'png', 'ish-01', 0, 'items_equipment_extra_cpu', 'ba929c263af782b8fb64046ee2b94d00', 'false'),
(291, 'rep-s_63x63', 1, 'png', 'rep-s', 0, 'items_equipment_extra_repbot', 'c82f70710b97fc05410bb53b6b8e7400', 'false'),
(292, 'lf-1_100x100', 1, 'png', 'lf-1', 0, 'items_equipment_weapon_laser', '63996742896b58647fcd48dda079e300', 'false'),
(293, 'rocket_sar-01_100x100', 1, 'png', 'rocket', 0, 'items', 'noCDN', 'false'),
(294, 'seprom_30x30', 1, 'png', 'seprom', 0, 'items_resource_ore', '8bd534e55e350281963526f256a13f00', 'false'),
(295, 'mamba_30x30', 1, 'png', 'mamba', 0, 'items_ship_bigboy_design', '2b509245b27a71724ffb484ccf862f00', 'false'),
(296, 'ai-aim1_100x100', 1, 'png', 'ai-aim1', 0, 'items_equipment_aiprotocol', 'bf3768775cdea7a275fdc03d7e992100', 'false'),
(297, 'fwx-l_63x63', 1, 'png', 'fwx-l', 0, 'items_ammunition_firework', '3e220381c3f61536dc7e6f1bf5b6e00', 'false'),
(298, 'plt-2021_30x30', 1, 'png', 'plt-2021', 0, 'items_ammunition_rocket', 'b61ed2d31f27dca205aabf6825117d00', 'false'),
(299, 'ai-hp1_63x63', 1, 'png', 'ai-hp1', 0, 'items_equipment_aiprotocol', 'faaf4bb645a2f3a6a2c86780ae2bb100', 'false'),
(300, 'prometium_63x63', 1, 'png', 'prometium', 0, 'items_resource_ore', 'cea1d899667583722409741b9ab5b400', 'false'),
(301, 'crimson_100x100', 1, 'png', 'crimson', 0, 'items_ship_goliath_design', 'abb4181ed16fbbd2cd918bb85460c200', 'false'),
(302, 'pet_protocol_ai-cr1_100x100', 1, 'png', 'pet', 0, 'items', 'noCDN', 'false'),
(303, 'lgf_30x30', 1, 'png', 'lgf', 0, 'items_resource', 'b12326b73cc0a0ea9776deb3e9ee7000', 'false'),
(304, 'rllb-x_30x30', 1, 'png', 'rllb-x', 0, 'items_equipment_extra_cpu', 'ad70453dead7077704b34dcbef4b5d00', 'false'),
(305, 'g3n-2010_63x63', 1, 'png', 'g3n-2010', 0, 'items_equipment_generator_speed', 'b1497b51c32fa9f3494555ded7ce5100', 'false'),
(306, 'sg3n-a01_100x100', 1, 'png', 'sg3n-a01', 0, 'items_equipment_generator_shield', '19228ba81b387583a63ed8c9a9465400', 'false'),
(307, 'robot_rep-s_100x100', 1, 'png', 'robot', 0, 'items', 'noCDN', 'false'),
(308, 'zeus-2_63x63', 1, 'png', 'zeus-2', 2, 'items_drone', 'f7fe38c128c3c13d9097bfce85891c00', 'false'),
(309, 'rocket_cbr_100x100', 1, 'png', 'rocket', 0, 'items', 'noCDN', 'false'),
(310, 'pet10-11_top', 1, 'png', 'pet10-11', 0, 'items_pet', '6858e2ab0c16c16ed982763fa9645d00', 'false'),
(311, 'ship_top_empty', 1, 'png', 'ship', 0, 'items_ship', 'b32af8472fe0942be26fecfc71ac5800', 'false'),
(312, 'lottery-euro-2012_30x30', 1, 'png', 'lottery-euro-2012', 0, 'items_resource', '37e4c751e8dd5e36e13475a18abc9600', 'false'),
(313, 'crimson_63x63', 1, 'png', 'crimson', 0, 'items_ship_goliath_design', '84c63772c5d3b306af523134e1898200', 'false'),
(314, 'rep-b02_30x30', 1, 'png', 'rep-b02', 0, 'items_equipment_booster', '4cf86fe06340830e9173bf21d380ee00', 'false'),
(315, 'yamato_100x100', 1, 'png', 'yamato', 0, 'items_ship', '593ad8d6d4ae1230ef58268a50c47100', 'false'),
(316, 'f-02-ar_30x30', 1, 'png', 'f-02-ar', 0, 'items_drone_formation', '9652aa854d4173047297cbab9e2d500', 'false'),
(317, 'diminisher_30x30', 1, 'png', 'diminisher', 0, 'items_ship_goliath_design', '13bd3045938ff7e1387e3810f4ef9e00', 'false'),
(318, 'pet10_30x30', 1, 'png', 'pet10', 0, 'items_pet', '64d37f39e6afc9ccfd3fad221a3f1a00', 'false'),
(319, 'g3n-6900_30x30', 1, 'png', 'g3n-6900', 0, 'items_equipment_generator_speed', 'd7b869fd976e4aa747579b34ddf7c600', 'false'),
(320, 'bastion_30x30', 1, 'png', 'bastion', 0, 'items_ship_goliath_design', '45177fe09e92307b3d1bf8d0036ea200', 'false'),
(321, 'acm-01_30x30', 1, 'png', 'acm-01', 0, 'items_ammunition_mine', '135566859f94cc51246f401ec8978200', 'false'),
(322, 'cl04k-xl_30x30', 1, 'png', 'cl04k-xl', 0, 'items_equipment_extra_cpu', '7064cbe10da5fddb20fa4cd47f403100', 'false'),
(323, 'ship_goliath_design_goal_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(324, 'g-rep1_100x100', 1, 'png', 'g-rep1', 0, 'items_equipment_petgear', '574370c2191e3afe9f73d59fe45b6c00', 'false'),
(325, 'citadel-vru_63x63', 1, 'png', 'citadel-vru', 0, 'items_ship', '4324879c69457380efb2d67f8dd7d300', 'false'),
(326, 'robot_rep-2_100x100', 1, 'png', 'robot', 0, 'items', 'noCDN', 'false'),
(327, 'apis-1_63x63', 1, 'png', 'apis-1', 1, 'items_drone', '9328098cf6f61f9a15c186cda93bb400', 'false'),
(328, 'booster_shd-b01_100x100', 1, 'png', 'booster', 0, 'items', 'noCDN', 'false'),
(329, 'ai-e1_63x63', 1, 'png', 'ai-e1', 0, 'items_equipment_aiprotocol', '95edfabfb98c3495835cc6b53ee41c00', 'false'),
(330, 'apis-0_30x30', 1, 'png', 'apis-0', 0, 'items_drone', '36ff14ea6f9929bbe251c97c7aa9c100', 'false'),
(331, 'sar-02_30x30', 1, 'png', 'sar-02', 0, 'items_ammunition_rocketlauncher', '6622c2e830046ff7c3dfedd2f15a4400', 'false'),
(332, 'pet_protocol_g-arl1_100x100', 1, 'png', 'pet', 0, 'items', 'noCDN', 'false'),
(333, 'vengeance_top', 1, 'png', 'vengeance', 0, 'items_ship', 'e187575f818b93005d2cf3c693d5d600', 'false'),
(334, 'cbr_63x63', 1, 'png', 'cbr', 0, 'items_ammunition_rocketlauncher', '4d2f59cc61f9af5b5e60bd486f620200', 'false'),
(335, 'sapphire_100x100', 1, 'png', 'sapphire', 0, 'items_ship_goliath_design', 'ca01b887ffa464f1c21c731d99f9e00', 'false'),
(336, 'iris-3_100x100', 1, 'png', 'iris-3', 3, 'items_drone', 'a71d6fe22419ea188a5d2dd78e7b6900', 'false'),
(337, 'cpu_nc-awl-x_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(338, 'min-t02_63x63', 1, 'png', 'min-t02', 0, 'items_equipment_extra_cpu', '6df6600f801c02ffa658825604118f00', 'false'),
(339, 'rb-x_63x63', 1, 'png', 'rb-x', 0, 'items_equipment_extra_cpu', '2bf41c6f21d7b0f8d99de39d5134e400', 'false'),
(340, 'generator_g3n-1010_100x100', 1, 'png', 'generator', 0, 'items', 'noCDN', 'false'),
(341, 'robot_rep-1_100x100', 1, 'png', 'robot', 0, 'items', 'noCDN', 'false'),
(342, 'design_d-tri_100x100', 1, 'gif', 'design', 0, 'items', 'noCDN', 'false'),
(343, 'pet10-0_top', 1, 'png', 'pet10-0', 0, 'items_pet', '15956f5b638557555c72dd0e3a005400', 'false'),
(344, 'nc-awb-x_100x100', 1, 'png', 'nc-awb-x', 0, 'items_equipment_extra_cpu', 'b4df32b610682314306316c06eed2600', 'false'),
(345, 'iris-1_top', 1, 'png', 'iris-1', 1, 'items_drone', 'cdcc2dc2ac60191715615ac48100e300', 'false'),
(346, 'dr-02_63x63', 1, 'png', 'dr-02', 0, 'items_equipment_extra_cpu', '7fe8bc7aabcff5e7a146f6afaae5600', 'false'),
(347, 'nc-awr-x_63x63', 1, 'png', 'nc-awr-x', 0, 'items_equipment_extra_cpu', '3c497366b02260af50dc4dc22b257200', 'false'),
(348, 'dr-01_100x100', 1, 'png', 'dr-01', 0, 'items_equipment_extra_cpu', 'ac134270b2d6c46d48ff94bfbacfa300', 'false'),
(349, 'nc-agb-x_30x30', 1, 'png', 'nc-agb-x', 0, 'items_equipment_extra_cpu', 'ec4b1bb40a78d57ed0b3fc5a8127e00', 'false'),
(350, 'robot_rep-3_100x100', 1, 'png', 'robot', 0, 'items', 'noCDN', 'false'),
(351, 'hercules_63x63', 1, 'png', 'hercules', 0, 'items_drone_designs', 'ff679f4f9829a77f8142d0bf667e5b00', 'false'),
(352, 'aegis-vru_63x63', 1, 'png', 'aegis-vru', 0, 'items_ship', '406d8d73890218d2715bdb1ca235c100', 'false'),
(353, 'mcb-50_100x100', 1, 'png', 'mcb-50', 0, 'items_ammunition_laser', '86f834298693b605147ccf579bb84d00', 'false'),
(354, 'apis-part_63x63', 1, 'png', 'apis-part', 0, 'items_resource_blueprint', '37459d31f6c40151ebb709c1cf940b00', 'false'),
(355, 'booty-key-blue_30x30', 1, 'png', 'booty-key-blue', 0, 'items_resource', '91c718dd79b90a25792ae1877cf85800', 'false'),
(356, 'ship_goliath_design_centaur_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(357, 'g3n-7900_30x30', 1, 'png', 'g3n-7900', 0, 'items_equipment_generator_speed', 'ea805e03b2d3fa173b723f1f846bc900', 'false'),
(358, 'hp-b02_63x63', 1, 'png', 'hp-b02', 0, 'items_equipment_booster', '697e1d0389200afd59e17e59756a0900', 'false'),
(359, 'amber_top', 1, 'png', 'amber', 0, 'items_ship_goliath_design', '65981797a3794ac36a686a6e05633200', 'false'),
(360, 'rep-3_100x100', 1, 'png', 'rep-3', 0, 'items_equipment_extra_repbot', '3417fb53c3493f1d8baf68c70e8da400', 'false'),
(361, 'equipment_extra_cpu_fb-x_100x100', 1, 'png', 'equipment', 0, 'items', 'noCDN', 'false'),
(362, 'design_sd-di-01_100x100', 1, 'png', 'design', 0, 'items', 'noCDN', 'false'),
(363, 'apis-4_63x63', 1, 'png', 'apis-4', 4, 'items_drone', 'ba6b46d4cac1d0d819915c1a8037e900', 'false'),
(364, 'rd-x_30x30', 1, 'png', 'rd-x', 0, 'items_equipment_extra_cpu', '38460efefdf781692acac6ff10fc5900', 'false'),
(365, 'mp-1_100x100', 1, 'png', 'mp-1', 0, 'items_equipment_weapon_laser', '23ad6cc5c949ffce0e6ff2683b16e700', 'false'),
(366, 'g-rep1_63x63', 1, 'png', 'g-rep1', 0, 'items_equipment_petgear', 'ece99d0c722aaffb1a0dbea09ad58000', 'false'),
(367, 'rocket_eco-10_100x100', 1, 'png', 'rocket', 0, 'items', 'noCDN', 'false'),
(368, 'design_d-ja-01_100x100', 1, 'png', 'design', 0, 'items', 'noCDN', 'false'),
(369, 'cpu_aim-02_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(370, 'resource-deal-ee-100_100x100', 1, 'png', 'resource-deal-ee-100', 0, 'items', '5539e9a32dfc3734377898983a8e5c00', 'false'),
(371, 'ship_bigboy_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(372, 'havoc-5_63x63', 1, 'png', 'havoc-5', 5, 'items_drone_designs', '691122b1882ae1f6eeef9ddbc166c200', 'false'),
(373, 'havoc-0_100x100', 1, 'png', 'havoc-0', 0, 'items_drone_designs', 'b8a0037a61ed96bd3049a49698510700', 'false'),
(374, 'diminisher_63x63', 1, 'png', 'diminisher', 0, 'items_ship_goliath_design', '95450a80fa1ff26c8b61f303474cf500', 'false'),
(375, 'f-09-mo_100x100', 1, 'png', 'f-09-mo', 0, 'items_drone_formation', '7926f9c892ed08f4bd5128cccd09fc00', 'false'),
(376, 'sabm-01_30x30', 1, 'png', 'sabm-01', 0, 'items_ammunition_mine', '9a5f9f1601210579c27e8ad45cf4ec00', 'false'),
(377, 'weapon_lf3_100x100', 1, 'png', 'weapon', 0, 'items', 'noCDN', 'false'),
(378, 'f-10-cr_30x30', 1, 'png', 'f-10-cr', 0, 'items_drone_formation', 'd9f2923538c09e6c1794454546766d00', 'false'),
(379, 'sg3n-b02_30x30', 1, 'png', 'sg3n-b02', 0, 'items_equipment_generator_shield', '21b02c8c30414a8f17b3926fffb5ca00', 'false'),
(380, 'crimson_top', 1, 'png', 'crimson', 0, 'items_ship_goliath_design', 'b72997e945300eebd9763e1ad1038700', 'false'),
(381, 'hon-b02_63x63', 1, 'png', 'hon-b02', 0, 'items_equipment_booster', '85ad27ebece47e61064cffd0432c1300', 'false'),
(382, 'mcb-25_63x63', 1, 'png', 'mcb-25', 0, 'items_ammunition_laser', '86c2c2d261ef196310b34fb3f92c6800', 'false'),
(383, 'cgm-02_63x63', 1, 'png', 'cgm-02', 0, 'items_equipment_aiprotocol', 'dfb6dd82cd1c91db14cb8474a048a300', 'false'),
(384, 'citadel-eic_63x63', 1, 'png', 'citadel-eic', 0, 'items_ship', 'b6300c86b05c4cf9fd0c21161a18bc00', 'false'),
(385, 'citadel-vru_top', 1, 'png', 'citadel-vru', 0, 'items_ship', '18bcb8c4a7fac1cb8b6d936832690c00', 'false'),
(386, 'f-06-da_100x100', 1, 'png', 'f-06-da', 0, 'items_drone_formation', 'e1263fdb07300b3f650afba760dc2800', 'false'),
(387, 'spearhead-vru_63x63', 1, 'png', 'spearhead-vru', 0, 'items_ship', 'dc5f4f03f1333e69032b39837b24b100', 'false'),
(388, 'xenomit_63x63', 1, 'png', 'xenomit', 0, 'items_resource_ore', 'ea8d8fe20c3a61d2cf90f913f8f48000', 'false'),
(389, 'f-10-cr_63x63', 1, 'png', 'f-10-cr', 0, 'items_drone_formation', 'a8344c7b5dad6d908287762fda3a8300', 'false'),
(390, 'ship_citadel-mmo_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(391, 'ucb-100_100x100', 1, 'png', 'ucb-100', 0, 'items_ammunition_laser', 'b56716a7918c9bfb6fe917d63eefb700', 'false'),
(392, 'cpu_g3x-amry-s_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(393, 'smb-01_30x30', 1, 'png', 'smb-01', 0, 'items_equipment_extra_cpu', '5a0257eec5625b07599eddcc1b8700', 'false'),
(394, 'havoc-4_63x63', 1, 'png', 'havoc-4', 4, 'items_drone_designs', 'ba6b46d4cac1d0d819915c1a8037e900', 'false'),
(395, 'ajp-01_63x63', 1, 'png', 'ajp-01', 0, 'items_equipment_extra_cpu', '7799fecfd4fce1f89d900d4304c21000', 'false'),
(396, 'design_sd-li-01_100x100', 1, 'png', 'design', 0, 'items', 'noCDN', 'false'),
(397, 'defcom_63x63', 1, 'png', 'defcom', 0, 'items_ship', '4feb63598001652fa723a3cb9d6c4100', 'false'),
(398, 'jp-02_100x100', 1, 'png', 'jp-02', 0, 'items_equipment_extra_cpu', '4c714d0033db967ba3a2720032ae8800', 'false'),
(399, 'cgm-02_30x30', 1, 'png', 'cgm-02', 0, 'items_equipment_aiprotocol', '60e8cf8e032f9d69934e1f58b7e1d800', 'false'),
(400, 'ignite_63x63', 1, 'png', 'ignite', 0, 'items_ship_goliath_design', 'cbb08e9e9528ee46634ba56a540cf300', 'false'),
(401, 'eco-10_30x30', 1, 'png', 'eco-10', 0, 'items_ammunition_rocketlauncher', 'a6bb8b0876c9563f87e928b0da2bd600', 'false'),
(402, 'wiz-x_30x30', 1, 'png', 'wiz-x', 0, 'items_ammunition_specialammo', '522300456f6b4bec5164514cdccab400', 'false'),
(403, 'alb-x_63x63', 1, 'png', 'alb-x', 0, 'items_equipment_extra_cpu', 'a217c1dc6139d3e5000022123d94cf00', 'false'),
(404, 'hon-b01_100x100', 1, 'png', 'hon-b01', 0, 'items_equipment_booster', 'c185017fd6a72c183e6c3d53c11a8300', 'false'),
(405, 'sg3n-b01_63x63', 1, 'png', 'sg3n-b01', 0, 'items_equipment_generator_shield', '88a331209f4d8680e14a42962bf79400', 'false'),
(406, 'havoc-3_top', 1, 'png', 'havoc-3', 3, 'items_drone_designs', 'ad4ff5cc9d6db5ae6fa3884c57b32b00', 'false'),
(407, 'ai-aim1_63x63', 1, 'png', 'ai-aim1', 0, 'items_equipment_aiprotocol', '896704a193608ae9b372b4633ba61600', 'false'),
(408, 'hp-b01_30x30', 1, 'png', 'hp-b01', 0, 'items_equipment_booster', 'b73402577e766b17c73800a9bd7ba600', 'false'),
(409, 'jp-01_30x30', 1, 'png', 'jp-01', 0, 'items_equipment_extra_cpu', '41aa74ce7c4a9dfd0004631cc1564300', 'false'),
(410, 'rep-1_63x63', 1, 'png', 'rep-1', 0, 'items_equipment_extra_repbot', 'edf977c8aee8eae95927fa2a6ceced00', 'false'),
(411, 'g-el1_63x63', 1, 'png', 'g-el1', 0, 'items_equipment_petgear', '114689366f97fb5af9243b31fb4e8300', 'false'),
(412, 'drone_iris-1_100x100', 1, 'png', 'drone', 0, 'items', 'noCDN', 'false'),
(413, 'smb-01_63x63', 1, 'png', 'smb-01', 0, 'items_equipment_extra_cpu', '9915c23f7b56ca05388afc2a0dc1b900', 'false'),
(414, 'ammo_mcb-50_100x100', 1, 'png', 'ammo', 0, 'items', 'noCDN', 'false'),
(415, 'rep-3_63x63', 1, 'png', 'rep-3', 0, 'items_equipment_extra_repbot', 'e37e71fcb60e174b103aa397522f8400', 'false'),
(416, 'ammo_cbo-100_100x100', 1, 'png', 'ammo', 0, 'items', 'noCDN', 'false'),
(417, 'resource-deal-bk-100_100x100', 1, 'png', 'resource-deal-bk-100', 0, 'items', 'd49dea6e0addc231421e4fbdabc17700', 'false'),
(418, 'lightning_63x63', 1, 'png', 'lightning', 0, 'items_ship_vengeance_design', '3e6f07fe13d2d8fd8d2b1dc7a2328000', 'false'),
(419, 'rep-s_30x30', 1, 'png', 'rep-s', 0, 'items_equipment_extra_repbot', '6512f6cf8e8d40ff25c73b0c225e5500', 'false'),
(420, 'independence_63x63', 1, 'png', 'independence', 0, 'items_ship_goliath_design', '663367a253c2c6549c3b20472088f800', 'false'),
(421, 'shd-b01_30x30', 1, 'png', 'shd-b01', 0, 'items_equipment_booster', 'a0407f48f4a3b0d21cef8c0f02a54e00', 'false'),
(422, 'f-04-st_100x100', 1, 'png', 'f-04-st', 0, 'items_drone_formation', '5416a095f411041c45b021b2931a4b00', 'false'),
(423, 'f-01-tu_30x30', 1, 'png', 'f-01-tu', 0, 'items_drone_formation', 'f8dc4dc044d5bc6ebed961e49bfd5300', 'false'),
(424, 'csr-02_100x100', 1, 'png', 'csr-02', 0, 'items_equipment_aiprotocol', '960c611231888aaffb9da730a1a72200', 'false'),
(425, 'ai-eco1_100x100', 1, 'png', 'ai-eco1', 0, 'items_equipment_aiprotocol', 'a191fa2f6956a649cb7512674092c600', 'false'),
(426, 'design_d-cr-01_100x100', 1, 'png', 'design', 0, 'items', 'noCDN', 'false'),
(427, 'aegis-mmo_top', 1, 'png', 'aegis-mmo', 0, 'items_ship', '4a538391cbbe85e149b393c055601e00', 'false'),
(428, 'g3x-amry-l_63x63', 1, 'png', 'g3x-amry-l', 0, 'items_equipment_extra_cpu', '94572a3d2354e68f99bf55a41fc7300', 'false'),
(429, 'pet10-13_top', 1, 'png', 'pet10-13', 0, 'items_pet', 'e5ac09b36505960cb9cb6e1c2d079300', 'false'),
(430, 'ignite_top', 1, 'png', 'ignite', 0, 'items_ship_goliath_design', 'e1c2c5cf5d6e55f948ff16daa4108300', 'false'),
(431, 'havoc_63x63', 1, 'png', 'havoc', 0, 'items_drone_designs', 'ada51f4195e9e66baa7741514f16b400', 'false'),
(432, 'cpu_dr-02_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(433, 'flax-3_top', 1, 'png', 'flax-3', 3, 'items_drone', 'a3cd0a8df7fdb045e3f9eb656dc47700', 'false'),
(434, 'exalted_100x100', 1, 'png', 'exalted', 0, 'items_ship_goliath_design', 'ffca22d5ba92a62dca8439dce584ae00', 'false'),
(435, 'zeus-0_30x30', 1, 'png', 'zeus-0', 0, 'items_drone', '92994f06e00e51a63769f5de3c240000', 'false'),
(436, 'flax-4_top', 1, 'png', 'flax-4', 4, 'items_drone', '9d85552ccb90056a65c15dba71179e00', 'false'),
(437, 'ajp-01_100x100', 1, 'png', 'ajp-01', 0, 'items_equipment_extra_cpu', 'd4c05b61300e6f836963dd6d27bb6600', 'false'),
(438, 'g3n-7900_100x100', 1, 'png', 'g3n-7900', 0, 'items_equipment_generator_speed', '8a3934d949413335366fd8c5fd831c00', 'false'),
(439, 'ai-cr1_63x63', 1, 'png', 'ai-cr1', 0, 'items_equipment_aiprotocol', 'e82b294d86c070c6de1866c2717a4300', 'false'),
(440, 'sapphire_top', 1, 'png', 'sapphire', 0, 'items_ship_goliath_design', '2d85e440f61e351a124ec3c14e5f0e00', 'false'),
(441, 'mcb-25_30x30', 1, 'png', 'mcb-25', 0, 'items_ammunition_laser', 'becac3718527c5212ffbaef4de6beb00', 'false'),
(442, 'fwx-s_100x100', 1, 'png', 'fwx-s', 0, 'items_ammunition_firework', '7139453fccf623b7933eb477714e7300', 'false'),
(443, 'min-t02_100x100', 1, 'png', 'min-t02', 0, 'items_equipment_extra_cpu', 'e29b05eeb8152c061a02f425c66a7400', 'false'),
(444, 'f-08-ch_100x100', 1, 'png', 'f-08-ch', 0, 'items_drone_formation', '2323c89ef67892a981533c4f490a7000', 'false'),
(445, 'f-07-di_63x63', 1, 'png', 'f-07-di', 0, 'items_drone_formation', 'aa3a416527a1c10e87bccd0c49630600', 'false'),
(446, 'zeus-3_100x100', 1, 'png', 'zeus-3', 3, 'items_drone', '85d82125fb965cf79a5e0afa710fe400', 'false'),
(447, 'hon-b01_63x63', 1, 'png', 'hon-b01', 0, 'items_equipment_booster', '695f9f469982a5baa0e9b290c183b100', 'false'),
(448, 'sle-01_30x30', 1, 'png', 'sle-01', 0, 'items_equipment_extra_cpu', '5f748e92b9b00e73049a8fe1ed6cf300', 'false'),
(449, 'design_d-co-01_100x100', 1, 'png', 'design', 0, 'items', 'noCDN', 'false'),
(450, 'lf-4_63x63', 1, 'png', 'lf-4', 0, 'items_equipment_weapon_laser', 'ddd3dc54b0e1fad5c7d893c9d1b19400', 'false'),
(451, 'g-tra1_63x63', 1, 'png', 'g-tra1', 0, 'items_equipment_petgear', '9f16fdb60862d771707f5a3d0bdb5500', 'false'),
(452, 'ubr-100_63x63', 1, 'png', 'ubr-100', 0, 'items_ammunition_rocketlauncher', 'da933c5c09121a0b39f6d573ec8c4700', 'false'),
(453, 'sar-01_30x30', 1, 'png', 'sar-01', 0, 'items_ammunition_rocketlauncher', '34c10962ae93f40d84b8a08f1f433f00', 'false'),
(454, 'g3n-3310_100x100', 1, 'png', 'g3n-3310', 0, 'items_equipment_generator_speed', '47a6fad8c0e6e5985cf7efd933c1d200', 'false'),
(455, 'pet_protocol_cgm-02_100x100', 1, 'png', 'pet', 0, 'items', 'noCDN', 'false'),
(456, 'drone_formation_f-09-mo_100x100', 1, 'png', 'drone', 0, 'items', 'noCDN', 'false');
INSERT INTO `filecollection_file` (`id`, `id_name`, `version`, `type`, `name`, `level`, `location`, `cdn`, `debugView`) VALUES
(457, 'enforcer_100x100', 1, 'png', 'enforcer', 0, 'items_ship_goliath_design', 'd3ca78360453fbef723b73d2b724500', 'false'),
(458, 'dmg-b02_30x30', 1, 'png', 'dmg-b02', 0, 'items_equipment_booster', '7b573c1712bd2b4b200c66219784da00', 'false'),
(459, 'f-08-ch_30x30', 1, 'png', 'f-08-ch', 0, 'items_drone_formation', 'f26c9dda746d34604c7540a05edb2d00', 'false'),
(460, 'min-t02_30x30', 1, 'png', 'min-t02', 0, 'items_equipment_extra_cpu', 'f7e8d54dd3c17591084c4bf1f2854100', 'false'),
(461, 'liberator_100x100', 1, 'png', 'liberator', 0, 'items_ship', '12811c57da5f73380b089c37aebde700', 'false'),
(462, 'hst-2_100x100', 1, 'png', 'hst-2', 0, 'items_equipment_weapon_rocketlauncher', '189476e918a7a7c792f09272db412400', 'false'),
(463, 'xp-b01_63x63', 1, 'png', 'xp-b01', 0, 'items_equipment_booster', '6810cb34f3b15cb294d97bb06993bc00', 'false'),
(464, 'booster_rep-b01_100x100', 1, 'png', 'booster', 0, 'items', 'noCDN', 'false'),
(465, 'ship_citadel-vru_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(466, 'f-07-di_100x100', 1, 'png', 'f-07-di', 0, 'items_drone_formation', '9ce48c588deb64538a5fc8b225df2d00', 'false'),
(467, 'pet_protocol_g-al1_100x100', 1, 'png', 'pet', 0, 'items', 'noCDN', 'false'),
(468, 'duranium_63x63', 1, 'png', 'duranium', 0, 'items_resource_ore', 'c027e1e4299b8f6bca072a13a4b8300', 'false'),
(469, 'hstrm-01_63x63', 1, 'png', 'hstrm-01', 0, 'items_ammunition_rocketlauncher', 'df51889c45224761dd5d715d0545af00', 'false'),
(470, 'lightning_30x30', 1, 'png', 'lightning', 0, 'items_ship_vengeance_design', '35e5cf870633ff463f0fbd22977b3600', 'false'),
(471, 'piranha-default_top', 1, 'png', 'piranha-default', 0, 'items_ship_model', '4590700ffd12fc189ec94ff492d1e300', 'false'),
(472, 'lf-3_100x100', 1, 'png', 'lf-3', 0, 'items_equipment_weapon_laser', '5ced49170920715d57158fe1773a4400', 'false'),
(473, 'pet_protocol_ai-sm1_100x100', 1, 'png', 'pet', 0, 'items', 'noCDN', 'false'),
(474, 'citadel-mmo_top', 1, 'png', 'citadel-mmo', 0, 'items_ship', '8efde209bef3f6619470a3fd3fab8f00', 'false'),
(475, 'dcr-250_63x63', 1, 'png', 'dcr-250', 0, 'items_ammunition_specialammo', '4aba291a99722abe227bccbf8989cd00', 'false'),
(476, 'sabm-01_100x100', 1, 'png', 'sabm-01', 0, 'items_ammunition_mine', '4c7dd63001053a9de0c5d3d335470e00', 'false'),
(477, 'cpu_rd-x_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(478, 'fb-x_63x63', 1, 'png', 'fb-x', 0, 'items_equipment_extra_cpu', 'cb83875eb5c3da164879605c02d65900', 'false'),
(479, 'spectrum_30x30', 1, 'png', 'spectrum', 0, 'items_ship_goliath_design', 'fcb6bc75b23042a5bbfe589b4965f000', 'false'),
(480, 'shg-02_63x63', 1, 'png', 'shg-02', 0, 'items_ammunition_rocketlauncher', '30409e13074359b07c084be07b4e3b00', 'false'),
(481, 'mamba_top', 1, 'png', 'mamba', 0, 'items_ship_bigboy_design', '84f362c5f0bafea11339df53a4f49500', 'false'),
(482, 'endurium_30x30', 1, 'png', 'endurium', 0, 'items_resource_ore', 'a5481c8246e83a82988db623e3e53100', 'false'),
(483, 'ship_aegis-mmo_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(484, 'sle-04_100x100', 1, 'png', 'sle-04', 0, 'items_equipment_extra_cpu', '688a792d359998af68958acb7fbce500', 'false'),
(485, 'generator_g3n-3310_100x100', 1, 'png', 'generator', 0, 'items', 'noCDN', 'false'),
(486, 'flax-1_top', 1, 'png', 'flax-1', 1, 'items_drone', 'c25a2bbba8b08885a4d116ceab620100', 'false'),
(487, 'ammo_emp-01_100x100', 1, 'png', 'ammo', 0, 'items', 'noCDN', 'false'),
(488, 'resource-deal-bk-101_100x100', 1, 'png', 'resource-deal-bk-101', 0, 'items', '803bfa6cacad9b20f89c98ec29511200', 'false'),
(489, 'nc-agb-x_100x100', 1, 'png', 'nc-agb-x', 0, 'items_equipment_extra_cpu', 'a6203985f4baacdba419e68daef9700', 'false'),
(490, 'zeus-5_top', 1, 'png', 'zeus-5', 5, 'items_drone', 'ebb1343e99865e7309a8dd443996bd00', 'false'),
(491, 'ship_liberator_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(492, 'booster_dmg-b01_100x100', 1, 'png', 'booster', 0, 'items', 'noCDN', 'false'),
(493, 'rb-e02_30x30', 1, 'png', 'rb-e02', 0, 'items_ammunition_mine', '690ba1d6e1f1967d8ce04026c32b8100', 'false'),
(494, 'drone_flax-1_100x100', 1, 'png', 'drone', 0, 'items', 'noCDN', 'false'),
(495, 'rb-e02_63x63', 1, 'png', 'rb-e02', 0, 'items_ammunition_mine', '18b7f690645632059589645611857500', 'false'),
(496, 'ddm-01_100x100', 1, 'png', 'ddm-01', 0, 'items_ammunition_mine', '7041b21050caa6ba09b52096aadf7400', 'false'),
(497, 'prometium_30x30', 1, 'png', 'prometium', 0, 'items_resource_ore', '3dfd3ed97d4f5b039d81aa3d0ba3cd00', 'false'),
(498, 'pet10-7_top', 1, 'png', 'pet10-7', 0, 'items_pet', '603e0b55136eabd275813b1541c7f900', 'false'),
(499, 'apis-5_30x30', 1, 'png', 'apis-5', 5, 'items_drone', '6e16da5f146db3d66aa2bb78849eba00', 'false'),
(500, 'dcr-250_30x30', 1, 'png', 'dcr-250', 0, 'items_ammunition_specialammo', '65a635a931ead9d7948c4539e4edb300', 'false'),
(501, 'ubr-100_100x100', 1, 'png', 'ubr-100', 0, 'items_ammunition_rocketlauncher', 'c6ca51af1bb56f163268ae1f5564f400', 'false'),
(502, 'ubr-100_30x30', 1, 'png', 'ubr-100', 0, 'items_ammunition_rocketlauncher', 'eb3e5b22d91cc6445902fb1f0862d200', 'false'),
(503, 'drone_formation_f-05-pi_100x100', 1, 'png', 'drone', 0, 'items', 'noCDN', 'false'),
(504, 'cpu_min-t01_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(505, 'diminisher_100x100', 1, 'png', 'diminisher', 0, 'items_ship_goliath_design', 'f981e84575292b34e18f0a03df235000', 'false'),
(506, 'pet_protocol_g-ex1_100x100', 1, 'png', 'pet', 0, 'items', 'noCDN', 'false'),
(507, 'phoenix-default_top', 1, 'png', 'phoenix-default', 0, 'items_ship_model', 'c96f80f53d3010ddbdfa5f88ad2d4e00', 'false'),
(508, 'booster_dmg-b02_100x100', 1, 'png', 'booster', 0, 'items', 'noCDN', 'false'),
(509, 'sl-01_30x30', 1, 'png', 'sl-01', 0, 'items_ammunition_mine', '6e41e6ce998b8a3bb07ca1190d1deb00', 'false'),
(510, 'ship_police_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(511, 'flax-0_top', 1, 'png', 'flax-0', 0, 'items_drone', 'ef72344f330db0e32eca8d2b43a37b00', 'false'),
(512, 'g3x-amry-m_63x63', 1, 'png', 'g3x-amry-m', 0, 'items_equipment_extra_cpu', '9269d541d93e9f1fe009f6c7b8a18600', 'false'),
(513, 'hst-1_30x30', 1, 'png', 'hst-1', 0, 'items_equipment_weapon_rocketlauncher', 'b0c7fd370207805934235a4a87735e00', 'false'),
(514, 'sg3n-b02_100x100', 1, 'png', 'sg3n-b02', 0, 'items_equipment_generator_shield', 'b82b382ccdeaea0716ea15f49ff47300', 'false'),
(515, 'terbium_30x30', 1, 'png', 'terbium', 0, 'items_resource_ore', 'e973ca28960c9f31091c08cc57157e00', 'false'),
(516, 'iris-0_30x30', 1, 'png', 'iris-0', 0, 'items_drone', '14ebb8db8014dc4bd757fa2ef74de400', 'false'),
(517, 'rb-x_30x30', 1, 'png', 'rb-x', 0, 'items_equipment_extra_cpu', 'abe256af4fdc99d78525c8bef7822200', 'false'),
(518, 'adept_100x100', 1, 'png', 'adept', 0, 'items_ship_vengeance_design', '70e087e02264296ae8a18b13c9421100', 'false'),
(519, 'hp-b01_63x63', 1, 'png', 'hp-b01', 0, 'items_equipment_booster', '2fbc951628b2cd6012af28e4a2150a00', 'false'),
(520, 'mine_rb-e01_100x100', 1, 'png', 'mine', 0, 'items', 'noCDN', 'false'),
(521, 'zeus-4_63x63', 1, 'png', 'zeus-4', 4, 'items_drone', '2c65fd24140f981b50a477ef28c0cb00', 'false'),
(522, 'g-tra1_30x30', 1, 'png', 'g-tra1', 0, 'items_equipment_petgear', '880636eab8ea27361d95b6f138bb3c00', 'false'),
(523, 'pet10-6_top', 1, 'png', 'pet10-6', 0, 'items_pet', 'a7216e73bf2f05cbd84315d5c6511300', 'false'),
(524, 'iris-1_30x30', 1, 'png', 'iris-1', 1, 'items_drone', 'd951657b84dd80549297702f018b1f00', 'false'),
(525, 'booster_res-b02_100x100', 1, 'png', 'booster', 0, 'items', 'noCDN', 'false'),
(526, 'pld-8_30x30', 1, 'png', 'pld-8', 0, 'items_ammunition_specialammo', 'ecf4f2113b1e9eaf205e7951cf095400', 'false'),
(527, 'ammo_sab-50_100x100', 1, 'png', 'ammo', 0, 'items', 'noCDN', 'false'),
(528, 'ship_defcom_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(529, 'cgm-02_100x100', 1, 'png', 'cgm-02', 0, 'items_equipment_aiprotocol', 'c072755cbb15d3922a0762d0189a5b00', 'false'),
(530, 'flax-4_30x30', 1, 'png', 'flax-4', 4, 'items_drone', 'd8e1788c20d90cadcfa81ecf6d9a9e00', 'false'),
(531, 'drone_zeus-1_100x100', 1, 'png', 'drone', 0, 'items', 'noCDN', 'false'),
(532, 'apis-2_top', 1, 'png', 'apis-2', 2, 'items_drone', '8409d6353aaa143cec73a5618fd2fd00', 'false'),
(533, 'fuel-100_63x63', 1, 'png', 'fuel-100', 0, 'items_pet', 'e91329cbf30b12a38f905369fd34f500', 'false'),
(534, 'zeus-3_30x30', 1, 'png', 'zeus-3', 3, 'items_drone', '48640acba410b37c287403e270da0c00', 'false'),
(535, 'rep-b02_63x63', 1, 'png', 'rep-b02', 0, 'items_equipment_booster', '822d59d51f01db08436c19f036dca600', 'false'),
(536, 'pet_protocol_ai-pm1_100x100', 1, 'png', 'pet', 0, 'items', 'noCDN', 'false'),
(537, 'g3x-amry-m_100x100', 1, 'png', 'g3x-amry-m', 0, 'items_equipment_extra_cpu', 'b3287b51cb87d9da908c44fb22bc5000', 'false'),
(538, 'g-pd1_63x63', 1, 'png', 'g-pd1', 0, 'items_equipment_petgear', 'acb54fd7b3c0fde9fd98bb98ba0400', 'false'),
(539, 'pet10-9_top', 1, 'png', 'pet10-9', 0, 'items_pet', '9d8b77af30f4943b72d09eabab57bd00', 'false'),
(540, 'g3x-amry-l_100x100', 1, 'png', 'g3x-amry-l', 0, 'items_equipment_extra_cpu', '70e1d6e1de75b7db34bb8859382a2600', 'false'),
(541, 'ship_goliath_design_centaur_63x63', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(542, 'nc-rrb-x_100x100', 1, 'png', 'nc-rrb-x', 0, 'items_equipment_extra_cpu', '862d24f30519c5e53a13f4d3ec995500', 'false'),
(543, 'arol-x_100x100', 1, 'png', 'arol-x', 0, 'items_equipment_extra_cpu', '30df149638e4298594447363931c9a00', 'false'),
(544, 'apis-1_100x100', 1, 'png', 'apis-1', 1, 'items_drone', '54709c56db2e1f2f902d4779b243de00', 'false'),
(545, 'referee_63x63', 1, 'png', 'referee', 0, 'items_ship_goliath_design', '9644a0d452a25aa0dc6310e6e0b3e700', 'false'),
(546, 'f-02-ar_100x100', 1, 'png', 'f-02-ar', 0, 'items_drone_formation', '5a93c4393ab8d47e51d8be0b8ef69300', 'false'),
(547, 'plt-3030_100x100', 1, 'png', 'plt-3030', 0, 'items_ammunition_rocket', '43ea84fc8e020f3f93a7ae004be4b600', 'false'),
(548, 'lgf_63x63', 1, 'png', 'lgf', 0, 'items_resource', '753ac1eddb627166b371ce6add2a4800', 'false'),
(549, 'g-rl1_100x100', 1, 'png', 'g-rl1', 0, 'items_equipment_petgear', 'd884c83b62690cd03d8f1f0fd6c6e000', 'false'),
(550, 'g-ar1_100x100', 1, 'png', 'g-ar1', 0, 'items_equipment_petgear', '8a45f18eb3d3af23fdf234bb80807b00', 'false'),
(551, 'revenge_100x100', 1, 'png', 'revenge', 0, 'items_ship_vengeance_design', '423d589e609d7a3d2396910e55348b00', 'false'),
(552, 'aim-01_30x30', 1, 'png', 'aim-01', 0, 'items_equipment_extra_cpu', '9756bd9c4757888927ccad2897fcec00', 'false'),
(553, 'spectrum_top', 1, 'png', 'spectrum', 0, 'items_ship_goliath_design', '5dec1c18adf1890dd4a73ae60403e300', 'false'),
(554, 'g3x-amry-s_63x63', 1, 'png', 'g3x-amry-s', 0, 'items_equipment_extra_cpu', '635279b6d663b3652e7074336543db00', 'false'),
(555, 'apis-1_top', 1, 'png', 'apis-1', 1, 'items_drone', 'ebc18fd76fd5733d370a8cd5cbfb0200', 'false'),
(556, 'sle-02_30x30', 1, 'png', 'sle-02', 0, 'items_equipment_extra_cpu', '82acde6ea5a6b3a82dd3e8d29251f600', 'false'),
(557, 'min-t01_100x100', 1, 'png', 'min-t01', 0, 'items_equipment_extra_cpu', '400dcee2a5b91e04547080457ffa8900', 'false'),
(558, 'rocket_plt-2026_100x100', 1, 'png', 'rocket', 0, 'items', 'noCDN', 'false'),
(559, 'goliath_top', 1, 'png', 'goliath', 0, 'items_ship', 'a604cd4669b80a0ddd89fa54fc946300', 'false'),
(560, 'avenger_100x100', 1, 'png', 'avenger', 0, 'items_ship_vengeance_design', '37f86e60f270682f6fd338f29e017000', 'false'),
(561, 'leonov_63x63', 1, 'png', 'leonov', 0, 'items_ship', '28352fd6f76f7f69fde60be651d28b00', 'false'),
(562, 'ignite_30x30', 1, 'png', 'ignite', 0, 'items_ship_goliath_design', '542e254d8fb1da1e2a1e0038d7542d00', 'false'),
(563, 'aim-02_63x63', 1, 'png', 'aim-02', 0, 'items_equipment_extra_cpu', '75b281fb1c866780d65cbf121186ec00', 'false'),
(564, 'f-05-pi_100x100', 1, 'png', 'f-05-pi', 0, 'items_drone_formation', 'c86f0ab13d1bc14d81eaccb7ad89e400', 'false'),
(565, 'apis-4_top', 1, 'png', 'apis-4', 4, 'items_drone', '2c343d1411545d71f2ac5d473be80f00', 'false'),
(566, 'police-default_top', 1, 'png', 'police-default', 0, 'items_ship_model', '8eef551a4d7b222fac97eb14e59a8300', 'false'),
(567, 'pld-8_63x63', 1, 'png', 'pld-8', 0, 'items_ammunition_specialammo', 'd6e6ddf8da138658639a25468b067e00', 'false'),
(568, 'hp-b02_30x30', 1, 'png', 'hp-b02', 0, 'items_equipment_booster', '7125a4fd94cfbeff533bda8c6f2c9500', 'false'),
(569, 'g-rl1_63x63', 1, 'png', 'g-rl1', 0, 'items_equipment_petgear', '99118c207d7f278bf4374061c86ded00', 'false'),
(570, 'leonov_100x100', 1, 'png', 'leonov', 0, 'items_ship', '514e12b1ca5c27a22b6ef646fb9b8a00', 'false'),
(571, 'rocket_dcr-250_100x100', 1, 'png', 'rocket', 0, 'items', 'noCDN', 'false'),
(572, 'rep-b02_100x100', 1, 'png', 'rep-b02', 0, 'items_equipment_booster', '1d5c97b1b866d233d0e064cb65364b00', 'false'),
(573, 'g3x-amry-s_100x100', 1, 'png', 'g3x-amry-s', 0, 'items_equipment_extra_cpu', 'f1f5786b7dad796b927debefcad24800', 'false'),
(574, 'rsb-75_100x100', 1, 'png', 'rsb-75', 0, 'items_ammunition_laser', 'ed334efd4833335cb183b8b3fbb11500', 'false'),
(575, 'rd-x_63x63', 1, 'png', 'rd-x', 0, 'items_equipment_extra_cpu', '7849dcc2fef033269c2d3473ca522300', 'false'),
(576, 'design_d-ef-01_100x100', 1, 'png', 'design', 0, 'items', 'noCDN', 'false'),
(577, 'sabm-01_63x63', 1, 'png', 'sabm-01', 0, 'items_ammunition_mine', 'c9d8d6a03a9d4881b09cc2409b056f00', 'false'),
(578, 'jp-02_30x30', 1, 'png', 'jp-02', 0, 'items_equipment_extra_cpu', '853fa6be9494eb505fce988f418f6000', 'false'),
(579, 'rb-02_63x63', 1, 'png', 'rb-02', 0, 'items_ammunition_mine', '287855f0777f446500bbe5c740fcdd00', 'false'),
(580, 'design_goliath-red_100x100', 1, 'png', 'design', 0, 'items', 'noCDN', 'false'),
(581, 'fb-x_100x100', 1, 'png', 'fb-x', 0, 'items_equipment_extra_cpu', 'e06d39c29ea36fb5e9327bd606e95200', 'false'),
(582, 'firework_fwx-m_100x100', 1, 'png', 'firework', 0, 'items', 'noCDN', 'false'),
(583, 'rep-1_30x30', 1, 'png', 'rep-1', 0, 'items_equipment_extra_repbot', '97af32751588b8430fac9b699c19b600', 'false'),
(584, 'ai-hp1_100x100', 1, 'png', 'ai-hp1', 0, 'items_equipment_aiprotocol', '32c73bc7c6aff534e72d79615ea80a00', 'false'),
(585, 'liberator_top', 1, 'png', 'liberator', 0, 'items_ship', '4d48488a8ca0d9946c12ab1241d46c00', 'false'),
(586, 'flax-5_100x100', 1, 'png', 'flax-5', 5, 'items_drone', '71708ef72bf36e293186a48e088c3100', 'false'),
(587, 'pet_protocol_ai-al1_100x100', 1, 'png', 'pet', 0, 'items', 'noCDN', 'false'),
(588, 'pet_protocol_ai-eco1_100x100', 1, 'png', 'pet', 0, 'items', 'noCDN', 'false'),
(589, 'lottery-euro-2012_63x63', 1, 'png', 'lottery-euro-2012', 0, 'items_resource', 'e3eb29bb67fc2dc862f630e1e71bd800', 'false'),
(590, 'veteran_63x63', 1, 'png', 'veteran', 0, 'items_ship_goliath_design', '3fd73f6bc3611a9fe8f2367f4575b600', 'false'),
(591, 'f-01-tu_100x100', 1, 'png', 'f-01-tu', 0, 'items_drone_formation', '81f6c046cba728960a9ee7138b54600', 'false'),
(592, 'cpu_min-t02_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(593, 'nc-awl-x_100x100', 1, 'png', 'nc-awl-x', 0, 'items_equipment_extra_cpu', '6fdf3acc1f31b4df0c353bbcd470f400', 'false'),
(594, 'mp-1_30x30', 1, 'png', 'mp-1', 0, 'items_equipment_weapon_laser', 'cfde29bcddbbfbcf4abccb06a1bad900', 'false'),
(595, 'fwx-l_100x100', 1, 'png', 'fwx-l', 0, 'items_ammunition_firework', 'c28e07ba4d7d961366f82d9384a48b00', 'false'),
(596, 'f-12-ba_30x30', 1, 'png', 'f-12-ba', 0, 'items_drone_formation', 'fac6ef4761dcf3bdcd88645b16da5600', 'false'),
(597, 'flax-3_100x100', 1, 'png', 'flax-3', 3, 'items_drone', 'e8a5eefb0f5c3081e79e8a1632222e00', 'false'),
(598, 'sle-02_100x100', 1, 'png', 'sle-02', 0, 'items_equipment_extra_cpu', '9220f90c1874ed7d71b696d38d12e600', 'false'),
(599, 'rep-1_100x100', 1, 'png', 'rep-1', 0, 'items_equipment_extra_repbot', '40bf974da2bd1ca828036a84bebf3900', 'false'),
(600, 'sg3n-a02_30x30', 1, 'png', 'sg3n-a02', 0, 'items_equipment_generator_shield', '6f85775b2b55616a538ef62826b8f300', 'false'),
(601, 'zeus-3_63x63', 1, 'png', 'zeus-3', 3, 'items_drone', 'cd0de869358e2f9ae36b7252c595b00', 'false'),
(602, 'g3n-1010_30x30', 1, 'png', 'g3n-1010', 0, 'items_equipment_generator_speed', 'e5674130f14944e7411e5462960200', 'false'),
(603, 'ai-hp1_30x30', 1, 'png', 'ai-hp1', 0, 'items_equipment_aiprotocol', '2742b9501c4dcd1deb5cbc8d69fa6600', 'false'),
(604, 'pet_protocol_ai-r1_100x100', 1, 'png', 'pet', 0, 'items', 'noCDN', 'false'),
(605, 'iris-4_30x30', 1, 'png', 'iris-4', 4, 'items_drone', '9cb3929ed0ea6e938eb50599a854d400', 'false'),
(606, 'mine_rb-e02_100x100', 1, 'png', 'mine', 0, 'items', 'noCDN', 'false'),
(607, 'ship_spearhead-eic_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(608, 'plt-2026_63x63', 1, 'png', 'plt-2026', 0, 'items_ammunition_rocket', 'c6bfdcd09949f7b61b98ead3c6773500', 'false'),
(609, 'aim-02_30x30', 1, 'png', 'aim-02', 0, 'items_equipment_extra_cpu', '48e8e4664be8a48f661625110fd5a400', 'false'),
(610, 'nc-awr-x_30x30', 1, 'png', 'nc-awr-x', 0, 'items_equipment_extra_cpu', '99848aaf0ac0f38978aae0ae6aac3500', 'false'),
(611, 'wiz-x_100x100', 1, 'png', 'wiz-x', 0, 'items_ammunition_specialammo', 'b4b7d1ed6af0a1b5031fb0a3a6861900', 'false'),
(612, 'min-t01_63x63', 1, 'png', 'min-t01', 0, 'items_equipment_extra_cpu', '270e37e5766c4189d592f6ee1c1b8700', 'false'),
(613, 'pet_pet10_100x100', 1, 'png', 'pet', 0, 'items', 'noCDN', 'false'),
(614, 'lf-3_63x63', 1, 'png', 'lf-3', 0, 'items_equipment_weapon_laser', 'b8ec173f11257347acc378cf2b19c300', 'false'),
(615, 'design_d-har_100x100', 1, 'gif', 'design', 0, 'items', 'noCDN', 'false'),
(616, 'defcom_top', 1, 'png', 'defcom', 0, 'items_ship', '52aaa11eae4b9a0ca19bfa1601a44200', 'false'),
(617, 'flax-0_63x63', 1, 'png', 'flax-0', 0, 'items_drone', '7ddabff5865f4c074e8364a28753b900', 'false'),
(618, 'prometid_63x63', 1, 'png', 'prometid', 0, 'items_resource_ore', '1e8dbf2955df6513a172a28b57fbc800', 'false'),
(619, 'iris-5_30x30', 1, 'png', 'iris-5', 5, 'items_drone', '40860d1594e9b6841ccfa87963f8d800', 'false'),
(620, 'pet_protocol_ai-s1_100x100', 1, 'png', 'pet', 0, 'items', 'noCDN', 'false'),
(621, 'iris-3_30x30', 1, 'png', 'iris-3', 3, 'items_drone', '9c481125952808f464742ffbb0a43500', 'false'),
(622, 'zeus-4_30x30', 1, 'png', 'zeus-4', 4, 'items_drone', '3f25e8dd16b66974e994a002602db500', 'false'),
(623, 'shg-02_30x30', 1, 'png', 'shg-02', 0, 'items_ammunition_rocketlauncher', '9af48efd1dfe947e444ff86ccec9a400', 'false'),
(624, 'zeus-2_top', 1, 'png', 'zeus-2', 2, 'items_drone', '87bb3cdee3f7a4175aa7be80db7d5800', 'false'),
(625, 'pet10-5_top', 1, 'png', 'pet10-5', 0, 'items_pet', '3a97ee94c69faebebdd2220e563ad000', 'false'),
(626, 'sg3n-b01_100x100', 1, 'png', 'sg3n-b01', 0, 'items_equipment_generator_shield', '15ad773d10eb9b696d049632d685c600', 'false'),
(627, 'revenge_63x63', 1, 'png', 'revenge', 0, 'items_ship_vengeance_design', '3f47bf0099969d63c706af592914fb00', 'false'),
(628, 'pet10-1_top', 1, 'png', 'pet10-1', 0, 'items_pet', '15956f5b638557555c72dd0e3a005400', 'false'),
(629, 'nostromo_100x100', 1, 'png', 'nostromo', 0, 'items_ship', 'a14faf254feda58ff45c8e3cef56ed00', 'false'),
(630, 'f-11-he_30x30', 1, 'png', 'f-11-he', 0, 'items_drone_formation', 'c463c4cd120b034826fe509c9e65fb00', 'false'),
(631, 'dmg-b01_63x63', 1, 'png', 'dmg-b01', 0, 'items_equipment_booster', '49ca8b50eda77fce3905036b6b7aab00', 'false'),
(632, 'generator_sg3n-a02_100x100', 1, 'png', 'generator', 0, 'items', 'noCDN', 'false'),
(633, 'iris-1_100x100', 1, 'png', 'iris-1', 1, 'items_drone', '3b12423b93122055a76f250f307dee00', 'false'),
(634, 'ai-s1_100x100', 1, 'png', 'ai-s1', 0, 'items_equipment_aiprotocol', '793a19100a3319cab25edd1686f59300', 'false'),
(635, 'g-pd1_100x100', 1, 'png', 'g-pd1', 0, 'items_equipment_petgear', '8750226e3a89bbfa14ad8deb2c42df00', 'false'),
(636, 'design_d-am-01_100x100', 1, 'png', 'design', 0, 'items', 'noCDN', 'false'),
(637, 'solace_top', 1, 'png', 'solace', 0, 'items_ship_goliath_design', 'd6e8b527b1a90dfcc07bd0748cd0ab00', 'false'),
(638, 'booty-key_63x63', 1, 'png', 'booty-key', 0, 'items_resource', '2c2649217fac98e086c9cd8fcec30300', 'false'),
(639, 'sg3n-a01_63x63', 1, 'png', 'sg3n-a01', 0, 'items_equipment_generator_shield', 'd2fc1d2a80f3ef4376c9b63145b10c00', 'false'),
(640, 'centaur_100x100', 1, 'png', 'centaur', 0, 'items_ship_goliath_design', 'e1723e7e5175fb1e24342f65e30d7400', 'false'),
(641, 'design_d-sa-03_100x100', 1, 'png', 'design', 0, 'items', 'noCDN', 'false'),
(642, 'booster_xp-b02_100x100', 1, 'png', 'booster', 0, 'items', 'noCDN', 'false'),
(643, 'booster_shd-b02_100x100', 1, 'png', 'booster', 0, 'items', 'noCDN', 'false'),
(644, 'sar-01_63x63', 1, 'png', 'sar-01', 0, 'items_ammunition_rocketlauncher', 'e3af8f0c66922b9d0a7654a47f01000', 'false'),
(645, 'sab-50_63x63', 1, 'png', 'sab-50', 0, 'items_ammunition_laser', '665c3f7e4614d679369d77011c2c900', 'false'),
(646, 'dr-02_100x100', 1, 'png', 'dr-02', 0, 'items_equipment_extra_cpu', '2cd2ee99cfa7e803424786d9db551900', 'false'),
(647, 'g-ex1_63x63', 1, 'png', 'g-ex1', 0, 'items_equipment_petgear', '83f800b2216decccce1c4d4b5ff29000', 'false'),
(648, 'rep-2_63x63', 1, 'png', 'rep-2', 0, 'items_equipment_extra_repbot', 'dd0c4c214428f0aa690c0ee3e5fdf500', 'false'),
(649, 'zeus-4_100x100', 1, 'png', 'zeus-4', 4, 'items_drone', 'f14dea9d5d542454f814b04a4c027000', 'false'),
(650, 'jade_30x30', 1, 'png', 'jade', 0, 'items_ship_goliath_design', '55c1321eae9086b1e7af6dbbff27f300', 'false'),
(651, 'g3n-3210_63x63', 1, 'png', 'g3n-3210', 0, 'items_equipment_generator_speed', '4ba91775f4edfe8df7403076a2e96000', 'false'),
(652, 'havoc-4_30x30', 1, 'png', 'havoc-4', 4, 'items_drone_designs', '193660b268e6896e96148d21531d1f00', 'false'),
(653, 'havoc-0_30x30', 1, 'png', 'havoc-0', 0, 'items_drone_designs', '36ff14ea6f9929bbe251c97c7aa9c100', 'false'),
(654, 'ai-r1_30x30', 1, 'png', 'ai-r1', 0, 'items_equipment_aiprotocol', 'af079dc358abba6624223176ecfabe00', 'false'),
(655, 'apis-1_30x30', 1, 'png', 'apis-1', 1, 'items_drone', '97089fe60227b13d097608d2c0dad300', 'false'),
(656, 'cpu_sle-02_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(657, 'enforcer_30x30', 1, 'png', 'enforcer', 0, 'items_ship_goliath_design', '910ad3dc8468f831274081d0fd79a700', 'false'),
(658, 'cpu_sle-01_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(659, 'emp-01_100x100', 1, 'png', 'emp-01', 0, 'items_ammunition_specialammo', '55fa7a5cd26d00b39f963795c3ab1900', 'false'),
(660, 'rb-e01_63x63', 1, 'png', 'rb-e01', 0, 'items_ammunition_mine', '828360d9764bc9b08cc9830542b1000', 'false'),
(661, 'citadel-eic_top', 1, 'png', 'citadel-eic', 0, 'items_ship', '256d329dbf3805fd0bf62ef66931c100', 'false'),
(662, 'fwx-l_30x30', 1, 'png', 'fwx-l', 0, 'items_ammunition_firework', '9ab2e07e0db58a9a5019b81c5a54d200', 'false'),
(663, 'havoc-1_30x30', 1, 'png', 'havoc-1', 1, 'items_drone_designs', '97089fe60227b13d097608d2c0dad300', 'false'),
(664, 'pet_protocol_ai-e1_100x100', 1, 'png', 'pet', 0, 'items', 'noCDN', 'false'),
(665, 'ship_goliath_design_referee_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(666, 'slm-01_100x100', 1, 'png', 'slm-01', 0, 'items_ammunition_mine', '423a7429701436f742babda30b43bc00', 'false'),
(667, 'dmg-b01_100x100', 1, 'png', 'dmg-b01', 0, 'items_equipment_booster', '511e503b45224a9bd5433a59c848ef00', 'false'),
(668, 'ship_goliath_design_kick_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(669, 'spearhead-mmo_top', 1, 'png', 'spearhead-mmo', 0, 'items_ship', 'cf41509d651ecd2059ecc132aab2b100', 'false'),
(670, 'police_100x100', 1, 'png', 'police', 0, 'items_ship', '4710d8cb32647798398436750a07e800', 'false'),
(671, 'phoenix_63x63', 1, 'png', 'phoenix', 0, 'items_ship', 'cd8f64340c58ff3442bbd1e7ae715500', 'false'),
(672, 'generator_g3n-6900_100x100', 1, 'png', 'generator', 0, 'items', 'noCDN', 'false'),
(673, 'pet_protocol_csr-02_100x100', 1, 'png', 'pet', 0, 'items', 'noCDN', 'false'),
(674, 'ai-e1_30x30', 1, 'png', 'ai-e1', 0, 'items_equipment_aiprotocol', '9b76a4b353c973b569db9ec5f747c100', 'false'),
(675, 'design_d-ba-01_100x100', 1, 'png', 'design', 0, 'items', 'noCDN', 'false'),
(676, 'g3x-amry-m_30x30', 1, 'png', 'g3x-amry-m', 0, 'items_equipment_extra_cpu', 'ae7bb5c8e700673a44d4ff081ca01900', 'false'),
(677, 'f-09-mo_30x30', 1, 'png', 'f-09-mo', 0, 'items_drone_formation', 'a7515c9fa9cfacf21580b562d30f7500', 'false'),
(678, 'nostromo-default_top', 1, 'png', 'nostromo-default', 0, 'items_ship_model', 'ff51eab9cb12377314f48ca78cffc500', 'false'),
(679, 'nc-awl-x_63x63', 1, 'png', 'nc-awl-x', 0, 'items_equipment_extra_cpu', '64c6d5d1eb9e944ccde6cebf5f3a3900', 'false'),
(680, 'rocket_plt-2021_100x100', 1, 'png', 'rocket', 0, 'items', 'noCDN', 'false'),
(681, 'apis-5_100x100', 1, 'png', 'apis-5', 5, 'items_drone', '3b2b4d09b1207a3c007f2eb690a09000', 'false'),
(682, 'rok-t01_100x100', 1, 'png', 'rok-t01', 0, 'items_equipment_extra_cpu', '92eb30597b6a0e5e739c25ca824c4100', 'false'),
(683, 'zeus-5_63x63', 1, 'png', 'zeus-5', 5, 'items_drone', '987d62a9a2c60290639f7714909e6600', 'false'),
(684, 'pet_protocol_ai-lm1_100x100', 1, 'png', 'pet', 0, 'items', 'noCDN', 'false'),
(685, 'piranha_100x100', 1, 'png', 'piranha', 0, 'items_ship', 'dafebc613914a8d39de7740bf987f800', 'false'),
(686, 'havoc-3_63x63', 1, 'png', 'havoc-3', 3, 'items_drone_designs', '2357d5c44516a90c65f7e6f849c09b00', 'false'),
(687, 'rep-4_63x63', 1, 'png', 'rep-4', 0, 'items_equipment_extra_repbot', 'ad1d8c5d7166551c71182eecc5a67e00', 'false'),
(688, 'adept_top', 1, 'png', 'adept', 0, 'items_ship_vengeance_design', 'db4c468575364c029c941103b559b800', 'false'),
(689, 'hst-2_63x63', 1, 'png', 'hst-2', 0, 'items_equipment_weapon_rocketlauncher', 'db076f6c66bc0760c650bd1e5a5c2c00', 'false'),
(690, 'generator_sg3n-b02_100x100', 1, 'png', 'generator', 0, 'items', 'noCDN', 'false'),
(691, 'aegis-eic_63x63', 1, 'png', 'aegis-eic', 0, 'items_ship', 'bb7378dd7407480df0e8e31fb5056200', 'false'),
(692, 'shd-b02_100x100', 1, 'png', 'shd-b02', 0, 'items_equipment_booster', '8f0b81cc566695b236c6d206fe98f500', 'false'),
(693, 'g3n-3310_63x63', 1, 'png', 'g3n-3310', 0, 'items_equipment_generator_speed', '342496a568aeded33543c7b508570700', 'false'),
(694, 'jp-01_100x100', 1, 'png', 'jp-01', 0, 'items_equipment_extra_cpu', '5632c2889dd72df6178de4f1f579e100', 'false'),
(695, 'sle-02_63x63', 1, 'png', 'sle-02', 0, 'items_equipment_extra_cpu', '956bbd4b1e79ee5c5b213f5293d1d600', 'false'),
(696, 'sapphire_63x63', 1, 'png', 'sapphire', 0, 'items_ship_goliath_design', '719eed455a30fd6819df412fd31b6c00', 'false'),
(697, 'rocket_shg-01_100x100', 1, 'png', 'rocket', 0, 'items', 'noCDN', 'false'),
(698, 'fwx-m_30x30', 1, 'png', 'fwx-m', 0, 'items_ammunition_firework', '32294c0f033f6141386acfd716474d00', 'false'),
(699, 'fuel-100_100x100', 1, 'png', 'fuel-100', 0, 'items_pet', '35b45d995c7191af632fbeca330dbb00', 'false'),
(700, 'flax-2_30x30', 1, 'png', 'flax-2', 2, 'items_drone', 'bbe4e84e54aa3218ef61c5e88692ae00', 'false'),
(701, 'g3n-1010_100x100', 1, 'png', 'g3n-1010', 0, 'items_equipment_generator_speed', '110b421b9d7913c5384e9ef9d65c3d00', 'false'),
(702, 'pet_protocol_ai-hp1_100x100', 1, 'png', 'pet', 0, 'items', 'noCDN', 'false'),
(703, 'sle-03_30x30', 1, 'png', 'sle-03', 0, 'items_equipment_extra_cpu', 'd2d48e9d0a40e19d766c39f04d058000', 'false'),
(704, 'venom_30x30', 1, 'png', 'venom', 0, 'items_ship_goliath_design', '8f1947a36237030a042d49fc2db38b00', 'false'),
(705, 'zeus-3_top', 1, 'png', 'zeus-3', 3, 'items_drone', '1e84e1e4fd83abae7dd5a75395a6000', 'false'),
(706, 'aegis-vru_top', 1, 'png', 'aegis-vru', 0, 'items_ship', 'f1f476c3a5817e509cd2c43df8883700', 'false'),
(707, 'zeus-1_100x100', 1, 'png', 'zeus-1', 1, 'items_drone', 'c55b8677a096125cfa14888d7b120100', 'false'),
(708, 'ship_goliath_design_independence_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(709, 'min-t01_30x30', 1, 'png', 'min-t01', 0, 'items_equipment_extra_cpu', 'f5ab19ee9afbb11bda57d07a1501c900', 'false'),
(710, 'rocket_wiz-x_100x100', 1, 'png', 'rocket', 0, 'items', 'noCDN', 'false'),
(711, 'cpu_ajp-01_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(712, 'g3n-7900_63x63', 1, 'png', 'g3n-7900', 0, 'items_equipment_generator_speed', '768dea8b4af9ee7381b707cc63f3ac00', 'false'),
(713, 'ddm-01_63x63', 1, 'png', 'ddm-01', 0, 'items_ammunition_mine', '9a5703e6ad36fdf964bc16299934e000', 'false'),
(714, 'mine_sabm-01_100x100', 1, 'png', 'mine', 0, 'items', 'noCDN', 'false'),
(715, 'cpu_arol-x_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(716, 'pet_protocol_g-rep1_100x100', 1, 'png', 'pet', 0, 'items', 'noCDN', 'false'),
(717, 'firework_fwx-s_100x100', 1, 'png', 'firework', 0, 'items', 'noCDN', 'false'),
(718, 'cpu_nc-awr-x_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(719, 'design_d-ig-01_100x100', 1, 'png', 'design', 0, 'items', 'noCDN', 'false'),
(720, 'cpu_nc-rrb-x_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(721, 'veteran_top', 1, 'png', 'veteran', 0, 'items_ship_goliath_design', '2d388ee819077143b8e78d3dc7ceae00', 'false'),
(722, 'rep-s_100x100', 1, 'png', 'rep-s', 0, 'items_equipment_extra_repbot', 'd474477ba5d66d7f3255fb1068eeea00', 'false'),
(723, 'ai-pm1_100x100', 1, 'png', 'ai-pm1', 0, 'items_equipment_aiprotocol', '632102227c010d54711778d3c7f4b00', 'false'),
(724, 'ai-r1_100x100', 1, 'png', 'ai-r1', 0, 'items_equipment_aiprotocol', 'f62fdb492ff21973a75ddb4a264be400', 'false'),
(725, 'pet10-3_top', 1, 'png', 'pet10-3', 0, 'items_pet', '7aa539bb67e5061c1f8da7593c900500', 'false'),
(726, 'hp-b02_100x100', 1, 'png', 'hp-b02', 0, 'items_equipment_booster', '8742e9f899c493713e40d94a7f59e300', 'false'),
(727, 'pet_protocol_g-kk1_100x100', 1, 'png', 'pet', 0, 'items', 'noCDN', 'false'),
(728, 'rocket_plt-3030_100x100', 1, 'png', 'rocket', 0, 'items', 'noCDN', 'false'),
(729, 'police_63x63', 1, 'png', 'police', 0, 'items_ship', 'be5917baf12f9700ef52e873c3e28100', 'false'),
(730, 'amber_30x30', 1, 'png', 'amber', 0, 'items_ship_goliath_design', '63a4fcf3146574417692f02683ee1600', 'false'),
(731, 'g3n-3310_30x30', 1, 'png', 'g3n-3310', 0, 'items_equipment_generator_speed', '9c7619637fe2f4db057a26a693dfcc00', 'false'),
(732, 'r-310_30x30', 1, 'png', 'r-310', 0, 'items_ammunition_rocket', '68af73bca9114add674a573fee166200', 'false'),
(733, 'prometid_30x30', 1, 'png', 'prometid', 0, 'items_resource_ore', 'df535e1d9dd1deabcff16d7a4fdb2f00', 'false'),
(734, 'ammo_mcb-25_100x100', 1, 'png', 'ammo', 0, 'items', 'noCDN', 'false'),
(735, 'avenger_63x63', 1, 'png', 'avenger', 0, 'items_ship_vengeance_design', 'bfbdd480f34e0a87a3fbb329f48ef600', 'false'),
(736, 'f-06-da_63x63', 1, 'png', 'f-06-da', 0, 'items_drone_formation', 'bc0461469e2eb811d1952455f0516600', 'false'),
(737, 'drone_formation_f-08-ch_100x100', 1, 'png', 'drone', 0, 'items', 'noCDN', 'false'),
(738, 'f-11-he_63x63', 1, 'png', 'f-11-he', 0, 'items_drone_formation', '76f2703dc13300e01c80a054b2972700', 'false'),
(739, 'cl04k-m_100x100', 1, 'png', 'cl04k-m', 0, 'items_equipment_extra_cpu', '44ceb70cb4a7cfd94ec4b75708208a00', 'false'),
(740, 'havoc_100x100', 1, 'png', 'havoc', 0, 'items_drone_designs', '9ba2ab733b96e06b9d3d84694260f800', 'false'),
(741, 'weapon_lf2_100x100', 1, 'png', 'weapon', 0, 'items', 'noCDN', 'false'),
(742, 'ai-pm1_63x63', 1, 'png', 'ai-pm1', 0, 'items_equipment_aiprotocol', '7b43bdcb05d41e52079703f1cca3bc00', 'false'),
(743, 'plt-3030_63x63', 1, 'png', 'plt-3030', 0, 'items_ammunition_rocket', 'f7a4edcb86596809deb924083bfcef00', 'false'),
(744, 'booster_hon-b02_100x100', 1, 'png', 'booster', 0, 'items', 'noCDN', 'false'),
(745, 'lf-1_30x30', 1, 'png', 'lf-1', 0, 'items_equipment_weapon_laser', '38b6e7ac566392a42b5058b957877400', 'false'),
(746, 'drone_formation_f-04-st_100x100', 1, 'png', 'drone', 0, 'items', 'noCDN', 'false'),
(747, 'g-el1_30x30', 1, 'png', 'g-el1', 0, 'items_equipment_petgear', '85405afdf7ebda0df694bc916f1fe000', 'false'),
(748, 'fwx-m_63x63', 1, 'png', 'fwx-m', 0, 'items_ammunition_firework', '97971aa7396b8a511a80cccf2be43600', 'false'),
(749, 'cpu_jp-02_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(750, 'rocket_hstrm-01_100x100', 1, 'png', 'rocket', 0, 'items', 'noCDN', 'false'),
(751, 'drone_formation_f-07-di_100x100', 1, 'png', 'drone', 0, 'items', 'noCDN', 'false'),
(752, 'zeus-0_top', 1, 'png', 'zeus-0', 0, 'items_drone', 'd6d65afbc6af7412b8cd718e55164400', 'false'),
(753, 'rocket_ubr-100_100x100', 1, 'png', 'rocket', 0, 'items', 'noCDN', 'false'),
(754, 'g-pd1_30x30', 1, 'png', 'g-pd1', 0, 'items_equipment_petgear', '7ee3df0e675d93242a22008cda835200', 'false'),
(755, 'g-al1_30x30', 1, 'png', 'g-al1', 0, 'items_equipment_petgear', '699502e677e3d898f5b1185027356d00', 'false'),
(756, 'ai-pm1_30x30', 1, 'png', 'ai-pm1', 0, 'items_equipment_aiprotocol', 'adc34bdce22ea52f45b4c5d962346600', 'false'),
(757, 'sg3n-a02_100x100', 1, 'png', 'sg3n-a02', 0, 'items_equipment_generator_shield', '42a5f4011eaed1818feecd88636a3700', 'false'),
(758, 'rocket_shg-02_100x100', 1, 'png', 'rocket', 0, 'items', 'noCDN', 'false'),
(759, 'cpu_cl04k-xl_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(760, 'lightning_top', 1, 'png', 'lightning', 0, 'items_ship_vengeance_design', '8a21d30900a7cb1b5041107a5762f100', 'false'),
(761, 'enforcer_63x63', 1, 'png', 'enforcer', 0, 'items_ship_goliath_design', 'b2a8f157eec6af66d9f4f2fcdfa5dd00', 'false'),
(762, 'pld-8_100x100', 1, 'png', 'pld-8', 0, 'items_ammunition_specialammo', 'a36af5f0b4d96fdf49506edd3b42f300', 'false'),
(763, 'rep-3_30x30', 1, 'png', 'rep-3', 0, 'items_equipment_extra_repbot', '7ee2b08d9e7d1fc4cf84a0f3d70d7700', 'false'),
(764, 'resource-deal-jv-100_100x100', 1, 'png', 'resource-deal-jv-100', 0, 'items', '777a8130cc0c6d6551ca465e3df05a00', 'false'),
(765, 'flax-2_100x100', 1, 'png', 'flax-2', 2, 'items_drone', '61cd76dc625f00badc9d07e5e746be00', 'false'),
(766, 'piranha_63x63', 1, 'png', 'piranha', 0, 'items_ship', '5386619ecc0e429215b13c40a1784800', 'false'),
(767, 'ai-al1_30x30', 1, 'png', 'ai-al1', 0, 'items_equipment_aiprotocol', 'a51de7284ade3b6eff98b909131afb00', 'false'),
(768, 'cl04k-xs_100x100', 1, 'png', 'cl04k-xs', 0, 'items_equipment_extra_cpu', '5579d611e2f505fd3317a4ee4e70ee00', 'false'),
(769, 'g-kk1_30x30', 1, 'png', 'g-kk1', 0, 'items_equipment_petgear', '5970b1599f56c77a1de4227c01c5e900', 'false'),
(770, 'apis-2_100x100', 1, 'png', 'apis-2', 2, 'items_drone', '7b8fb5815e70c27edeb0b3476d877600', 'false'),
(771, 'rep-4_30x30', 1, 'png', 'rep-4', 0, 'items_equipment_extra_repbot', '245a28e891d9de0f67e70494e3912e00', 'false'),
(772, 'bastion_top', 1, 'png', 'bastion', 0, 'items_ship_goliath_design', '5970790943b53a8e113d4232e5714500', 'false'),
(773, 'csr-02_30x30', 1, 'png', 'csr-02', 0, 'items_equipment_aiprotocol', '8707331efdd6d7c8c02e74c1c301c700', 'false'),
(774, 'nc-awl-x_30x30', 1, 'png', 'nc-awl-x', 0, 'items_equipment_extra_cpu', '7dd3ea69155e835d98374c9974dab800', 'false'),
(775, 'acm-01_100x100', 1, 'png', 'acm-01', 0, 'items_ammunition_mine', '7111672f8762e1eb473248272678ea00', 'false'),
(776, 'rb-02_30x30', 1, 'png', 'rb-02', 0, 'items_ammunition_mine', '690ba1d6e1f1967d8ce04026c32b8100', 'false'),
(777, 'defcom_100x100', 1, 'png', 'defcom', 0, 'items_ship', 'c1901f2255ba6f266f52a7c593ebfa00', 'false'),
(778, 'rocket_bdr-1211_100x100', 1, 'png', 'rocket', 0, 'items', 'noCDN', 'false'),
(779, 'design_sd-so-01_100x100', 1, 'png', 'design', 0, 'items', 'noCDN', 'false'),
(780, 'avenger_30x30', 1, 'png', 'avenger', 0, 'items_ship_vengeance_design', '4990936e482a17c51d576c2dd2f65f00', 'false'),
(781, 'ignite_100x100', 1, 'png', 'ignite', 0, 'items_ship_goliath_design', 'f62fca921dc81f879515a66935658500', 'false'),
(782, 'ish-01_63x63', 1, 'png', 'ish-01', 0, 'items_equipment_extra_cpu', '59ebb45a483b69b03c878f8ef7381f00', 'false'),
(783, 'veteran_100x100', 1, 'png', 'veteran', 0, 'items_ship_goliath_design', '833a594556f2440ed2695097cf528f00', 'false'),
(784, 'design_sd-ve-01_100x100', 1, 'png', 'design', 0, 'items', 'noCDN', 'false'),
(785, 'apis-3_top', 1, 'png', 'apis-3', 3, 'items_drone', 'ad4ff5cc9d6db5ae6fa3884c57b32b00', 'false'),
(786, 'booster_cd-b01_100x100', 1, 'png', 'booster', 0, 'items', 'noCDN', 'false'),
(787, 'sentinel_top', 1, 'png', 'sentinel', 0, 'items_ship_goliath_design', 'b518d3153b54198589baf8b385dedd00', 'false'),
(788, 'g3x-amry-l_30x30', 1, 'png', 'g3x-amry-l', 0, 'items_equipment_extra_cpu', '17199cbe04adefc915a5d23d889cd800', 'false'),
(789, 'iris-2_top', 1, 'png', 'iris-2', 2, 'items_drone', '9c4888900962a7ac074714cfaa206200', 'false'),
(790, 'revenge_30x30', 1, 'png', 'revenge', 0, 'items_ship_vengeance_design', 'ad23fce2e6f415bb733b1791da1b1800', 'false'),
(791, 'pet_protocol_ai-aim1_100x100', 1, 'png', 'pet', 0, 'items', 'noCDN', 'false'),
(792, 'apis-0_100x100', 1, 'png', 'apis-0', 0, 'items_drone', 'b8a0037a61ed96bd3049a49698510700', 'false'),
(793, 'leonov_top', 1, 'png', 'leonov', 0, 'items_ship', '415d77665462f6e1610485619a4000', 'false'),
(794, 'apis-5_top', 1, 'png', 'apis-5', 5, 'items_drone', 'eefe025cd0af4d1d82f0b324d787200', 'false'),
(795, 'bigboy_top', 1, 'png', 'bigboy', 0, 'items_ship', '6a161ca8660e19046ed1ce5d46c71600', 'false'),
(796, 'fb-x_30x30', 1, 'png', 'fb-x', 0, 'items_equipment_extra_cpu', '7b2a9d2965073c0a9260b7549283a500', 'false'),
(797, 'havoc-2_top', 1, 'png', 'havoc-2', 2, 'items_drone_designs', '8409d6353aaa143cec73a5618fd2fd00', 'false'),
(798, 'pet10-2_top', 1, 'png', 'pet10-2', 0, 'items_pet', '25d344b7514ed46f037cef93f8a43c00', 'false'),
(799, 'weapon_mp1_100x100', 1, 'png', 'weapon', 0, 'items', 'noCDN', 'false'),
(800, 'apis-2_30x30', 1, 'png', 'apis-2', 2, 'items_drone', 'dbc0d478691de052745cf612593e0100', 'false'),
(801, 'apis-2_63x63', 1, 'png', 'apis-2', 2, 'items_drone', '6e5545393ae996b3d88176e082881f00', 'false'),
(802, 'vengeance_63x63', 1, 'png', 'vengeance', 0, 'items_ship', 'b86c7e3fdd307579155116788782c100', 'false'),
(803, 'cpu_aim-01_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(804, 'ucb-100_63x63', 1, 'png', 'ucb-100', 0, 'items_ammunition_laser', 'ae0e01beae2df1545d25728995151200', 'false'),
(805, 'cl04k-xs_63x63', 1, 'png', 'cl04k-xs', 0, 'items_equipment_extra_cpu', '4a89f361f6c950d480ffe842166e4d00', 'false'),
(806, 'sle-04_63x63', 1, 'png', 'sle-04', 0, 'items_equipment_extra_cpu', '33d7086513c36d8f5d70660993f70800', 'false'),
(807, 'g3x-crgo-x_30x30', 1, 'png', 'g3x-crgo-x', 0, 'items_equipment_extra_cpu', 'a65e0a5ff26274b490f9980a2ee9d900', 'false'),
(808, 'design_d-sa-01_100x100', 1, 'png', 'design', 0, 'items', 'noCDN', 'false'),
(809, 'ai-e1_100x100', 1, 'png', 'ai-e1', 0, 'items_equipment_aiprotocol', 'c3bf86bd2483382e8422e0e3d153a900', 'false'),
(810, 'flax-5_63x63', 1, 'png', 'flax-5', 5, 'items_drone', '6b36275da5cb21f5011c7a678f1e7000', 'false'),
(811, 'xenomit_30x30', 1, 'png', 'xenomit', 0, 'items_resource_ore', 'd10e834af73134303743011556568a00', 'false'),
(812, 'mcb-25_100x100', 1, 'png', 'mcb-25', 0, 'items_ammunition_laser', 'fa407a1644e0563e5138b0499c682100', 'false'),
(813, 'exalted_top', 1, 'png', 'exalted', 0, 'items_ship_goliath_design', 'fa46264bde239ff63b9313cd3f954c00', 'false'),
(814, 'diminisher_top', 1, 'png', 'diminisher', 0, 'items_ship_goliath_design', '7d00aa39cd2b1944649100c408887400', 'false'),
(815, 'apis-4_100x100', 1, 'png', 'apis-4', 4, 'items_drone', '49a3126a4903f48a7f96cf64c7b6bf00', 'false'),
(816, 'centaur_63x63', 1, 'png', 'centaur', 0, 'items_ship_goliath_design', '221adffb5225534383e4047e8f974c00', 'false'),
(817, 'dmg-b01_30x30', 1, 'png', 'dmg-b01', 0, 'items_equipment_booster', 'ded2fa76d2fe23377232650eb8a9bc00', 'false'),
(818, 'plt-3030_30x30', 1, 'png', 'plt-3030', 0, 'items_ammunition_rocket', 'f74083184d618e864737f9d02d88cc00', 'false'),
(819, 'cpu_g3x-crgo-x_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(820, 'g-al1_63x63', 1, 'png', 'g-al1', 0, 'items_equipment_petgear', '16ac6c270f7ed589252111058b50cb00', 'false'),
(821, 'pet_protocol_g-rl1_100x100', 1, 'png', 'pet', 0, 'items', 'noCDN', 'false'),
(822, 'pet10-4_top', 1, 'png', 'pet10-4', 0, 'items_pet', '6781ce11fae9617949f24f1c353e9300', 'false'),
(823, 'corsair_30x30', 1, 'png', 'corsair', 0, 'items_ship_vengeance_design', '850d5c29573990dfac9dd49f30b75700', 'false'),
(824, 'rb-x_100x100', 1, 'png', 'rb-x', 0, 'items_equipment_extra_cpu', 'a0c408176a8fa5c7dd6f6a004164a00', 'false'),
(825, 'sentinel_63x63', 1, 'png', 'sentinel', 0, 'items_ship_goliath_design', '83c788413d184255f3d91222b55ff400', 'false'),
(826, 'sle-04_30x30', 1, 'png', 'sle-04', 0, 'items_equipment_extra_cpu', '1a05e234c920672ee54f9c303e9df300', 'false'),
(827, 'fwx-m_100x100', 1, 'png', 'fwx-m', 0, 'items_ammunition_firework', '8498a18b64bf5f7708d43735470f8900', 'false'),
(828, 'hstrm-01_30x30', 1, 'png', 'hstrm-01', 0, 'items_ammunition_rocketlauncher', '806ebd3b5a8e565af5a30e382af05100', 'false'),
(829, 'spearhead-eic_top', 1, 'png', 'spearhead-eic', 0, 'items_ship', '1fcc49ae3a3a315f7253654d2eb11600', 'false'),
(830, 'cpu_alb-x_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(831, 'flax-1_100x100', 1, 'png', 'flax-1', 1, 'items_drone', 'ab3b1a2621ccbd2c1db4f48bb61dbb00', 'false'),
(832, 'hp-b01_100x100', 1, 'png', 'hp-b01', 0, 'items_equipment_booster', '33bff4aa0db046adf001b3bbf68a4e00', 'false'),
(833, 'havoc-5_30x30', 1, 'png', 'havoc-5', 5, 'items_drone_designs', '6e16da5f146db3d66aa2bb78849eba00', 'false'),
(834, 'mine_slm-01_100x100', 1, 'png', 'mine', 0, 'items', 'noCDN', 'false'),
(835, 'iris-4_top', 1, 'png', 'iris-4', 4, 'items_drone', 'e65761d42de94f1eeaa0c30e29d88e00', 'false'),
(836, 'arol-x_63x63', 1, 'png', 'arol-x', 0, 'items_equipment_extra_cpu', 'ac60d633a4eba6f094d4744ece618200', 'false'),
(837, 'f-05-pi_30x30', 1, 'png', 'f-05-pi', 0, 'items_drone_formation', 'd401ca33935ada050c68c42f4b064600', 'false'),
(838, 'flax-5_top', 1, 'png', 'flax-5', 5, 'items_drone', '409fbfcc3cbc34dee4e1cb5b6ee94600', 'false'),
(839, 'design_sd-sp-01_100x100', 1, 'png', 'design', 0, 'items', 'noCDN', 'false'),
(840, 'sar-02_63x63', 1, 'png', 'sar-02', 0, 'items_ammunition_rocketlauncher', '2ffb6474019b25ee050b23c598ea4f00', 'false'),
(841, 'cpu_rok-t01_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(842, 'amber_63x63', 1, 'png', 'amber', 0, 'items_ship_goliath_design', 'ec7f1aa0b74835d9c0ffa4082525f900', 'false'),
(843, 'booster_res-b01_100x100', 1, 'png', 'booster', 0, 'items', 'noCDN', 'false'),
(844, 'cpu_cl04k-m_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(845, 'duranium_30x30', 1, 'png', 'duranium', 0, 'items_resource_ore', '6bb6f068deff7b4d7f311e82cda5f600', 'false'),
(846, 'booty-key-red_63x63', 1, 'png', 'booty-key-red', 0, 'items_resource', '8815ffc124bb4a519e14370296bcec00', 'false'),
(847, 'shg-01_63x63', 1, 'png', 'shg-01', 0, 'items_ammunition_rocketlauncher', 'ca59d6dda55560a51aab987288bc3c00', 'false'),
(848, 'shipempty_63x63', 1, 'png', 'shipempty', 0, 'items_ship', '2f130ddafef10f75fa3cfc8444b0500', 'false'),
(849, 'ai-lm1_30x30', 1, 'png', 'ai-lm1', 0, 'items_equipment_aiprotocol', '7cfdaa6b1f5690e1349c1fcbe635d500', 'false'),
(850, 'sg3n-b01_30x30', 1, 'png', 'sg3n-b01', 0, 'items_equipment_generator_shield', 'e46db23c78d55f3cea22b36a7942e600', 'false'),
(851, 'zeus-1_30x30', 1, 'png', 'zeus-1', 1, 'items_drone', '22f7f8fed694c8d07adb9436c8d2c100', 'false'),
(852, 'fwx-s_30x30', 1, 'png', 'fwx-s', 0, 'items_ammunition_firework', 'f31d766e4172ea7da1d2da8691733200', 'false'),
(853, 'fuel-100_30x30', 1, 'png', 'fuel-100', 0, 'items_pet', '97d432601b2b9ee2b10a8998304db600', 'false'),
(854, 'zeus-1_top', 1, 'png', 'zeus-1', 1, 'items_drone', 'a0c763c62dabf732468815243b06ca00', 'false'),
(855, 'booty-key-blue_63x63', 1, 'png', 'booty-key-blue', 0, 'items_resource', '672fcc1ec8ecd2bbdfa915b2d3d61a00', 'false'),
(856, 'iris-5_100x100', 1, 'png', 'iris-5', 5, 'items_drone', '915c51fde19ca5d0c4878221ae305f00', 'false'),
(857, 'res-b02_100x100', 1, 'png', 'res-b02', 0, 'items_equipment_booster', '3a4cb9141ef6bec35854f7c8b7070a00', 'false'),
(858, 'goliath_100x100', 1, 'png', 'goliath', 0, 'items_ship', '5fcdb83e69b401d92cc1ae6abb172300', 'false'),
(859, 'kick_top', 1, 'png', 'kick', 0, 'items_ship_goliath_design', 'e118a7072e8c8907e5e493d7f5f0b200', 'false'),
(860, 'amber_100x100', 1, 'png', 'amber', 0, 'items_ship_goliath_design', '12a14d507f20dfab1d65f33eff38900', 'false'),
(861, 'independence_30x30', 1, 'png', 'independence', 0, 'items_ship_goliath_design', '4eb59f6195aeedf3d4733149c1089500', 'false'),
(862, 'pet_protocol_g-el1_100x100', 1, 'png', 'pet', 0, 'items', 'noCDN', 'false'),
(863, 'pet_fuel_fuel-100_100x100', 1, 'png', 'pet', 0, 'items', 'noCDN', 'false'),
(864, 'solace_30x30', 1, 'png', 'solace', 0, 'items_ship_goliath_design', 'c8ac358b4f8ea162b42f56ba05421d00', 'false'),
(865, 'lf-2_63x63', 1, 'png', 'lf-2', 0, 'items_equipment_weapon_laser', 'cbf50911027835ffa8e9f190e42e7e00', 'false'),
(866, 'jade_100x100', 1, 'png', 'jade', 0, 'items_ship_goliath_design', '818e123d12a61938bfeebebd65bc3600', 'false'),
(867, 'dr-01_30x30', 1, 'png', 'dr-01', 0, 'items_equipment_extra_cpu', '71ac401223c8dcfe83cec0582d42bf00', 'false'),
(868, 'apis-part_30x30', 1, 'png', 'apis-part', 0, 'items_resource_blueprint', '9dc8a706550809bf37253db69962b400', 'false'),
(869, 'g3n-1010_63x63', 1, 'png', 'g3n-1010', 0, 'items_equipment_generator_speed', 'c1836b133fef276221ded016d6fe8800', 'false'),
(870, 'ai-eco1_30x30', 1, 'png', 'ai-eco1', 0, 'items_equipment_aiprotocol', '3b590f6bfa9f48202a61cc6ff236fc00', 'false'),
(871, 'cbo-100_63x63', 1, 'png', 'cbo-100', 0, 'items_ammunition_laser', '832dc957ba163cef756386d74c7ad300', 'false'),
(872, 'pet10-8_top', 1, 'png', 'pet10-8', 0, 'items_pet', '18e0984a49aab4105a3aaaa22a70900', 'false'),
(873, 'g-ex1_100x100', 1, 'png', 'g-ex1', 0, 'items_equipment_petgear', '6b551e6c7762a5cdc2a93d2856b9a100', 'false'),
(874, 'g-rep1_30x30', 1, 'png', 'g-rep1', 0, 'items_equipment_petgear', '43945a993e025e65d07aa6f122368200', 'false'),
(875, 'yamato_top', 1, 'png', 'yamato', 0, 'items_ship', 'd12641e622d8655aae4a22f816da8f00', 'false'),
(876, 'f-08-ch_63x63', 1, 'png', 'f-08-ch', 0, 'items_drone_formation', '68e9483930556ba9b5b4986433e56a00', 'false'),
(877, 'avenger_top', 1, 'png', 'avenger', 0, 'items_ship_vengeance_design', 'bde08168336c7523c25ba94208e3a300', 'false'),
(878, 'revenge_top', 1, 'png', 'revenge', 0, 'items_ship_vengeance_design', '4f2d6ec23ff806621056c9e8e8723a00', 'false'),
(879, 'cbr_30x30', 1, 'png', 'cbr', 0, 'items_ammunition_rocketlauncher', 'b10e1faead68930ee8f6a4f3c20d1700', 'false'),
(880, 'sab-50_30x30', 1, 'png', 'sab-50', 0, 'items_ammunition_laser', '951e7ce7907a737f2c94d5cda23cfd00', 'false'),
(881, 'zeus-part_30x30', 1, 'png', 'zeus-part', 0, 'items_resource_blueprint', 'eeded406a696ccb581cb1b142f5fde00', 'false'),
(882, 'empm-01_100x100', 1, 'png', 'empm-01', 0, 'items_ammunition_mine', '38b506ca821f324b01415507d2df3900', 'false'),
(883, 'slm-01_30x30', 1, 'png', 'slm-01', 0, 'items_ammunition_mine', '6e41e6ce998b8a3bb07ca1190d1deb00', 'false'),
(884, 'cbo-100_100x100', 1, 'png', 'cbo-100', 0, 'items_ammunition_laser', 'ebfb7a43a0b8ae1a28ca3a20588b8600', 'false'),
(885, 'corsair_63x63', 1, 'png', 'corsair', 0, 'items_ship_vengeance_design', '53bc801fa8ce31198f62fee89f0eb900', 'false'),
(886, 'cpu_sle-04_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(887, 'hon-b02_100x100', 1, 'png', 'hon-b02', 0, 'items_equipment_booster', 'f44c7692a0880871d9449919e235d600', 'false'),
(888, 'weapon_lf1_100x100', 1, 'png', 'weapon', 0, 'items', 'noCDN', 'false'),
(889, 'f-04-st_30x30', 1, 'png', 'f-04-st', 0, 'items_drone_formation', '4687c81a4040b7f81abe044de0fd6e00', 'false'),
(890, 'nc-agb-x_63x63', 1, 'png', 'nc-agb-x', 0, 'items_equipment_extra_cpu', '8f667662bd9a919ccd1829c0da10b700', 'false'),
(891, 'g-ar1_63x63', 1, 'png', 'g-ar1', 0, 'items_equipment_petgear', 'ed674c42f1cf9bf5c833f8785bc66e00', 'false'),
(892, 'piranha_top', 1, 'png', 'piranha', 0, 'items_ship', '4590700ffd12fc189ec94ff492d1e300', 'false'),
(893, 'spearhead-mmo_63x63', 1, 'png', 'spearhead-mmo', 0, 'items_ship', 'ffb85c27ec6f831554ec317c036fe900', 'false'),
(894, 'goliath_63x63', 1, 'png', 'goliath', 0, 'items_ship', 'c6c8a09a4749af691b6a9947cf2c6900', 'false'),
(895, 'enforcer_top', 1, 'png', 'enforcer', 0, 'items_ship_goliath_design', 'aa24e60e333abc872ffe39b171b41200', 'false'),
(896, 'cpu_fb-x_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(897, 'liberator-default_top', 1, 'png', 'liberator-default', 0, 'items_ship_model', '4d48488a8ca0d9946c12ab1241d46c00', 'false'),
(898, 'apis-0_63x63', 1, 'png', 'apis-0', 0, 'items_drone', '4cc2e5f6780d0a710d0c537d29551500', 'false'),
(899, 'ship_vengeance_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(900, 'booster_sreg-b02_100x100', 1, 'png', 'booster', 0, 'items', 'noCDN', 'false'),
(901, 'rep-4_100x100', 1, 'png', 'rep-4', 0, 'items_equipment_extra_repbot', 'f319657ad942b61c8863b6492de48e00', 'false'),
(902, 'design_d-ve-01_100x100', 1, 'png', 'design', 0, 'items', 'noCDN', 'false'),
(903, 'cpu_nc-awb-x_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(904, 'rb-e01_30x30', 1, 'png', 'rb-e01', 0, 'items_ammunition_mine', '73f78c74fd9baf24825853f719fbd800', 'false'),
(905, 'g3x-crgo-x_100x100', 1, 'png', 'g3x-crgo-x', 0, 'items_equipment_extra_cpu', '52722009436318d043bee1373878f500', 'false'),
(906, 'sle-03_63x63', 1, 'png', 'sle-03', 0, 'items_equipment_extra_cpu', '5f31f312cf522e4258effcefb0022c00', 'false'),
(907, 'f-04-st_63x63', 1, 'png', 'f-04-st', 0, 'items_drone_formation', '841344ebe1b8bfb8068f245335e7ce00', 'false'),
(908, 'generator_g3n-2010_100x100', 1, 'png', 'generator', 0, 'items', 'noCDN', 'false'),
(909, 'apis-4_30x30', 1, 'png', 'apis-4', 4, 'items_drone', '193660b268e6896e96148d21531d1f00', 'false'),
(910, 'seprom_63x63', 1, 'png', 'seprom', 0, 'items_resource_ore', 'a8d0853733ebc9f36141d86c2e354900', 'false'),
(911, 'shd-b02_63x63', 1, 'png', 'shd-b02', 0, 'items_equipment_booster', '9308b95a2e2bb17d735d5dbc7f5a3000', 'false'),
(912, 'iris-4_63x63', 1, 'png', 'iris-4', 4, 'items_drone', '18d7b8fbe928f1b26ae05e8cf8eab200', 'false'),
(913, 'police_top', 1, 'png', 'police', 0, 'items_ship', '8eef551a4d7b222fac97eb14e59a8300', 'false'),
(914, 'acm-01_63x63', 1, 'png', 'acm-01', 0, 'items_ammunition_mine', '84100df3c5bed4eea0af67e4c4bfd00', 'false'),
(915, 'ai-cr1_100x100', 1, 'png', 'ai-cr1', 0, 'items_equipment_aiprotocol', '27af412ab7843c55ac60946557fb1e00', 'false'),
(916, 'jp-01_63x63', 1, 'png', 'jp-01', 0, 'items_equipment_extra_cpu', 'ddf568bb7d315e635c4850c413a1d00', 'false'),
(917, 'design_sd-se-01_100x100', 1, 'png', 'design', 0, 'items', 'noCDN', 'false'),
(918, 'f-07-di_30x30', 1, 'png', 'f-07-di', 0, 'items_drone_formation', 'fc3caac572c57e21867b120bf313ab00', 'false');
INSERT INTO `filecollection_file` (`id`, `id_name`, `version`, `type`, `name`, `level`, `location`, `cdn`, `debugView`) VALUES
(919, 'xp-b02_100x100', 1, 'png', 'xp-b02', 0, 'items_equipment_booster', '4e837365e6d6cc8716772d0d77847200', 'false'),
(920, 'ai-lm1_63x63', 1, 'png', 'ai-lm1', 0, 'items_equipment_aiprotocol', '8570b4d46b5bbec7eb78f3e2f0869800', 'false'),
(921, 'ship_spearhead-vru_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(922, 'adept_63x63', 1, 'png', 'adept', 0, 'items_ship_vengeance_design', '25a119d1a7577671039686e5b2137c00', 'false'),
(923, 'shg-02_100x100', 1, 'png', 'shg-02', 0, 'items_ammunition_rocketlauncher', 'ae5e512dfa7cb9448d5b846e969a4f00', 'false'),
(924, 'booster_sreg-b01_100x100', 1, 'png', 'booster', 0, 'items', 'noCDN', 'false'),
(925, 'iris-2_100x100', 1, 'png', 'iris-2', 2, 'items_drone', 'e0dbd77afe0b998abb1be914ff0ca800', 'false'),
(926, 'jade_63x63', 1, 'png', 'jade', 0, 'items_ship_goliath_design', 'ad668440af64e92129c2a086a7b98a00', 'false'),
(927, 'kick_63x63', 1, 'png', 'kick', 0, 'items_ship_goliath_design', '7bda5d3c248edbf2319ab5776c6ced00', 'false'),
(928, 'jp-02_63x63', 1, 'png', 'jp-02', 0, 'items_equipment_extra_cpu', '71448635257c7a2f48dab8bc67a3be00', 'false'),
(929, 'sg3n-a03_100x100', 1, 'png', 'sg3n-a03', 0, 'items_equipment_generator_shield', 'e1b79125e9f9c2fdb8711d3cb7774c00', 'false'),
(930, 'hmd-07_63x63', 1, 'png', 'hmd-07', 0, 'items_equipment_extra', '4dfcc90a5f2eaba7353fabadc4c0200', 'false'),
(931, 'centaur_30x30', 1, 'png', 'centaur', 0, 'items_ship_goliath_design', 'ccf58011657784838ce3f78297e12200', 'false'),
(932, 'dmg-b02_63x63', 1, 'png', 'dmg-b02', 0, 'items_equipment_booster', 'b2b47f42c82519c52ebecd3e5a8a4c00', 'false'),
(933, 'drone_hmd-07_100x100', 1, 'png', 'drone', 0, 'items', 'noCDN', 'false'),
(934, 'aim-02_100x100', 1, 'png', 'aim-02', 0, 'items_equipment_extra_cpu', 'b8d5a02cf8bd3f5080007615048d0d00', 'false'),
(935, 'booster_hp-b01_100x100', 1, 'png', 'booster', 0, 'items', 'noCDN', 'false'),
(936, 'pet_upgrade_g-hp1_100x100', 1, 'png', 'pet', 0, 'items', 'noCDN', 'false'),
(937, 'flax-3_30x30', 1, 'png', 'flax-3', 3, 'items_drone', 'b4d7617b2328bd26a878ba534a822500', 'false'),
(938, 'rb-e01_100x100', 1, 'png', 'rb-e01', 0, 'items_ammunition_mine', 'ad5cac8e306177020e77861d27ef3a00', 'false'),
(939, 'sle-03_100x100', 1, 'png', 'sle-03', 0, 'items_equipment_extra_cpu', '4676fbf3832998139092e35c0b6e8000', 'false'),
(940, 'sg3n-a03_30x30', 1, 'png', 'sg3n-a03', 0, 'items_equipment_generator_shield', 'f4d2d254f93608126c7db06a85de0800', 'false'),
(941, 'bastion_63x63', 1, 'png', 'bastion', 0, 'items_ship_goliath_design', '80981e18bb9a5ca616833d5c7ee05c00', 'false'),
(942, 'solace_63x63', 1, 'png', 'solace', 0, 'items_ship_goliath_design', '7e579597ee5b6fd540112b5733634400', 'false'),
(943, 'rocket_pld-8_100x100', 1, 'png', 'rocket', 0, 'items', 'noCDN', 'false'),
(944, 'design_d-ad-01_100x100', 1, 'png', 'design', 0, 'items', 'noCDN', 'false'),
(945, 'pet_deal_100x100', 1, 'png', 'pet', 0, 'items', 'noCDN', 'false'),
(946, 'emp-01_63x63', 1, 'png', 'emp-01', 0, 'items_ammunition_specialammo', '9de00cb647c1a6a934f6a65f25168500', 'false'),
(947, 'endurium_63x63', 1, 'png', 'endurium', 0, 'items_resource_ore', '458fc20aa365cf46032ec748fa143500', 'false'),
(948, 'ship_aegis-vru_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(949, 'dr-01_63x63', 1, 'png', 'dr-01', 0, 'items_equipment_extra_cpu', '30f24a22fb123ab3409edbaae0c3b700', 'false'),
(950, 'rllb-x_63x63', 1, 'png', 'rllb-x', 0, 'items_equipment_extra_cpu', 'f86e532f0605f1befc3efab402dfbd00', 'false'),
(951, 'iris-0_top', 1, 'png', 'iris-0', 0, 'items_drone', '79b048a4b8e05add7a2245ebe95d5e00', 'false'),
(952, 'zeus-4_top', 1, 'png', 'zeus-4', 4, 'items_drone', '40d36e3b57514a902072885b57b1ae00', 'false'),
(953, 'iris-3_63x63', 1, 'png', 'iris-3', 3, 'items_drone', 'dd3a4359bfadba07d03989ec042b5e00', 'false'),
(954, 'citadel-mmo_63x63', 1, 'png', 'citadel-mmo', 0, 'items_ship', '674d1ff3a2a6be1a95a4797cffa4d300', 'false'),
(955, 'ucb-100_30x30', 1, 'png', 'ucb-100', 0, 'items_ammunition_laser', '2e499cee32127be3df4cf200e1c73b00', 'false'),
(956, 'wiz-x_63x63', 1, 'png', 'wiz-x', 0, 'items_ammunition_specialammo', 'c358781d73d4ae07256403bf543ea400', 'false'),
(957, 'firework_fwx-l_100x100', 1, 'png', 'firework', 0, 'items', 'noCDN', 'false'),
(958, 'iris-4_100x100', 1, 'png', 'iris-4', 4, 'items_drone', '227efd2ca7b8749575885abd3d33e00', 'false'),
(959, 'mine_acm-01_100x100', 1, 'png', 'mine', 0, 'items', 'noCDN', 'false'),
(960, 'cl04k-xl_100x100', 1, 'png', 'cl04k-xl', 0, 'items_equipment_extra_cpu', '5378f0fbbdf4e36ee572672a89967e00', 'false'),
(961, 'bdr-1211_100x100', 1, 'png', 'bdr-1211', 0, 'items_ammunition_rocket', '36722fa5af808de5a0af0e640ab1a100', 'false'),
(962, 'jade_top', 1, 'png', 'jade', 0, 'items_ship_goliath_design', '812a9b8eac5ba9c6a7e522c5b6ff5a00', 'false'),
(963, 'ai-s1_63x63', 1, 'png', 'ai-s1', 0, 'items_equipment_aiprotocol', '2f662e021563fc607ea4b20838458100', 'false'),
(964, 'cpu_cl04k-xs_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(965, 'sentinel_100x100', 1, 'png', 'sentinel', 0, 'items_ship_goliath_design', 'f34f8253592a74a52c37bf4962a3d100', 'false'),
(966, 'shd-b01_63x63', 1, 'png', 'shd-b01', 0, 'items_equipment_booster', 'a1ba5217e40783c6fa2f0ef01e67be00', 'false'),
(967, 'drone_apis-1_100x100', 1, 'png', 'drone', 0, 'items', 'noCDN', 'false'),
(968, 'ai-eco1_63x63', 1, 'png', 'ai-eco1', 0, 'items_equipment_aiprotocol', 'f3221170727abd2cd60e22a3340b3200', 'false'),
(969, 'rep-b01_30x30', 1, 'png', 'rep-b01', 0, 'items_equipment_booster', 'ee106e1ff4f967fca12e286a0e699f00', 'false'),
(970, 'resource_bk-100_100x100', 1, 'png', 'resource', 0, 'items', 'noCDN', 'false'),
(971, 'flax-0_100x100', 1, 'png', 'flax-0', 0, 'items_drone', '38bea08f983fa9f8ff1e26735d970300', 'false'),
(972, 'lcb-10_100x100', 1, 'png', 'lcb-10', 0, 'items_ammunition_laser', 'd8db5c48fe907c65a74b77b7206a5e00', 'false'),
(973, 'ship_pack-trinity-vru_100x100', 1, 'png', 'ship', 0, 'items', 'noCDN', 'false'),
(974, 'rsb-75_30x30', 1, 'png', 'rsb-75', 0, 'items_ammunition_laser', '12c893d480540c5fc1279664048b4100', 'false'),
(975, 'f-03-la_30x30', 1, 'png', 'f-03-la', 0, 'items_drone_formation', '19caa6e180886a14fa61bb12772f4200', 'false'),
(976, 'booster_cd-b02_100x100', 1, 'png', 'booster', 0, 'items', 'noCDN', 'false'),
(977, 'flax-2_63x63', 1, 'png', 'flax-2', 2, 'items_drone', '4b771ddf5635c65836287e3c59641f00', 'false'),
(978, 'bdr-1211_30x30', 1, 'png', 'bdr-1211', 0, 'items_ammunition_rocket', '31e5be8b86058dfd9dee1c19ecf64900', 'false'),
(979, 'g-kk1_63x63', 1, 'png', 'g-kk1', 0, 'items_equipment_petgear', '351761b8252c9449fddc5139abd7f00', 'false'),
(980, 'cpu_jp-01_100x100', 1, 'png', 'cpu', 0, 'items', 'noCDN', 'false'),
(981, 'arol-x_30x30', 1, 'png', 'arol-x', 0, 'items_equipment_extra_cpu', '75c5dc20096b5056351b29efd6ceb700', 'false'),
(982, 'veteran_30x30', 1, 'png', 'veteran', 0, 'items_ship_goliath_design', '9d6eabcab5911bfc2c4a2d56676ce400', 'false'),
(983, 'hstrm-01_100x100', 1, 'png', 'hstrm-01', 0, 'items_ammunition_rocketlauncher', 'be2503f2e93334f320dce9156363fc00', 'false');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `filecollection_location`
--

CREATE TABLE IF NOT EXISTS `filecollection_location` (
  `id` int(255) NOT NULL,
  `path` longtext NOT NULL,
  `strin_id` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `filecollection_location`
--

INSERT INTO `filecollection_location` (`id`, `path`, `strin_id`) VALUES
(0, 'items/', 'items'),
(1, 'items/ammunition/', 'items_ammunition'),
(2, 'items/ammunition/firework/', 'items_ammunition_firework'),
(3, 'items/ammunition/laser/', 'items_ammunition_laser'),
(4, 'items/ammunition/mine/', 'items_ammunition_mine'),
(5, 'items/ammunition/rocket/', 'items_ammunition_rocket'),
(6, 'items/ammunition/rocketlauncher/', 'items_ammunition_rocketlauncher'),
(7, 'items/ammunition/specialammo/', 'items_ammunition_specialammo'),
(8, 'items/drone/', 'items_drone'),
(9, 'items/drone/designs/', 'items_drone_designs'),
(10, 'items/drone/formation/', 'items_drone_formation'),
(11, 'items/equipment/', 'items_equipment'),
(12, 'items/equipment/aiprotocol/', 'items_equipment_aiprotocol'),
(13, 'items/equipment/booster/', 'items_equipment_booster'),
(14, 'items/equipment/extra/', 'items_equipment_extra'),
(15, 'items/equipment/extra/cpu/', 'items_equipment_extra_cpu'),
(16, 'items/equipment/extra/repbot/', 'items_equipment_extra_repbot'),
(17, 'items/equipment/generator/', 'items_equipment_generator'),
(18, 'items/equipment/generator/shield/', 'items_equipment_generator_shield'),
(19, 'items/equipment/generator/speed/', 'items_equipment_generator_speed'),
(20, 'items/equipment/petgear/', 'items_equipment_petgear'),
(21, 'items/equipment/weapon/', 'items_equipment_weapon'),
(22, 'items/equipment/weapon/laser/', 'items_equipment_weapon_laser'),
(23, 'items/equipment/weapon/rocketlauncher/', 'items_equipment_weapon_rocketlauncher'),
(24, 'items/pet/', 'items_pet'),
(25, 'items/resource/', 'items_resource'),
(26, 'items/resource/blueprint/', 'items_resource_blueprint'),
(27, 'items/resource/ore/', 'items_resource_ore'),
(28, 'items/ship/', 'items_ship'),
(29, 'items/ship/bigboy/', 'items_ship_bigboy'),
(30, 'items/ship/bigboy/design/', 'items_ship_bigboy_design'),
(31, 'items/ship/goliath/', 'items_ship_goliath'),
(32, 'items/ship/goliath/design/', 'items_ship_goliath_design'),
(33, 'items/ship/model/', 'items_ship_model'),
(34, 'items/ship/vengeance/', 'items_ship_vengeance'),
(35, 'items/ship/vengeance/design/', 'items_ship_vengeance_design');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item_filter`
--

CREATE TABLE IF NOT EXISTS `item_filter` (
  `filter_name` varchar(255) NOT NULL,
  `filter_id_values` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `item_filter`
--

INSERT INTO `item_filter` (`filter_name`, `filter_id_values`) VALUES
('weapons', 0),
('weapons', 1),
('weapons', 2),
('generators', 3),
('generators', 4),
('generators', 5),
('extras', 6),
('extras', 7),
('extras', 8),
('extras', 9),
('extras', 10),
('extras', 11),
('ammunition', 12),
('ammunition', 13),
('ammunition', 14),
('resources', 15),
('drone_related', 16),
('drone_related', 17),
('modules', 18),
('pet_related', 19),
('pet_related', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mailsystem`
--

CREATE TABLE IF NOT EXISTS `mailsystem` (
  `userID` int(11) NOT NULL,
`mailID` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `senderID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maps`
--

CREATE TABLE IF NOT EXISTS `maps` (
`id` smallint(4) NOT NULL,
  `Name` varchar(20) NOT NULL DEFAULT '',
  `Limits` varchar(20) NOT NULL,
  `Portals` text NOT NULL,
  `NPCS` text NOT NULL,
  `isStarterMap` enum('0','1') NOT NULL DEFAULT '0',
  `factionId` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `maps`
--

INSERT INTO `maps` (`id`, `Name`, `Limits`, `Portals`, `NPCS`, `isStarterMap`, `factionId`) VALUES
(26, '3-6', '', '[{"Id":1,"x":"2000","y":"2000","newX":"2000","newY":"11500","Map":25},{"Id":2,"x":"18500","y":"11500","newX":"2000","newY":"11500","Map":28}]', '[{"npcId":79,"Count":10},{"npcId":78,"Count":50},{"npcId":80,"Count":4}]', '0', 3),
(27, '3-7', '', '[{"Id":1,"x":"2000","y":"2000","newX":"18500","newY":"11500","Map":25},{"Id":2,"x":"18500","y":"11500","newX":"2000","newY":"2000","Map":28}]', '[{"npcId":79,"Count":10},{"npcId":78,"Count":50}]', '0', 3),
(2, '1-2', '208x130', '[{"Id":1,"x":"2000","y":"2000","newX":"18500","newY":"11500","Map":1},{"Id":2,"x":"18500","y":"2000","newX":"2000","newY":"11500","Map":3},{"Id":3,"x":"18500","y":"11500","newX":"2000","newY":"2000","Map":4}]', '[{"npcId":84,"Count":50},{"npcId":71,"Count":25}]', '1', 1),
(1, '1-1', '208x130', '[{"Id":1,"x":"18500","y":"11500","newX":"2000","newY":"2000","Map":2}]', '[{"npcId":84,"Count":50}]', '1', 1),
(3, '1-3', '128x128', '[{"Id":1,"x":"2000","y":"11500","newX":"18500","newY":"2000","Map":2},{"Id":2,"x":"18500","y":"2000","newX":"2000","newY":"11500","Map":7},{"Id":3,"x":"18500","y":"11500","newX":"18500","newY":"2000","Map":4}]', '[{"npcId":71,"Count":25},{"npcId":72,"Count":10},{"npcId":75,"Count":25},{"npcId":73,"Count":25}]', '0', 1),
(4, '1-4', '', '[{"Id":1,"x":"2000","y":"2000","newX":"18500","newY":"11500","Map":2},{"Id":2,"x":"18500","y":"2000","newX":"18500","newY":"11500","Map":3},{"Id":3,"x":"18500","y":"11500","newX":"2000","newY":"2000","Map":12},{"Id":4,"x":"18500","y":"6750","newX":"2000","newY":"6750","Map":13}]', '[{"npcId":74,"Count":10},{"npcId":71,"Count":25},{"npcId":75,"Count":25},{"npcId":73,"Count":25}]', '0', 1),
(5, '2-1', '', '[{"Id":1,"x":"2000","y":"11500","newX":"18500","newY":"2000","Map":6}]', '[{"npcId":84,"Count":50}]', '1', 2),
(6, '2-2', '', '[{"Id":1,"x":"18500","y":"2000","newX":"2000","newY":"11500","Map":5},{"Id":2,"x":"2000","y":"11500","newX":"18500","newY":"2000","Map":7},{"Id":3,"x":"18500","y":"11500","newX":"2000","newY":"2000","Map":8}]', '[{"npcId":84,"Count":50},{"npcId":71,"Count":25}]', '1', 2),
(7, '2-3', '', '[{"Id":1,"x":"18500","y":"11500","newX":"18500","newY":"2000","Map":8},{"Id":2,"x":"18500","y":"2000","newX":"2000","newY":"11500","Map":6},{"Id":3,"x":"2000","y":"11500","newX":"18500","newY":"2000","Map":3}]', '[{"npcId":71,"Count":25},{"npcId":72,"Count":10},{"npcId":75,"Count":25},{"npcId":73,"Count":25}]', '0', 2),
(8, '2-4', '', '[{"Id":1,"x":"2000","y":"2000","newX":"18500","newY":"11500","Map":6},{"Id":2,"x":"18500","y":"2000","newX":"18500","newY":"11500","Map":7},{"Id":3,"x":"2000","y":"11500","newX":"2000","newY":"2000","Map":11},{"Id":4,"x":"10250","y":"11500","newX":"10250","newY":"2000","Map":14}]', '[{"npcId":74,"Count":10},{"npcId":71,"Count":25},{"npcId":75,"Count":25},{"npcId":73,"Count":25}]', '0', 2),
(9, '3-1', '', '[{"Id":1,"x":"2000","y":"2000","newX":"18500","newY":"11500","Map":10}]', '[{"npcId":84,"Count":50}]', '1', 3),
(10, '3-2', '', '[{"Id":1,"x":"18500","y":"11500","newX":"2000","newY":"2000","Map":9},{"Id":2,"x":"18500","y":"2000","newX":"18500","newY":"11500","Map":11},{"Id":3,"x":"2000","y":"2000","newX":"18500","newY":"11500","Map":12}]', '[{"npcId":84,"Count":50},{"npcId":71,"Count":25}]', '1', 3),
(11, '3-3', '', '[{"Id":1,"x":"18500","y":"11500","newX":"18500","newY":"2000","Map":10},{"Id":2,"x":"2000","y":"11500","newX":"18500","newY":"2000","Map":12},{"Id":3,"x":"2000","y":"2000","newX":"2000","newY":"11500","Map":8}]', '[{"npcId":71,"Count":25},{"npcId":72,"Count":10},{"npcId":75,"Count":25},{"npcId":73,"Count":25}]', '0', 3),
(12, '3-4', '', '[{"Id":1,"x":"18500","y":"11500","newX":"2000","newY":"2000","Map":10},{"Id":2,"x":"18500","y":"2000","newX":"2000","newY":"11500","Map":11},{"Id":3,"x":"2000","y":"2000","newX":"18500","newY":"11500","Map":4},{"Id":4,"x":"10250","y":"2000","newX":"18500","newY":"6750","Map":15}]', '[{"npcId":74,"Count":10},{"npcId":71,"Count":25},{"npcId":75,"Count":25},{"npcId":73,"Count":25}]', '0', 3),
(13, '4-1', '', '[{"Id":1,"x":"2000","y":"6750","newX":"18500","newY":"6750","Map":4},{"Id":2,"x":"18500","y":"11500","newX":"18500","newY":"11500","Map":15},{"Id":3,"x":"18500","y":"2000","newX":"2000","newY":"11500","Map":14},{"Id":4,"x":"10250","y":"6750","newX":"20000","newY":"13000","Map":16}]', '[{"npcId":80,"Count":1}]', '0', 1),
(14, '4-2', '', '[{"Id":1,"x":"10250","y":"2000","newX":"10250","newY":"11500","Map":8},{"Id":2,"x":"2000","y":"11500","newX":"18500","newY":"11500","Map":13},{"Id":3,"x":"18500","y":"11500","newX":"18500","newY":"2000","Map":15},{"Id":4,"x":"10250","y":"6750","newX":"21500","newY":"12100","Map":16}]\n', '[{"npcId":80,"Count":1}]', '0', 2),
(15, '4-3', '', '[{"Id":1,"x":"18500","y":"6750","newX":"10250","newY":"2000","Map":12},{"Id":2,"x":"2000","y":"2000","newX":"18500","newY":"11500","Map":14},{"Id":3,"x":"2000","y":"11500","newX":"18500","newY":"11500","Map":13},{"Id":4,"x":"10250","y":"6750","newX":"21500","newY":"13900","Map":16}]', '[{"npcId":80,"Count":1}]', '0', 3),
(16, '4-4', '', '[{"Id":1,"x":"21500","y":"13900","newX":"10250","newY":"6750","Map":15},{"Id":2,"x":"21500","y":"12100","newX":"10250","newY":"6750","Map":14},{"Id":3,"x":"20000","y":"13000","newX":"10250","newY":"6750","Map":13},{"Id":4,"x":"6000","y":"13000","newX":"18500","newY":"6750","Map":17},{"Id":5,"x":"28000","y":"3000","newX":"2000","newY":"11500","Map":21},{"Id":6,"x":"28000","y":"24000","newX":"2000","newY":"2000","Map":25}]', '[{"npcId":80,"Count":1}]', '0', 0),
(17, '1-5', '', '[{"Id":1,"x":"18500","y":"6750","newX":"6000","newY":"13000","Map":16},{"Id":2,"x":"2000","y":"2000","newX":"18500","newY":"11500","Map":18},{"Id":3,"x":"2000","y":"11500","newX":"18500","newY":"2000","Map":19}]', '[{"npcId":77,"Count":10},{"npcId":71,"Count":50},{"npcId":76,"Count":25}]', '0', 1),
(18, '1-6', '', '[{"Id":1,"x":"18500","y":"11500","newX":"2000","newY":"2000","Map":17},{"Id":2,"x":"2000","y":"11500","newX":"18500","newY":"2000","Map":20}]', '[{"npcId":79,"Count":10},{"npcId":78,"Count":50},{"npcId":80,"Count":4}]', '0', 1),
(19, '1-7', '', '[{"Id":1,"x":"2000","y":"2000","newX":"18500","newY":"11500","Map":20},{"Id":2,"x":"18500","y":"2000","newX":"2000","newY":"11500","Map":17}]', '[{"npcId":79,"Count":10},{"npcId":78,"Count":50}]', '0', 1),
(20, '1-8', '', '[{"Id":1,"x":"18500","y":"2000","newX":"2000","newY":"11500","Map":18},{"Id":2,"x":"18500","y":"11500","newX":"2000","newY":"2000","Map":19}]', '[{"npcId":85,"Count":75}]', '0', 1),
(21, '2-5', '', '[{"Id":1,"x":"2000","y":"11500","newX":"28000","newY":"3000","Map":16},{"Id":2,"x":"2000","y":"2000","newX":"2000","newY":"11500","Map":22},{"Id":3,"x":"18500","y":"2000","newX":"2000","newY":"11500","Map":23}]', '[{"npcId":77,"Count":10},{"npcId":71,"Count":50},{"npcId":76,"Count":25}]', '0', 2),
(22, '2-6', '', '[{"Id":1,"x":"2000","y":"11500","newX":"2000","newY":"2000","Map":21},{"Id":2,"x":"18500","y":"2000","newX":"2000","newY":"11500","Map":24}]', '[{"npcId":79,"Count":10},{"npcId":78,"Count":50},{"npcId":80,"Count":4}]', '0', 2),
(23, '2-7', '', '[{"Id":1,"x":"2000","y":"11500","newX":"18500","newY":"2000","Map":21},{"Id":2,"x":"18500","y":"2000","newX":"18500","newY":"11500","Map":24}]', '[{"npcId":79,"Count":10},{"npcId":78,"Count":50}]', '0', 2),
(24, '2-8', '', '[{"Id":1,"x":"2000","y":"11500","newX":"18500","newY":"2000","Map":22},{"Id":2,"x":"18500","y":"11500","newX":"18500","newY":"2000","Map":23}]', '[{"npcId":85,"Count":75}]', '0', 2),
(25, '3-5', '', '[{"Id":1,"x":"2000","y":"2000","newX":"28000","newY":"24000","Map":16},{"Id":2,"x":"2000","y":"11500","newX":"2000","newY":"2000","Map":26},{"Id":3,"x":"18500","y":"11500","newX":"2000","newY":"2000","Map":27}]', '[{"npcId":77,"Count":10},{"npcId":71,"Count":50},{"npcId":76,"Count":25}]', '0', 3),
(28, '3-8', '', '[{"Id":1,"x":"2000","y":"2000","newX":"18500","newY":"11500","Map":27},{"Id":2,"x":"2000","y":"11500","newX":"2000","newY":"11500","Map":26}]', '[{"npcId":85,"Count":75}]', '0', 3),
(29, '4-5', '', '', '', '0', 0),
(42, '???', '', '', '', '0', 0),
(91, '5-1', '', '', '', '0', 0),
(92, '5-2', '', '', '', '0', 0),
(93, '5-3', '', '', '', '0', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
`id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `navigation`
--

CREATE TABLE IF NOT EXISTS `navigation` (
`id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `isIN` int(1) NOT NULL,
  `adminOnly` int(1) NOT NULL DEFAULT '0',
  `content` longtext NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `portals`
--

CREATE TABLE IF NOT EXISTS `portals` (
`id` int(11) NOT NULL,
  `portalID` int(3) NOT NULL,
  `mapId` smallint(3) NOT NULL,
  `toMapId` smallint(3) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `newX` int(11) NOT NULL,
  `newY` int(11) NOT NULL,
  `reqLvl` int(11) NOT NULL DEFAULT '0',
  `portalGFX` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `portals`
--

INSERT INTO `portals` (`id`, `portalID`, `mapId`, `toMapId`, `x`, `y`, `newX`, `newY`, `reqLvl`, `portalGFX`) VALUES
(1, 1, 1, 2, 18500, 11500, 2000, 2000, 0, 1),
(2, 1, 2, 1, 2000, 2000, 18500, 11500, 0, 1),
(3, 2, 2, 3, 18500, 2000, 2000, 11500, 0, 1),
(4, 3, 2, 4, 18500, 11500, 2000, 2000, 0, 1),
(5, 0, 3, 2, 2000, 11500, 18500, 2000, 0, 1),
(6, 0, 3, 4, 18500, 11500, 18500, 2000, 0, 1),
(7, 0, 3, 7, 18500, 2000, 2000, 11500, 0, 1),
(8, 0, 4, 2, 2000, 2000, 18500, 11500, 0, 1),
(9, 0, 4, 3, 18500, 2000, 18500, 11500, 0, 1),
(10, 0, 4, 12, 18500, 11500, 2000, 2000, 0, 1),
(11, 0, 4, 13, 19500, 7000, 2000, 7000, 0, 1),
(12, 0, 5, 6, 2000, 11500, 18500, 2000, 0, 1),
(13, 0, 6, 5, 18500, 2000, 2000, 11500, 0, 1),
(14, 0, 6, 7, 2000, 11500, 18500, 2000, 0, 1),
(15, 0, 6, 8, 18500, 11500, 2000, 2000, 0, 1),
(16, 0, 7, 6, 18500, 2000, 2000, 11500, 0, 1),
(17, 0, 7, 3, 2000, 11500, 18500, 2000, 0, 1),
(18, 0, 7, 8, 18500, 11500, 18500, 2000, 0, 1),
(19, 0, 8, 6, 2000, 2000, 18500, 11500, 0, 1),
(20, 0, 8, 7, 18500, 2000, 18500, 11500, 0, 1),
(21, 0, 8, 11, 2000, 11500, 2000, 2000, 0, 1),
(22, 0, 8, 14, 10000, 12000, 10700, 1200, 0, 1),
(23, 0, 9, 10, 2000, 2000, 18500, 11500, 0, 1),
(24, 0, 10, 9, 18500, 11500, 2000, 2000, 0, 1),
(25, 0, 10, 11, 18500, 2000, 18500, 11500, 0, 1),
(26, 0, 10, 12, 2000, 2000, 18500, 11500, 0, 1),
(27, 0, 11, 8, 2000, 2000, 2000, 11500, 0, 1),
(28, 0, 11, 10, 18500, 11500, 18500, 2000, 0, 1),
(29, 0, 11, 12, 2000, 11500, 18500, 2000, 0, 1),
(30, 0, 12, 4, 2000, 2000, 18500, 11500, 0, 1),
(31, 0, 12, 10, 18500, 11500, 2000, 2000, 0, 1),
(32, 0, 12, 11, 18500, 2000, 2000, 11500, 0, 1),
(33, 0, 12, 15, 10700, 1200, 19500, 7000, 0, 1),
(34, 0, 13, 4, 2000, 7000, 19500, 7000, 0, 1),
(35, 0, 13, 14, 18500, 2000, 2000, 11500, 0, 1),
(36, 0, 13, 15, 18500, 11500, 2000, 11500, 0, 1),
(37, 0, 14, 8, 10700, 1200, 10000, 12000, 0, 1),
(38, 0, 14, 13, 2000, 11500, 18500, 2000, 0, 1),
(39, 0, 14, 15, 18500, 11500, 2000, 2000, 0, 1),
(40, 0, 15, 12, 19500, 7000, 10700, 1200, 0, 1),
(41, 0, 15, 13, 2000, 11500, 18500, 11500, 0, 1),
(42, 0, 15, 14, 2000, 2000, 18500, 11500, 0, 1),
(43, 0, 13, 16, 10700, 7000, 19200, 13400, 0, 1),
(44, 0, 14, 16, 10700, 7000, 21900, 11900, 0, 1),
(45, 0, 15, 16, 10700, 7000, 21800, 14500, 0, 1),
(46, 0, 16, 13, 19200, 13400, 10700, 7000, 0, 1),
(47, 0, 16, 14, 21900, 11900, 10700, 7000, 0, 1),
(48, 0, 16, 15, 21800, 14500, 10700, 7000, 0, 1),
(49, 0, 16, 17, 7000, 13500, 18500, 6000, 0, 1),
(50, 0, 16, 21, 28000, 1300, 2000, 11500, 0, 1),
(51, 0, 16, 25, 28000, 25100, 2000, 2000, 0, 1),
(52, 0, 17, 19, 2000, 11500, 18500, 2000, 0, 1),
(53, 0, 17, 16, 18500, 6000, 21800, 14500, 0, 1),
(54, 0, 17, 18, 2000, 2000, 18500, 11500, 0, 1),
(55, 0, 17, 29, 10500, 12000, 5500, 13500, 0, 1),
(56, 0, 18, 17, 18500, 11500, 2000, 2000, 0, 1),
(57, 0, 18, 20, 2000, 11500, 18500, 2000, 0, 1),
(58, 0, 19, 17, 18500, 2000, 2000, 11500, 0, 1),
(59, 0, 19, 20, 2000, 2000, 18500, 2000, 0, 1),
(60, 0, 20, 19, 18500, 11500, 2000, 2000, 0, 1),
(61, 0, 20, 18, 18500, 2000, 2000, 11500, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rank`
--

CREATE TABLE IF NOT EXISTS `rank` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `percentage` double(11,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rank`
--

INSERT INTO `rank` (`id`, `name`, `percentage`) VALUES
(1, 'Basic Space Pilot', 20.00),
(2, 'Space Pilot', 12.39),
(3, 'Chief Space Pilot', 10.00),
(4, 'Basic Sergeant', 9.00),
(5, 'Sergeant', 8.00),
(6, 'Chief Sergeant', 7.00),
(7, 'Basic Lieutenant', 6.00),
(8, 'Lieutenant', 5.00),
(9, 'Chief Lieutenant', 4.50),
(10, 'Basic Captain', 4.00),
(11, 'Captain', 3.50),
(12, 'Chief Captain', 3.00),
(13, 'Basic Major', 2.50),
(14, 'Major', 2.00),
(15, 'Chief Major', 1.50),
(16, 'Basic Colonel', 1.00),
(17, 'Colonel', 0.50),
(18, 'Chief Colonel', 0.10),
(19, 'Basic General', 0.01),
(20, 'General', 0.00),
(99, 'Administrator', 0.00),
(21, 'Administrator', 0.00),
(22, 'Wanted', 0.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servers`
--

CREATE TABLE IF NOT EXISTS `servers` (
`ID` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL DEFAULT 'Server 1',
  `ShortName` varchar(10) NOT NULL DEFAULT 'SV1'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `servers`
--

INSERT INTO `servers` (`ID`, `Name`, `ShortName`) VALUES
(1, 'Global', 'G');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_1_auction_hour`
--

CREATE TABLE IF NOT EXISTS `server_1_auction_hour` (
`autoID` int(11) NOT NULL,
  `ItemName` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '1',
  `sType` varchar(255) NOT NULL,
  `HBidder` int(11) NOT NULL DEFAULT '0',
  `cBud` bigint(20) NOT NULL DEFAULT '0',
  `iBuy` int(11) NOT NULL,
  `apply` int(1) NOT NULL DEFAULT '0',
  `deco` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `server_1_auction_hour`
--

INSERT INTO `server_1_auction_hour` (`autoID`, `ItemName`, `amount`, `sType`, `HBidder`, `cBud`, `iBuy`, `apply`, `deco`) VALUES
(1, 'ammunition_laser_mcb-25', 1000, 'Batteries', 0, 0, 500, 0, 'More bang for your buck: x2 laser damage per round (1,000 units)'),
(2, 'ammunition_laser_mcb-50', 1000, 'Batteries', 0, 0, 1000, 0, 'This is the best standard laser ammo on the market. x3 laser damage per round (1,000 units)'),
(3, 'ammunition_laser_sab-50', 1000, 'Batteries', 0, 0, 1000, 0, 'Special ammunition that reinforces your Shield, strengthening it by tapping into enemy shields (Shield Leech). '),
(4, 'ammunition_rocket_plt-3030', 100, 'Rockets and Mines', 0, 0, 700, 0, 'Each rocket inflicts a max. of 6,000 HP of damage, but has a lower accuracy rate due to its impressive firepower.'),
(5, 'ammunition_rocket_plt-2021', 100, 'Rockets and Mines', 0, 0, 500, 0, 'Long-range rocket: causes up to 4,000 points per rocket fired (100 units)'),
(6, 'ammunition_mine_acm-01', 10, 'Rockets and Mines', 0, 0, 1000, 0, 'Proximity mine: 20% damage upon detonation (10 units)'),
(7, 'equipment_generator_speed_g3n-7900', 1, 'Generators', 0, 0, 2000, 0, 'Increases ship speed by 10'),
(8, 'equipment_generator_shield_sg3n-b02', 1, 'Generators', 0, 0, 10000, 0, '10,000 shield strength / 80% less damage'),
(9, 'equipment_extra_cpu_cl04k-xs', 1, 'Extras', 0, 0, 500, 0, 'Ship stays cloaked until your first attack'),
(10, 'equipment_extra_cpu_cl04k-m', 1, 'Extras', 0, 0, 5000, 0, '10 ship cloakings (active until your first attack)'),
(11, 'equipment_extra_cpu_cl04k-xl', 1, 'Extras', 0, 0, 22500, 0, 'Cloak your ship 50 times and stay invisible until you launch an attack yourself.'),
(12, 'equipment_extra_cpu_sle-02', 1, 'Extras', 0, 0, 75000, 0, '+4 new slots for extras'),
(13, 'equipment_extra_cpu_sle-03', 1, 'Extras', 0, 0, 150000, 0, '+6 new slots for extras'),
(14, 'equipment_extra_cpu_sle-04', 1, 'Extras', 0, 0, 250000, 0, '+10 new slots for extras'),
(15, 'equipment_extra_cpu_arol-x', 1, 'Extras', 0, 0, 25000, 0, 'Automatic rocket rapid fire during your laser attacks'),
(16, 'equipment_extra_cpu_min-t02', 1, 'Extras', 0, 0, 25000, 0, '50% less cool-down time for mines and items made from mines'),
(17, 'equipment_extra_cpu_jp-02', 1, 'Extras', 0, 0, 15000, 0, '50% less cool-down time for mines and items made from mines'),
(18, 'equipment_extra_cpu_rd-x', 1, 'Extras', 0, 0, 15000, 0, 'Displays diplomacy status on mini map'),
(19, 'equipment_extra_cpu_dr-02', 1, 'Extras', 0, 0, 15000, 0, 'This CPU automatically repairs your drones when they have received the maximum damage upon ship destruction, as long as you have enough Uridium or Credits (depends on the drone type). Good for 32 repairs.'),
(20, 'equipment_extra_cpu_alb-x', 1, 'Extras', 0, 0, 15000, 0, 'Automatically buys 10,000 laser rounds if less than 1,000 rounds on board. Settings can be adjusted in Equipment.'),
(21, 'equipment_extra_cpu_smb-01', 1, 'Extras', 0, 0, 50000, 0, 'Instant bomb made from 10 mines and 100 Xenomit; doesn''t cause any damage to your ship'),
(22, 'equipment_extra_cpu_ish-01', 1, 'Extras', 0, 0, 50000, 0, '3-second protection against enemies; 10 mines and 100 Xenomit used every time'),
(23, 'equipment_extra_cpu_nc-agb-x', 1, 'Extras', 0, 0, 15000, 0, 'Automatically gives your generators a boost using the best resources available'),
(24, 'equipment_extra_repbot_rep-3', 1, 'Extras', 0, 0, 5000, 0, 'This repair bot recovers your ship''s hull in 105 seconds.'),
(25, 'equipment_extra_repbot_rep-4', 1, 'Extras', 0, 0, 20000, 0, 'This repair bot recovers your ship''s hull in 90 seconds.'),
(26, 'equipment_extra_cpu_ajp-01', 1, 'Extras', 0, 0, 75000, 0, 'Allows you to jump to any of the valid target maps. May not be used during battle.'),
(27, 'equipment_extra_cpu_rb-x', 1, 'Extras', 0, 0, 15000, 0, 'Automatically buys 500 rockets of the selected rocket type when you have less than 100 left on board. To set the rocket type, click on Hangar -> Equipment.'),
(28, 'equipment_extra_cpu_rllb-x', 1, 'Extras', 0, 0, 25000, 0, 'The rocket-launcher CPU automatically reloads your rocket launcher with a specified rocket type to rain fire on your enemies when you launch a laser attack.'),
(29, 'equipment_extra_cpu_aim-02', 1, 'Extras', 0, 0, 200000, 0, '50% less chance that lasers will miss their target; 10 Xenomit used per volley'),
(30, 'equipment_extra_cpu_rok-t01', 1, 'Extras', 0, 0, 10000, 0, 'Doubles rocket firing speed'),
(31, 'equipment_extra_cpu_nc-rrb-x', 1, 'Extras', 0, 0, 10000, 0, 'Auto-activates a repair robot available'),
(32, 'equipment_extra_cpu_nc-awb-x', 1, 'Extras', 0, 0, 10000, 0, 'Boosts rockets and lasers with raw materials currently in lab use'),
(33, 'equipment_extra_cpu_g3x-crgo-x\r\n', 1, 'Extras', 0, 0, 10000, 0, 'x2 cargo space thanks to molecular compression'),
(34, 'equipment_extra_cpu_g3x-amry-s\r\n', 1, 'Extras', 0, 0, 5000, 0, '+50% armory capacity'),
(35, 'equipment_extra_cpu_g3x-amry-m\r\n', 1, 'Extras', 0, 0, 10000, 0, '+100% armory capacity'),
(36, 'equipment_extra_cpu_g3x-amry-l\r\n', 1, 'Extras', 0, 0, 20000, 0, '+150% armory capacity'),
(37, 'equipment_weapon_laser_lf-3', 1, 'Weaponry', 0, 0, 10000, 0, 'Much stronger laser: Causes up to 150 damage points per round'),
(38, 'equipment_weapon_rocketlauncher_hst-2', 1, 'Weaponry', 0, 0, 15000, 0, 'The rapid reloader!\nThis upgraded version of the Hellstorm launcher 1 makes it possible to win the battle before it''s even begun. One little rocket makes a world of difference on the battlefield - firing up to 5 rockets, this rocket launcher unleashes a broadside of destruction, giving a whole new meaning to the word firepower. This highly sophisticated piece of weaponry can only be equipped with specially designed rockets.'),
(39, 'resource_ore_xenomit', 10, 'Special', 0, 0, 100, 0, 'Required to create Promerium on your ship and in the Skylab (10 units)'),
(40, 'resource_logfile', 3, 'Special', 0, 0, 900, 0, 'Log-disks can be exchanged for pilot points. (3 units)'),
(41, 'drone_iris', 1, 'Special', 0, 0, 0, 0, 'Power drone with two slots'),
(42, 'ship_vengeance', 1, 'Ships', 0, 0, 30000, 1, 'The best Star Hunter: You''ll have (almost) nothing to fear in this ship!'),
(43, 'ship_goliath', 1, 'Ships', 0, 0, 80000, 1, 'The ultimate Battlecruiser: The only true ship for hotshot space pilots!'),
(44, 'ship_leonov', 1, 'Ships', 0, 0, 15000, 1, 'The Starjet''s top model: Small and agile, but very deadly!'),
(53, 'ship_goliath_design_sapphire', 1, 'Designs', 0, 0, 40000, 1, 'A special design for the Goliath. You can only use it if you already own a Goliath.'),
(54, 'ship_goliath_design_jade', 1, 'Designs', 0, 0, 40000, 1, 'A special design for the Goliath. You can only use it if you already own a Goliath.'),
(55, 'ship_goliath_design_crimson', 1, 'Designs', 0, 0, 100000, 1, 'A special design for the Goliath. You can only use it if you already own a Goliath.'),
(56, 'ship_goliath_design_amber', 1, 'Designs', 0, 0, 40000, 1, 'A special design for the Goliath. You can only use it if you already own a Goliath.'),
(57, 'ship_vengeance_design_adept', 1, 'Designs', 0, 0, 100000, 1, 'Looking for more experience points? Then get the new Adept design. It''ll give you a 10% bonus on all experience points gained in the game!\n\nFly around in this slick design and watch your enemies die with envy!'),
(58, 'ship_goliath_design_exalted', 1, 'Designs', 0, 0, 100000, 1, 'This new red design gets you 10% more honor points and scares the daylights out of your enemies.'),
(59, 'ship_goliath_design_veteran', 1, 'Designs', 0, 0, 100000, 1, 'This sleek and glossy ship design in white grants you a 10% bonus on all the experience points you collect!'),
(60, 'ship_goliath_design_enforcer', 1, 'Designs', 0, 0, 100000, 1, 'A 5% damage bonus makes the Enforcer Goliath design a force to be reckoned with and a must for every clan. Revolutionize the art of warfare with its destructive power and strike fear into the hearts of your enemies.'),
(61, 'ship_vengeance_design_avenger', 1, 'Designs', 0, 0, 100000, 1, 'Thanks to 10% extra shield power, the Avenger is a must-have for every space battle.'),
(62, 'ship_goliath_design_bastion', 1, 'Designs', 0, 0, 100000, 1, 'With 10% more shield strength, the Bastion design is the perfect defense in every combat situation. Even the most powerful enemies and aliens will have a hard time taking you down.'),
(63, 'ship_vengeance_design_revenge', 1, 'Designs', 0, 0, 100000, 1, 'Thanks to its 5% damage bonus, you can count on the Revenge Vengeance design to deal the deathblow in any encounter - the kind of advantage that can truly make a difference. This is your best bet for counterattacks on enemy clans or quick alien kills.'),
(64, 'ship_vengeance_design_corsair', 1, 'Designs', 0, 0, 100000, 1, 'Honor to whom honor is due! The impressive Corsair design awards you with an extra 10% honor points earned in the game.\n\nEarn your just reward for your heroism and get this design.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_1_clan`
--

CREATE TABLE IF NOT EXISTS `server_1_clan` (
`clanID` int(11) NOT NULL,
  `visible` int(1) NOT NULL DEFAULT '1',
  `clanName` varchar(255) NOT NULL,
  `leader` int(11) NOT NULL,
  `Found` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tagName` varchar(255) NOT NULL,
  `memberCount` int(3) NOT NULL DEFAULT '1',
  `members` longtext NOT NULL,
  `company` varchar(3) NOT NULL DEFAULT 'mmo',
  `rankpoints` bigint(20) NOT NULL DEFAULT '0',
  `rank` bigint(20) NOT NULL DEFAULT '0',
  `recruiting` int(1) NOT NULL DEFAULT '1',
  `clandescription` longtext NOT NULL,
  `Tax` int(2) NOT NULL,
  `Teamspeak` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_1_clan_diplomacy`
--

CREATE TABLE IF NOT EXISTS `server_1_clan_diplomacy` (
`autoID` int(11) NOT NULL,
  `fromID` bigint(20) NOT NULL,
  `toID` bigint(20) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1:ALLY; 2:NAP; 3:WAR',
  `descr` longtext NOT NULL,
  `accepted` int(11) NOT NULL COMMENT '1:ACCEPTED; 0:AWAITING;',
  `start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `request` int(1) NOT NULL DEFAULT '0',
  `request2` int(1) NOT NULL DEFAULT '0',
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_1_clan_join`
--

CREATE TABLE IF NOT EXISTS `server_1_clan_join` (
`autoID` int(11) NOT NULL,
  `clanID` int(11) NOT NULL,
  `playerID` int(11) NOT NULL,
  `application` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_1_hangar`
--

CREATE TABLE IF NOT EXISTS `server_1_hangar` (
`hangarID` int(255) NOT NULL,
  `hangar_is_active` tinyint(1) NOT NULL DEFAULT '0',
  `hangar_is_selected` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `userID` int(11) NOT NULL,
  `playerID` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `server_1_hangar`
--

INSERT INTO `server_1_hangar` (`hangarID`, `hangar_is_active`, `hangar_is_selected`, `name`, `userID`, `playerID`) VALUES
(1, 1, 1, 'Hangar 1', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_1_hangar_config_drones`
--

CREATE TABLE IF NOT EXISTS `server_1_hangar_config_drones` (
  `playerID` int(255) NOT NULL,
  `userID` int(255) NOT NULL,
  `hangarID` int(255) NOT NULL,
  `EQ2` longtext NOT NULL,
  `item_id` int(255) NOT NULL,
  `EQ` longtext NOT NULL,
  `design` longtext NOT NULL,
  `design2` longtext NOT NULL,
`autoID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_1_hangar_config_pet10`
--

CREATE TABLE IF NOT EXISTS `server_1_hangar_config_pet10` (
  `hangarID` int(255) NOT NULL,
  `petID` int(11) NOT NULL,
  `playerID` int(255) NOT NULL,
  `userID` int(255) NOT NULL,
  `configNum` int(1) NOT NULL,
  `lasers` longtext NOT NULL,
  `generators` longtext NOT NULL,
  `gears` longtext NOT NULL,
  `protocols` longtext NOT NULL,
`autoID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_1_hangar_config_ship`
--

CREATE TABLE IF NOT EXISTS `server_1_hangar_config_ship` (
  `hangarID` int(255) NOT NULL,
`autoID` bigint(20) NOT NULL,
  `playerID` int(255) NOT NULL,
  `userID` int(255) NOT NULL,
  `configNum` int(1) NOT NULL,
  `lasers` longtext NOT NULL,
  `generators` longtext NOT NULL,
  `heavy_guns` longtext NOT NULL,
  `extras` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `server_1_hangar_config_ship`
--

INSERT INTO `server_1_hangar_config_ship` (`hangarID`, `autoID`, `playerID`, `userID`, `configNum`, `lasers`, `generators`, `heavy_guns`, `extras`) VALUES
(1, 1, 1, 1, 1, '', '', '', ''),
(1, 2, 1, 1, 2, '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_1_log`
--

CREATE TABLE IF NOT EXISTS `server_1_log` (
`autoID` bigint(20) NOT NULL,
  `playerID` bigint(20) NOT NULL,
  `descrip` longtext NOT NULL,
  `addDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_1_players`
--

CREATE TABLE IF NOT EXISTS `server_1_players` (
`playerID` int(255) NOT NULL,
  `userID` int(255) NOT NULL,
  `tokenId` bigint(20) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL,
  `shipId` smallint(11) NOT NULL DEFAULT '1',
  `factionId` smallint(1) NOT NULL DEFAULT '0',
  `mapId` smallint(30) NOT NULL DEFAULT '1',
  `x` int(5) NOT NULL DEFAULT '1000',
  `xz` double NOT NULL DEFAULT '10',
  `y` int(5) NOT NULL DEFAULT '1000',
  `yz` double NOT NULL DEFAULT '10',
  `settings` text NOT NULL,
  `rank` int(11) NOT NULL DEFAULT '1' COMMENT '1: Basic Space Pilot',
  `rankpoints` bigint(20) NOT NULL DEFAULT '0',
  `rankPosition` bigint(20) NOT NULL DEFAULT '0',
  `overallRank` bigint(20) NOT NULL DEFAULT '0',
  `rankName` varchar(255) NOT NULL DEFAULT 'Basic Space Pilot',
  `premium` int(1) NOT NULL DEFAULT '1' COMMENT '0: No, Premium | 1: Yes, Premium',
  `level` int(11) NOT NULL DEFAULT '1',
  `playerkills` bigint(20) NOT NULL DEFAULT '0',
  `uav` varchar(255) NOT NULL DEFAULT '3/3-25-25-25,3/4-25-25-25-25,3/3-25-25-25',
  `clanId` int(11) NOT NULL DEFAULT '0',
  `uri` bigint(255) NOT NULL DEFAULT '500000',
  `exp` bigint(255) NOT NULL DEFAULT '0',
  `credits` bigint(255) NOT NULL DEFAULT '2500000',
  `jackpot` double(50,2) NOT NULL DEFAULT '0.00',
  `Health` int(255) NOT NULL DEFAULT '4000',
  `maxHealth` bigint(255) NOT NULL DEFAULT '4000',
  `shield` bigint(255) NOT NULL DEFAULT '0',
  `maxShield` bigint(255) NOT NULL DEFAULT '0',
  `Nanohull` bigint(255) NOT NULL DEFAULT '0',
  `MaxNanohull` bigint(255) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '320',
  `honor` bigint(255) NOT NULL DEFAULT '0',
  `GGspins` varchar(255) NOT NULL DEFAULT '5',
  `GG` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `server_1_players`
--

INSERT INTO `server_1_players` (`playerID`, `userID`, `tokenId`, `username`, `shipId`, `factionId`, `mapId`, `x`, `xz`, `y`, `yz`, `settings`, `rank`, `rankpoints`, `rankPosition`, `overallRank`, `rankName`, `premium`, `level`, `playerkills`, `uav`, `clanId`, `uri`, `exp`, `credits`, `jackpot`, `Health`, `maxHealth`, `shield`, `maxShield`, `Nanohull`, `MaxNanohull`, `speed`, `honor`, `GGspins`, `GG`) VALUES
(1, 1, 5486409290, 'Borja', 1, 2, 1, 367, 10, 671, 10, '', 1, 0, 0, 1, 'Basic Space Pilot', 1, 1, 0, '3/3-25-25-25,3/4-25-25-25-25,3/3-25-25-25', 0, 500000, 0, 2500000, 0.00, 4000, 4000, 0, 0, 0, 0, 320, 0, '5', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_1_players_galaxygate`
--

CREATE TABLE IF NOT EXISTS `server_1_players_galaxygate` (
  `playerID` int(255) NOT NULL,
`fixID` int(11) NOT NULL,
  `userID` int(255) NOT NULL,
  `galaxygate_id` varchar(255) NOT NULL,
  `galaxygate_current_parts` int(255) NOT NULL DEFAULT '0',
  `galaxygate_prepared` int(1) NOT NULL DEFAULT '0',
  `livesLeft` varchar(2) NOT NULL DEFAULT '-1',
  `state` varchar(255) NOT NULL DEFAULT 'in_progress',
  `galaxygate_current_wave` varchar(255) NOT NULL DEFAULT '0',
  `galaxygate_multipliers` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_1_players_items`
--

CREATE TABLE IF NOT EXISTS `server_1_players_items` (
  `hangarID` int(255) NOT NULL,
`item_id` int(255) NOT NULL,
  `etype` varchar(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_level` int(2) NOT NULL,
  `item_filter_location` int(255) NOT NULL,
  `item_quantity` int(255) NOT NULL,
  `item_flash_position` int(255) NOT NULL,
  `item_IN` varchar(255) NOT NULL,
  `item_properties` text NOT NULL,
  `item_hp` int(255) NOT NULL,
  `item_mhp` int(255) NOT NULL,
  `item_rc` int(255) NOT NULL,
  `userID` int(255) NOT NULL,
  `playerID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_1_players_settings`
--

CREATE TABLE IF NOT EXISTS `server_1_players_settings` (
`playerID` bigint(11) NOT NULL,
  `SETTINGS` varchar(255) NOT NULL DEFAULT '|1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|0|0|1|1|0|0|1|1|1|1',
  `MINIMAP_SCALE` varchar(255) NOT NULL DEFAULT '11',
  `DISPLAY_PLAYER_NAMES` varchar(255) NOT NULL DEFAULT '1',
  `DISPLAY_CHAT` varchar(255) NOT NULL DEFAULT '1',
  `PLAY_MUSIC` varchar(255) NOT NULL DEFAULT '0',
  `PLAY_SFX` varchar(255) NOT NULL DEFAULT '1',
  `BAR_STATUS` varchar(255) NOT NULL DEFAULT '1',
  `WINDOW_SETTINGS` varchar(255) NOT NULL DEFAULT '0,584,2,1,1,854,2,1,3,970,492,1,5,5,5,0,10,5,288,0,13,187,50,0,20,5,402,1,23,458,1,1,24,284,25,0',
  `AUTO_REFINEMENT` varchar(255) NOT NULL DEFAULT '0',
  `QUICKSLOT_STOP_ATTACK` varchar(255) NOT NULL DEFAULT '1',
  `DOUBLECLICK_ATTACK` varchar(255) NOT NULL DEFAULT '1',
  `AUTO_START` varchar(255) NOT NULL DEFAULT '0',
  `DISPLAY_NOTIFICATIONS` varchar(255) NOT NULL DEFAULT '1',
  `SHOW_DRONES` varchar(255) NOT NULL DEFAULT '1',
  `DISPLAY_WINDOW_BACKGROUND` varchar(255) NOT NULL DEFAULT '1',
  `ALWAYS_DRAGGABLE_WINDOWS` varchar(255) NOT NULL DEFAULT '1',
  `PRELOAD_USER_SHIPS` varchar(255) NOT NULL DEFAULT '0',
  `QUALITY_PRESETTING` varchar(255) NOT NULL DEFAULT '3',
  `QUALITY_CUSTOMIZED` varchar(255) NOT NULL DEFAULT '0',
  `QUALITY_BACKGROUND` varchar(255) NOT NULL DEFAULT '3',
  `QUALITY_POIZONE` varchar(255) NOT NULL DEFAULT '3',
  `QUALITY_SHIP` varchar(255) NOT NULL DEFAULT '3',
  `QUALITY_ENGINE` varchar(255) NOT NULL DEFAULT '3',
  `QUALITY_COLLECTABLE` varchar(255) NOT NULL DEFAULT '3',
  `QUALITY_ATTACK` varchar(255) NOT NULL DEFAULT '3',
  `QUALITY_EFFECT` varchar(255) NOT NULL DEFAULT '3',
  `QUALITY_EXPLOSION` varchar(255) NOT NULL DEFAULT '3',
  `QUICKBAR_SLOT` varchar(255) NOT NULL DEFAULT '3,4,5,6,7,39,-1,-1,-1,-1',
  `SLOTMENU_POSITION` varchar(255) NOT NULL DEFAULT '565,561',
  `SLOTMENU_ORDER` varchar(255) NOT NULL DEFAULT '0',
  `MAINMENU_POSITION` varchar(255) NOT NULL DEFAULT '532,590'
) ENGINE=MyISAM AUTO_INCREMENT=1028 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `server_1_players_settings`
--

INSERT INTO `server_1_players_settings` (`playerID`, `SETTINGS`, `MINIMAP_SCALE`, `DISPLAY_PLAYER_NAMES`, `DISPLAY_CHAT`, `PLAY_MUSIC`, `PLAY_SFX`, `BAR_STATUS`, `WINDOW_SETTINGS`, `AUTO_REFINEMENT`, `QUICKSLOT_STOP_ATTACK`, `DOUBLECLICK_ATTACK`, `AUTO_START`, `DISPLAY_NOTIFICATIONS`, `SHOW_DRONES`, `DISPLAY_WINDOW_BACKGROUND`, `ALWAYS_DRAGGABLE_WINDOWS`, `PRELOAD_USER_SHIPS`, `QUALITY_PRESETTING`, `QUALITY_CUSTOMIZED`, `QUALITY_BACKGROUND`, `QUALITY_POIZONE`, `QUALITY_SHIP`, `QUALITY_ENGINE`, `QUALITY_COLLECTABLE`, `QUALITY_ATTACK`, `QUALITY_EFFECT`, `QUALITY_EXPLOSION`, `QUICKBAR_SLOT`, `SLOTMENU_POSITION`, `SLOTMENU_ORDER`, `MAINMENU_POSITION`) VALUES
(1, '|1|1|1|1|1|1|1|1|1|1|1|0|0|1|1|0|0|1|1|0|0|1|1|1|1', '11', '1', '1', '0', '0', '1', '0,584,2,1,1,854,2,1,3,970,492,1,5,5,5,0,10,5,288,0,13,187,50,0,20,5,402,1,23,458,1,1,24,284,25,0', '0', '1', '1', '0', '1', '1', '1', '1', '0', '3', '0', '3', '3', '3', '3', '3', '3', '3', '3', '3,4,5,6,7,39,-1,-1,-1,-1', '565,561', '0', '532,590');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_1_player_all_items`
--

CREATE TABLE IF NOT EXISTS `server_1_player_all_items` (
`id` bigint(20) NOT NULL COMMENT 'item id',
  `lootid` varchar(255) NOT NULL COMMENT 'Lootid for identification',
  `Q` bigint(20) NOT NULL COMMENT 'Amount of item',
  `LV` int(11) NOT NULL DEFAULT '0' COMMENT 'Item level if has one',
  `properties` longtext NOT NULL COMMENT 'If any properties its base64 + json encoded',
  `interactive` int(11) NOT NULL,
  `playerID` int(11) NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `server_1_player_all_items`
--

INSERT INTO `server_1_player_all_items` (`id`, `lootid`, `Q`, `LV`, `properties`, `interactive`, `playerID`, `userID`) VALUES
(1, 'ship_phoenix', 1, 0, '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_1_player_drones`
--

CREATE TABLE IF NOT EXISTS `server_1_player_drones` (
`drone_id` int(255) NOT NULL,
  `item_sale_id` int(255) NOT NULL,
  `drone_level` int(2) NOT NULL DEFAULT '0',
  `drone_hp` varchar(255) NOT NULL DEFAULT '0',
  `drone_effect` varchar(255) NOT NULL DEFAULT '0%/0%',
  `drone_sp` int(255) NOT NULL DEFAULT '0',
  `drone_dl` int(255) NOT NULL DEFAULT '0',
  `drone_sl` int(50) NOT NULL DEFAULT '0',
  `drone_repair` int(255) NOT NULL DEFAULT '500',
  `drone_currency` varchar(255) NOT NULL,
  `userID` int(255) NOT NULL,
  `playerID` int(255) NOT NULL,
  `drone_design` varchar(255) NOT NULL,
  `drone_kind` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_1_player_hangar_general_ship`
--

CREATE TABLE IF NOT EXISTS `server_1_player_hangar_general_ship` (
  `hangarID` int(255) NOT NULL,
  `playerID` int(255) NOT NULL,
  `ship_id` int(255) NOT NULL,
  `ship_hp` int(255) NOT NULL,
  `ship_selected_model` text NOT NULL,
  `ship_all_model` longtext NOT NULL,
`autoID` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `server_1_player_hangar_general_ship`
--

INSERT INTO `server_1_player_hangar_general_ship` (`hangarID`, `playerID`, `ship_id`, `ship_hp`, `ship_selected_model`, `ship_all_model`, `autoID`) VALUES
(1, 1, 1, 4000, 'ship_phoenix', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_1_player_pet10`
--

CREATE TABLE IF NOT EXISTS `server_1_player_pet10` (
`pet_id` int(255) NOT NULL,
  `pet_hp` int(255) NOT NULL DEFAULT '50000',
  `pet_level` int(2) NOT NULL DEFAULT '0',
  `pet_name` varchar(255) NOT NULL,
  `pet_location` int(2) NOT NULL DEFAULT '1',
  `lockedSlots` text NOT NULL,
  `lasers` int(11) NOT NULL DEFAULT '0',
  `gemerators` int(11) NOT NULL DEFAULT '0',
  `gears` int(11) NOT NULL DEFAULT '0',
  `protocols` int(11) NOT NULL DEFAULT '0',
  `item_id` bigint(20) NOT NULL,
  `userID` int(255) NOT NULL,
  `playerID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_galaxygate`
--

CREATE TABLE IF NOT EXISTS `server_galaxygate` (
  `galaxygate_id` varchar(255) NOT NULL,
  `galaxygate_name` text NOT NULL,
  `galaxygate_part` varchar(255) NOT NULL,
  `galaxygate_totalWave` int(255) NOT NULL,
  `lifePrice` varchar(255) NOT NULL DEFAULT '-1',
  `ammunition` int(255) NOT NULL DEFAULT '67',
  `resource` int(255) NOT NULL DEFAULT '12',
  `voucher` int(255) NOT NULL DEFAULT '3',
  `logfile` int(255) NOT NULL DEFAULT '1',
  `part` int(255) NOT NULL DEFAULT '13',
  `ammo_x2` int(255) NOT NULL DEFAULT '35',
  `ammo_x3` int(255) NOT NULL DEFAULT '25',
  `ammo_x4` int(255) NOT NULL DEFAULT '10',
  `ammo_abs` int(255) NOT NULL DEFAULT '20',
  `ammo_rocket` int(255) NOT NULL DEFAULT '5',
  `ammo_mine` int(255) NOT NULL DEFAULT '5',
  `gate_1` int(255) NOT NULL,
  `gate_2` int(255) NOT NULL,
  `gate_3` int(255) NOT NULL,
  `gate_4` int(255) NOT NULL,
  `gate_5` int(255) NOT NULL,
  `gate_6` int(255) NOT NULL,
  `gate_7` int(255) NOT NULL,
  `gate_8` int(255) NOT NULL,
  `gate_13` int(255) NOT NULL,
  `special` int(255) NOT NULL DEFAULT '4',
  `special_hitpoints` int(255) NOT NULL DEFAULT '100'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `server_galaxygate`
--

INSERT INTO `server_galaxygate` (`galaxygate_id`, `galaxygate_name`, `galaxygate_part`, `galaxygate_totalWave`, `lifePrice`, `ammunition`, `resource`, `voucher`, `logfile`, `part`, `ammo_x2`, `ammo_x3`, `ammo_x4`, `ammo_abs`, `ammo_rocket`, `ammo_mine`, `gate_1`, `gate_2`, `gate_3`, `gate_4`, `gate_5`, `gate_6`, `gate_7`, `gate_8`, `gate_13`, `special`, `special_hitpoints`) VALUES
('1', 'Alpha', '34', 40, '10000', 67, 12, 3, 1, 13, 35, 25, 10, 20, 5, 5, 33, 33, 33, 0, 0, 0, 0, 0, 0, 4, 100),
('2', 'Beta', '48', 40, '10000', 67, 12, 3, 1, 13, 35, 25, 10, 20, 5, 5, 33, 33, 33, 0, 0, 0, 0, 0, 0, 4, 100),
('3', 'Gamma', '82', 40, '10000', 67, 12, 3, 1, 13, 35, 25, 10, 20, 5, 5, 33, 33, 33, 0, 0, 0, 0, 0, 0, 4, 100),
('4', 'Delta', '128', 29, '10000', 67, 12, 3, 1, 13, 35, 25, 10, 20, 5, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 4, 100),
('5', 'Epsilon', '99', 30, '10000', 67, 12, 3, 1, 13, 35, 25, 10, 20, 5, 5, 0, 0, 0, 0, 100, 0, 0, 0, 0, 4, 100),
('6', 'Zeta', '111', 46, '10000', 67, 12, 3, 1, 13, 35, 25, 10, 20, 5, 5, 0, 0, 0, 0, 0, 100, 0, 0, 0, 4, 100),
('7', 'Kappa', '120', 28, '10000', 67, 12, 3, 1, 13, 35, 25, 10, 20, 5, 5, 0, 0, 0, 0, 0, 0, 100, 0, 0, 4, 100),
('8', 'Lambda', '45', 21, '10000', 67, 12, 3, 1, 13, 35, 25, 10, 20, 5, 5, 0, 0, 0, 0, 0, 0, 0, 100, 0, 4, 100),
('13', 'Hades', '45', 12, '10000', 67, 12, 3, 1, 13, 35, 25, 10, 20, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 100, 4, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_item_types`
--

CREATE TABLE IF NOT EXISTS `server_item_types` (
`item_type_id` int(255) NOT NULL,
  `item_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `server_item_types`
--

INSERT INTO `server_item_types` (`item_type_id`, `item_type_name`) VALUES
(0, 'Weapon_LaserType'),
(1, 'Weapon_HellstormLauncherType'),
(2, 'Weapon_WeaponType'),
(3, 'Generator_EngineType'),
(4, 'Generator_ShieldType'),
(5, 'Generator_GeneratorType'),
(6, 'Extra_BoosterType'),
(7, 'Extra_Cpu_CPUType'),
(8, 'Extra_ModuleType'),
(9, 'Extra_RobotType'),
(10, 'Extra_UpgradeType'),
(11, 'Extra_ExtraType'),
(12, 'Weapon_Ammo_LaserType'),
(13, 'Weapon_Ammo_RocketType'),
(14, 'Weapon_Ammo_AmmunitionType'),
(15, 'Resource_OreType'),
(16, 'Drone_Design_DroneDesignType'),
(17, 'Drone_Formation_DroneFormationType'),
(18, 'Module_StationModuleType'),
(19, 'Pet_PetGearType'),
(20, 'Pet_AIProtocolType'),
(21, 'Ship_ShipDesignType'),
(22, 'Ship_ShipType'),
(23, 'Pet_PetType'),
(24, 'Drone_DroneType'),
(25, 'Item_ItemType');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_lootids`
--

CREATE TABLE IF NOT EXISTS `server_lootids` (
`id` int(255) NOT NULL,
  `lootIds` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `30` varchar(255) DEFAULT NULL,
  `63` varchar(255) DEFAULT NULL,
  `100` varchar(255) DEFAULT NULL,
  `top` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `server_lootids`
--

INSERT INTO `server_lootids` (`id`, `lootIds`, `name`, `30`, `63`, `100`, `top`) VALUES
(1, 'ammunition_mine_acm-01', 'ammunition_mine_acm-01', '135566859f94cc51246f401ec8978200', '84100df3c5bed4eea0af67e4c4bfd00', '7111672f8762e1eb473248272678ea00', 'non'),
(2, 'ship_vengeance_design_adept', 'ship_vengeance_design_adept', 'fd0cbde8e47cd940de99ea626a3fb100', '25a119d1a7577671039686e5b2137c00', '70e087e02264296ae8a18b13c9421100', 'db4c468575364c029c941103b559b800'),
(3, 'ship_aegis-eic', 'ship_aegis-eic', 'non', 'bb7378dd7407480df0e8e31fb5056200', 'non', '73a4596f78155b457fc9ac150e1c3700'),
(4, 'ship_aegis-mmo', 'ship_aegis-mmo', 'non', 'e22393125d160cd92dc6548106523c00', 'non', '4a538391cbbe85e149b393c055601e00'),
(5, 'ship_aegis-vru', 'ship_aegis-vru', 'non', '406d8d73890218d2715bdb1ca235c100', 'non', 'f1f476c3a5817e509cd2c43df8883700'),
(6, 'equipment_aiprotocol_ai-aim1', 'equipment_aiprotocol_ai-aim1', '88cc1eb2a2b8d502de9f80a0dca65500', '896704a193608ae9b372b4633ba61600', 'bf3768775cdea7a275fdc03d7e992100', 'non'),
(7, 'equipment_aiprotocol_ai-al1', 'equipment_aiprotocol_ai-al1', 'a51de7284ade3b6eff98b909131afb00', '872b980001c1dedc590c9143dcf2f000', 'e2fe99aff30dc11255e7398acc5dcd00', 'non'),
(8, 'equipment_aiprotocol_ai-cr1', 'equipment_aiprotocol_ai-cr1', 'ac92207def2860061b3ff02d00f12000', 'e82b294d86c070c6de1866c2717a4300', '27af412ab7843c55ac60946557fb1e00', 'non'),
(9, 'equipment_aiprotocol_ai-e1', 'equipment_aiprotocol_ai-e1', '9b76a4b353c973b569db9ec5f747c100', '95edfabfb98c3495835cc6b53ee41c00', 'c3bf86bd2483382e8422e0e3d153a900', 'non'),
(10, 'equipment_aiprotocol_ai-eco1', 'equipment_aiprotocol_ai-eco1', '3b590f6bfa9f48202a61cc6ff236fc00', 'f3221170727abd2cd60e22a3340b3200', 'a191fa2f6956a649cb7512674092c600', 'non'),
(11, 'equipment_aiprotocol_ai-hp1', 'equipment_aiprotocol_ai-hp1', '2742b9501c4dcd1deb5cbc8d69fa6600', 'faaf4bb645a2f3a6a2c86780ae2bb100', '32c73bc7c6aff534e72d79615ea80a00', 'non'),
(12, 'equipment_aiprotocol_ai-lm1', 'equipment_aiprotocol_ai-lm1', '7cfdaa6b1f5690e1349c1fcbe635d500', '8570b4d46b5bbec7eb78f3e2f0869800', 'b5bd078a802e328c0c21032534aa8100', 'non'),
(13, 'equipment_aiprotocol_ai-pm1', 'equipment_aiprotocol_ai-pm1', 'adc34bdce22ea52f45b4c5d962346600', '7b43bdcb05d41e52079703f1cca3bc00', '632102227c010d54711778d3c7f4b00', 'non'),
(14, 'equipment_aiprotocol_ai-r1', 'equipment_aiprotocol_ai-r1', 'af079dc358abba6624223176ecfabe00', 'f3a9e70662dea822ae60c589629d8400', 'f62fdb492ff21973a75ddb4a264be400', 'non'),
(15, 'equipment_aiprotocol_ai-s1', 'equipment_aiprotocol_ai-s1', '5dc683cb08cc876f303ce5aa557da400', '2f662e021563fc607ea4b20838458100', '793a19100a3319cab25edd1686f59300', 'non'),
(16, 'equipment_aiprotocol_ai-sm1', 'equipment_aiprotocol_ai-sm1', 'fed796ecf85c4e4650c495579a0b3000', 'e03deebe495a15d898e166dee04a0d00', '4d7b65b79553a236d3b0c3399066d500', 'non'),
(17, 'equipment_extra_cpu_aim-01', 'equipment_extra_cpu_aim-01', '9756bd9c4757888927ccad2897fcec00', 'b01ffaf8334bd3f76bc2cadad6198200', '9b5cb30e69d3871b077b2c9a16138600', 'non'),
(18, 'equipment_extra_cpu_aim-02', 'equipment_extra_cpu_aim-02', '48e8e4664be8a48f661625110fd5a400', '75b281fb1c866780d65cbf121186ec00', 'b8d5a02cf8bd3f5080007615048d0d00', 'non'),
(19, 'equipment_extra_cpu_ajp-01', 'equipment_extra_cpu_ajp-01', '513cb86be4b07adda776f39f45147800', '7799fecfd4fce1f89d900d4304c21000', 'd4c05b61300e6f836963dd6d27bb6600', 'non'),
(20, 'equipment_extra_cpu_alb-x', 'equipment_extra_cpu_alb-x', 'b958f5e2676c44aef2a6d784ba15ef00', 'a217c1dc6139d3e5000022123d94cf00', '21e336721d12e791fb7e7c6414d86300', 'non'),
(21, 'ship_goliath_design_amber', 'ship_goliath_design_amber', '63a4fcf3146574417692f02683ee1600', 'ec7f1aa0b74835d9c0ffa4082525f900', '12a14d507f20dfab1d65f33eff38900', '65981797a3794ac36a686a6e05633200'),
(22, 'drone_apis-0', 'drone_apis-0', '36ff14ea6f9929bbe251c97c7aa9c100', '4cc2e5f6780d0a710d0c537d29551500', 'b8a0037a61ed96bd3049a49698510700', 'f3bfce2ad389d3f2439b0619f9884800'),
(23, 'drone_apis-1', 'drone_apis-1', '97089fe60227b13d097608d2c0dad300', '9328098cf6f61f9a15c186cda93bb400', '54709c56db2e1f2f902d4779b243de00', 'ebc18fd76fd5733d370a8cd5cbfb0200'),
(24, 'drone_apis-2', 'drone_apis-2', 'dbc0d478691de052745cf612593e0100', '6e5545393ae996b3d88176e082881f00', '7b8fb5815e70c27edeb0b3476d877600', '8409d6353aaa143cec73a5618fd2fd00'),
(25, 'drone_apis-3', 'drone_apis-3', '1e46e2cef4d5c5d3800098f043877e00', '2357d5c44516a90c65f7e6f849c09b00', '3185178fc45a92070ddd8afead91f800', 'ad4ff5cc9d6db5ae6fa3884c57b32b00'),
(26, 'drone_apis-4', 'drone_apis-4', '193660b268e6896e96148d21531d1f00', 'ba6b46d4cac1d0d819915c1a8037e900', '49a3126a4903f48a7f96cf64c7b6bf00', '2c343d1411545d71f2ac5d473be80f00'),
(27, 'drone_apis-5', 'drone_apis-5', '6e16da5f146db3d66aa2bb78849eba00', '691122b1882ae1f6eeef9ddbc166c200', '3b2b4d09b1207a3c007f2eb690a09000', 'eefe025cd0af4d1d82f0b324d787200'),
(28, 'resource_blueprint_apis-part', 'resource_blueprint_apis-part', '9dc8a706550809bf37253db69962b400', '37459d31f6c40151ebb709c1cf940b00', 'non', 'non'),
(29, 'equipment_extra_cpu_arol-x', 'equipment_extra_cpu_arol-x', '75c5dc20096b5056351b29efd6ceb700', 'ac60d633a4eba6f094d4744ece618200', '30df149638e4298594447363931c9a00', 'non'),
(30, 'ship_vengeance_design_avenger', 'ship_vengeance_design_avenger', '4990936e482a17c51d576c2dd2f65f00', 'bfbdd480f34e0a87a3fbb329f48ef600', '37f86e60f270682f6fd338f29e017000', 'bde08168336c7523c25ba94208e3a300'),
(31, 'ship_goliath_design_bastion', 'ship_goliath_design_bastion', '45177fe09e92307b3d1bf8d0036ea200', '80981e18bb9a5ca616833d5c7ee05c00', 'c7844e1cfd08b5709cf816acc4a00000', '5970790943b53a8e113d4232e5714500'),
(32, 'ammunition_rocket_bdr-1211', 'ammunition_rocket_bdr-1211', '31e5be8b86058dfd9dee1c19ecf64900', '469999ff72fe170e7341636c620b0600', '36722fa5af808de5a0af0e640ab1a100', 'non'),
(33, 'ship_bigboy', 'ship_bigboy', 'non', '84f9930b0a6dcc761e8181809002cc00', '47451983296c2b3216aa523e944ced00', '6a161ca8660e19046ed1ce5d46c71600'),
(34, 'resource_booty-key-blue', 'resource_booty-key-blue', '91c718dd79b90a25792ae1877cf85800', '672fcc1ec8ecd2bbdfa915b2d3d61a00', 'non', 'non'),
(35, 'resource_booty-key-red', 'resource_booty-key-red', 'c83bfff4da634da06045fa7e201bae00', '8815ffc124bb4a519e14370296bcec00', 'non', 'non'),
(36, 'resource_booty-key', 'resource_booty-key', 'ffbc72514edc29adbcb69b1da2c23a00', '2c2649217fac98e086c9cd8fcec30300', 'non', 'non'),
(37, 'ammunition_laser_cbo-100', 'ammunition_laser_cbo-100', 'db93d3453bc121ed8ce8347aad962d00', '832dc957ba163cef756386d74c7ad300', 'ebfb7a43a0b8ae1a28ca3a20588b8600', 'non'),
(38, 'ammunition_rocketlauncher_cbr', 'ammunition_rocketlauncher_cbr', 'b10e1faead68930ee8f6a4f3c20d1700', '4d2f59cc61f9af5b5e60bd486f620200', 'non', 'non'),
(39, 'ship_goliath_design_centaur', 'ship_goliath_design_centaur', 'ccf58011657784838ce3f78297e12200', '221adffb5225534383e4047e8f974c00', 'e1723e7e5175fb1e24342f65e30d7400', '10e97f1d09ae38fb6cd4761239df2700'),
(40, 'equipment_aiprotocol_cgm-02', 'equipment_aiprotocol_cgm-02', '60e8cf8e032f9d69934e1f58b7e1d800', 'dfb6dd82cd1c91db14cb8474a048a300', 'c072755cbb15d3922a0762d0189a5b00', 'non'),
(41, 'ship_citadel-eic', 'ship_citadel-eic', 'non', 'b6300c86b05c4cf9fd0c21161a18bc00', 'non', '256d329dbf3805fd0bf62ef66931c100'),
(42, 'ship_citadel-mmo', 'ship_citadel-mmo', 'non', '674d1ff3a2a6be1a95a4797cffa4d300', 'non', '8efde209bef3f6619470a3fd3fab8f00'),
(43, 'ship_citadel-vru', 'ship_citadel-vru', 'non', '4324879c69457380efb2d67f8dd7d300', 'non', '18bcb8c4a7fac1cb8b6d936832690c00'),
(44, 'equipment_extra_cpu_cl04k-m', 'equipment_extra_cpu_cl04k-m', '69d7b48403e27694ba1e567c65ede300', '2389a6be163abc512ad8845f53494400', '44ceb70cb4a7cfd94ec4b75708208a00', 'non'),
(45, 'equipment_extra_cpu_cl04k-xl', 'equipment_extra_cpu_cl04k-xl', '7064cbe10da5fddb20fa4cd47f403100', '3c3954049d50e00d9e4c41e2455cde00', '5378f0fbbdf4e36ee572672a89967e00', 'non'),
(46, 'equipment_extra_cpu_cl04k-xs', 'equipment_extra_cpu_cl04k-xs', 'ff4a801692d7e78b75491daa5af27300', '4a89f361f6c950d480ffe842166e4d00', '5579d611e2f505fd3317a4ee4e70ee00', 'non'),
(47, 'ship_vengeance_design_corsair', 'ship_vengeance_design_corsair', '850d5c29573990dfac9dd49f30b75700', '53bc801fa8ce31198f62fee89f0eb900', 'fdb5d76fec778ab933511af5c45a8e00', '8a276cc4e482e42c36e7b0ac101de200'),
(48, 'ship_goliath_design_crimson', 'ship_goliath_design_crimson', '12f6523bf590a66e9d6ca1348433d900', '84c63772c5d3b306af523134e1898200', 'abb4181ed16fbbd2cd918bb85460c200', 'b72997e945300eebd9763e1ad1038700'),
(49, 'equipment_aiprotocol_csr-02', 'equipment_aiprotocol_csr-02', '8707331efdd6d7c8c02e74c1c301c700', '1db69aa1af5ac186b2c427f0d576ba00', '960c611231888aaffb9da730a1a72200', 'non'),
(50, 'ammunition_specialammo_dcr-250', 'ammunition_specialammo_dcr-250', '65a635a931ead9d7948c4539e4edb300', '4aba291a99722abe227bccbf8989cd00', 'afa8d1471065deb26672ce7c88c9ab00', 'non'),
(51, 'ammunition_mine_ddm-01', 'ammunition_mine_ddm-01', 'c8300a9d1b414c5dc4e868daf247e100', '9a5703e6ad36fdf964bc16299934e000', '7041b21050caa6ba09b52096aadf7400', 'non'),
(52, 'ship_model_defcom-default', 'ship_model_defcom-default', 'non', 'non', 'non', '52aaa11eae4b9a0ca19bfa1601a44200'),
(53, 'ship_defcom', 'ship_defcom', 'non', '4feb63598001652fa723a3cb9d6c4100', 'c1901f2255ba6f266f52a7c593ebfa00', '52aaa11eae4b9a0ca19bfa1601a44200'),
(54, 'ship_goliath_design_diminisher', 'ship_goliath_design_diminisher', '13bd3045938ff7e1387e3810f4ef9e00', '95450a80fa1ff26c8b61f303474cf500', 'f981e84575292b34e18f0a03df235000', '7d00aa39cd2b1944649100c408887400'),
(55, 'equipment_booster_dmg-b01', 'equipment_booster_dmg-b01', 'ded2fa76d2fe23377232650eb8a9bc00', '49ca8b50eda77fce3905036b6b7aab00', '511e503b45224a9bd5433a59c848ef00', 'non'),
(56, 'equipment_booster_dmg-b02', 'equipment_booster_dmg-b02', '7b573c1712bd2b4b200c66219784da00', 'b2b47f42c82519c52ebecd3e5a8a4c00', '7476a8dfc78fb115dca50581932beb00', 'non'),
(57, 'equipment_extra_cpu_dr-01', 'equipment_extra_cpu_dr-01', '71ac401223c8dcfe83cec0582d42bf00', '30f24a22fb123ab3409edbaae0c3b700', 'ac134270b2d6c46d48ff94bfbacfa300', 'non'),
(58, 'equipment_extra_cpu_dr-02', 'equipment_extra_cpu_dr-02', '4ff7b62c45133a5a0afa1c3fa14a7100', '7fe8bc7aabcff5e7a146f6afaae5600', '2cd2ee99cfa7e803424786d9db551900', 'non'),
(59, 'resource_ore_duranium', 'resource_ore_duranium', '6bb6f068deff7b4d7f311e82cda5f600', 'c027e1e4299b8f6bca072a13a4b8300', 'non', 'non'),
(60, 'ammunition_rocket_eco-10', 'ammunition_rocket_eco-10', 'non', 'non', 'f2728f6bf3b750a5b68d7adf3a898200', 'non'),
(61, 'ammunition_rocketlauncher_eco-10', 'ammunition_rocketlauncher_eco-10', 'a6bb8b0876c9563f87e928b0da2bd600', '12045ffd885f2549b7898a8b541e2700', 'non', 'non'),
(62, 'ammunition_specialammo_emp-01', 'ammunition_specialammo_emp-01', '738e8f623811f85c1235b1c8c56c1100', '9de00cb647c1a6a934f6a65f25168500', '55fa7a5cd26d00b39f963795c3ab1900', 'non'),
(63, 'ammunition_mine_empm-01', 'ammunition_mine_empm-01', 'b5bbdd393160dea5072c9c29925fb600', '23688e527b8f6d6263134a5cbcc8b100', '38b506ca821f324b01415507d2df3900', 'non'),
(64, 'resource_ore_endurium', 'resource_ore_endurium', 'a5481c8246e83a82988db623e3e53100', '458fc20aa365cf46032ec748fa143500', 'non', 'non'),
(65, 'ship_goliath_design_enforcer', 'ship_goliath_design_enforcer', '910ad3dc8468f831274081d0fd79a700', 'b2a8f157eec6af66d9f4f2fcdfa5dd00', 'd3ca78360453fbef723b73d2b724500', 'aa24e60e333abc872ffe39b171b41200'),
(66, 'ship_goliath_design_exalted', 'ship_goliath_design_exalted', '72c2127019b2e3e28757998649a5cb00', 'ac8e12195d070eed94ce15b3523ba500', 'ffca22d5ba92a62dca8439dce584ae00', 'fa46264bde239ff63b9313cd3f954c00'),
(67, 'drone_formation_f-01-tu', 'drone_formation_f-01-tu', 'f8dc4dc044d5bc6ebed961e49bfd5300', '40039420f0bf49d22a9026845750bc00', '81f6c046cba728960a9ee7138b54600', 'non'),
(68, 'drone_formation_f-02-ar', 'drone_formation_f-02-ar', '9652aa854d4173047297cbab9e2d500', '46d6a4e6f63e31a827ba49311c0d2000', '5a93c4393ab8d47e51d8be0b8ef69300', 'non'),
(69, 'drone_formation_f-03-la', 'drone_formation_f-03-la', '19caa6e180886a14fa61bb12772f4200', 'd9f4cea713c8fc5adf8a05edf1be5000', 'non', 'non'),
(70, 'drone_formation_f-04-st', 'drone_formation_f-04-st', '4687c81a4040b7f81abe044de0fd6e00', '841344ebe1b8bfb8068f245335e7ce00', '5416a095f411041c45b021b2931a4b00', 'non'),
(71, 'drone_formation_f-05-pi', 'drone_formation_f-05-pi', 'd401ca33935ada050c68c42f4b064600', '20452d49362eb16ca7165110108eea00', 'c86f0ab13d1bc14d81eaccb7ad89e400', 'non'),
(72, 'drone_formation_f-06-da', 'drone_formation_f-06-da', 'f03ffc87eb8c8d9f5c2fbcbf8f35a300', 'bc0461469e2eb811d1952455f0516600', 'e1263fdb07300b3f650afba760dc2800', 'non'),
(73, 'drone_formation_f-07-di', 'drone_formation_f-07-di', 'fc3caac572c57e21867b120bf313ab00', 'aa3a416527a1c10e87bccd0c49630600', '9ce48c588deb64538a5fc8b225df2d00', 'non'),
(74, 'drone_formation_f-08-ch', 'drone_formation_f-08-ch', 'f26c9dda746d34604c7540a05edb2d00', '68e9483930556ba9b5b4986433e56a00', '2323c89ef67892a981533c4f490a7000', 'non'),
(75, 'drone_formation_f-09-mo', 'drone_formation_f-09-mo', 'a7515c9fa9cfacf21580b562d30f7500', 'ba0c62f66247f42903c4a7e4ad99a00', '7926f9c892ed08f4bd5128cccd09fc00', 'non'),
(76, 'drone_formation_f-10-cr', 'drone_formation_f-10-cr', 'd9f2923538c09e6c1794454546766d00', 'a8344c7b5dad6d908287762fda3a8300', 'f92c0bec627cfffc18d5c229fc65500', 'non'),
(77, 'drone_formation_f-11-he', 'drone_formation_f-11-he', 'c463c4cd120b034826fe509c9e65fb00', '76f2703dc13300e01c80a054b2972700', 'd2e530e6ce2a0e187c6ecb0fd7148100', 'non'),
(78, 'drone_formation_f-12-ba', 'drone_formation_f-12-ba', 'fac6ef4761dcf3bdcd88645b16da5600', '327081fa1cdb923ad20ac36d43b9d700', '2f1585c4255fada896ece0bf0e314700', 'non'),
(79, 'equipment_extra_cpu_fb-x', 'equipment_extra_cpu_fb-x', '7b2a9d2965073c0a9260b7549283a500', 'cb83875eb5c3da164879605c02d65900', 'e06d39c29ea36fb5e9327bd606e95200', 'non'),
(80, 'drone_flax-0', 'drone_flax-0', '642f6be370832ed3b213cb8420475c00', '7ddabff5865f4c074e8364a28753b900', '38bea08f983fa9f8ff1e26735d970300', 'ef72344f330db0e32eca8d2b43a37b00'),
(81, 'drone_flax-1', 'drone_flax-1', '341f84cf5421047ef7f7f6dd8221ac00', '285ba0eda8d9bd9700569b41c1353800', 'ab3b1a2621ccbd2c1db4f48bb61dbb00', 'c25a2bbba8b08885a4d116ceab620100'),
(82, 'drone_flax-2', 'drone_flax-2', 'bbe4e84e54aa3218ef61c5e88692ae00', '4b771ddf5635c65836287e3c59641f00', '61cd76dc625f00badc9d07e5e746be00', '4f590ee2ee587d4df9e41729f63f0900'),
(83, 'drone_flax-3', 'drone_flax-3', 'b4d7617b2328bd26a878ba534a822500', 'b38a0a555f3df682bd86e68dec933700', 'e8a5eefb0f5c3081e79e8a1632222e00', 'a3cd0a8df7fdb045e3f9eb656dc47700'),
(84, 'drone_flax-4', 'drone_flax-4', 'd8e1788c20d90cadcfa81ecf6d9a9e00', '4439186801e3196bb7c0fc411a7000', 'dd309b7a069bfa3b796a1356e602b200', '9d85552ccb90056a65c15dba71179e00'),
(85, 'drone_flax-5', 'drone_flax-5', '9f39bee7d90fee95bee00070f29bc900', '6b36275da5cb21f5011c7a678f1e7000', '71708ef72bf36e293186a48e088c3100', '409fbfcc3cbc34dee4e1cb5b6ee94600'),
(86, 'pet_fuel-100', 'pet_fuel-100', '97d432601b2b9ee2b10a8998304db600', 'e91329cbf30b12a38f905369fd34f500', '35b45d995c7191af632fbeca330dbb00', 'non'),
(87, 'ammunition_firework_fwx-l', 'ammunition_firework_fwx-l', '9ab2e07e0db58a9a5019b81c5a54d200', '3e220381c3f61536dc7e6f1bf5b6e00', 'c28e07ba4d7d961366f82d9384a48b00', 'non'),
(88, 'ammunition_firework_fwx-m', 'ammunition_firework_fwx-m', '32294c0f033f6141386acfd716474d00', '97971aa7396b8a511a80cccf2be43600', '8498a18b64bf5f7708d43735470f8900', 'non'),
(89, 'ammunition_firework_fwx-s', 'ammunition_firework_fwx-s', 'f31d766e4172ea7da1d2da8691733200', 'a45fdf5e4e251f9de4e49d2b4617ce00', '7139453fccf623b7933eb477714e7300', 'non'),
(90, 'equipment_petgear_g-al1', 'equipment_petgear_g-al1', '699502e677e3d898f5b1185027356d00', '16ac6c270f7ed589252111058b50cb00', '3a6fe2c1d7e793fec4d697b90721f700', 'non'),
(91, 'equipment_petgear_g-ar1', 'equipment_petgear_g-ar1', '56078f012cb43df403c4781f8ddfb000', 'ed674c42f1cf9bf5c833f8785bc66e00', '8a45f18eb3d3af23fdf234bb80807b00', 'non'),
(92, 'equipment_petgear_g-el1', 'equipment_petgear_g-el1', '85405afdf7ebda0df694bc916f1fe000', '114689366f97fb5af9243b31fb4e8300', 'fa541d3a91aabc670fb9b48223a3c000', 'non'),
(93, 'equipment_petgear_g-ex1', 'equipment_petgear_g-ex1', '1b2a1bf981d2718438c924a17081de00', '83f800b2216decccce1c4d4b5ff29000', '6b551e6c7762a5cdc2a93d2856b9a100', 'non'),
(94, 'equipment_petgear_g-kk1', 'equipment_petgear_g-kk1', '5970b1599f56c77a1de4227c01c5e900', '351761b8252c9449fddc5139abd7f00', 'ea7e148224933dbbfc36ddee26f79600', 'non'),
(95, 'equipment_petgear_g-pd1', 'equipment_petgear_g-pd1', '7ee3df0e675d93242a22008cda835200', 'acb54fd7b3c0fde9fd98bb98ba0400', '8750226e3a89bbfa14ad8deb2c42df00', 'non'),
(96, 'equipment_petgear_g-rep1', 'equipment_petgear_g-rep1', '43945a993e025e65d07aa6f122368200', 'ece99d0c722aaffb1a0dbea09ad58000', '574370c2191e3afe9f73d59fe45b6c00', 'non'),
(97, 'equipment_petgear_g-rl1', 'equipment_petgear_g-rl1', '8251de16a588598e3c175e23139d2f00', '99118c207d7f278bf4374061c86ded00', 'd884c83b62690cd03d8f1f0fd6c6e000', 'non'),
(98, 'equipment_petgear_g-tra1', 'equipment_petgear_g-tra1', '880636eab8ea27361d95b6f138bb3c00', '9f16fdb60862d771707f5a3d0bdb5500', '971fa24c7f7da534d8280f558c08f600', 'non'),
(99, 'equipment_generator_speed_g3n-1010', 'equipment_generator_speed_g3n-1010', 'e5674130f14944e7411e5462960200', 'c1836b133fef276221ded016d6fe8800', '110b421b9d7913c5384e9ef9d65c3d00', 'non'),
(100, 'equipment_generator_speed_g3n-2010', 'equipment_generator_speed_g3n-2010', '205d6901282719db5574e251935cf800', 'b1497b51c32fa9f3494555ded7ce5100', '6d7f8f5feb80ad35a1f47b76c0216700', 'non'),
(101, 'equipment_generator_speed_g3n-3210', 'equipment_generator_speed_g3n-3210', 'f0bb2d49c69daf1b7125623d78c1b700', '4ba91775f4edfe8df7403076a2e96000', '5d50a4d1ad1ff13a891ee79b15b31100', 'non'),
(102, 'equipment_generator_speed_g3n-3310', 'equipment_generator_speed_g3n-3310', '9c7619637fe2f4db057a26a693dfcc00', '342496a568aeded33543c7b508570700', '47a6fad8c0e6e5985cf7efd933c1d200', 'non'),
(103, 'equipment_generator_speed_g3n-6900', 'equipment_generator_speed_g3n-6900', 'd7b869fd976e4aa747579b34ddf7c600', 'd3511da1ba864dbfb783a1a694842100', 'ebd1850eecd35679b614d38a62786f00', 'non'),
(104, 'equipment_generator_speed_g3n-7900', 'equipment_generator_speed_g3n-7900', 'ea805e03b2d3fa173b723f1f846bc900', '768dea8b4af9ee7381b707cc63f3ac00', '8a3934d949413335366fd8c5fd831c00', 'non'),
(105, 'equipment_extra_cpu_g3x-amry-l', 'equipment_extra_cpu_g3x-amry-l', '17199cbe04adefc915a5d23d889cd800', '94572a3d2354e68f99bf55a41fc7300', '70e1d6e1de75b7db34bb8859382a2600', 'non'),
(106, 'equipment_extra_cpu_g3x-amry-m', 'equipment_extra_cpu_g3x-amry-m', 'ae7bb5c8e700673a44d4ff081ca01900', '9269d541d93e9f1fe009f6c7b8a18600', 'b3287b51cb87d9da908c44fb22bc5000', 'non'),
(107, 'equipment_extra_cpu_g3x-amry-s', 'equipment_extra_cpu_g3x-amry-s', '5b5088d2c981e0cd73df005aca6ed700', '635279b6d663b3652e7074336543db00', 'f1f5786b7dad796b927debefcad24800', 'non'),
(108, 'equipment_extra_cpu_g3x-crgo-x', 'equipment_extra_cpu_g3x-crgo-x', 'a65e0a5ff26274b490f9980a2ee9d900', '472cdbd24653ffd02cfa9d78f109c700', '52722009436318d043bee1373878f500', 'non'),
(109, 'ship_goliath_design_goal', 'ship_goliath_design_goal', 'non', '17f9935c499ab4e909f7ca10a2d1e00', 'non', '95cc2e4d7028f5edd9d426420315ea00'),
(110, 'ship_goliath', 'ship_goliath', 'non', 'c6c8a09a4749af691b6a9947cf2c6900', '5fcdb83e69b401d92cc1ae6abb172300', 'a604cd4669b80a0ddd89fa54fc946300'),
(111, 'drone_designs_havoc-0', 'drone_designs_havoc-0', '36ff14ea6f9929bbe251c97c7aa9c100', '4cc2e5f6780d0a710d0c537d29551500', 'b8a0037a61ed96bd3049a49698510700', 'f3bfce2ad389d3f2439b0619f9884800'),
(112, 'drone_designs_havoc-1', 'drone_designs_havoc-1', '97089fe60227b13d097608d2c0dad300', '9328098cf6f61f9a15c186cda93bb400', 'non', 'ebc18fd76fd5733d370a8cd5cbfb0200'),
(113, 'drone_designs_havoc-2', 'drone_designs_havoc-2', 'dbc0d478691de052745cf612593e0100', '6e5545393ae996b3d88176e082881f00', 'non', '8409d6353aaa143cec73a5618fd2fd00'),
(114, 'drone_designs_havoc-3', 'drone_designs_havoc-3', '1e46e2cef4d5c5d3800098f043877e00', '2357d5c44516a90c65f7e6f849c09b00', 'non', 'ad4ff5cc9d6db5ae6fa3884c57b32b00'),
(115, 'drone_designs_havoc-4', 'drone_designs_havoc-4', '193660b268e6896e96148d21531d1f00', 'ba6b46d4cac1d0d819915c1a8037e900', 'non', '2c343d1411545d71f2ac5d473be80f00'),
(116, 'drone_designs_havoc-5', 'drone_designs_havoc-5', '6e16da5f146db3d66aa2bb78849eba00', '691122b1882ae1f6eeef9ddbc166c200', 'non', 'eefe025cd0af4d1d82f0b324d787200'),
(117, 'drone_designs_havoc', 'drone_designs_havoc', '3d777293c382668bf651ce89c3523f00', 'ada51f4195e9e66baa7741514f16b400', '9ba2ab733b96e06b9d3d84694260f800', 'non'),
(118, 'drone_designs_hercules', 'drone_designs_hercules', '81fcb28481530aea405e79da7f959000', 'ff679f4f9829a77f8142d0bf667e5b00', 'non', 'non'),
(119, 'equipment_extra_hmd-07', 'equipment_extra_hmd-07', '82fc02e71a87a1c22d3c60d097293100', '4dfcc90a5f2eaba7353fabadc4c0200', '13dee6dcb1f39fc812db55e2db0ec800', 'non'),
(120, 'equipment_booster_hon-b01', 'equipment_booster_hon-b01', '6051aa706c4b66386bac6575efd32700', '695f9f469982a5baa0e9b290c183b100', 'c185017fd6a72c183e6c3d53c11a8300', 'non'),
(121, 'equipment_booster_hon-b02', 'equipment_booster_hon-b02', '1def246555fcbeab09549afd94807600', '85ad27ebece47e61064cffd0432c1300', 'f44c7692a0880871d9449919e235d600', 'non'),
(122, 'equipment_booster_hp-b01', 'equipment_booster_hp-b01', 'b73402577e766b17c73800a9bd7ba600', '2fbc951628b2cd6012af28e4a2150a00', '33bff4aa0db046adf001b3bbf68a4e00', 'non'),
(123, 'equipment_booster_hp-b02', 'equipment_booster_hp-b02', '7125a4fd94cfbeff533bda8c6f2c9500', '697e1d0389200afd59e17e59756a0900', '8742e9f899c493713e40d94a7f59e300', 'non'),
(124, 'equipment_weapon_rocketlauncher_hst-1', 'equipment_weapon_rocketlauncher_hst-1', 'b0c7fd370207805934235a4a87735e00', '7e61b1762e2b96671390e0ff30524700', '4d3a4c3fcc183b86a549d099de824800', 'non'),
(125, 'equipment_weapon_rocketlauncher_hst-2', 'equipment_weapon_rocketlauncher_hst-2', 'b50011779dba406b663876c313436c00', 'db076f6c66bc0760c650bd1e5a5c2c00', '189476e918a7a7c792f09272db412400', 'non'),
(126, 'ammunition_rocketlauncher_hstrm-01', 'ammunition_rocketlauncher_hstrm-01', '806ebd3b5a8e565af5a30e382af05100', 'df51889c45224761dd5d715d0545af00', 'be2503f2e93334f320dce9156363fc00', 'non'),
(127, 'ship_goliath_design_ignite', 'ship_goliath_design_ignite', '542e254d8fb1da1e2a1e0038d7542d00', 'cbb08e9e9528ee46634ba56a540cf300', 'f62fca921dc81f879515a66935658500', 'e1c2c5cf5d6e55f948ff16daa4108300'),
(128, 'ship_goliath_design_independence', 'ship_goliath_design_independence', '4eb59f6195aeedf3d4733149c1089500', '663367a253c2c6549c3b20472088f800', 'c87ee15e93461ae67bc0c84855d3f000', '2da9e0c7f20f73fc1264316bcc7e6b00'),
(129, 'drone_iris-0', 'drone_iris-0', '14ebb8db8014dc4bd757fa2ef74de400', '9e918d6b19b7d5ead16addad0cc35200', 'afba9239e233f506eff21528ab4e8f00', '79b048a4b8e05add7a2245ebe95d5e00'),
(130, 'drone_iris-1', 'drone_iris-1', 'd951657b84dd80549297702f018b1f00', '66f6d38952f8fb800abbd5e5d96f7700', '3b12423b93122055a76f250f307dee00', 'cdcc2dc2ac60191715615ac48100e300'),
(131, 'drone_iris-2', 'drone_iris-2', 'b10d193b55f89656936668c1bc559900', 'e3ab25f382927dfd082f290967524500', 'e0dbd77afe0b998abb1be914ff0ca800', '9c4888900962a7ac074714cfaa206200'),
(132, 'drone_iris-3', 'drone_iris-3', '9c481125952808f464742ffbb0a43500', 'dd3a4359bfadba07d03989ec042b5e00', 'a71d6fe22419ea188a5d2dd78e7b6900', '873f7968e96ba2b2aa6a867938171b00'),
(133, 'drone_iris-4', 'drone_iris-4', '9cb3929ed0ea6e938eb50599a854d400', '18d7b8fbe928f1b26ae05e8cf8eab200', '227efd2ca7b8749575885abd3d33e00', 'e65761d42de94f1eeaa0c30e29d88e00'),
(134, 'drone_iris-5', 'drone_iris-5', '40860d1594e9b6841ccfa87963f8d800', 'cd363e0f68297796aeb1a1dc8725500', '915c51fde19ca5d0c4878221ae305f00', 'b6aae2912b6e0eb1b49d50ab5caef400'),
(135, 'equipment_extra_cpu_ish-01', 'equipment_extra_cpu_ish-01', 'b5303220b6ebbf91ae9f1203d99b1900', '59ebb45a483b69b03c878f8ef7381f00', 'ba929c263af782b8fb64046ee2b94d00', 'non'),
(136, 'ship_goliath_design_jade', 'ship_goliath_design_jade', '55c1321eae9086b1e7af6dbbff27f300', 'ad668440af64e92129c2a086a7b98a00', '818e123d12a61938bfeebebd65bc3600', '812a9b8eac5ba9c6a7e522c5b6ff5a00'),
(137, 'equipment_extra_cpu_jp-01', 'equipment_extra_cpu_jp-01', '41aa74ce7c4a9dfd0004631cc1564300', 'ddf568bb7d315e635c4850c413a1d00', '5632c2889dd72df6178de4f1f579e100', 'non'),
(138, 'equipment_extra_cpu_jp-02', 'equipment_extra_cpu_jp-02', '853fa6be9494eb505fce988f418f6000', '71448635257c7a2f48dab8bc67a3be00', '4c714d0033db967ba3a2720032ae8800', 'non'),
(139, 'ship_goliath_design_kick', 'ship_goliath_design_kick', 'non', '7bda5d3c248edbf2319ab5776c6ced00', 'non', 'e118a7072e8c8907e5e493d7f5f0b200'),
(140, 'ammunition_laser_lcb-10', 'ammunition_laser_lcb-10', 'dae4f308e45cc4a93ac36451afabc700', 'c02154d2ce135d660f647631dbbfbc00', 'd8db5c48fe907c65a74b77b7206a5e00', 'non'),
(141, 'ship_model_leonov-default', 'ship_model_leonov-default', 'non', 'non', 'non', '415d77665462f6e1610485619a4000'),
(142, 'ship_leonov', 'ship_leonov', 'non', '28352fd6f76f7f69fde60be651d28b00', '514e12b1ca5c27a22b6ef646fb9b8a00', '415d77665462f6e1610485619a4000'),
(143, 'equipment_weapon_laser_lf-1', 'equipment_weapon_laser_lf-1', '38b6e7ac566392a42b5058b957877400', '21840bc7163a5ba6b23a843b00b34500', '63996742896b58647fcd48dda079e300', 'non'),
(144, 'equipment_weapon_laser_lf-2', 'equipment_weapon_laser_lf-2', '156cf2ddc0e14ff43bfe6552f1585f00', 'cbf50911027835ffa8e9f190e42e7e00', '803197c677b55ef80655269c1efc0100', 'non'),
(145, 'equipment_weapon_laser_lf-3', 'equipment_weapon_laser_lf-3', 'dc3f2118a4fae31b28744f5f69b53e00', 'b8ec173f11257347acc378cf2b19c300', '5ced49170920715d57158fe1773a4400', 'non'),
(146, 'equipment_weapon_laser_lf-4', 'equipment_weapon_laser_lf-4', '12046c7960d4b8dcb3b42b9ae3bbbe00', 'ddd3dc54b0e1fad5c7d893c9d1b19400', 'eb976bb32197c21a8b6be56eb65e1d00', 'non'),
(147, 'resource_lgf', 'resource_lgf', 'b12326b73cc0a0ea9776deb3e9ee7000', '753ac1eddb627166b371ce6add2a4800', '69a613d0e4cd72e90afd6cdc68fcfb00', 'non'),
(148, 'ship_model_liberator-default', 'ship_model_liberator-default', 'non', 'non', 'non', '4d48488a8ca0d9946c12ab1241d46c00'),
(149, 'ship_liberator', 'ship_liberator', 'non', '1fd1699b162b315e7d7097c79019e700', '12811c57da5f73380b089c37aebde700', '4d48488a8ca0d9946c12ab1241d46c00'),
(150, 'ship_vengeance_design_lightning', 'ship_vengeance_design_lightning', '35e5cf870633ff463f0fbd22977b3600', '3e6f07fe13d2d8fd8d2b1dc7a2328000', 'a8f63bb998c50d36cfa4c4e03b1c4d00', '8a21d30900a7cb1b5041107a5762f100'),
(151, 'resource_lottery-euro-2012', 'resource_lottery-euro-2012', '37e4c751e8dd5e36e13475a18abc9600', 'e3eb29bb67fc2dc862f630e1e71bd800', 'non', 'non'),
(152, 'ship_bigboy_design_mamba', 'ship_bigboy_design_mamba', '2b509245b27a71724ffb484ccf862f00', '95e9033f03752c48df8852823d483200', '1845671280176e9e3002aae4f38a0c00', '84f362c5f0bafea11339df53a4f49500'),
(153, 'ammunition_laser_mcb-25', 'ammunition_laser_mcb-25', 'becac3718527c5212ffbaef4de6beb00', '86c2c2d261ef196310b34fb3f92c6800', 'fa407a1644e0563e5138b0499c682100', 'non'),
(154, 'ammunition_laser_mcb-50', 'ammunition_laser_mcb-50', 'e6c8656cf822817bf38242c131a9c00', '386dd5328b039cc7594c36f8875af400', '86f834298693b605147ccf579bb84d00', 'non'),
(155, 'equipment_extra_cpu_min-t01', 'equipment_extra_cpu_min-t01', 'f5ab19ee9afbb11bda57d07a1501c900', '270e37e5766c4189d592f6ee1c1b8700', '400dcee2a5b91e04547080457ffa8900', 'non'),
(156, 'equipment_extra_cpu_min-t02', 'equipment_extra_cpu_min-t02', 'f7e8d54dd3c17591084c4bf1f2854100', '6df6600f801c02ffa658825604118f00', 'e29b05eeb8152c061a02f425c66a7400', 'non'),
(157, 'equipment_weapon_laser_mp-1', 'equipment_weapon_laser_mp-1', 'cfde29bcddbbfbcf4abccb06a1bad900', '52eb84ef703379bc9cc9268f59ff5a00', '23ad6cc5c949ffce0e6ff2683b16e700', 'non'),
(158, 'equipment_extra_cpu_nc-agb-x', 'equipment_extra_cpu_nc-agb-x', 'ec4b1bb40a78d57ed0b3fc5a8127e00', '8f667662bd9a919ccd1829c0da10b700', 'a6203985f4baacdba419e68daef9700', 'non'),
(159, 'equipment_extra_cpu_nc-awb-x', 'equipment_extra_cpu_nc-awb-x', 'ab35aad749b236d4975a977110ff1400', 'ec1c7aae930d30936fdeb954b1bc2000', 'b4df32b610682314306316c06eed2600', 'non'),
(160, 'equipment_extra_cpu_nc-awl-x', 'equipment_extra_cpu_nc-awl-x', '7dd3ea69155e835d98374c9974dab800', '64c6d5d1eb9e944ccde6cebf5f3a3900', '6fdf3acc1f31b4df0c353bbcd470f400', 'non'),
(161, 'equipment_extra_cpu_nc-awr-x', 'equipment_extra_cpu_nc-awr-x', '99848aaf0ac0f38978aae0ae6aac3500', '3c497366b02260af50dc4dc22b257200', 'dd4d95f1e348e27ba53a6edf5f0ae000', 'non'),
(162, 'equipment_extra_cpu_nc-rrb-x', 'equipment_extra_cpu_nc-rrb-x', 'b476120c9737e4789f1da17faaecf600', 'a08b6fd485a562a84505c37f4b226200', '862d24f30519c5e53a13f4d3ec995500', 'non'),
(163, 'ship_model_nostromo-default', 'ship_model_nostromo-default', 'non', 'non', 'non', 'ff51eab9cb12377314f48ca78cffc500'),
(164, 'ship_nostromo', 'ship_nostromo', 'non', 'c6c9e599093f98c72f19c07ca342ac00', 'a14faf254feda58ff45c8e3cef56ed00', 'ff51eab9cb12377314f48ca78cffc500'),
(165, 'resource_ore_palladium', 'resource_ore_palladium', '739d31694cf4adb3efc93ff72d516d00', '1265217356d6dda552d24354897afc00', 'non', 'non'),
(166, 'pet_pet10-0', 'pet_pet10-0', 'non', 'non', 'non', '15956f5b638557555c72dd0e3a005400'),
(167, 'pet_pet10-10', 'pet_pet10-10', 'non', 'non', 'non', '1185755c1a4bf5bda75d0f81ab89300'),
(168, 'pet_pet10-11', 'pet_pet10-11', 'non', 'non', 'non', '6858e2ab0c16c16ed982763fa9645d00'),
(169, 'pet_pet10-12', 'pet_pet10-12', 'non', 'non', 'non', '8e17281870f0063a0b88200d3625eb00'),
(170, 'pet_pet10-13', 'pet_pet10-13', 'non', 'non', 'non', 'e5ac09b36505960cb9cb6e1c2d079300'),
(171, 'pet_pet10-14', 'pet_pet10-14', 'non', 'non', 'non', '179a5e30a4a8324ac3ff0d91ab204200'),
(172, 'pet_pet10-15', 'pet_pet10-15', 'non', 'non', 'non', 'ec53e1b9c8177ea21cf9f70656854100'),
(173, 'pet_pet10-1', 'pet_pet10-1', 'non', 'non', 'non', '15956f5b638557555c72dd0e3a005400'),
(174, 'pet_pet10-2', 'pet_pet10-2', 'non', 'non', 'non', '25d344b7514ed46f037cef93f8a43c00'),
(175, 'pet_pet10-3', 'pet_pet10-3', 'non', 'non', 'non', '7aa539bb67e5061c1f8da7593c900500'),
(176, 'pet_pet10-4', 'pet_pet10-4', 'non', 'non', 'non', '6781ce11fae9617949f24f1c353e9300'),
(177, 'pet_pet10-5', 'pet_pet10-5', 'non', 'non', 'non', '3a97ee94c69faebebdd2220e563ad000'),
(178, 'pet_pet10-6', 'pet_pet10-6', 'non', 'non', 'non', 'a7216e73bf2f05cbd84315d5c6511300'),
(179, 'pet_pet10-7', 'pet_pet10-7', 'non', 'non', 'non', '603e0b55136eabd275813b1541c7f900'),
(180, 'pet_pet10-8', 'pet_pet10-8', 'non', 'non', 'non', '18e0984a49aab4105a3aaaa22a70900'),
(181, 'pet_pet10-9', 'pet_pet10-9', 'non', 'non', 'non', '9d8b77af30f4943b72d09eabab57bd00'),
(182, 'pet_pet10', 'pet_pet10', '64d37f39e6afc9ccfd3fad221a3f1a00', '914f7da0e50393dd5acf247001f22500', 'e8bbd8e957933caf10200c8ae422b400', 'non'),
(183, 'ship_model_phoenix-default', 'ship_model_phoenix-default', 'non', 'non', 'non', 'c96f80f53d3010ddbdfa5f88ad2d4e00'),
(184, 'ship_phoenix', 'ship_phoenix', 'non', 'cd8f64340c58ff3442bbd1e7ae715500', 'c8fdab3ed091595e5a4d122ef33eee00', 'c96f80f53d3010ddbdfa5f88ad2d4e00'),
(185, 'ship_model_piranha-default', 'ship_model_piranha-default', 'non', 'non', 'non', '4590700ffd12fc189ec94ff492d1e300'),
(186, 'ship_piranha', 'ship_piranha', 'non', '5386619ecc0e429215b13c40a1784800', 'dafebc613914a8d39de7740bf987f800', '4590700ffd12fc189ec94ff492d1e300'),
(187, 'ammunition_specialammo_pld-8', 'ammunition_specialammo_pld-8', 'ecf4f2113b1e9eaf205e7951cf095400', 'd6e6ddf8da138658639a25468b067e00', 'a36af5f0b4d96fdf49506edd3b42f300', 'non'),
(188, 'ammunition_rocket_plt-2021', 'ammunition_rocket_plt-2021', 'b61ed2d31f27dca205aabf6825117d00', '4913b7d593e9d812b05c4f3eaaf40100', '57dc1c46160862d3e6e73e451764ab00', 'non'),
(189, 'ammunition_rocket_plt-2026', 'ammunition_rocket_plt-2026', 'eb7d727d0e8d7c05ad9121573a6b200', 'c6bfdcd09949f7b61b98ead3c6773500', '58fdf543bd4fbd7bfd7bcb011c9d1100', 'non'),
(190, 'ammunition_rocket_plt-3030', 'ammunition_rocket_plt-3030', 'f74083184d618e864737f9d02d88cc00', 'f7a4edcb86596809deb924083bfcef00', '43ea84fc8e020f3f93a7ae004be4b600', 'non'),
(191, 'ship_model_police-default', 'ship_model_police-default', 'non', 'non', 'non', '8eef551a4d7b222fac97eb14e59a8300'),
(192, 'ship_police', 'ship_police', 'non', 'be5917baf12f9700ef52e873c3e28100', '4710d8cb32647798398436750a07e800', '8eef551a4d7b222fac97eb14e59a8300'),
(193, 'resource_ore_promerium', 'resource_ore_promerium', 'e814113277b6260618e4ab5969e20a00', 'b244214822eee368245b2940e1b5300', 'non', 'non'),
(194, 'resource_ore_prometid', 'resource_ore_prometid', 'df535e1d9dd1deabcff16d7a4fdb2f00', '1e8dbf2955df6513a172a28b57fbc800', 'non', 'non'),
(195, 'resource_ore_prometium', 'resource_ore_prometium', '3dfd3ed97d4f5b039d81aa3d0ba3cd00', 'cea1d899667583722409741b9ab5b400', 'non', 'non'),
(196, 'ammunition_rocket_r-310', 'ammunition_rocket_r-310', '68af73bca9114add674a573fee166200', 'bd4b785081ad98c8a38efd38c1443b00', '9d29b47ca17ee0316f80a4bee39c9600', 'non'),
(197, 'ammunition_mine_rb-02', 'ammunition_mine_rb-02', '690ba1d6e1f1967d8ce04026c32b8100', '287855f0777f446500bbe5c740fcdd00', '10afe33dcf289a7f8ed03eda793aa200', 'non'),
(198, 'ammunition_mine_rb-e01', 'ammunition_mine_rb-e01', '73f78c74fd9baf24825853f719fbd800', '828360d9764bc9b08cc9830542b1000', 'ad5cac8e306177020e77861d27ef3a00', 'non'),
(199, 'ammunition_mine_rb-e02', 'ammunition_mine_rb-e02', '690ba1d6e1f1967d8ce04026c32b8100', '18b7f690645632059589645611857500', '975eabb65ef0c789fc3fcdf16c5c5e00', 'non'),
(200, 'equipment_extra_cpu_rb-x', 'equipment_extra_cpu_rb-x', 'abe256af4fdc99d78525c8bef7822200', '2bf41c6f21d7b0f8d99de39d5134e400', 'a0c408176a8fa5c7dd6f6a004164a00', 'non'),
(201, 'equipment_extra_cpu_rd-x', 'equipment_extra_cpu_rd-x', '38460efefdf781692acac6ff10fc5900', '7849dcc2fef033269c2d3473ca522300', '597c2f3075c6a0453bae7dd1902dda00', 'non'),
(202, 'ship_goliath_design_referee', 'ship_goliath_design_referee', 'non', '9644a0d452a25aa0dc6310e6e0b3e700', 'non', '5f60a1ad5ecaf8246c0873ae10838d00'),
(203, 'equipment_extra_repbot_rep-1', 'equipment_extra_repbot_rep-1', '97af32751588b8430fac9b699c19b600', 'edf977c8aee8eae95927fa2a6ceced00', '40bf974da2bd1ca828036a84bebf3900', 'non'),
(204, 'equipment_extra_repbot_rep-2', 'equipment_extra_repbot_rep-2', 'e24096312c50b1d21fa3210bcb375a00', 'dd0c4c214428f0aa690c0ee3e5fdf500', '90cbd18d53f4340e7a28254367338800', 'non'),
(205, 'equipment_extra_repbot_rep-3', 'equipment_extra_repbot_rep-3', '7ee2b08d9e7d1fc4cf84a0f3d70d7700', 'e37e71fcb60e174b103aa397522f8400', '3417fb53c3493f1d8baf68c70e8da400', 'non'),
(206, 'equipment_extra_repbot_rep-4', 'equipment_extra_repbot_rep-4', '245a28e891d9de0f67e70494e3912e00', 'ad1d8c5d7166551c71182eecc5a67e00', 'f319657ad942b61c8863b6492de48e00', 'non'),
(207, 'equipment_booster_rep-b01', 'equipment_booster_rep-b01', 'ee106e1ff4f967fca12e286a0e699f00', '901b96b36798672405a0dde74e71f700', '7653d8de407d2c4adbb74d7e99894b00', 'non'),
(208, 'equipment_booster_rep-b02', 'equipment_booster_rep-b02', '4cf86fe06340830e9173bf21d380ee00', '822d59d51f01db08436c19f036dca600', '1d5c97b1b866d233d0e064cb65364b00', 'non'),
(209, 'equipment_extra_repbot_rep-s', 'equipment_extra_repbot_rep-s', '6512f6cf8e8d40ff25c73b0c225e5500', 'c82f70710b97fc05410bb53b6b8e7400', 'd474477ba5d66d7f3255fb1068eeea00', 'non'),
(210, 'equipment_booster_res-b01', 'equipment_booster_res-b01', '64c6ae622588f1f1d88ee18099faae00', 'f70b3a463a9cf513bbf95c8f7da9dd00', 'f6ea27eb30cc27d1ab0d0610ffcc5c00', 'non'),
(211, 'equipment_booster_res-b02', 'equipment_booster_res-b02', '14a021121b8a1ee16e1533570db15b00', '2c72acdaad285520f34506a31bc05900', '3a4cb9141ef6bec35854f7c8b7070a00', 'non'),
(212, 'ship_vengeance_design_revenge', 'ship_vengeance_design_revenge', 'ad23fce2e6f415bb733b1791da1b1800', '3f47bf0099969d63c706af592914fb00', '423d589e609d7a3d2396910e55348b00', '4f2d6ec23ff806621056c9e8e8723a00'),
(213, 'equipment_extra_cpu_rllb-x', 'equipment_extra_cpu_rllb-x', 'ad70453dead7077704b34dcbef4b5d00', 'f86e532f0605f1befc3efab402dfbd00', 'c02ef79c7fb09afb18efa7bacb68e300', 'non'),
(214, 'equipment_extra_cpu_rok-t01', 'equipment_extra_cpu_rok-t01', '9670fe405d1999f3e075d4e065cd8700', '6ecb7fdfb1593bb65b43b39476aae200', '92eb30597b6a0e5e739c25ca824c4100', 'non'),
(215, 'ammunition_laser_rsb-75', 'ammunition_laser_rsb-75', '12c893d480540c5fc1279664048b4100', '50206543ccd2bc1002d106f117756600', 'ed334efd4833335cb183b8b3fbb11500', 'non'),
(216, 'ammunition_laser_sab-50', 'ammunition_laser_sab-50', '951e7ce7907a737f2c94d5cda23cfd00', '665c3f7e4614d679369d77011c2c900', '8c128831210a77fdebfc8085f0de2700', 'non'),
(217, 'ammunition_mine_sabm-01', 'ammunition_mine_sabm-01', '9a5f9f1601210579c27e8ad45cf4ec00', 'c9d8d6a03a9d4881b09cc2409b056f00', '4c7dd63001053a9de0c5d3d335470e00', 'non'),
(218, 'ship_goliath_design_sapphire', 'ship_goliath_design_sapphire', '140905e7ecc7ee7e6ed1df1c058faa00', '719eed455a30fd6819df412fd31b6c00', 'ca01b887ffa464f1c21c731d99f9e00', '2d85e440f61e351a124ec3c14e5f0e00'),
(219, 'ammunition_rocketlauncher_sar-01', 'ammunition_rocketlauncher_sar-01', '34c10962ae93f40d84b8a08f1f433f00', 'e3af8f0c66922b9d0a7654a47f01000', '8a240cd56aafb6e2f731693a9eda5c00', 'non'),
(220, 'ammunition_rocketlauncher_sar-02', 'ammunition_rocketlauncher_sar-02', '6622c2e830046ff7c3dfedd2f15a4400', '2ffb6474019b25ee050b23c598ea4f00', 'non', 'non'),
(221, 'ship_saturn', 'ship_saturn', '9fb81a05a011a164cd6a52b53defab00', '54439862c283606a1ec37aa2c7eeca00', '37621b30d34eb7bd11a6112f967ad600', '74b03339d4a0466c3c0c791c24146600'),
(222, 'ship_goliath_design_sentinel', 'ship_goliath_design_sentinel', 'aebc8c1ee1d83f778a61e7c75f258800', '83c788413d184255f3d91222b55ff400', 'f34f8253592a74a52c37bf4962a3d100', 'b518d3153b54198589baf8b385dedd00'),
(223, 'resource_ore_seprom', 'resource_ore_seprom', '8bd534e55e350281963526f256a13f00', 'a8d0853733ebc9f36141d86c2e354900', 'non', 'non'),
(224, 'equipment_generator_shield_sg3n-a01', 'equipment_generator_shield_sg3n-a01', '8c0b74bf0cc43c58fb39e6d48c495000', 'd2fc1d2a80f3ef4376c9b63145b10c00', '19228ba81b387583a63ed8c9a9465400', 'non'),
(225, 'equipment_generator_shield_sg3n-a02', 'equipment_generator_shield_sg3n-a02', '6f85775b2b55616a538ef62826b8f300', '311654cd6187f4d509c3a0322ea09500', '42a5f4011eaed1818feecd88636a3700', 'non'),
(226, 'equipment_generator_shield_sg3n-a03', 'equipment_generator_shield_sg3n-a03', 'f4d2d254f93608126c7db06a85de0800', 'e775ee19bac6ca833965f19f7f8d3a00', 'e1b79125e9f9c2fdb8711d3cb7774c00', 'non'),
(227, 'equipment_generator_shield_sg3n-b01', 'equipment_generator_shield_sg3n-b01', 'e46db23c78d55f3cea22b36a7942e600', '88a331209f4d8680e14a42962bf79400', '15ad773d10eb9b696d049632d685c600', 'non'),
(228, 'equipment_generator_shield_sg3n-b02', 'equipment_generator_shield_sg3n-b02', '21b02c8c30414a8f17b3926fffb5ca00', 'b718b6cf1c30cde1d53056c8ad186c00', 'b82b382ccdeaea0716ea15f49ff47300', 'non'),
(229, 'equipment_booster_shd-b01', 'equipment_booster_shd-b01', 'a0407f48f4a3b0d21cef8c0f02a54e00', 'a1ba5217e40783c6fa2f0ef01e67be00', '26828274f23f698b9b5fc8b882f48300', 'non'),
(230, 'equipment_booster_shd-b02', 'equipment_booster_shd-b02', '22486a4c1c487dc763a0e534e5c08300', '9308b95a2e2bb17d735d5dbc7f5a3000', '8f0b81cc566695b236c6d206fe98f500', 'non'),
(231, 'ammunition_rocketlauncher_shg-01', 'ammunition_rocketlauncher_shg-01', 'e504895a8f3a276638388748ebe97900', 'ca59d6dda55560a51aab987288bc3c00', '9706f47d9c8c2dd290a869fdb7b7eb00', 'non'),
(232, 'ammunition_rocketlauncher_shg-02', 'ammunition_rocketlauncher_shg-02', '9af48efd1dfe947e444ff86ccec9a400', '30409e13074359b07c084be07b4e3b00', 'ae5e512dfa7cb9448d5b846e969a4f00', 'non'),
(233, 'ship_shipempty', 'ship_shipempty', 'non', '2f130ddafef10f75fa3cfc8444b0500', 'non', 'b32af8472fe0942be26fecfc71ac5800'),
(234, 'ship_ship', 'ship_ship', 'non', 'non', 'non', 'b32af8472fe0942be26fecfc71ac5800'),
(235, 'ammunition_mine_sl-01', 'ammunition_mine_sl-01', '6e41e6ce998b8a3bb07ca1190d1deb00', '1b601c1d7b1fc78ef8c334cbb7b5f500', '8705e1b6cb2aecd1038773cbae391200', 'non'),
(236, 'equipment_extra_cpu_sle-01', 'equipment_extra_cpu_sle-01', '5f748e92b9b00e73049a8fe1ed6cf300', '4c8b2134dc2163588182776c483d8a00', '99ea1c9b0f2945903e1940e185656000', 'non'),
(237, 'equipment_extra_cpu_sle-02', 'equipment_extra_cpu_sle-02', '82acde6ea5a6b3a82dd3e8d29251f600', '956bbd4b1e79ee5c5b213f5293d1d600', '9220f90c1874ed7d71b696d38d12e600', 'non'),
(238, 'equipment_extra_cpu_sle-03', 'equipment_extra_cpu_sle-03', 'd2d48e9d0a40e19d766c39f04d058000', '5f31f312cf522e4258effcefb0022c00', '4676fbf3832998139092e35c0b6e8000', 'non'),
(239, 'equipment_extra_cpu_sle-04', 'equipment_extra_cpu_sle-04', '1a05e234c920672ee54f9c303e9df300', '33d7086513c36d8f5d70660993f70800', '688a792d359998af68958acb7fbce500', 'non'),
(240, 'ammunition_mine_slm-01', 'ammunition_mine_slm-01', '6e41e6ce998b8a3bb07ca1190d1deb00', '7712a19b219d98191682ed7247715600', '423a7429701436f742babda30b43bc00', 'non'),
(241, 'equipment_extra_cpu_smb-01', 'equipment_extra_cpu_smb-01', '5a0257eec5625b07599eddcc1b8700', '9915c23f7b56ca05388afc2a0dc1b900', 'ad7e7ff45f564293dcac06b878e57b00', 'non'),
(242, 'ship_goliath_design_solace', 'ship_goliath_design_solace', 'c8ac358b4f8ea162b42f56ba05421d00', '7e579597ee5b6fd540112b5733634400', '1f2e50beede5485d5852a2fb64d3df00', 'd6e8b527b1a90dfcc07bd0748cd0ab00'),
(243, 'ship_spearhead-eic', 'ship_spearhead-eic', 'non', 'e298dbf18f7525d1f70d9e0a4b8e8200', 'non', '1fcc49ae3a3a315f7253654d2eb11600'),
(244, 'ship_spearhead-mmo', 'ship_spearhead-mmo', 'non', 'ffb85c27ec6f831554ec317c036fe900', 'non', 'cf41509d651ecd2059ecc132aab2b100'),
(245, 'ship_spearhead-vru', 'ship_spearhead-vru', 'non', 'dc5f4f03f1333e69032b39837b24b100', 'a5c5e904c1c330b838a7b37f6dbbd500', '72a14351239d131a9a41ecfa7477f200'),
(246, 'ship_goliath_design_spectrum', 'ship_goliath_design_spectrum', 'fcb6bc75b23042a5bbfe589b4965f000', 'dd45110cd14d657cee0ba24b27eae00', '35f4bb3311c6b4aa47a16fd180008900', '5dec1c18adf1890dd4a73ae60403e300'),
(247, 'equipment_booster_sreg-b01', 'equipment_booster_sreg-b01', 'a0407f48f4a3b0d21cef8c0f02a54e00', 'c6bd6117d3f1a9562b4ac9459a365c00', '3c700738b5565b7352285dd259c5c200', 'non'),
(248, 'equipment_booster_sreg-b02', 'equipment_booster_sreg-b02', '22486a4c1c487dc763a0e534e5c08300', '2caf5f4659048e2571ad327a1ded0100', '2c18bcff3eee30f4c973116ab316f800', 'non'),
(249, 'resource_ore_terbium', 'resource_ore_terbium', 'e973ca28960c9f31091c08cc57157e00', '6c2fb01e0f3e51a3ed2965d63a707900', 'non', 'non'),
(250, 'ammunition_rocketlauncher_ubr-100', 'ammunition_rocketlauncher_ubr-100', 'eb3e5b22d91cc6445902fb1f0862d200', 'da933c5c09121a0b39f6d573ec8c4700', 'c6ca51af1bb56f163268ae1f5564f400', 'non'),
(251, 'ammunition_laser_ucb-100', 'ammunition_laser_ucb-100', '2e499cee32127be3df4cf200e1c73b00', 'ae0e01beae2df1545d25728995151200', 'b56716a7918c9bfb6fe917d63eefb700', 'non'),
(252, 'ship_vengeance', 'ship_vengeance', 'non', 'b86c7e3fdd307579155116788782c100', 'c54de458c43424b804b155068265600', 'e187575f818b93005d2cf3c693d5d600'),
(253, 'ship_goliath_design_venom', 'ship_goliath_design_venom', '8f1947a36237030a042d49fc2db38b00', '3c4547b6d7a21fabdc28c1930521c100', '2d89b696366df9a1559dc8d702d08f00', '13e3a904adbf3017e4561b98a2e14a00'),
(254, 'ship_goliath_design_veteran', 'ship_goliath_design_veteran', '9d6eabcab5911bfc2c4a2d56676ce400', '3fd73f6bc3611a9fe8f2367f4575b600', '833a594556f2440ed2695097cf528f00', '2d388ee819077143b8e78d3dc7ceae00'),
(255, 'ammunition_specialammo_wiz-x', 'ammunition_specialammo_wiz-x', '522300456f6b4bec5164514cdccab400', 'c358781d73d4ae07256403bf543ea400', 'b4b7d1ed6af0a1b5031fb0a3a6861900', 'non'),
(256, 'resource_ore_xenomit', 'resource_ore_xenomit', 'd10e834af73134303743011556568a00', 'ea8d8fe20c3a61d2cf90f913f8f48000', 'non', 'non'),
(257, 'equipment_booster_xp-b01', 'equipment_booster_xp-b01', '7c3a42aac82c076cf6cddfaca9613b00', '6810cb34f3b15cb294d97bb06993bc00', '604d97b01116e0e162f45ca9d2da7c00', 'non'),
(258, 'equipment_booster_xp-b02', 'equipment_booster_xp-b02', '2befa14e50165953e40edf7a2d3faf00', '8b435dd5e42858ff2945f2ca2a205300', '4e837365e6d6cc8716772d0d77847200', 'non'),
(259, 'ship_model_yamato-default', 'ship_model_yamato-default', 'non', 'non', 'non', 'd12641e622d8655aae4a22f816da8f00'),
(260, 'ship_yamato', 'ship_yamato', 'non', 'a22af71d3f9f6b3565475c005300ac00', '593ad8d6d4ae1230ef58268a50c47100', 'd12641e622d8655aae4a22f816da8f00'),
(261, 'drone_zeus-0', 'drone_zeus-0', '92994f06e00e51a63769f5de3c240000', '95b0b3e0577188d582bf2fdd85cb2d00', '811fd8fc71c0e6aa74b129d7fa6d2200', 'd6d65afbc6af7412b8cd718e55164400'),
(262, 'drone_zeus-1', 'drone_zeus-1', '22f7f8fed694c8d07adb9436c8d2c100', '365124dd741333c886ee48bded223800', 'c55b8677a096125cfa14888d7b120100', 'a0c763c62dabf732468815243b06ca00'),
(263, 'drone_zeus-2', 'drone_zeus-2', '91e6fb4a78451d59f6ccb587b351500', 'f7fe38c128c3c13d9097bfce85891c00', '1efc2236c0a9a0110b622ee5c0a02200', '87bb3cdee3f7a4175aa7be80db7d5800'),
(264, 'drone_zeus-3', 'drone_zeus-3', '48640acba410b37c287403e270da0c00', 'cd0de869358e2f9ae36b7252c595b00', '85d82125fb965cf79a5e0afa710fe400', '1e84e1e4fd83abae7dd5a75395a6000'),
(265, 'drone_zeus-4', 'drone_zeus-4', '3f25e8dd16b66974e994a002602db500', '2c65fd24140f981b50a477ef28c0cb00', 'f14dea9d5d542454f814b04a4c027000', '40d36e3b57514a902072885b57b1ae00'),
(266, 'drone_zeus-5', 'drone_zeus-5', '4ee8791ebb639511adef50aaf9c5b600', '987d62a9a2c60290639f7714909e6600', '98e8d2cdceb6412e5b9c69ebb7444a00', 'ebb1343e99865e7309a8dd443996bd00'),
(267, 'resource_blueprint_zeus-part', 'resource_blueprint_zeus-part', 'eeded406a696ccb581cb1b142f5fde00', '7e7707b4db2fa9350102f6ea07bd8f00', 'non', 'non');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_shop_items`
--

CREATE TABLE IF NOT EXISTS `server_shop_items` (
  `name` longtext NOT NULL COMMENT 'Short Names',
  `levels` longtext NOT NULL,
  `properties` longtext NOT NULL,
  `C` varchar(255) NOT NULL COMMENT 'Short TAGS',
  `type` int(11) NOT NULL COMMENT 'Map types',
  `lootId` longtext NOT NULL,
  `ucd` varchar(1) NOT NULL DEFAULT 'c',
  `buy` varchar(255) NOT NULL,
  `scd` varchar(1) NOT NULL DEFAULT 'c',
  `sell` varchar(255) NOT NULL,
`autoId` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `server_shop_items`
--

INSERT INTO `server_shop_items` (`name`, `levels`, `properties`, `C`, `type`, `lootId`, `ucd`, `buy`, `scd`, `sell`, `autoId`) VALUES
('Crimson', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTV9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxNX0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6M319LCJjZG4iOnsiMzB4MzAiOiIxMmY2NTIzYmY1OTBhNjZlOWQ2Y2ExMzQ4NDMzZDkwMCIsIjYzeDYzIjoiODRjNjM3NzJjNWQzYjMwNmFmNTIzMTM0ZTE4OTgyMDAiLCIxMDB4MTAwIjoiMmU5NDllYmE4MTc0NTNhMGYzYzFjZTcyZGU3ODEwMDAiLCJ0b3AiOiJiNzI5OTdlOTQ1MzAwZWViZDk3NjNlMWFkMTAzODcwMCJ9fV0=', '0', 'ship', 21, 'ship_goliath_design_crimson', 'u', '100000', 'c', '', 1),
('Exalted', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTV9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxNX0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6M319LCJjZG4iOnsiMzB4MzAiOiI3MmMyMTI3MDE5YjJlM2UyODc1Nzk5ODY0OWE1Y2IwMCIsIjYzeDYzIjoiYWM4ZTEyMTk1ZDA3MGVlZDk0Y2UxNWIzNTIzYmE1MDAiLCIxMDB4MTAwIjoiODgwNDRlNTJiNzRkMTA2MmE5YTM4ZTU5NmU0NjU0MDAiLCJ0b3AiOiJmYTQ2MjY0YmRlMjM5ZmY2M2I5MzEzY2QzZjk1NGMwMCJ9fV0=', '0', 'ship', 21, 'ship_goliath_design_exalted', 'u', '100000', 'c', '', 2),
('Veteran', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTV9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxNX0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6M319LCJjZG4iOnsiMzB4MzAiOiI5ZDZlYWJjYWI1OTExYmZjMmM0YTJkNTY2NzZjZTQwMCIsIjYzeDYzIjoiM2ZkNzNmNmJjMzYxMWE5ZmU4ZjIzNjdmNDU3NWI2MDAiLCIxMDB4MTAwIjoiODFhMTZhOGNkMmNkZGZkYzNjODJhZjUxOTkwZDg3MDAiLCJ0b3AiOiIyZDM4OGVlODE5MDc3MTQzYjhlNzhkM2RjN2NlYWUwMCJ9fV0=', '0', 'ship', 21, 'ship_goliath_design_veteran', 'u', '100000', 'c', '', 3),
('Enforcer', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTV9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxNX0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6M319LCJjZG4iOnsiMzB4MzAiOiI5MTBhZDNkYzg0NjhmODMxMjc0MDgxZDBmZDc5YTcwMCIsIjYzeDYzIjoiYjJhOGYxNTdlZWM2YWY2NmQ5ZjRmMmZjZGZhNWRkMDAiLCIxMDB4MTAwIjoiOGI0NDdlZWU1OWUxNTAwZTQzNjdlYmE3NTc4YjAzMDAiLCJ0b3AiOiJhYTI0ZTYwZTMzM2FiYzg3MmZmZTM5YjE3MWI0MTIwMCJ9fV0=', '0', 'ship', 21, 'ship_goliath_design_enforcer', 'u', '100000', 'c', '', 4),
('Bastion', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTV9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxNX0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6M319LCJjZG4iOnsiMzB4MzAiOiI0NTE3N2ZlMDllOTIzMDdiM2QxYmY4ZDAwMzZlYTIwMCIsIjYzeDYzIjoiODA5ODFlMThiYjlhNWNhNjE2ODMzZDVjN2VlMDVjMDAiLCIxMDB4MTAwIjoiZTkzNGRmMDI4NzkxZjllYWM0M2IyZTNiNjBkZTMxMDAiLCJ0b3AiOiI1OTcwNzkwOTQzYjUzYThlMTEzZDQyMzJlNTcxNDUwMCJ9fV0=', '0', 'ship', 21, 'ship_goliath_design_bastion', 'u', '100000', 'c', '', 5),
('Sentinel', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTV9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxNX0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6M319LCJjZG4iOnsiMzB4MzAiOiJhZWJjOGMxZWUxZDgzZjc3OGE2MWU3Yzc1ZjI1ODgwMCIsIjYzeDYzIjoiODNjNzg4NDEzZDE4NDI1NWYzZDkxMjIyYjU1ZmY0MDAiLCIxMDB4MTAwIjoiZjM0ZjgyNTM1OTJhNzRhNTJjMzdiZjQ5NjJhM2QxMDAiLCJ0b3AiOiJiNTE4ZDMxNTNiNTQxOTg1ODliYWY4YjM4NWRlZGQwMCJ9fV0=', '0', 'ship', 21, 'ship_goliath_design_sentinel', 'u', '250000', 'c', '', 6),
('Goliath', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTV9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxNX0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6M319LCJzZWxsaW5nIjp7ImNyZWRpdHMiOjIwMDAwMH0sImNkbiI6eyI2M3g2MyI6ImM2YzhhMDlhNDc0OWFmNjkxYjZhOTk0N2NmMmM2OTAwIiwiMTAweDEwMCI6IjVmY2RiODNlNjliNDAxZDkyY2MxYWU2YWJiMTcyMzAwIiwidG9wIjoiYTYwNGNkNDY2OWI4MGEwZGRkODlmYTU0ZmM5NDYzMDAifX1d', '0', 'ship', 22, 'ship_goliath', 'u', '80000', 'c', '', 7),
('Iris Drone', 'W3sic2xvdHNldHMiOnsiZGVmYXVsdCI6eyJUIjpbMCw0XSwiUSI6Mn0sImRlc2lnbiI6eyJUIjpbMTZdLCJRIjoxfX0sInNlbGxpbmciOnsiY3JlZGl0cyI6MTAwMDAwfSwiY2RuIjp7IjMweDMwIjoiMTRlYmI4ZGI4MDE0ZGM0YmQ3NTdmYTJlZjc0ZGU0MDAiLCI2M3g2MyI6IjllOTE4ZDZiMTliN2Q1ZWFkMTZhZGRhZDBjYzM1MjAwIiwiMTAweDEwMCI6ImFmYmE5MjM5ZTIzM2Y1MDZlZmYyMTUyOGFiNGU4ZjAwIiwidG9wIjoiNzliMDQ4YTRiOGUwNWFkZDdhMjI0NWViZTk1ZDVlMDAifX0seyJzbG90c2V0cyI6eyJkZWZhdWx0Ijp7IlQiOlswLDRdLCJRIjoyfSwiZGVzaWduIjp7IlQiOlsxNl0sIlEiOjF9fSwic2VsbGluZyI6eyJjcmVkaXRzIjoxNTAwMDB9LCJjZG4iOnsiMzB4MzAiOiJkOTUxNjU3Yjg0ZGQ4MDU0OTI5NzcwMmYwMThiMWYwMCIsIjYzeDYzIjoiNjZmNmQzODk1MmY4ZmI4MDBhYmJkNWU1ZDk2Zjc3MDAiLCIxMDB4MTAwIjoiM2IxMjQyM2I5MzEyMjA1NWE3NmYyNTBmMzA3ZGVlMDAiLCJ0b3AiOiJjZGNjMmRjMmFjNjAxOTE3MTU2MTVhYzQ4MTAwZTMwMCJ9fSx7InNsb3RzZXRzIjp7ImRlZmF1bHQiOnsiVCI6WzAsNCwxMSw5LDcsOCwxMF0sIlEiOjJ9LCJkZXNpZ24iOnsiVCI6WzE2XSwiUSI6MX19LCJzZWxsaW5nIjp7ImNyZWRpdHMiOjIxMDAwMH0sImNkbiI6eyIzMHgzMCI6ImIxMGQxOTNiNTVmODk2NTY5MzY2NjhjMWJjNTU5OTAwIiwiNjN4NjMiOiJlM2FiMjVmMzgyOTI3ZGZkMDgyZjI5MDk2NzUyNDUwMCIsIjEwMHgxMDAiOiJlMGRiZDc3YWZlMGI5OThhYmIxYmU5MTRmZjBjYTgwMCIsInRvcCI6IjljNDg4ODkwMDk2MmE3YWMwNzQ3MTRjZmFhMjA2MjAwIn19LHsic2xvdHNldHMiOnsiZGVmYXVsdCI6eyJUIjpbMCw0XSwiUSI6Mn0sImRlc2lnbiI6eyJUIjpbMTZdLCJRIjoxfX0sInNlbGxpbmciOnsiY3JlZGl0cyI6MjQwMDAwfSwiY2RuIjp7IjMweDMwIjoiOWM0ODExMjU5NTI4MDhmNDY0NzQyZmZiYjBhNDM1MDAiLCI2M3g2MyI6ImRkM2E0MzU5YmZhZGJhMDdkMDM5ODllYzA0MmI1ZTAwIiwiMTAweDEwMCI6ImE3MWQ2ZmUyMjQxOWVhMTg4YTVkMmRkNzhlN2I2OTAwIiwidG9wIjoiODczZjc5NjhlOTZiYTJiMmFhNmE4Njc5MzgxNzFiMDAifX0seyJzbG90c2V0cyI6eyJkZWZhdWx0Ijp7IlQiOlswLDRdLCJRIjoyfSwiZGVzaWduIjp7IlQiOlsxNl0sIlEiOjF9fSwic2VsbGluZyI6eyJjcmVkaXRzIjozMTUwMDB9LCJjZG4iOnsiMzB4MzAiOiI5Y2IzOTI5ZWQwZWE2ZTkzOGViNTA1OTlhODU0ZDQwMCIsIjYzeDYzIjoiMThkN2I4ZmJlOTI4ZjFiMjZhZTA1ZThjZjhlYWIyMDAiLCIxMDB4MTAwIjoiMDIyN2VmZDJjYTdiODc0OTU3NTg4NWFiZDNkMzNlMDAiLCJ0b3AiOiJlNjU3NjFkNDJkZTk0ZjFlZWFhMGMzMGUyOWQ4OGUwMCJ9fSx7InNsb3RzZXRzIjp7ImRlZmF1bHQiOnsiVCI6WzAsNF0sIlEiOjJ9LCJkZXNpZ24iOnsiVCI6WzE2XSwiUSI6MX19LCJzZWxsaW5nIjp7ImNyZWRpdHMiOjUwMDAwMH0sImNkbiI6eyIzMHgzMCI6IjQwODYwZDE1OTRlOWI2ODQxY2NmYTg3OTYzZjhkODAwIiwiNjN4NjMiOiIwY2QzNjNlMGY2ODI5Nzc5NmFlYjFhMWRjODcyNTUwMCIsIjEwMHgxMDAiOiI5MTVjNTFmZGUxOWNhNWQwYzQ4NzgyMjFhZTMwNWYwMCIsInRvcCI6ImI2YWFlMjkxMmI2ZTBlYjFiNDlkNTBhYjVjYWVmNDAwIn19XQ==', '0', 'drone', 24, 'drone_iris', 'u', '15000', 'c', '100000', 8),
('Nostromo', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6N30sImdlbmVyYXRvcnMiOnsiVCI6WzMsNF0sIlEiOjEwfSwiaGVhdnlfZ3VucyI6eyJUIjpbMV0sIlEiOjF9LCJleHRyYXMiOnsiVCI6WzExLDksNyw4LDEwLDZdLCJRIjozfX0sInNlbGxpbmciOnsiY3JlZGl0cyI6OTc1MDB9LCJjZG4iOnsiNjN4NjMiOiJmODFkMDE3MGJjYTRmZTBkZTZhODU5ZDE1OGFjMTYwMCIsIjEwMHgxMDAiOiJjMzJmZDVjNGJhNzY4N2NhYmRmZDhlNTkyZjZlNjgwMCIsInRvcCI6ImU4OTgzMGZhNTcwZjMyMTYxZThiMzYyYjc4YjcyNzAwIn19XQ==', '0', 'ship', 22, 'ship_nostromo', 'c', '', 'c', '', 9),
('Spearhead', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6NX0sImdlbmVyYXRvcnMiOnsiVCI6WzMsNF0sIlEiOjEyfSwiaGVhdnlfZ3VucyI6eyJUIjpbMV0sIlEiOjF9LCJleHRyYXMiOnsiVCI6WzExLDksNyw4LDEwLDZdLCJRIjoyfX0sInNlbGxpbmciOnsiY3JlZGl0cyI6MTEyNTAwfSwiY2RuIjp7IjYzeDYzIjoiZmZiODVjMjdlYzZmODMxNTU0ZWMzMTdjMDM2ZmU5MDAiLCIxMDB4MTAwIjoiMTJkZTZmNDRhNDZlMGM2NGFjY2RlNTM5OGJhMjVmMDAiLCJ0b3AiOiJjZjQxNTA5ZDY1MWVjZDIwNTllY2MxMzJhYWIyYjEwMCJ9fV0=', '0', 'ship', 22, 'ship_spearhead', 'u', '45000', 'c', '', 10),
('MP-1', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoxMDAwMH0sImNkbiI6eyIzMHgzMCI6ImNmZGUyOWJjZGRiYmZiY2Y0YWJjY2IwNmExYmFkOTAwIiwiNjN4NjMiOiI1MmViODRlZjcwMzM3OWJjOWNjOTI2OGY1OWZmNWEwMCIsIjEwMHgxMDAiOiIyM2FkNmNjNWM5NDlmZmNlMGU2ZmYyNjgzYjE2ZTcwMCJ9fV0=', '0', 'laser', 0, 'equipment_weapon_laser_mp-1', 'c', '40000', 'c', '10000', 11),
('LCB-10', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo1fSwiY2RuIjp7IjMweDMwIjoiZGFlNGYzMDhlNDVjYzRhOTNhYzM2NDUxYWZhYmM3MDAiLCI2M3g2MyI6ImMwMjE1NGQyY2UxMzVkNjYwZjY0NzYzMWRiYmZiYzAwIiwiMTAweDEwMCI6ImQ4ZGI1YzQ4ZmU5MDdjNjVhNzRiNzdiNzIwNmE1ZTAwIn19XQ==', '0', 'battery', 14, 'ammunition_laser_lcb-10', 'c', '10', 'c', '1', 12),
('Booty Key', 'W3siY2RuIjp7IjMweDMwIjoiZmZiYzcyNTE0ZWRjMjlhZGJjYjY5YjFkYTJjMjNhMDAiLCI2M3g2MyI6IjJjMjY0OTIxN2ZhYzk4ZTA4NmM5Y2Q4ZmNlYzMwMzAwIiwiMTAweDEwMCI6ImVmNjE4YWZmMjBhNmUyYmNjODhkODA2Mjg0Y2ZjYjAwIn19XQ==', '0', 'special', 25, 'resource_booty-key', 'u', '1500', 'c', '', 13),
('MCB-25', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoxfSwiY2RuIjp7IjMweDMwIjoiYmVjYWMzNzE4NTI3YzUyMTJmZmJhZWY0ZGU2YmViMDAiLCI2M3g2MyI6Ijg2YzJjMmQyNjFlZjE5NjMxMGIzNGZiM2Y5MmM2ODAwIiwiMTAweDEwMCI6ImZhNDA3YTE2NDRlMDU2M2U1MTM4YjA0OTljNjgyMTAwIn19XQ==', '0', 'battery', 14, 'ammunition_laser_mcb-25', 'u', '0,5', 'c', '1', 14),
('PLT-2026', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoyNTB9LCJjZG4iOnsiMzB4MzAiOiIwZWI3ZDcyN2QwZThkN2MwNWFkOTEyMTU3M2E2YjIwMCIsIjYzeDYzIjoiYzZiZmRjZDA5OTQ5ZjdiNjFiOThlYWQzYzY3NzM1MDAiLCIxMDB4MTAwIjoiNThmZGY1NDNiZDRmYmQ3YmZkN2JjYjAxMWM5ZDExMDAifX1d', '0', 'battery', 14, 'ammunition_rocket_plt-2026', 'c', '500', 'c', '', 15),
('LF-2', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoxMjUwMDB9LCJjZG4iOnsiMzB4MzAiOiJhNjg2NTMxYTJkMjdiNWNhNjk3MzQ1N2UxYmUyODgwMCIsIjYzeDYzIjoiMzQzMDU0ZGIwM2E5OWE5MzRhOThiNTUzZDc3N2ZhMDAiLCIxMDB4MTAwIjoiZGFkYjNmMWRmZWU5MzFkNDQ0NzFhZjMwNzAwZTMzMDAifX1d', '0', 'laser', 0, 'equipment_weapon_laser_lf-2', 'c', '250000', 'c', '125000', 16),
('SG3N-B01', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoxMjgwMDB9LCJjZG4iOnsiMzB4MzAiOiI3NTA5ZWUyOTc4NmQ0OTExY2IyODJlN2EyZTI4YzIwMCIsIjYzeDYzIjoiZGZlZWE1ZmNjNjNhNDdmN2UwNzhmNGRiNGRkMGM0MDAiLCIxMDB4MTAwIjoiMDEwNzgyMTRhYmY3MjRjMGY1NWMzODVhZjJjZDAwMDAifX1d', '0', 'generator', 4, 'equipment_generator_shield_sg3n-b01', 'u', '2500', 'c', '128000', 17),
('Repair-Bot Auto CPU', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoyNTAwMH0sImNkbiI6eyIzMHgzMCI6ImI0NzYxMjBjOTczN2U0Nzg5ZjFkYTE3ZmFhZWNmNjAwIiwiNjN4NjMiOiJhMDhiNmZkNDg1YTU2MmE4NDUwNWMzN2Y0YjIyNjIwMCIsIjEwMHgxMDAiOiI4NjJkMjRmMzA1MTljNWU1M2ExM2Y0ZDNlYzk5NTUwMCJ9fV0=', '0', 'special', 7, 'equipment_extra_cpu_nc-rrb-x', 'u', '10000', 'c', '25000', 18),
('MCB-50', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoyfSwiY2RuIjp7IjMweDMwIjoiMGU2Yzg2NTZjZjgyMjgxN2JmMzgyNDJjMTMxYTljMDAiLCI2M3g2MyI6IjM4NmRkNTMyOGIwMzljYzc1OTRjMzZmODg3NWFmNDAwIiwiMTAweDEwMCI6Ijg2ZjgzNDI5ODY5M2I2MDUxNDdjY2Y1NzliYjg0ZDAwIn19XQ==', '0', 'battery', 14, 'ammunition_laser_mcb-50', 'u', '1', 'c', '2', 19),
('PLT-2021', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoxMn0sImNkbiI6eyIzMHgzMCI6ImI2MWVkMmQzMWYyN2RjYTIwNWFhYmY2ODI1MTE3ZDAwIiwiNjN4NjMiOiI0OTEzYjdkNTkzZTlkODEyYjA1YzRmM2VhYWY0MDEwMCIsIjEwMHgxMDAiOiI1N2RjMWM0NjE2MDg2MmQzZTZlNzNlNDUxNzY0YWIwMCJ9fV0=', '0', 'battery', 14, 'ammunition_rocket_plt-2021', 'u', '5', 'c', '', 20),
('G3N-7900', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo1MDAwfSwiY2RuIjp7IjMweDMwIjoiZWE4MDVlMDNiMmQzZmExNzNiNzIzZjFmODQ2YmM5MDAiLCI2M3g2MyI6Ijc2OGRlYThiNGFmOWVlNzM4MWI3MDdjYzYzZjNhYzAwIiwiMTAweDEwMCI6IjZmMzMyYmRjNTkwYWQ2NWM4MDk1ZDFjMzAzY2ViZjAwIn19XQ==', '0', 'generator', 3, 'equipment_generator_speed_g3n-7900', 'u', '2000', 'c', '5000', 21),
('LF-3', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoyNTAwMH0sImNkbiI6eyIzMHgzMCI6ImRjM2YyMTE4YTRmYWUzMWIyODc0NGY1ZjY5YjUzZTAwIiwiNjN4NjMiOiJiOGVjMTczZjExMjU3MzQ3YWNjMzc4Y2YyYjE5YzMwMCIsIjEwMHgxMDAiOiI1Y2VkNDkxNzA5MjA3MTVkNTcxNThmZTE3NzNhNDQwMCJ9fV0=', '0', 'laser', 0, 'equipment_weapon_laser_lf-3', 'u', '10000', 'c', '25000', 22),
('Xenomit', 'W3siY2RuIjp7IjMweDMwIjoiZDEwZTgzNGFmNzMxMzQzMDM3NDMwMTE1NTY1NjhhMDAiLCI2M3g2MyI6ImVhOGQ4ZmUyMGMzYTYxZDJjZjkwZjkxM2Y4ZjQ4MDAwIn19XQ==', '0', 'ship', 15, 'resource_ore_xenomit', 'c', '', 'c', '', 23),
('SAB-50', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoyfSwiY2RuIjp7IjMweDMwIjoiOTUxZTdjZTc5MDdhNzM3ZjJjOTRkNWNkYTIzY2ZkMDAiLCI2M3g2MyI6IjA2NjVjM2Y3ZTQ2MTRkNjc5MzY5ZDc3MDExYzJjOTAwIiwiMTAweDEwMCI6IjhjMTI4ODMxMjEwYTc3ZmRlYmZjODA4NWYwZGUyNzAwIn19XQ==', '0', 'battery', 14, 'ammunition_laser_sab-50', 'u', '1', 'c', '2', 24),
('ACM 1', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoyNTB9LCJjZG4iOnsiMzB4MzAiOiIxMzU1NjY4NTlmOTRjYzUxMjQ2ZjQwMWVjODk3ODIwMCIsIjYzeDYzIjoiMDg0MTAwZGYzYzViZWQ0ZWVhMGFmNjdlNGM0YmZkMDAiLCIxMDB4MTAwIjoiNzExMTY3MmY4NzYyZTFlYjQ3MzI0ODI3MjY3OGVhMDAifX1d', '0', 'battery', 14, 'ammunition_mine_acm-01', 'u', '100', 'c', '250', 25),
('UCB-100', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoxMn0sImNkbiI6eyIzMHgzMCI6IjJlNDk5Y2VlMzIxMjdiZTNkZjRjZjIwMGUxYzczYjAwIiwiNjN4NjMiOiJhZTBlMDFiZWFlMmRmMTU0NWQyNTcyODk5NTE1MTIwMCIsIjEwMHgxMDAiOiJiNTY3MTZhNzkxOGM5YmZiNmZlOTE3ZDYzZWVmYjcwMCJ9fV0=', '0', 'battery', 14, 'ammunition_laser_ucb-100', 'u', '2', 'c', '12', 26),
('SG3N-A03', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo2NDAwMH0sImNkbiI6eyIzMHgzMCI6IjJiYmMyOTc0Y2E3ZTlmNGJiY2ExZjM4ZmIwYWM3YjAwIiwiNjN4NjMiOiJhMjkwMGNmOTQ3NzZkYjYwYzNiZWU0M2RiMDdjZTgwMCIsIjEwMHgxMDAiOiI0NTMxYmNiMjcyNzEwOGNkZGM2NDZmODBjOGUxMmYwMCJ9fV0=', '0', 'generator', 4, 'equipment_generator_shield_sg3n-a03', 'c', '256000', 'c', '64000', 27),
('SG3N-B02', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoyNTAwMH0sImNkbiI6eyIzMHgzMCI6IjIxYjAyYzhjMzA0MTRhOGYxN2IzOTI2ZmZmYjVjYTAwIiwiNjN4NjMiOiJiNzE4YjZjZjFjMzBjZGUxZDUzMDU2YzhhZDE4NmMwMCIsIjEwMHgxMDAiOiJiODJiMzgyY2NkZWFlYTA3MTZlYTE1ZjQ5ZmY0NzMwMCJ9fV0=', '0', 'generator', 4, 'equipment_generator_shield_sg3n-b02', 'u', '10000', 'c', '25000', 28),
('Ammunition Buy CPU 1', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjozNzUwMH0sImNkbiI6eyIzMHgzMCI6ImI5NThmNWUyNjc2YzQ0YWVmMmE2ZDc4NGJhMTVlZjAwIiwiNjN4NjMiOiJhMjE3YzFkYzYxMzlkM2U1MDAwMDIyMTIzZDk0Y2YwMCIsIjEwMHgxMDAiOiIyMWUzMzY3MjFkMTJlNzkxZmI3ZTdjNjQxNGQ4NjMwMCJ9fV0=', '0', 'special', 7, 'equipment_extra_cpu_alb-x', 'u', '15000', 'c', '37500', 29),
('Fireworks 09M', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoyNX0sImNkbiI6eyIzMHgzMCI6IjMyMjk0YzBmMDMzZjYxNDEzODZhY2ZkNzE2NDc0ZDAwIiwiNjN4NjMiOiI5Nzk3MWFhNzM5NmI4YTUxMWE4MGNjY2YyYmU0MzYwMCIsIjEwMHgxMDAiOiI4NDk4YTE4YjY0YmY1Zjc3MDhkNDM3MzU0NzBmODkwMCJ9fV0=', '0', 'battery', 14, 'ammunition_firework_fwx-m', 'c', '', 'c', '2', 30),
('SL-M01', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoxMjV9LCJjZG4iOnsiMzB4MzAiOiI2ZTQxZTZjZTk5OGI4YTNiYjA3Y2ExMTkwZDFkZWIwMCIsIjYzeDYzIjoiNzcxMmExOWIyMTlkOTgxOTE2ODJlZDcyNDc3MTU2MDAiLCIxMDB4MTAwIjoiNDIzYTc0Mjk3MDE0MzZmNzQyYmFiZGEzMGI0M2JjMDAifX1d', '0', 'battery', 14, 'ammunition_mine_slm-01', 'c', '', 'c', '', 31),
('ECO-10', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo3NTB9LCJjZG4iOnsiMzB4MzAiOiJhNmJiOGIwODc2Yzk1NjNmODdlOTI4YjBkYTJiZDYwMCIsIjYzeDYzIjoiMTIwNDVmZmQ4ODVmMjU0OWI3ODk4YThiNTQxZTI3MDAiLCIxMDB4MTAwIjoiNjRhZTU4NGY1NTNhYjE1ZTFkY2FjZDdhN2E1OTVlMDAifX1d', '0', 'battery', 14, 'ammunition_rocketlauncher_eco-10', 'c', '1500', 'c', '', 32),
('Fireworks 09S', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo1MDB9LCJjZG4iOnsiMzB4MzAiOiJmMzFkNzY2ZTQxNzJlYTdkYTFkMmRhODY5MTczMzIwMCIsIjYzeDYzIjoiYTQ1ZmRmNWU0ZTI1MWY5ZGU0ZTQ5ZDJiNDYxN2NlMDAiLCIxMDB4MTAwIjoiNzEzOTQ1M2ZjY2Y2MjNiNzkzM2ViNDc3NzE0ZTczMDAifX1d', '0', 'battery', 14, 'ammunition_firework_fwx-s', 'c', '', 'c', '1', 33),
('SAR-02', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo1MH0sImNkbiI6eyIzMHgzMCI6IjY2MjJjMmU4MzAwNDZmZjdjM2RmZWRkMmYxNWE0NDAwIiwiNjN4NjMiOiIyZmZiNjQ3NDAxOWIyNWVlMDUwYjIzYzU5OGVhNGYwMCIsIjEwMHgxMDAiOiJlNzFiYmY2Nzc3NTE0NmNhY2FiOWZkODJiYjRlNWUwMCJ9fV0=', '0', 'battery', 14, 'ammunition_rocketlauncher_sar-02', 'c', '', 'c', '', 34),
('Fireworks 09L', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo1MH0sImNkbiI6eyIzMHgzMCI6IjlhYjJlMDdlMGRiNThhOWE1MDE5YjgxYzVhNTRkMjAwIiwiNjN4NjMiOiIwM2UyMjAzODFjM2Y2MTUzNmRjN2U2ZjFiZjViNmUwMCIsIjEwMHgxMDAiOiJjMjhlMDdiYTRkN2Q5NjEzNjZmODJkOTM4NGE0OGIwMCJ9fV0=', '0', 'battery', 14, 'ammunition_firework_fwx-l', 'c', '', 'c', '5', 35),
('PLD-8', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoyNTB9LCJjZG4iOnsiMzB4MzAiOiJlY2Y0ZjIxMTNiMWU5ZWFmMjA1ZTc5NTFjZjA5NTQwMCIsIjYzeDYzIjoiZDZlNmRkZjhkYTEzODY1ODYzOWEyNTQ2OGIwNjdlMDAiLCIxMDB4MTAwIjoiYTM2YWY1ZjBiNGQ5NmZkZjQ5NTA2ZWRkM2I0MmYzMDAifX1d', '0', 'battery', 14, 'ammunition_specialammo_pld-8', 'c', '', 'c', '', 36),
('Slot CPU 4', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoxMjUwMDAwfSwiY2RuIjp7IjMweDMwIjoiMWEwNWUyMzRjOTIwNjcyZWU1NGY5YzMwM2U5ZGYzMDAiLCI2M3g2MyI6IjMzZDcwODY1MTNjMzZkOGY1ZDcwNjYwOTkzZjcwODAwIiwiMTAweDEwMCI6IjY4OGE3OTJkMzU5OTk4YWY2ODk1OGFjYjdmYmNlNTAwIn19XQ==', '0', 'special', 7, 'equipment_extra_cpu_sle-04', 'u', '250000', 'c', '1250000', 37),
('Rocket Turbo 1', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoyNTAwMH0sImNkbiI6eyIzMHgzMCI6Ijk2NzBmZTQwNWQxOTk5ZjNlMDc1ZDRlMDY1Y2Q4NzAwIiwiNjN4NjMiOiI2ZWNiN2ZkZmIxNTkzYmI2NWI0M2IzOTQ3NmFhZTIwMCIsIjEwMHgxMDAiOiI5MmViMzA1OTdiNmEwZTVlNzM5YzI1Y2E4MjRjNDEwMCJ9fV0=', '0', 'special', 7, 'equipment_extra_cpu_rok-t01', 'u', '10000', 'c', '25000', 38),
('Auto-Rocket CPU 1', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo2MjUwMH0sImNkbiI6eyIzMHgzMCI6Ijc1YzVkYzIwMDk2YjUwNTYzNTFiMjllZmQ2Y2ViNzAwIiwiNjN4NjMiOiJhYzYwZDYzM2E0ZWJhNmYwOTRkNDc0NGVjZTYxODIwMCIsIjEwMHgxMDAiOiIzMGRmMTQ5NjM4ZTQyOTg1OTQ0NDczNjM5MzFjOWEwMCJ9fV0=', '0', 'special', 7, 'equipment_extra_cpu_arol-x', 'u', '25000', 'c', '62500', 39),
('PLT-3030', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoxN30sImNkbiI6eyIzMHgzMCI6ImY3NDA4MzE4NGQ2MThlODY0NzM3ZjlkMDJkODhjYzAwIiwiNjN4NjMiOiJmN2E0ZWRjYjg2NTk2ODA5ZGViOTI0MDgzYmZjZWYwMCIsIjEwMHgxMDAiOiI0M2VhODRmYzhlMDIwZjNmOTNhN2FlMDA0YmU0YjYwMCJ9fV0=', '0', 'battery', 14, 'ammunition_rocket_plt-3030', 'u', '7', 'c', '', 40),
('Repair Robot 4', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo1MDAwMH0sImNkbiI6eyIzMHgzMCI6IjI0NWEyOGU4OTFkOWRlMGY2N2U3MDQ5NGUzOTEyZTAwIiwiNjN4NjMiOiJhZDFkOGM1ZDcxNjY1NTFjNzExODJlZWNjNWE2N2UwMCIsIjEwMHgxMDAiOiJmMzE5NjU3YWQ5NDJiNjFjODg2M2I2NDkyZGU0OGUwMCJ9fV0=', '0', 'special', 9, 'equipment_extra_repbot_rep-4', 'u', '20000', 'c', '50000', 41),
('Instashield CPU 1', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoxMjUwMDB9LCJjZG4iOnsiMzB4MzAiOiJiNTMwMzIyMGI2ZWJiZjkxYWU5ZjEyMDNkOTliMTkwMCIsIjYzeDYzIjoiNTllYmI0NWE0ODNiNjliMDNjODc4ZjhlZjczODFmMDAiLCIxMDB4MTAwIjoiYmE5MjljMjYzYWY3ODJiOGZiNjQwNDZlZTJiOTRkMDAifX1d', '0', 'special', 7, 'equipment_extra_cpu_ish-01', 'u', '50000', 'c', '125000', 42),
('Advanced Jump CPU 1', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoxNzg1MDB9LCJjZG4iOnsiMzB4MzAiOiI1MTNjYjg2YmU0YjA3YWRkYTc3NmYzOWY0NTE0NzgwMCIsIjYzeDYzIjoiNzc5OWZlY2ZkNGZjZTFmODlkOTAwZDQzMDRjMjEwMDAiLCIxMDB4MTAwIjoiZDRjMDViNjEzMDBlNmY4MzY5NjNkZDZkMjdiYjY2MDAifX1d', '0', 'special', 7, 'equipment_extra_cpu_ajp-01', 'u', '75000', 'c', '178500', 43),
('Cargo Compressor', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoyNTAwMH0sImNkbiI6eyIzMHgzMCI6ImE2NWUwYTVmZjI2Mjc0YjQ5MGY5OTgwYTJlZTlkOTAwIiwiNjN4NjMiOiI0NzJjZGJkMjQ2NTNmZmQwMmNmYTlkNzhmMTA5YzcwMCIsIjEwMHgxMDAiOiI1MjcyMjAwOTQzNjMxOGQwNDNiZWUxMzczODc4ZjUwMCJ9fV0=', '0', 'special', 10, 'equipment_extra_cpu_g3x-crgo-x', 'u', '10000', 'c', '25000', 44),
('HST-2', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjozNzUwMH0sImNkbiI6eyIzMHgzMCI6ImI1MDAxMTc3OWRiYTQwNmI2NjM4NzZjMzEzNDM2YzAwIiwiNjN4NjMiOiJkYjA3NmY2YzY2YmMwNzYwYzY1MGJkMWU1YTVjMmMwMCIsIjEwMHgxMDAiOiIxODk0NzZlOTE4YTdhN2M3OTJmMDkyNzJkYjQxMjQwMCJ9fV0=', '0', 'laser', 1, 'equipment_weapon_rocketlauncher_hst-2', 'u', '15000', 'c', '37500', 45),
('Jump CPU 2', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjozNzUwMH0sImNkbiI6eyIzMHgzMCI6Ijg1M2ZhNmJlOTQ5NGViNTA1ZmNlOTg4ZjQxOGY2MDAwIiwiNjN4NjMiOiI3MTQ0ODYzNTI1N2M3YTJmNDhkYWI4YmM2N2EzYmUwMCIsIjEwMHgxMDAiOiI0YzcxNGQwMDMzZGI5NjdiYTNhMjcyMDAzMmFlODgwMCJ9fV0=', '0', 'special', 7, 'equipment_extra_cpu_jp-02', 'u', '15000', 'c', '37500', 46),
('Rocket-launcher CPU', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo2MjUwMH0sImNkbiI6eyIzMHgzMCI6ImFkNzA0NTNkZWFkNzA3NzcwNGIzNGRjYmVmNGI1ZDAwIiwiNjN4NjMiOiJmODZlNTMyZjA2MDVmMWJlZmMzZWZhYjQwMmRmYmQwMCIsIjEwMHgxMDAiOiJjMDJlZjc5YzdmYjA5YWZiMThlZmE3YmFjYjY4ZTMwMCJ9fV0=', '0', 'special', 7, 'equipment_extra_cpu_rllb-x', 'u', '25000', 'c', '62500', 47),
('Rocket-Buy CPU 1', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjozNzUwMH0sImNkbiI6eyIzMHgzMCI6ImFiZTI1NmFmNGZkYzk5ZDc4NTI1YzhiZWY3ODIyMjAwIiwiNjN4NjMiOiIyYmY0MWM2ZjIxZDdiMGY4ZDk5ZGUzOWQ1MTM0ZTQwMCIsIjEwMHgxMDAiOiIwYTBjNDA4MTc2YThmYTVjN2RkNmY2YTAwNDE2NGEwMCJ9fV0=', '0', 'special', 7, 'equipment_extra_cpu_rb-x', 'u', '15000', 'c', '37500', 48),
('R-310', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo1MH0sImNkbiI6eyIzMHgzMCI6IjY4YWY3M2JjYTkxMTRhZGQ2NzRhNTczZmVlMTY2MjAwIiwiNjN4NjMiOiJiZDRiNzg1MDgxYWQ5OGM4YTM4ZWZkMzhjMTQ0M2IwMCIsIjEwMHgxMDAiOiI5ZDI5YjQ3Y2ExN2VlMDMxNmY4MGE0YmVlMzljOTYwMCJ9fV0=', '0', 'battery', 14, 'ammunition_rocket_r-310', 'c', '100', 'c', '', 49),
('G-REP1', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo2MjUwfSwidGV4dEtleXMiOnsiYW1vdW50IjoyMDAwfSwiY2RuIjp7IjMweDMwIjoiNDM5NDVhOTkzZTAyNWU2NWQwN2FhNmYxMjIzNjgyMDAiLCI2M3g2MyI6ImVjZTk5ZDBjNzIyYWFmZmIxYTBkYmVhMDlhZDU4MDAwIiwiMTAweDEwMCI6IjU3NDM3MGMyMTkxZTNhZmU5ZjczZDU5ZmU0NWI2YzAwIn19LHsic2VsbGluZyI6eyJjcmVkaXRzIjoxNTAwMH0sInRleHRLZXlzIjp7ImFtb3VudCI6NjAwMH0sImNkbiI6eyIzMHgzMCI6IjQzOTQ1YTk5M2UwMjVlNjVkMDdhYTZmMTIyMzY4MjAwIiwiNjN4NjMiOiJlY2U5OWQwYzcyMmFhZmZiMWEwZGJlYTA5YWQ1ODAwMCIsIjEwMHgxMDAiOiI1NzQzNzBjMjE5MWUzYWZlOWY3M2Q1OWZlNDViNmMwMCJ9fSx7InNlbGxpbmciOnsiY3JlZGl0cyI6MzEyNTB9LCJ0ZXh0S2V5cyI6eyJhbW91bnQiOjEyMDAwfSwiY2RuIjp7IjMweDMwIjoiNDM5NDVhOTkzZTAyNWU2NWQwN2FhNmYxMjIzNjgyMDAiLCI2M3g2MyI6ImVjZTk5ZDBjNzIyYWFmZmIxYTBkYmVhMDlhZDU4MDAwIiwiMTAweDEwMCI6IjU3NDM3MGMyMTkxZTNhZmU5ZjczZDU5ZmU0NWI2YzAwIn19XQ==', '0', 'petGear', 19, 'equipment_petgear_g-rep1', 'c', '', 'c', '', 50),
('G-AL1', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoxODc1MH0sImNkbiI6eyIzMHgzMCI6IjY5OTUwMmU2NzdlM2Q4OThmNWIxMTg1MDI3MzU2ZDAwIiwiNjN4NjMiOiIxNmFjNmMyNzBmN2VkNTg5MjUyMTExMDU4YjUwY2IwMCIsIjEwMHgxMDAiOiIzYTZmZTJjMWQ3ZTc5M2ZlYzRkNjk3YjkwNzIxZjcwMCJ9fSx7InNlbGxpbmciOnsiY3JlZGl0cyI6NDM3NTB9LCJjZG4iOnsiMzB4MzAiOiI2OTk1MDJlNjc3ZTNkODk4ZjViMTE4NTAyNzM1NmQwMCIsIjYzeDYzIjoiMTZhYzZjMjcwZjdlZDU4OTI1MjExMTA1OGI1MGNiMDAiLCIxMDB4MTAwIjoiM2E2ZmUyYzFkN2U3OTNmZWM0ZDY5N2I5MDcyMWY3MDAifX0seyJzZWxsaW5nIjp7ImNyZWRpdHMiOjkzNzUwfSwiY2RuIjp7IjMweDMwIjoiNjk5NTAyZTY3N2UzZDg5OGY1YjExODUwMjczNTZkMDAiLCI2M3g2MyI6IjE2YWM2YzI3MGY3ZWQ1ODkyNTIxMTEwNThiNTBjYjAwIiwiMTAweDEwMCI6IjNhNmZlMmMxZDdlNzkzZmVjNGQ2OTdiOTA3MjFmNzAwIn19XQ==', '0', 'petGear', 19, 'equipment_petgear_g-al1', 'c', '', 'c', '', 51),
('G-TRA1', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoxNTAwMH0sImNkbiI6eyIzMHgzMCI6Ijg4MDYzNmVhYjhlYTI3MzYxZDk1YjZmMTM4YmIzYzAwIiwiNjN4NjMiOiI5ZjE2ZmRiNjA4NjJkNzcxNzA3ZjVhM2QwYmRiNTUwMCIsIjEwMHgxMDAiOiI5NzFmYTI0YzdmN2RhNTM0ZDgyODBmNTU4YzA4ZjYwMCJ9fSx7InNlbGxpbmciOnsiY3JlZGl0cyI6MzEyNTB9LCJjZG4iOnsiMzB4MzAiOiI4ODA2MzZlYWI4ZWEyNzM2MWQ5NWI2ZjEzOGJiM2MwMCIsIjYzeDYzIjoiOWYxNmZkYjYwODYyZDc3MTcwN2Y1YTNkMGJkYjU1MDAiLCIxMDB4MTAwIjoiOTcxZmEyNGM3ZjdkYTUzNGQ4MjgwZjU1OGMwOGY2MDAifX0seyJzZWxsaW5nIjp7ImNyZWRpdHMiOjkzNzUwfSwiY2RuIjp7IjMweDMwIjoiODgwNjM2ZWFiOGVhMjczNjFkOTViNmYxMzhiYjNjMDAiLCI2M3g2MyI6IjlmMTZmZGI2MDg2MmQ3NzE3MDdmNWEzZDBiZGI1NTAwIiwiMTAweDEwMCI6Ijk3MWZhMjRjN2Y3ZGE1MzRkODI4MGY1NThjMDhmNjAwIn19XQ==', '0', 'petGear', 19, 'equipment_petgear_g-tra1', 'c', '', 'c', '', 52),
('AI-R1', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo3NTAwfSwidGV4dEtleXMiOnsiYW1vdW50IjoiMiJ9LCJjZG4iOnsiMzB4MzAiOiJhZjA3OWRjMzU4YWJiYTY2MjQyMjMxNzZlY2ZhYmUwMCIsIjYzeDYzIjoiZjNhOWU3MDY2MmRlYTgyMmFlNjBjNTg5NjI5ZDg0MDAiLCIxMDB4MTAwIjoiZjYyZmRiNDkyZmYyMTk3M2E3NWRkYjRhMjY0YmU0MDAifX0seyJzZWxsaW5nIjp7ImNyZWRpdHMiOjE4NzUwfSwidGV4dEtleXMiOnsiYW1vdW50IjoiNiJ9LCJjZG4iOnsiMzB4MzAiOiJhZjA3OWRjMzU4YWJiYTY2MjQyMjMxNzZlY2ZhYmUwMCIsIjYzeDYzIjoiZjNhOWU3MDY2MmRlYTgyMmFlNjBjNTg5NjI5ZDg0MDAiLCIxMDB4MTAwIjoiZjYyZmRiNDkyZmYyMTk3M2E3NWRkYjRhMjY0YmU0MDAifX0seyJzZWxsaW5nIjp7ImNyZWRpdHMiOjYyNTAwMH0sInRleHRLZXlzIjp7ImFtb3VudCI6IjEyIn0sImNkbiI6eyIzMHgzMCI6ImFmMDc5ZGMzNThhYmJhNjYyNDIyMzE3NmVjZmFiZTAwIiwiNjN4NjMiOiJmM2E5ZTcwNjYyZGVhODIyYWU2MGM1ODk2MjlkODQwMCIsIjEwMHgxMDAiOiJmNjJmZGI0OTJmZjIxOTczYTc1ZGRiNGEyNjRiZTQwMCJ9fV0=', '0', 'petProtocol', 20, 'equipment_aiprotocol_ai-r1', 'c', '', 'c', '', 53),
('Laser Turret Module - Mid Range', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo1MDAwfSwiY2RuIjp7IjMweDMwIjoiY2RkYmNmNTA3ODlhOGZjMGEwMDQ3YTA2YjU3YTI5MDAiLCI2M3g2MyI6ImU3ZmY1MTg4ZjBlMTVhYzgzYzhjZGFmYjIwYzk2MTAwIiwiMTAweDEwMCI6ImU5ZjBhMTE4M2I4OGE3ODcyMGI0NDU1MzZkZDEyYzAwIn19XQ==', '0', 'module', 18, 'module_ltm-mr', 'c', '', 'c', '', 54),
('Blueprint - Apis Part', 'W3siY2RuIjp7IjMweDMwIjoiOWRjOGE3MDY1NTA4MDliZjM3MjUzZGI2OTk2MmI0MDAiLCI2M3g2MyI6IjM3NDU5ZDMxZjZjNDAxNTFlYmI3MDljMWNmOTQwYjAwIn19XQ==', '0', 'special', 25, 'resource_blueprint_apis-part', 'c', '', 'c', '', 55),
('DD-M01', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjozNzV9LCJjZG4iOnsiMzB4MzAiOiJjODMwMGE5ZDFiNDE0YzVkYzRlODY4ZGFmMjQ3ZTEwMCIsIjYzeDYzIjoiOWE1NzAzZTZhZDM2ZmRmOTY0YmMxNjI5OTkzNGUwMDAiLCIxMDB4MTAwIjoiNzA0MWIyMTA1MGNhYTZiYTA5YjUyMDk2YWFkZjc0MDAifX1d', '0', 'battery', 14, 'ammunition_mine_ddm-01', 'c', '', 'c', '', 56),
('Havoc', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo3NTAwMH0sImNkbiI6eyIzMHgzMCI6IjNkNzc3MjkzYzM4MjY2OGJmNjUxY2U4OWMzNTIzZjAwIiwiNjN4NjMiOiJhZGE1MWY0MTk1ZTllNjZiYWE3NzQxNTE0ZjE2YjQwMCIsIjEwMHgxMDAiOiI5YmEyYWI3MzNiOTZlMDZiOWQzZDg0Njk0MjYwZjgwMCJ9fV0=', '0', 'ship', 16, 'drone_designs_havoc', 'c', '', 'c', '', 57),
('RSB-75', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoxMn0sImNkbiI6eyIzMHgzMCI6IjEyYzg5M2Q0ODA1NDBjNWZjMTI3OTY2NDA0OGI0MTAwIiwiNjN4NjMiOiI1MDIwNjU0M2NjZDJiYzEwMDJkMTA2ZjExNzc1NjYwMCIsIjEwMHgxMDAiOiJlZDMzNGVmZDQ4MzMzMzVjYjE4M2I4YjNmYmIxMTUwMCJ9fV0=', '0', 'battery', 14, 'ammunition_laser_rsb-75', 'u', '5', 'c', '1', 58),
('Rocket Array Module - Mid Accuracy', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo1MDAwfSwiY2RuIjp7IjMweDMwIjoiYzM0NmZlYjEzNWFiZmY0MDc4NGM4N2U5Y2JiYTdmMDAiLCI2M3g2MyI6Ijc3MGM5YzgzNWM2ZGJhMTA3Nzk4OGZjYzdkZWVhMzAwIiwiMTAweDEwMCI6ImFiYzQwNGUzMzA3Nzg5ZGQzODQ5MmFjMTE0Zjc5MzAwIn19XQ==', '0', 'module', 18, 'module_ram-ma', 'c', '', 'c', '', 59),
('EMP-M01', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjozNzV9LCJjZG4iOnsiMzB4MzAiOiJiNWJiZGQzOTMxNjBkZWE1MDcyYzljMjk5MjVmYjYwMCIsIjYzeDYzIjoiMjM2ODhlNTI3YjhmNmQ2MjYzMTM0YTVjYmNjOGIxMDAiLCIxMDB4MTAwIjoiMzhiNTA2Y2E4MjFmMzI0YjAxNDE1NTA3ZDJkZjM5MDAifX1d', '0', 'battery', 14, 'ammunition_mine_empm-01', 'c', '', 'c', '', 60),
('HSTRM-01', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo2Mn0sImNkbiI6eyIzMHgzMCI6IjgwNmViZDNiNWE4ZTU2NWFmNWEzMGUzODJhZjA1MTAwIiwiNjN4NjMiOiJkZjUxODg5YzQ1MjI0NzYxZGQ1ZDcxNWQwNTQ1YWYwMCIsIjEwMHgxMDAiOiJiZTI1MDNmMmU5MzMzNGYzMjBkY2U5MTU2MzYzZmMwMCJ9fV0=', '0', 'battery', 14, 'ammunition_rocketlauncher_hstrm-01', 'c', '', 'c', '', 61),
('Armory Upgrade 2', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoyNTAwMH0sImNkbiI6eyIzMHgzMCI6ImFlN2JiNWM4ZTcwMDY3M2E0NGQ0ZmYwODFjYTAxOTAwIiwiNjN4NjMiOiI5MjY5ZDU0MWQ5M2U5ZjFmZTAwOWY2YzdiOGExODYwMCIsIjEwMHgxMDAiOiJiMzI4N2I1MWNiODdkOWRhOTA4YzQ0ZmIyMmJjNTAwMCJ9fV0=', '0', 'special', 10, 'equipment_extra_cpu_g3x-amry-m', 'u', '10000', 'c', '25000', 62),
('G-KK1', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoxODc1MH0sImNkbiI6eyIzMHgzMCI6IjU5NzBiMTU5OWY1NmM3N2ExZGU0MjI3YzAxYzVlOTAwIiwiNjN4NjMiOiIwMzUxNzYxYjgyNTJjOTQ0OWZkZGM1MTM5YWJkN2YwMCIsIjEwMHgxMDAiOiJlYTdlMTQ4MjI0OTMzZGJiZmMzNmRkZWUyNmY3OTYwMCJ9fSx7InNlbGxpbmciOnsiY3JlZGl0cyI6NDM3NTB9LCJjZG4iOnsiMzB4MzAiOiI1OTcwYjE1OTlmNTZjNzdhMWRlNDIyN2MwMWM1ZTkwMCIsIjYzeDYzIjoiMDM1MTc2MWI4MjUyYzk0NDlmZGRjNTEzOWFiZDdmMDAiLCIxMDB4MTAwIjoiZWE3ZTE0ODIyNDkzM2RiYmZjMzZkZGVlMjZmNzk2MDAifX0seyJzZWxsaW5nIjp7ImNyZWRpdHMiOjEyNTAwMH0sImNkbiI6eyIzMHgzMCI6IjU5NzBiMTU5OWY1NmM3N2ExZGU0MjI3YzAxYzVlOTAwIiwiNjN4NjMiOiIwMzUxNzYxYjgyNTJjOTQ0OWZkZGM1MTM5YWJkN2YwMCIsIjEwMHgxMDAiOiJlYTdlMTQ4MjI0OTMzZGJiZmMzNmRkZWUyNmY3OTYwMCJ9fV0=', '0', 'petGear', 19, 'equipment_petgear_g-kk1', 'c', '', 'c', '', 63),
('Hercules', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo3NTAwMH0sImNkbiI6eyIzMHgzMCI6IjgxZmNiMjg0ODE1MzBhZWE0MDVlNzlkYTdmOTU5MDAwIiwiNjN4NjMiOiJmZjY3OWY0Zjk4MjlhNzdmODE0MmQwYmY2NjdlNWIwMCJ9fV0=', '0', 'ship', 16, 'drone_designs_hercules', 'c', '', 'c', '', 64),
('Rocket Array Module - Low Accuracy', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo1MDAwfSwiY2RuIjp7IjMweDMwIjoiMDNjOWZjMGFkNzQyYWUyOGVjOTQ5MjUyZTkxMzUwMDAiLCI2M3g2MyI6IjhhYThmNWI1MDU3Y2QyNjlmNTliNGM5M2IxZDViYTAwIiwiMTAweDEwMCI6IjU4OTUwNjU4MDdmYzAyYTI1NjYwM2IwNTYzMWY4MzAwIn19XQ==', '0', 'module', 18, 'module_ram-la', 'c', '', 'c', '', 65),
('F-01-TU', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo1MDAwMDB9LCJjZG4iOnsiMzB4MzAiOiJmOGRjNGRjMDQ0ZDViYzZlYmVkOTYxZTQ5YmZkNTMwMCIsIjYzeDYzIjoiNDAwMzk0MjBmMGJmNDlkMjJhOTAyNjg0NTc1MGJjMDAiLCIxMDB4MTAwIjoiMDgxZjZjMDQ2Y2JhNzI4OTYwYTllZTcxMzhiNTQ2MDAifX1d', '0', 'drone', 17, 'drone_formation_f-01-tu', 'c', '', 'c', '', 66),
('F-02-AR', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo1MDAwMDB9LCJjZG4iOnsiMzB4MzAiOiIwOTY1MmFhODU0ZDQxNzMwNDcyOTdjYmFiOWUyZDUwMCIsIjYzeDYzIjoiNDZkNmE0ZTZmNjNlMzFhODI3YmE0OTMxMWMwZDIwMDAiLCIxMDB4MTAwIjoiNWE5M2M0MzkzYWI4ZDQ3ZTUxZDhiZTBiOGVmNjkzMDAifX1d', '0', 'drone', 17, 'drone_formation_f-02-ar', 'c', '', 'c', '', 67),
('G-AR1', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo2MjUwfSwiY2RuIjp7IjMweDMwIjoiNTYwNzhmMDEyY2I0M2RmNDAzYzQ3ODFmOGRkZmIwMDAiLCI2M3g2MyI6ImVkNjc0YzQyZjFjZjliZjVjODMzZjg3ODViYzY2ZTAwIiwiMTAweDEwMCI6IjhhNDVmMThlYjNkM2FmMjNmZGYyMzRiYjgwODA3YjAwIn19LHsic2VsbGluZyI6eyJjcmVkaXRzIjoxNTAwMH0sImNkbiI6eyIzMHgzMCI6IjU2MDc4ZjAxMmNiNDNkZjQwM2M0NzgxZjhkZGZiMDAwIiwiNjN4NjMiOiJlZDY3NGM0MmYxY2Y5YmY1YzgzM2Y4Nzg1YmM2NmUwMCIsIjEwMHgxMDAiOiI4YTQ1ZjE4ZWIzZDNhZjIzZmRmMjM0YmI4MDgwN2IwMCJ9fSx7InNlbGxpbmciOnsiY3JlZGl0cyI6NDM3NTB9LCJjZG4iOnsiMzB4MzAiOiI1NjA3OGYwMTJjYjQzZGY0MDNjNDc4MWY4ZGRmYjAwMCIsIjYzeDYzIjoiZWQ2NzRjNDJmMWNmOWJmNWM4MzNmODc4NWJjNjZlMDAiLCIxMDB4MTAwIjoiOGE0NWYxOGViM2QzYWYyM2ZkZjIzNGJiODA4MDdiMDAifX1d', '0', 'petGear', 19, 'equipment_petgear_g-ar1', 'c', '', 'c', '', 68),
('LF-4', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo3NTAwMH0sImNkbiI6eyIzMHgzMCI6IjEyMDQ2Yzc5NjBkNGI4ZGNiM2I0MmI5YWUzYmJiZTAwIiwiNjN4NjMiOiJkZGQzZGM1NGIwZTFmYWQ1YzdkODkzYzlkMWIxOTQwMCIsIjEwMHgxMDAiOiJlYjk3NmJiMzIxOTdjMjFhOGI2YmU1NmViNjVlMWQwMCJ9fV0=', '0', 'laser', 0, 'equipment_weapon_laser_lf-4', 'u', '2000000000', 'c', '75000', 69),
('SAB-M01', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjozNzV9LCJjZG4iOnsiMzB4MzAiOiI5YTVmOWYxNjAxMjEwNTc5YzI3ZThhZDQ1Y2Y0ZWMwMCIsIjYzeDYzIjoiYzlkOGQ2YTAzYTlkNDg4MWIwOWNjMjQwOWIwNTZmMDAiLCIxMDB4MTAwIjoiNGM3ZGQ2MzAwMTA1M2E5ZGUwYzVkM2QzMzU0NzBlMDAifX1d', '0', 'battery', 14, 'ammunition_mine_sabm-01', 'c', '', 'c', '', 70),
('Cloak CPU 1', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoyNTAwMH0sImNkbiI6eyIzMHgzMCI6IjY5ZDdiNDg0MDNlMjc2OTRiYTFlNTY3YzY1ZWRlMzAwIiwiNjN4NjMiOiIyMzg5YTZiZTE2M2FiYzUxMmFkODg0NWY1MzQ5NDQwMCIsIjEwMHgxMDAiOiI0NGNlYjcwY2I0YTdjZmQ5NGVjNGI3NTcwODIwOGEwMCJ9fV0=', '0', 'special', 7, 'equipment_extra_cpu_cl04k-m', 'u', '5000', 'c', '25000', 71),
('Wizard', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoyNTB9LCJjZG4iOnsiMzB4MzAiOiI1MjIzMDA0NTZmNmI0YmVjNTE2NDUxNGNkY2NhYjQwMCIsIjYzeDYzIjoiYzM1ODc4MWQ3M2Q0YWUwNzI1NjQwM2JmNTQzZWE0MDAiLCIxMDB4MTAwIjoiYjRiN2QxZWQ2YWYwYTFiNTAzMWZiMGEzYTY4NjE5MDAifX1d', '0', 'battery', 14, 'ammunition_specialammo_wiz-x', 'c', '', 'c', '', 72),
('UBR-100', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo3NTB9LCJjZG4iOnsiMzB4MzAiOiJlYjNlNWIyMmQ5MWNjNjQ0NTkwMmZiMWYwODYyZDIwMCIsIjYzeDYzIjoiZGE5MzNjNWMwOTEyMWEwYjM5ZjZkNTczZWM4YzQ3MDAiLCIxMDB4MTAwIjoiYzZjYTUxYWYxYmI1NmYxNjMyNjhhZTFmNTU2NGY0MDAifX1d', '0', 'battery', 14, 'ammunition_rocketlauncher_ubr-100', 'c', '', 'c', '', 73),
('Laser Turret Module - High Range', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo1MDAwfSwiY2RuIjp7IjMweDMwIjoiNzYxOWJmYWQ1NWJlOTRhM2E4ZjI1ZDdhMjg0NDYyMDAiLCI2M3g2MyI6ImQ2OTI2M2I5NTNkOGI1ODY1NzgyN2FiZmNkMTM4MzAwIiwiMTAweDEwMCI6ImQ0ZjIxNGIzMzVmNjFhYjQ3YTJmNmFmMzVmNjViNjAwIn19XQ==', '0', 'module', 18, 'module_ltm-hr', 'c', '', 'c', '', 74),
('F-07-DI', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjozMDAwMDB9LCJjZG4iOnsiMzB4MzAiOiJmYzNjYWFjNTcyYzU3ZTIxODY3YjEyMGJmMzEzYWIwMCIsIjYzeDYzIjoiYWEzYTQxNjUyN2ExYzEwZTg3YmNjZDBjNDk2MzA2MDAiLCIxMDB4MTAwIjoiOWNlNDhjNTg4ZGViNjQ1MzhhNWZjOGIyMjVkZjJkMDAifX1d', '0', 'drone', 17, 'drone_formation_f-07-di', 'c', '', 'c', '', 75),
('Cloak CPU XL', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo1NjI1MH0sImNkbiI6eyIzMHgzMCI6IjcwNjRjYmUxMGRhNWZkZGIyMGZhNGNkNDdmNDAzMTAwIiwiNjN4NjMiOiIzYzM5NTQwNDlkNTBlMDBkOWU0YzQxZTI0NTVjZGUwMCIsIjEwMHgxMDAiOiI1Mzc4ZjBmYmJkZjRlMzZlZTU3MjY3MmE4OTk2N2UwMCJ9fV0=', '0', 'special', 7, 'equipment_extra_cpu_cl04k-xl', 'u', '22500', 'c', '56250', 76),
('Experience Booster Module', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo1MDAwfSwiY2RuIjp7IjMweDMwIjoiODFiYjBjMGZhN2RlZTA5OWU1MTlkYjhkYjJjNjVkMDAiLCI2M3g2MyI6ImIzMGRhM2JjMWQyMzI5YzQzMTdmZDBiM2ZjZTYwNzAwIiwiMTAweDEwMCI6IjMyYTZjMDZhYjNkNjQ0ZGM2ZTdlZGEwMDFkNjM4ZDAwIn19XQ==', '0', 'module', 18, 'module_xpm-1', 'c', '', 'c', '', 77),
('Laser Turret Module - Low Range', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo1MDAwfSwiY2RuIjp7IjMweDMwIjoiYWIyODIzODRhYmNhYThjYzNiMTEzZGZhMzdiNmE3MDAiLCI2M3g2MyI6IjY1YjM2YmFlMzM1ZjJhNDZlNjk2OTRhZmEzMzgxMDAwIiwiMTAweDEwMCI6ImU1NDBmMzc5NTA2OTExNTcxMjZjNWRiODlmMDRiOTAwIn19XQ==', '0', 'module', 18, 'module_ltm-lr', 'c', '', 'c', '', 78),
('P.E.T.10', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MX0sImdlbmVyYXRvcnMiOnsiVCI6WzRdLCJRIjoyfSwiZ2VhcnMiOnsiVCI6WzE5XSwiUSI6MX0sInByb3RvY29scyI6eyJUIjpbMjBdLCJRIjoyfX0sImNkbiI6eyIzMHgzMCI6IjY0ZDM3ZjM5ZTZhZmM5Y2NmZDNmYWQyMjFhM2YxYTAwIiwiNjN4NjMiOiI5MTRmN2RhMGU1MDM5M2RkNWFjZjI0NzAwMWYyMjUwMCIsIjEwMHgxMDAiOiJlOGJiZDhlOTU3OTMzY2FmMTAyMDBjOGFlNDIyYjQwMCJ9fSx7InNsb3RzZXRzIjp7Imxhc2VycyI6eyJUIjpbMF0sIlEiOjJ9LCJnZW5lcmF0b3JzIjp7IlQiOls0XSwiUSI6M30sImdlYXJzIjp7IlQiOlsxOV0sIlEiOjJ9LCJwcm90b2NvbHMiOnsiVCI6WzIwXSwiUSI6M319LCJjZG4iOnsiMzB4MzAiOiI2NGQzN2YzOWU2YWZjOWNjZmQzZmFkMjIxYTNmMWEwMCIsIjYzeDYzIjoiOTE0ZjdkYTBlNTAzOTNkZDVhY2YyNDcwMDFmMjI1MDAiLCIxMDB4MTAwIjoiZThiYmQ4ZTk1NzkzM2NhZjEwMjAwYzhhZTQyMmI0MDAifX0seyJzbG90c2V0cyI6eyJsYXNlcnMiOnsiVCI6WzBdLCJRIjoyfSwiZ2VuZXJhdG9ycyI6eyJUIjpbNF0sIlEiOjR9LCJnZWFycyI6eyJUIjpbMTldLCJRIjoyfSwicHJvdG9jb2xzIjp7IlQiOlsyMF0sIlEiOjR9fSwiY2RuIjp7IjMweDMwIjoiNjRkMzdmMzllNmFmYzljY2ZkM2ZhZDIyMWEzZjFhMDAiLCI2M3g2MyI6IjkxNGY3ZGEwZTUwMzkzZGQ1YWNmMjQ3MDAxZjIyNTAwIiwiMTAweDEwMCI6ImU4YmJkOGU5NTc5MzNjYWYxMDIwMGM4YWU0MjJiNDAwIn19LHsic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6M30sImdlbmVyYXRvcnMiOnsiVCI6WzRdLCJRIjo1fSwiZ2VhcnMiOnsiVCI6WzE5XSwiUSI6M30sInByb3RvY29scyI6eyJUIjpbMjBdLCJRIjo1fX0sImNkbiI6eyIzMHgzMCI6IjY0ZDM3ZjM5ZTZhZmM5Y2NmZDNmYWQyMjFhM2YxYTAwIiwiNjN4NjMiOiI5MTRmN2RhMGU1MDM5M2RkNWFjZjI0NzAwMWYyMjUwMCIsIjEwMHgxMDAiOiJlOGJiZDhlOTU3OTMzY2FmMTAyMDBjOGFlNDIyYjQwMCJ9fSx7InNsb3RzZXRzIjp7Imxhc2VycyI6eyJUIjpbMF0sIlEiOjN9LCJnZW5lcmF0b3JzIjp7IlQiOls0XSwiUSI6Nn0sImdlYXJzIjp7IlQiOlsxOV0sIlEiOjN9LCJwcm90b2NvbHMiOnsiVCI6WzIwXSwiUSI6Nn19LCJjZG4iOnsiMzB4MzAiOiI2NGQzN2YzOWU2YWZjOWNjZmQzZmFkMjIxYTNmMWEwMCIsIjYzeDYzIjoiOTE0ZjdkYTBlNTAzOTNkZDVhY2YyNDcwMDFmMjI1MDAiLCIxMDB4MTAwIjoiZThiYmQ4ZTk1NzkzM2NhZjEwMjAwYzhhZTQyMmI0MDAifX0seyJzbG90c2V0cyI6eyJsYXNlcnMiOnsiVCI6WzBdLCJRIjo0fSwiZ2VuZXJhdG9ycyI6eyJUIjpbNF0sIlEiOjd9LCJnZWFycyI6eyJUIjpbMTldLCJRIjo0fSwicHJvdG9jb2xzIjp7IlQiOlsyMF0sIlEiOjd9fSwiY2RuIjp7IjMweDMwIjoiNjRkMzdmMzllNmFmYzljY2ZkM2ZhZDIyMWEzZjFhMDAiLCI2M3g2MyI6IjkxNGY3ZGEwZTUwMzkzZGQ1YWNmMjQ3MDAxZjIyNTAwIiwiMTAweDEwMCI6ImU4YmJkOGU5NTc5MzNjYWYxMDIwMGM4YWU0MjJiNDAwIn19LHsic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6NH0sImdlbmVyYXRvcnMiOnsiVCI6WzRdLCJRIjo4fSwiZ2VhcnMiOnsiVCI6WzE5XSwiUSI6NH0sInByb3RvY29scyI6eyJUIjpbMjBdLCJRIjo4fX0sImNkbiI6eyIzMHgzMCI6IjY0ZDM3ZjM5ZTZhZmM5Y2NmZDNmYWQyMjFhM2YxYTAwIiwiNjN4NjMiOiI5MTRmN2RhMGU1MDM5M2RkNWFjZjI0NzAwMWYyMjUwMCIsIjEwMHgxMDAiOiJlOGJiZDhlOTU3OTMzY2FmMTAyMDBjOGFlNDIyYjQwMCJ9fSx7InNsb3RzZXRzIjp7Imxhc2VycyI6eyJUIjpbMF0sIlEiOjV9LCJnZW5lcmF0b3JzIjp7IlQiOls0XSwiUSI6OX0sImdlYXJzIjp7IlQiOlsxOV0sIlEiOjV9LCJwcm90b2NvbHMiOnsiVCI6WzIwXSwiUSI6OX19LCJjZG4iOnsiMzB4MzAiOiI2NGQzN2YzOWU2YWZjOWNjZmQzZmFkMjIxYTNmMWEwMCIsIjYzeDYzIjoiOTE0ZjdkYTBlNTAzOTNkZDVhY2YyNDcwMDFmMjI1MDAiLCIxMDB4MTAwIjoiZThiYmQ4ZTk1NzkzM2NhZjEwMjAwYzhhZTQyMmI0MDAifX0seyJzbG90c2V0cyI6eyJsYXNlcnMiOnsiVCI6WzBdLCJRIjo1fSwiZ2VuZXJhdG9ycyI6eyJUIjpbNF0sIlEiOjEwfSwiZ2VhcnMiOnsiVCI6WzE5XSwiUSI6NX0sInByb3RvY29scyI6eyJUIjpbMjBdLCJRIjoxMH19LCJjZG4iOnsiMzB4MzAiOiI2NGQzN2YzOWU2YWZjOWNjZmQzZmFkMjIxYTNmMWEwMCIsIjYzeDYzIjoiOTE0ZjdkYTBlNTAzOTNkZDVhY2YyNDcwMDFmMjI1MDAiLCIxMDB4MTAwIjoiZThiYmQ4ZTk1NzkzM2NhZjEwMjAwYzhhZTQyMmI0MDAifX0seyJzbG90c2V0cyI6eyJsYXNlcnMiOnsiVCI6WzBdLCJRIjo2fSwiZ2VuZXJhdG9ycyI6eyJUIjpbNF0sIlEiOjExfSwiZ2VhcnMiOnsiVCI6WzE5XSwiUSI6Nn0sInByb3RvY29scyI6eyJUIjpbMjBdLCJRIjoxMX19LCJjZG4iOnsiMzB4MzAiOiI2NGQzN2YzOWU2YWZjOWNjZmQzZmFkMjIxYTNmMWEwMCIsIjYzeDYzIjoiOTE0ZjdkYTBlNTAzOTNkZDVhY2YyNDcwMDFmMjI1MDAiLCIxMDB4MTAwIjoiZThiYmQ4ZTk1NzkzM2NhZjEwMjAwYzhhZTQyMmI0MDAifX0seyJzbG90c2V0cyI6eyJsYXNlcnMiOnsiVCI6WzBdLCJRIjo2fSwiZ2VuZXJhdG9ycyI6eyJUIjpbNF0sIlEiOjEyfSwiZ2VhcnMiOnsiVCI6WzE5XSwiUSI6Nn0sInByb3RvY29scyI6eyJUIjpbMjBdLCJRIjoxMn19LCJjZG4iOnsiMzB4MzAiOiI2NGQzN2YzOWU2YWZjOWNjZmQzZmFkMjIxYTNmMWEwMCIsIjYzeDYzIjoiOTE0ZjdkYTBlNTAzOTNkZDVhY2YyNDcwMDFmMjI1MDAiLCIxMDB4MTAwIjoiZThiYmQ4ZTk1NzkzM2NhZjEwMjAwYzhhZTQyMmI0MDAifX0seyJzbG90c2V0cyI6eyJsYXNlcnMiOnsiVCI6WzBdLCJRIjo3fSwiZ2VuZXJhdG9ycyI6eyJUIjpbNF0sIlEiOjEzfSwiZ2VhcnMiOnsiVCI6WzE5XSwiUSI6Nn0sInByb3RvY29scyI6eyJUIjpbMjBdLCJRIjoxMn19LCJjZG4iOnsiMzB4MzAiOiI2NGQzN2YzOWU2YWZjOWNjZmQzZmFkMjIxYTNmMWEwMCIsIjYzeDYzIjoiOTE0ZjdkYTBlNTAzOTNkZDVhY2YyNDcwMDFmMjI1MDAiLCIxMDB4MTAwIjoiZThiYmQ4ZTk1NzkzM2NhZjEwMjAwYzhhZTQyMmI0MDAifX0seyJzbG90c2V0cyI6eyJsYXNlcnMiOnsiVCI6WzBdLCJRIjo3fSwiZ2VuZXJhdG9ycyI6eyJUIjpbNF0sIlEiOjE0fSwiZ2VhcnMiOnsiVCI6WzE5XSwiUSI6Nn0sInByb3RvY29scyI6eyJUIjpbMjBdLCJRIjoxMn19LCJjZG4iOnsiMzB4MzAiOiI2NGQzN2YzOWU2YWZjOWNjZmQzZmFkMjIxYTNmMWEwMCIsIjYzeDYzIjoiOTE0ZjdkYTBlNTAzOTNkZDVhY2YyNDcwMDFmMjI1MDAiLCIxMDB4MTAwIjoiZThiYmQ4ZTk1NzkzM2NhZjEwMjAwYzhhZTQyMmI0MDAifX0seyJzbG90c2V0cyI6eyJsYXNlcnMiOnsiVCI6WzBdLCJRIjo4fSwiZ2VuZXJhdG9ycyI6eyJUIjpbNF0sIlEiOjE1fSwiZ2VhcnMiOnsiVCI6WzE5XSwiUSI6Nn0sInByb3RvY29scyI6eyJUIjpbMjBdLCJRIjoxMn19LCJjZG4iOnsiMzB4MzAiOiI2NGQzN2YzOWU2YWZjOWNjZmQzZmFkMjIxYTNmMWEwMCIsIjYzeDYzIjoiOTE0ZjdkYTBlNTAzOTNkZDVhY2YyNDcwMDFmMjI1MDAiLCIxMDB4MTAwIjoiZThiYmQ4ZTk1NzkzM2NhZjEwMjAwYzhhZTQyMmI0MDAifX0seyJzbG90c2V0cyI6eyJsYXNlcnMiOnsiVCI6WzBdLCJRIjo5fSwiZ2VuZXJhdG9ycyI6eyJUIjpbNF0sIlEiOjE2fSwiZ2VhcnMiOnsiVCI6WzE5XSwiUSI6Nn0sInByb3RvY29scyI6eyJUIjpbMjBdLCJRIjoxMn19LCJjZG4iOnsiMzB4MzAiOiI2NGQzN2YzOWU2YWZjOWNjZmQzZmFkMjIxYTNmMWEwMCIsIjYzeDYzIjoiOTE0ZjdkYTBlNTAzOTNkZDVhY2YyNDcwMDFmMjI1MDAiLCIxMDB4MTAwIjoiZThiYmQ4ZTk1NzkzM2NhZjEwMjAwYzhhZTQyMmI0MDAifX0seyJzbG90c2V0cyI6eyJsYXNlcnMiOnsiVCI6WzBdLCJRIjoxMH0sImdlbmVyYXRvcnMiOnsiVCI6WzRdLCJRIjoxN30sImdlYXJzIjp7IlQiOlsxOV0sIlEiOjZ9LCJwcm90b2NvbHMiOnsiVCI6WzIwXSwiUSI6MTJ9fSwiY2RuIjp7IjMweDMwIjoiNjRkMzdmMzllNmFmYzljY2ZkM2ZhZDIyMWEzZjFhMDAiLCI2M3g2MyI6IjkxNGY3ZGEwZTUwMzkzZGQ1YWNmMjQ3MDAxZjIyNTAwIiwiMTAweDEwMCI6ImU4YmJkOGU5NTc5MzNjYWYxMDIwMGM4YWU0MjJiNDAwIn19XQ==', 'eyJyZW5hbWUiOjMwMDAsImNvc3RXZWFwb25TbG90IjpbIjAiLCIzMDAwIiwiNTAwMCIsIjcwMDAiLCIxMTAwMCIsIjE0MDAwIiwiMTkwMDAiLCIyMzAwMCIsIjI5MDAwIiwiMzQwMDAiLCI0MDAwMCIsIjQ4MDAwIiwiNTIwMDAiLCI1ODAwMCIsIjY0MDAwIiwiNzAwMDAiXSwiY29zdEdlbmVyYXRvclNsb3QiOlsiMCIsIjMwMDAiLCI1MDAwIiwiNzAwMCIsIjExMDAwIiwiMTQwMDAiLCIxOTAwMCIsIjIzMDAwIiwiMjkwMDAiLCIzNDAwMCIsIjQwMDAwIiwiNDgwMDAiLCI1MjAwMCIsIjU4MDAwIiwiNjQwMDAiLCI3MDAwMCJdLCJjb3N0R2VhclNsb3QiOlsiMCIsIjEwMDAwIiwiMjAwMDAiLCIzMDAwMCIsIjQwMDAwIiwiNTAwMDAiLCIiLCIiLCIiLCIiLCIiLCIiLCIiLCIiLCIiLCIiXSwiY29zdFByb3RvY29sU2xvdCI6WyIwIiwiMzAwMCIsIjUwMDAiLCI3MDAwIiwiMTEwMDAiLCIxNDAwMCIsIjE5MDAwIiwiMjMwMDAiLCIyOTAwMCIsIjM0MDAwIiwiNDAwMDAiLCI0ODAwMCIsIjUyMDAwIiwiNTgwMDAiLCI2NDAwMCIsIjcwMDAwIl19', 'petGear', 23, 'pet_pet10', 'u', '50000', 'c', '', 79),
('Revenge', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTB9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxMH0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6Mn19LCJjZG4iOnsiMzB4MzAiOiJhZDIzZmNlMmU2ZjQxNWJiNzMzYjE3OTFkYTFiMTgwMCIsIjYzeDYzIjoiM2Y0N2JmMDA5OTk2OWQ2M2M3MDZhZjU5MjkxNGZiMDAiLCIxMDB4MTAwIjoiZTlhOGNhNDZkZWJjYWFhOTljNTMzYWMzYTY3Mjg5MDAiLCJ0b3AiOiI0ZjJkNmVjMjNmZjgwNjYyMTA1NmM5ZThlODcyM2EwMCJ9fV0=', '0', 'ship', 21, 'ship_vengeance_design_revenge', 'u', '100000', 'c', '', 80),
('Avenger', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTB9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxMH0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6Mn19LCJjZG4iOnsiMzB4MzAiOiI0OTkwOTM2ZTQ4MmExN2M1MWQ1NzZjMmRkMmY2NWYwMCIsIjYzeDYzIjoiYmZiZGQ0ODBmMzRlMGE4N2EzZmJiMzI5ZjQ4ZWY2MDAiLCIxMDB4MTAwIjoiNTUyNWRlMjkxMWZiYjMxYzFiN2Q2YWRlMDg5ZjBmMDAiLCJ0b3AiOiJiZGUwODE2ODMzNmM3NTIzYzI1YmE5NDIwOGUzYTMwMCJ9fV0=', '0', 'ship', 21, 'ship_vengeance_design_avenger', 'u', '100000', 'c', '', 81),
('Adept', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTB9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxMH0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6Mn19LCJjZG4iOnsiMzB4MzAiOiJmZDBjYmRlOGU0N2NkOTQwZGU5OWVhNjI2YTNmYjEwMCIsIjYzeDYzIjoiMjVhMTE5ZDFhNzU3NzY3MTAzOTY4NmU1YjIxMzdjMDAiLCIxMDB4MTAwIjoiNzBlMDg3ZTAyMjY0Mjk2YWU4YTE4YjEzYzk0MjExMDAiLCJ0b3AiOiJkYjRjNDY4NTc1MzY0YzAyOWM5NDExMDNiNTU5YjgwMCJ9fV0=', '0', 'ship', 21, 'ship_vengeance_design_adept', 'u', '100000', 'c', '', 82),
('Corsair', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTB9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxMH0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6Mn19LCJjZG4iOnsiMzB4MzAiOiI4NTBkNWMyOTU3Mzk5MGRmYWM5ZGQ0OWYzMGI3NTcwMCIsIjYzeDYzIjoiNTNiYzgwMWZhOGNlMzExOThmNjJmZWU4OWYwZWI5MDAiLCIxMDB4MTAwIjoiZmRiNWQ3NmZlYzc3OGFiOTMzNTExYWY1YzQ1YThlMDAiLCJ0b3AiOiI4YTI3NmNjNGU0ODJlNDJjMzZlN2IwYWMxMDFkZTIwMCJ9fV0=', '0', 'ship', 21, 'ship_vengeance_design_corsair', 'u', '100000', 'c', '', 83),
('Vengeance', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTB9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxMH0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6Mn19LCJzZWxsaW5nIjp7ImNyZWRpdHMiOjc1MDAwfSwiY2RuIjp7IjYzeDYzIjoiYjg2YzdlM2ZkZDMwNzU3OTE1NTExNjc4ODc4MmMxMDAiLCIxMDB4MTAwIjoiMGM1NGRlNDU4YzQzNDI0YjgwNGIxNTUwNjgyNjU2MDAiLCJ0b3AiOiJlMTg3NTc1ZjgxOGI5MzAwNWQyY2YzYzY5M2Q1ZDYwMCJ9fV0=', '0', 'ship', 22, 'ship_vengeance', 'u', '30000', 'c', '', 84),
('Seprom', 'W3siY2RuIjp7IjMweDMwIjoiOGJkNTM0ZTU1ZTM1MDI4MTk2MzUyNmYyNTZhMTNmMDAiLCI2M3g2MyI6ImE4ZDA4NTM3MzNlYmM5ZjM2MTQxZDg2YzJlMzU0OTAwIn19XQ==', '0', 'ship', 15, 'resource_ore_seprom', 'c', '', 'c', '', 85),
('Armory Upgrade 3', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo1MDAwMH0sImNkbiI6eyIzMHgzMCI6IjE3MTk5Y2JlMDRhZGVmYzkxNWE1ZDIzZDg4OWNkODAwIiwiNjN4NjMiOiIwOTQ1NzJhM2QyMzU0ZTY4Zjk5YmY1NWE0MWZjNzMwMCIsIjEwMHgxMDAiOiI3MGUxZDZlMWRlNzViN2RiMzRiYjg4NTkzODJhMjYwMCJ9fV0=', '0', 'special', 10, 'equipment_extra_cpu_g3x-amry-l', 'u', '20000', 'c', '50000', 86),
('Radar CPU', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjozNzUwMH0sImNkbiI6eyIzMHgzMCI6IjM4NDYwZWZlZmRmNzgxNjkyYWNhYzZmZjEwZmM1OTAwIiwiNjN4NjMiOiI3ODQ5ZGNjMmZlZjAzMzI2OWMyZDM0NzNjYTUyMjMwMCIsIjEwMHgxMDAiOiI1OTdjMmYzMDc1YzZhMDQ1M2JhZTdkZDE5MDJkZGEwMCJ9fV0=', '0', 'special', 7, 'equipment_extra_cpu_rd-x', 'u', '15000', 'c', '37500', 87),
('Drone repair CPU 2', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjozNzUwMH0sImNkbiI6eyIzMHgzMCI6IjRmZjdiNjJjNDUxMzNhNWEwYWZhMWMzZmExNGE3MTAwIiwiNjN4NjMiOiIwN2ZlOGJjN2FhYmNmZjVlN2ExNDZmNmFmYWFlNTYwMCIsIjEwMHgxMDAiOiIyY2QyZWU5OWNmYTdlODAzNDI0Nzg2ZDlkYjU1MTkwMCJ9fV0=', '0', 'special', 7, 'equipment_extra_cpu_dr-02', 'u', '15000', 'c', '37500', 88),
('Palladium', 'W3siY2RuIjp7IjMweDMwIjoiNzM5ZDMxNjk0Y2Y0YWRiM2VmYzkzZmY3MmQ1MTZkMDAiLCI2M3g2MyI6IjEyNjUyMTczNTZkNmRkYTU1MmQyNDM1NDg5N2FmYzAwIn19XQ==', '0', 'ship', 15, 'resource_ore_palladium', 'c', '', 'c', '', 89),
('Generator Update CPU 1', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjozNzUwMH0sImNkbiI6eyIzMHgzMCI6IjBlYzRiMWJiNDBhNzhkNTdlZDBiM2ZjNWE4MTI3ZTAwIiwiNjN4NjMiOiI4ZjY2NzY2MmJkOWE5MTljY2QxODI5YzBkYTEwYjcwMCIsIjEwMHgxMDAiOiIwYTYyMDM5ODVmNGJhYWNkYmE0MTllNjhkYWVmOTcwMCJ9fV0=', '0', 'special', 7, 'equipment_extra_cpu_nc-agb-x', 'u', '15000', 'c', '37500', 90),
('Laboratory CPU 1', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoyNTAwMH0sImNkbiI6eyIzMHgzMCI6ImFiMzVhYWQ3NDliMjM2ZDQ5NzVhOTc3MTEwZmYxNDAwIiwiNjN4NjMiOiJlYzFjN2FhZTkzMGQzMDkzNmZkZWI5NTRiMWJjMjAwMCIsIjEwMHgxMDAiOiJiNGRmMzJiNjEwNjgyMzE0MzA2MzE2YzA2ZWVkMjYwMCJ9fV0=', '0', 'special', 7, 'equipment_extra_cpu_nc-awb-x', 'u', '10000', 'c', '25000', 91),
('Mines-Turbo CPU 2', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo2MjUwMH0sImNkbiI6eyIzMHgzMCI6ImY3ZThkNTRkZDNjMTc1OTEwODRjNGJmMWYyODU0MTAwIiwiNjN4NjMiOiI2ZGY2NjAwZjgwMWMwMmZmYTY1ODgyNTYwNDExOGYwMCIsIjEwMHgxMDAiOiJlMjliMDVlZWI4MTUyYzA2MWEwMmY0MjVjNjZhNzQwMCJ9fV0=', '0', 'special', 7, 'equipment_extra_cpu_min-t02', 'u', '25000', 'c', '62500', 92),
('F-11-HE', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjozMDAwMDB9LCJjZG4iOnsiMzB4MzAiOiJjNDYzYzRjZDEyMGIwMzQ4MjZmZTUwOWM5ZTY1ZmIwMCIsIjYzeDYzIjoiNzZmMjcwM2RjMTMzMDBlMDFjODBhMDU0YjI5NzI3MDAiLCIxMDB4MTAwIjoiZDJlNTMwZTZjZTJhMGUxODdjNmVjYjBmZDcxNDgxMDAifX1d', '0', 'drone', 17, 'drone_formation_f-11-he', 'c', '', 'c', '', 93),
('Smartbomb CPU 1', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoxMjUwMDB9LCJjZG4iOnsiMzB4MzAiOiIwMDVhMDI1N2VlYzU2MjViMDc1OTllZGRjYzFiODcwMCIsIjYzeDYzIjoiOTkxNWMyM2Y3YjU2Y2EwNTM4OGFmYzJhMGRjMWI5MDAiLCIxMDB4MTAwIjoiYWQ3ZTdmZjQ1ZjU2NDI5M2RjYWMwNmI4NzhlNTdiMDAifX1d', '0', 'special', 7, 'equipment_extra_cpu_smb-01', 'u', '50000', 'c', '125000', 94),
('Flax Drone', 'W3sic2xvdHNldHMiOnsiZGVmYXVsdCI6eyJUIjpbMCw0XSwiUSI6MX0sImRlc2lnbiI6eyJUIjpbMTZdLCJRIjoxfX0sInNlbGxpbmciOnsiY3JlZGl0cyI6MTAwMDAwfSwiY2RuIjp7IjMweDMwIjoiNjQyZjZiZTM3MDgzMmVkM2IyMTNjYjg0MjA0NzVjMDAiLCI2M3g2MyI6IjdkZGFiZmY1ODY1ZjRjMDc0ZTgzNjRhMjg3NTNiOTAwIiwiMTAweDEwMCI6ImJhNWE4N2ZkZmIyOTZkYWFkNmI2MGE4NTY1NTVmMjAwIiwidG9wIjoiZWY3MjM0NGYzMzBkYjBlMzJlY2E4ZDJiNDNhMzdiMDAifX0seyJzbG90c2V0cyI6eyJkZWZhdWx0Ijp7IlQiOlswLDRdLCJRIjoxfSwiZGVzaWduIjp7IlQiOlsxNl0sIlEiOjF9fSwic2VsbGluZyI6eyJjcmVkaXRzIjoxMDAwMDB9LCJjZG4iOnsiMzB4MzAiOiIzNDFmODRjZjU0MjEwNDdlZjdmN2Y2ZGQ4MjIxYWMwMCIsIjYzeDYzIjoiMjg1YmEwZWRhOGQ5YmQ5NzAwNTY5YjQxYzEzNTM4MDAiLCIxMDB4MTAwIjoiOTMwYTRmNzhiNTIyYzYxZjNkNjQwYWQ4MGZkOTg0MDAiLCJ0b3AiOiJjMjVhMmJiYmE4YjA4ODg1YTRkMTE2Y2VhYjYyMDEwMCJ9fSx7InNsb3RzZXRzIjp7ImRlZmF1bHQiOnsiVCI6WzAsNF0sIlEiOjF9LCJkZXNpZ24iOnsiVCI6WzE2XSwiUSI6MX19LCJzZWxsaW5nIjp7ImNyZWRpdHMiOjEwMDAwMH0sImNkbiI6eyIzMHgzMCI6ImJiZTRlODRlNTRhYTMyMThlZjYxYzVlODg2OTJhZTAwIiwiNjN4NjMiOiI0Yjc3MWRkZjU2MzVjNjU4MzYyODdlM2M1OTY0MWYwMCIsIjEwMHgxMDAiOiJjNDljNzBmZjhiODA3NWU3MTAyZTU1NTUwNWYwNTkwMCIsInRvcCI6IjRmNTkwZWUyZWU1ODdkNGRmOWU0MTcyOWY2M2YwOTAwIn19LHsic2xvdHNldHMiOnsiZGVmYXVsdCI6eyJUIjpbMCw0XSwiUSI6MX0sImRlc2lnbiI6eyJUIjpbMTZdLCJRIjoxfX0sInNlbGxpbmciOnsiY3JlZGl0cyI6MTAwMDAwfSwiY2RuIjp7IjMweDMwIjoiYjRkNzYxN2IyMzI4YmQyNmE4NzhiYTUzNGE4MjI1MDAiLCI2M3g2MyI6ImIzOGEwYTU1NWYzZGY2ODJiZDg2ZTY4ZGVjOTMzNzAwIiwiMTAweDEwMCI6IjFlMDdjNjIzZDIyZjU0YTY3NzhkODE2Yzc3ZjNlODAwIiwidG9wIjoiYTNjZDBhOGRmN2ZkYjA0NWUzZjllYjY1NmRjNDc3MDAifX0seyJzbG90c2V0cyI6eyJkZWZhdWx0Ijp7IlQiOlswLDRdLCJRIjoxfSwiZGVzaWduIjp7IlQiOlsxNl0sIlEiOjF9fSwic2VsbGluZyI6eyJjcmVkaXRzIjoxMDAwMDB9LCJjZG4iOnsiMzB4MzAiOiJkOGUxNzg4YzIwZDkwY2FkY2ZhODFlY2Y2ZDlhOWUwMCIsIjYzeDYzIjoiMDA0NDM5MTg2ODAxZTMxOTZiYjdjMGZjNDExYTcwMDAiLCIxMDB4MTAwIjoiNTY1NWJlNmUyZDU4MjIwNjBlMjYyNDY1YWZlNTY1MDAiLCJ0b3AiOiI5ZDg1NTUyY2NiOTAwNTZhNjVjMTVkYmE3MTE3OWUwMCJ9fSx7InNsb3RzZXRzIjp7ImRlZmF1bHQiOnsiVCI6WzAsNF0sIlEiOjF9LCJkZXNpZ24iOnsiVCI6WzE2XSwiUSI6MX19LCJzZWxsaW5nIjp7ImNyZWRpdHMiOjEwMDAwMH0sImNkbiI6eyIzMHgzMCI6IjlmMzliZWU3ZDkwZmVlOTViZWUwMDA3MGYyOWJjOTAwIiwiNjN4NjMiOiI2YjM2Mjc1ZGE1Y2IyMWY1MDExYzdhNjc4ZjFlNzAwMCIsIjEwMHgxMDAiOiJkZDdiZWY4MzFiZTRmMTIyMzBiYTA0YmVmYTcyNTkwMCIsInRvcCI6IjQwOWZiZmNjM2NiYzM0ZGVlNGUxY2I1YjZlZTk0NjAwIn19XQ==', '0', 'drone', 23, 'drone_flax', 'c', '100000', 'c', '50000', 95),
('SG3N-A01', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo0MDAwfSwiY2RuIjp7IjMweDMwIjoiOGMwYjc0YmYwY2M0M2M1OGZiMzllNmQ0OGM0OTUwMDAiLCI2M3g2MyI6ImQyZmMxZDJhODBmM2VmNDM3NmM5YjYzMTQ1YjEwYzAwIiwiMTAweDEwMCI6IjE5MjI4YmE4MWIzODc1ODNhNjNlZDhjOWE5NDY1NDAwIn19XQ==', '0', 'generator', 4, 'equipment_generator_shield_sg3n-a01', 'c', '8000', 'c', '4000', 96),
('Repair Robot Basic', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjozNzUwfSwiY2RuIjp7IjMweDMwIjoiNjUxMmY2Y2Y4ZThkNDBmZjI1YzczYjBjMjI1ZTU1MDAiLCI2M3g2MyI6ImM4MmY3MDcxMGI5N2ZjMDU0MTBiYjUzYjZiOGU3NDAwIiwiMTAweDEwMCI6ImQ0NzQ0NzdiYTVkNjZkN2YzMjU1ZmIxMDY4ZWVlYTAwIn19XQ==', '0', 'special', 9, 'equipment_extra_repbot_rep-s', 'c', '1000', 'c', '500', 97),
('Prometium', 'W3siY2RuIjp7IjMweDMwIjoiM2RmZDNlZDk3ZDRmNWIwMzlkODFhYTNkMGJhM2NkMDAiLCI2M3g2MyI6ImNlYTFkODk5NjY3NTgzNzIyNDA5NzQxYjlhYjViNDAwIn19XQ==', '0', 'ship', 15, 'resource_ore_prometium', 'c', '', 'c', '', 98),
('Endurium', 'W3siY2RuIjp7IjMweDMwIjoiYTU0ODFjODI0NmU4M2E4Mjk4OGRiNjIzZTNlNTMxMDAiLCI2M3g2MyI6IjQ1OGZjMjBhYTM2NWNmNDYwMzJlYzc0OGZhMTQzNTAwIn19XQ==', '0', 'ship', 15, 'resource_ore_endurium', 'c', '', 'c', '', 99),
('Terbium', 'W3siY2RuIjp7IjMweDMwIjoiZTk3M2NhMjg5NjBjOWYzMTA5MWMwOGNjNTcxNTdlMDAiLCI2M3g2MyI6IjZjMmZiMDFlMGYzZTUxYTNlZDI5NjVkNjNhNzA3OTAwIn19XQ==', '0', 'ship', 15, 'resource_ore_terbium', 'c', '', 'c', '', 100),
('Promerium', 'W3siY2RuIjp7IjMweDMwIjoiZTgxNDExMzI3N2I2MjYwNjE4ZTRhYjU5NjllMjBhMDAiLCI2M3g2MyI6IjBiMjQ0MjE0ODIyZWVlMzY4MjQ1YjI5NDBlMWI1MzAwIn19XQ==', '0', 'ship', 15, 'resource_ore_promerium', 'c', '', 'c', '', 101),
('Prometid', 'W3siY2RuIjp7IjMweDMwIjoiZGY1MzVlMWQ5ZGQxZGVhYmNmZjE2ZDdhNGZkYjJmMDAiLCI2M3g2MyI6IjFlOGRiZjI5NTVkZjY1MTNhMTcyYTI4YjU3ZmJjODAwIn19XQ==', '0', 'ship', 15, 'resource_ore_prometid', 'c', '', 'c', '', 102),
('Duranium', 'W3siY2RuIjp7IjMweDMwIjoiNmJiNmYwNjhkZWZmN2I0ZDdmMzExZTgyY2RhNWY2MDAiLCI2M3g2MyI6IjBjMDI3ZTFlNDI5OWI4ZjZiY2EwNzJhMTNhNGI4MzAwIn19XQ==', '0', 'ship', 15, 'resource_ore_duranium', 'c', '', 'c', '', 103),
('Phoenix', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MX0sImdlbmVyYXRvcnMiOnsiVCI6WzMsNF0sIlEiOjF9LCJoZWF2eV9ndW5zIjp7IlQiOlsxXSwiUSI6MX0sImV4dHJhcyI6eyJUIjpbMTEsOSw3LDgsMTAsNl0sIlEiOjF9fSwic2VsbGluZyI6eyJjcmVkaXRzIjowfSwiY2RuIjp7IjYzeDYzIjoiY2Q4ZjY0MzQwYzU4ZmYzNDQyYmJkMWU3YWU3MTU1MDAiLCIxMDB4MTAwIjoiYzhmZGFiM2VkMDkxNTk1ZTVhNGQxMjJlZjMzZWVlMDAiLCJ0b3AiOiJjOTZmODBmNTNkMzAxMGRkYmRmYTVmODhhZDJkNGUwMCJ9fV0=', '0', 'ship', 22, 'ship_phoenix', 'c', '0', 'c', '0', 104),
('Spearhead Elite', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6NX0sImdlbmVyYXRvcnMiOnsiVCI6WzMsNF0sIlEiOjEyfSwiaGVhdnlfZ3VucyI6eyJUIjpbMV0sIlEiOjF9LCJleHRyYXMiOnsiVCI6WzExLDksNyw4LDEwLDZdLCJRIjoyfX0sInNlbGxpbmciOnsiY3JlZGl0cyI6MTEyNTAwfSwiY2RuIjp7IjYzeDYzIjoiNGI4ODZiNjJjNmVkYTUzNGI4NzAxY2ZkMGM1ZTMyMDAiLCIxMDB4MTAwIjoiZGYxZjQ2MzE1YTkwYTUwM2U4NWEwMWIyMmM2MzM2MDAiLCJ0b3AiOiJkOWZhMzViOWFhY2JmNGQ5ODQ1NjQwNzAwMDNhNjUwMCJ9fV0=', '0', 'ship', 21, 'ship_spearhead_design_spearhead-superelite', 'u', '200000', 'c', '', 105),
('LF-1', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo1MDAwfSwiY2RuIjp7IjMweDMwIjoiMzhiNmU3YWM1NjYzOTJhNDJiNTA1OGI5NTc4Nzc0MDAiLCI2M3g2MyI6IjIxODQwYmM3MTYzYTViYTZiMjNhODQzYjAwYjM0NTAwIiwiMTAweDEwMCI6IjYzOTk2NzQyODk2YjU4NjQ3ZmNkNDhkZGEwNzllMzAwIn19XQ==', '0', 'laser', 0, 'equipment_weapon_laser_lf-1', 'c', '10000', 'c', '5000', 106),
('HST-1', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoyNTAwMDB9LCJjZG4iOnsiMzB4MzAiOiJiMGM3ZmQzNzAyMDc4MDU5MzQyMzVhNGE4NzczNWUwMCIsIjYzeDYzIjoiN2U2MWIxNzYyZTJiOTY2NzEzOTBlMGZmMzA1MjQ3MDAiLCIxMDB4MTAwIjoiNGQzYTRjM2ZjYzE4M2I4NmE1NDlkMDk5ZGU4MjQ4MDAifX1d', '0', 'laser', 1, 'equipment_weapon_rocketlauncher_hst-1', 'c', '500000', 'c', '250000', 107),
('G3N-1010', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoxMDAwfSwiY2RuIjp7IjMweDMwIjoiMDBlNTY3NDEzMGYxNDk0NGU3NDExZTU0NjI5NjAyMDAiLCI2M3g2MyI6ImMxODM2YjEzM2ZlZjI3NjIyMWRlZDAxNmQ2ZmU4ODAwIiwiMTAweDEwMCI6ImZhY2Q2MGQ1MmExNWJmNWY2MTdkZjRjMDgxM2Q1NDAwIn19XQ==', '0', 'generator', 3, 'equipment_generator_speed_g3n-1010', 'c', '2000', 'c', '1000', 108);
INSERT INTO `server_shop_items` (`name`, `levels`, `properties`, `C`, `type`, `lootId`, `ucd`, `buy`, `scd`, `sell`, `autoId`) VALUES
('G3N-2010', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoyMDAwfSwiY2RuIjp7IjMweDMwIjoiMjA1ZDY5MDEyODI3MTlkYjU1NzRlMjUxOTM1Y2Y4MDAiLCI2M3g2MyI6ImIxNDk3YjUxYzMyZmE5ZjM0OTQ1NTVkZWQ3Y2U1MTAwIiwiMTAweDEwMCI6IjdhOTQ5MjlhNjA4ZWQ1M2I5NWY2OGFjYjU5MjYyNjAwIn19XQ==', '0', 'generator', 3, 'equipment_generator_speed_g3n-2010', 'c', '4000', 'c', '2000', 109),
('G3N-3210', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo0MDAwfSwiY2RuIjp7IjMweDMwIjoiZjBiYjJkNDljNjlkYWYxYjcxMjU2MjNkNzhjMWI3MDAiLCI2M3g2MyI6IjRiYTkxNzc1ZjRlZGZlOGRmNzQwMzA3NmEyZTk2MDAwIiwiMTAweDEwMCI6IjY4NzhjZDI2Yjc1MjExY2YwYmJiMGMwNDY1YWM5ZDAwIn19XQ==', '0', 'generator', 3, 'equipment_generator_speed_g3n-3210', 'c', '8000', 'c', '4000', 110),
('G3N-3310', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo4MDAwfSwiY2RuIjp7IjMweDMwIjoiOWM3NjE5NjM3ZmUyZjRkYjA1N2EyNmE2OTNkZmNjMDAiLCI2M3g2MyI6IjM0MjQ5NmE1NjhhZWRlZDMzNTQzYzdiNTA4NTcwNzAwIiwiMTAweDEwMCI6IjdhNmYzNTQxMTM5ZDEyOWU3NmNmZmQ2ODYwOGI1NzAwIn19XQ==', '0', 'generator', 3, 'equipment_generator_speed_g3n-3310', 'c', '16000', 'c', '8000', 111),
('G3N-6900', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoyNTAwMH0sImNkbiI6eyIzMHgzMCI6IjQ2ODE2NGE3NjJiYjM3MmNmZDI0NTJjNWQ0MzYyZDAwIiwiNjN4NjMiOiJhODhjOTM0NWU2ZTNjNjQzM2EzMjJmMjZmMTE5OTEwMCIsIjEwMHgxMDAiOiIxZDAxNzc2MzhlNmU2NjNmMGVhMzYzMjBiOWRlMTYwMCJ9fV0=', '0', 'generator', 3, 'equipment_generator_speed_g3n-6900', 'u', '1000', 'c', '25000', 112),
('SG3N-A02', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo4MDAwfSwiY2RuIjp7IjMweDMwIjoiNmY4NTc3NWIyYjU1NjE2YTUzOGVmNjI4MjZiOGYzMDAiLCI2M3g2MyI6IjMxMTY1NGNkNjE4N2Y0ZDUwOWMzYTAzMjJlYTA5NTAwIiwiMTAweDEwMCI6IjQyYTVmNDAxMWVhZWQxODE4ZmVlY2Q4ODYzNmEzNzAwIn19XQ==', '0', 'generator', 4, 'equipment_generator_shield_sg3n-a02', 'c', '16000', 'c', '8000', 113),
('Repair Robot 1', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo1MDAwfSwiY2RuIjp7IjMweDMwIjoiOTdhZjMyNzUxNTg4Yjg0MzBmYWM5YjY5OWMxOWI2MDAiLCI2M3g2MyI6ImVkZjk3N2M4YWVlOGVhZTk1OTI3ZmEyYTZjZWNlZDAwIiwiMTAweDEwMCI6IjQwYmY5NzRkYTJiZDFjYTgyODAzNmE4NGJlYmYzOTAwIn19XQ==', '0', 'special', 9, 'equipment_extra_repbot_rep-1', 'c', '10000', 'c', '5000', 114),
('Repair Robot 2', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjozMjAwMH0sImNkbiI6eyIzMHgzMCI6Ijk3OTc3YmFjM2RkMGUzMWM1ZTE1OWRlYTAxNzM5NjAwIiwiNjN4NjMiOiI1ZWYxMjdhY2NmN2E3Yjg2ODVmZjkxOGU4MTJlMGQwMCIsIjEwMHgxMDAiOiI0Nzk3NDcyMDk2ZDFjZWFmN2FjZTNmYTViNTg3Y2YwMCJ9fV0=', '0', 'special', 9, 'equipment_extra_repbot_rep-2', 'u', '2000', 'c', '32000', 115),
('Laboratory CPU 2', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo3NTAwMH0sImNkbiI6eyIzMHgzMCI6Ijk5ODQ4YWFmMGFjMGYzODk3OGFhZTBhZTZhYWMzNTAwIiwiNjN4NjMiOiIzYzQ5NzM2NmIwMjI2MGFmNTBkYzRkYzIyYjI1NzIwMCIsIjEwMHgxMDAiOiJkZDRkOTVmMWUzNDhlMjdiYTUzYTZlZGY1ZjBhZTAwMCJ9fV0=', '0', 'special', 7, 'equipment_extra_cpu_nc-awr-x', 'c', '150000', 'c', '75000', 116),
('Laboratory CPU 3', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjozNzUwMH0sImNkbiI6eyIzMHgzMCI6IjdkZDNlYTY5MTU1ZTgzNWQ5ODM3NGM5OTc0ZGFiODAwIiwiNjN4NjMiOiIyYjFmM2I3NTk4NmQ4MjlkYjU0YTU1MjUxZTQxYjQwMCIsIjEwMHgxMDAiOiJhZTNmMDJmZDQ3YzY1MWUzNzgzZGM2MzNlZDhkOTYwMCJ9fV0=', '0', 'special', 7, 'equipment_extra_cpu_nc-awl-x', 'u', '15000', 'c', '37500', 117),
('Slot CPU 2', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjozNzUwMDB9LCJjZG4iOnsiMzB4MzAiOiI4MmFjZGU2ZWE1YTZiM2E4MmRkM2U4ZDI5MjUxZjYwMCIsIjYzeDYzIjoiOTU2YmJkNGIxZTc5ZWU1YzViMjEzZjUyOTNkMWQ2MDAiLCIxMDB4MTAwIjoiOTIyMGY5MGMxODc0ZWQ3ZDcxYjY5NmQzOGQxMmU2MDAifX1d', '0', 'special', 7, 'equipment_extra_cpu_sle-02', 'u', '75000', 'c', '375000', 118),
('Slot CPU 3', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo3NTAwMDB9LCJjZG4iOnsiMzB4MzAiOiJkMmQ0OGU5ZDBhNDBlMTlkNzY2YzM5ZjA0ZDA1ODAwMCIsIjYzeDYzIjoiNWYzMWYzMTJjZjUyMmU0MjU4ZWZmY2VmYjAwMjJjMDAiLCIxMDB4MTAwIjoiNDY3NmZiZjM4MzI5OTgxMzkwOTJlMzVjMGI2ZTgwMDAifX1d', '0', 'special', 7, 'equipment_extra_cpu_sle-03', 'u', '150000', 'c', '750000', 119),
('Targeting guidance CPU 2', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo1MDAwMDB9LCJjZG4iOnsiMzB4MzAiOiI0OGU4ZTQ2NjRiZThhNDhmNjYxNjI1MTEwZmQ1YTQwMCIsIjYzeDYzIjoiNzViMjgxZmIxYzg2Njc4MGQ2NWNiZjEyMTE4NmVjMDAiLCIxMDB4MTAwIjoiYjhkNWEwMmNmOGJkM2Y1MDgwMDA3NjE1MDQ4ZDBkMDAifX1d', '0', 'special', 7, 'equipment_extra_cpu_aim-02', 'u', '200000', 'c', '500000', 120),
('Cloak Module Typ A', 'W3siY2RuIjp7IjMweDMwIjoiZmY0YTgwMTY5MmQ3ZTc4Yjc1NDkxZGFhNWFmMjczMDAiLCI2M3g2MyI6IjRhODlmMzYxZjZjOTUwZDQ4MGZmZTg0MjE2NmU0ZDAwIiwiMTAweDEwMCI6IjU1NzlkNjExZTJmNTA1ZmQzMzE3YTRlZTRlNzBlZTAwIn19XQ==', '0', 'special', 8, 'equipment_extra_cpu_cl04k-xs', 'u', '500', 'c', '0', 121),
('Repair Robot 3', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoxMjUwMH0sImNkbiI6eyIzMHgzMCI6IjdlZTJiMDhkOWU3ZDFmYzRjZjg0YTBmM2Q3MGQ3NzAwIiwiNjN4NjMiOiJlMzdlNzFmY2I2MGUxNzRiMTAzYWEzOTc1MjJmODQwMCIsIjEwMHgxMDAiOiIzNDE3ZmI1M2MzNDkzZjFkOGJhZjY4YzcwZThkYTQwMCJ9fV0=', '0', 'special', 9, 'equipment_extra_repbot_rep-3', 'u', '5000', 'c', '12500', 122),
('Saturn', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTV9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxNX0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6M319LCJjZG4iOnsiMzB4MzAiOiIxMmY2NTIzYmY1OTBhNjZlOWQ2Y2ExMzQ4NDMzZDkwMCIsIjYzeDYzIjoiODRjNjM3NzJjNWQzYjMwNmFmNTIzMTM0ZTE4OTgyMDAiLCIxMDB4MTAwIjoiMmU5NDllYmE4MTc0NTNhMGYzYzFjZTcyZGU3ODEwMDAiLCJ0b3AiOiJiNzI5OTdlOTQ1MzAwZWViZDk3NjNlMWFkMTAzODcwMCJ9fV0=', '0', 'ship', 21, 'ship_goliath_design_saturn', 'x', '500000', 'c', '', 123),
('Police', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MjB9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoyMH0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoyfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6MTB9fSwic2VsbGluZyI6eyJjcmVkaXRzIjo5NzUwMDAwMH0sImNkbiI6eyI2M3g2MyI6ImJlNTkxN2JhZjEyZjk3MDBlZjUyZTg3M2MzZTI4MTAwIiwiMTAweDEwMCI6IjQ3MTBkOGNiMzI2NDc3OTgzOTg0MzY3NTBhMDdlODAwIiwidG9wIjoiOGVlZjU1MWE0ZDdiMjIyZmFjOTdlYjE0ZTU5YTgzMDAifX1d', '0', 'ship', 22, 'ship_police', 'x', '100000000000', 'c', '', 124),
('SAR-01', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo1MH0sImNkbiI6eyIzMHgzMCI6IjY2MjJjMmU4MzAwNDZmZjdjM2RmZWRkMmYxNWE0NDAwIiwiNjN4NjMiOiIyZmZiNjQ3NDAxOWIyNWVlMDUwYjIzYzU5OGVhNGYwMCIsIjEwMHgxMDAiOiJlNzFiYmY2Nzc3NTE0NmNhY2FiOWZkODJiYjRlNWUwMCJ9fV0=', '0', 'battery', 14, 'ammunition_rocketlauncher_sar-01', 'c', '2000', 'c', '', 125),
('Amber', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTV9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxNX0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6M319LCJjZG4iOnsiMzB4MzAiOiI2M2E0ZmNmMzE0NjU3NDQxNzY5MmYwMjY4M2VlMTYwMCIsIjYzeDYzIjoiZWM3ZjFhYTBiNzQ4MzVkOWMwZmZhNDA4MjUyNWY5MDAiLCIxMDB4MTAwIjoiMDEyYTE0ZDUwN2YyMGRmYWIxZDY1ZjMzZWZmMzg5MDAiLCJ0b3AiOiI2NTk4MTc5N2EzNzk0YWMzNmE2ODZhNmUwNTYzMzIwMCJ9fV0=', '0', 'ship', 21, 'ship_goliath_design_amber', 'u', '40000', 'c', '', 126),
('Sapphire', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTV9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxNX0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6M319LCJjZG4iOnsiMzB4MzAiOiIxNDA5MDVlN2VjYzdlZTdlNmVkMWRmMWMwNThmYWEwMCIsIjYzeDYzIjoiNzE5ZWVkNDU1YTMwZmQ2ODE5ZGY0MTJmZDMxYjZjMDAiLCIxMDB4MTAwIjoiMGNhMDFiODg3ZmZhNDY0ZjFjMjFjNzMxZDk5ZjllMDAiLCJ0b3AiOiIyZDg1ZTQ0MGY2MWUzNTFhMTI0ZWMzYzE0ZTVmMGUwMCJ9fV0=', '0', 'ship', 21, 'ship_goliath_design_sapphire', 'u', '40000', 'c', '', 127),
('EMP-01', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoxMjUwfSwiY2RuIjp7IjMweDMwIjoiNzM4ZThmNjIzODExZjg1YzEyMzViMWM4YzU2YzExMDAiLCI2M3g2MyI6IjlkZTAwY2I2NDdjMWE2YTkzNGY2YTY1ZjI1MTY4NTAwIiwiMTAweDEwMCI6IjU1ZmE3YTVjZDI2ZDAwYjM5Zjk2Mzc5NWMzYWIxOTAwIn19XQ==', '0', 'battery', 14, 'ammunition_specialammo_emp-01', 'c', '', 'c', '', 128),
('CBR', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoxMDB9LCJjZG4iOnsiMzB4MzAiOiJiMTBlMWZhZWFkNjg5MzBlZThmNmE0ZjNjMjBkMTcwMCIsIjYzeDYzIjoiNGQyZjU5Y2M2MWY5YWY1YjVlNjBiZDQ4NmY2MjAyMDAiLCIxMDB4MTAwIjoiN2M2M2UxM2Q5OTYyNDg1MWViNzNjZGI4NjY0ODI0MDAifX1d', '0', 'battery', 14, 'ammunition_rocketlauncher_cbr', 'c', '', 'c', '', 129),
('CBO-100', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoxMn0sImNkbiI6eyIzMHgzMCI6ImRiOTNkMzQ1M2JjMTIxZWQ4Y2U4MzQ3YWFkOTYyZDAwIiwiNjN4NjMiOiI4MzJkYzk1N2JhMTYzY2VmNzU2Mzg2ZDc0YzdhZDMwMCIsIjEwMHgxMDAiOiJlYmZiN2E0M2EwYjhhZTFhMjhjYTNhMjA1ODhiODYwMCJ9fV0=', '0', 'battery', 14, 'ammunition_laser_cbo-100', 'c', '', 'c', '', 130),
('Venom', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTV9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxNX0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6M319LCJjZG4iOnsiMzB4MzAiOiI4ZjE5NDdhMzYyMzcwMzBhMDQyZDQ5ZmMyZGIzOGIwMCIsIjYzeDYzIjoiM2M0NTQ3YjZkN2EyMWZhYmRjMjhjMTkzMDUyMWMxMDAiLCIxMDB4MTAwIjoiMmQ4OWI2OTYzNjZkZjlhMTU1OWRjOGQ3MDJkMDhmMDAiLCJ0b3AiOiIxM2UzYTkwNGFkYmYzMDE3ZTQ1NjFiOThhMmUxNGEwMCJ9fV0=', '0', 'ship', 21, 'ship_goliath_design_venom', 'u', '250000', 'c', '', 131),
('Solace', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTV9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxNX0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6M319LCJjZG4iOnsiMzB4MzAiOiJjOGFjMzU4YjRmOGVhMTYyYjQyZjU2YmEwNTQyMWQwMCIsIjYzeDYzIjoiN2U1Nzk1OTdlZTViNmZkNTQwMTEyYjU3MzM2MzQ0MDAiLCIxMDB4MTAwIjoiMWYyZTUwYmVlZGU1NDg1ZDU4NTJhMmZiNjRkM2RmMDAiLCJ0b3AiOiJkNmU4YjUyN2IxYTkwZGZjYzA3YmQwNzQ4Y2QwYWIwMCJ9fV0=', '0', 'ship', 21, 'ship_goliath_design_solace', 'c', '', 'c', '', 132),
('Spectrum', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTV9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxNX0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6M319LCJjZG4iOnsiMzB4MzAiOiJmY2I2YmM3NWIyMzA0MmE1YmJmZTU4OWI0OTY1ZjAwMCIsIjYzeDYzIjoiMGRkNDUxMTBjZDE0ZDY1N2NlZTBiYTI0YjI3ZWFlMDAiLCIxMDB4MTAwIjoiMzVmNGJiMzMxMWM2YjRhYTQ3YTE2ZmQxODAwMDg5MDAiLCJ0b3AiOiI1ZGVjMWMxOGFkZjE4OTBkZDRhNzNhZTYwNDAzZTMwMCJ9fV0=', '0', 'ship', 21, 'ship_goliath_design_spectrum', 'c', '', 'c', '', 133),
('Kick', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTV9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxNX0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6M319LCJjZG4iOnsiNjN4NjMiOiI3YmRhNWQzYzI0OGVkYmYyMzE5YWI1Nzc2YzZjZWQwMCIsIjEwMHgxMDAiOiI4ZDEzNmRkNzY3ZjNmMjYwYTAwOTdhYjkyZjNlY2EwMCIsInRvcCI6ImUxMThhNzA3MmU4Yzg5MDdlNWU0OTNkN2Y1ZjBiMjAwIn19XQ==', '0', 'ship', 21, 'ship_goliath_design_kick', 'c', '', 'c', '', 134),
('Referee', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTV9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxNX0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6M319LCJjZG4iOnsiNjN4NjMiOiI5NjQ0YTBkNDUyYTI1YWEwZGM2MzEwZTZlMGIzZTcwMCIsIjEwMHgxMDAiOiJiMjc2MmVhYTRiOGJmNGRkOTZlOTMxOGU3OGZmYmMwMCIsInRvcCI6IjVmNjBhMWFkNWVjYWY4MjQ2YzA4NzNhZTEwODM4ZDAwIn19XQ==', '0', 'ship', 21, 'ship_goliath_design_referee', 'c', '', 'c', '', 135),
('Goal', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTV9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxNX0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6M319LCJjZG4iOnsiNjN4NjMiOiIwMTdmOTkzNWM0OTlhYjRlOTA5ZjdjYTEwYTJkMWUwMCIsIjEwMHgxMDAiOiIwODdmZDAyMTQ4NzRlZGEzNjA2MzkzNTc5YTUxNjgwMCIsInRvcCI6Ijk1Y2MyZTRkNzAyOGY1ZWRkOWQ0MjY0MjAzMTVlYTAwIn19XQ==', '0', 'ship', 21, 'ship_goliath_design_goal', 'c', '', 'c', '', 136),
('Diminisher', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTV9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxNX0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6M319LCJjZG4iOnsiMzB4MzAiOiIxM2JkMzA0NTkzOGZmN2UxMzg3ZTM4MTBmNGVmOWUwMCIsIjYzeDYzIjoiOTU0NTBhODBmYTFmZjI2YzhiNjFmMzAzNDc0Y2Y1MDAiLCIxMDB4MTAwIjoiZjk4MWU4NDU3NTI5MmIzNGUxOGYwYTAzZGYyMzUwMDAiLCJ0b3AiOiI3ZDAwYWEzOWNkMmIxOTQ0NjQ5MTAwYzQwODg4NzQwMCJ9fV0=', '0', 'ship', 21, 'ship_goliath_design_diminisher', 'u', '250000', 'c', '100000', 137),
('Jade', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTV9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxNX0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6M319LCJjZG4iOnsiMzB4MzAiOiI1NWMxMzIxZWFlOTA4NmIxZTdhZjZkYmJmZjI3ZjMwMCIsIjYzeDYzIjoiYWQ2Njg0NDBhZjY0ZTkyMTI5YzJhMDg2YTdiOThhMDAiLCIxMDB4MTAwIjoiODE4ZTEyM2QxMmE2MTkzOGJmZWViZWJkNjViYzM2MDAiLCJ0b3AiOiI4MTJhOWI4ZWFjNWJhOWM2YTdlNTIyYzViNmZmNWEwMCJ9fV0=', '0', 'ship', 21, 'ship_goliath_design_jade', 'u', '40000', 'c', '', 138),
('Sovereign', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTV9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxNX0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6M319LCJjZG4iOnsiMzB4MzAiOiI4ZjIxNTEwMjc4YWNjNjM0YzkwMTRkZTUwMTVhMTgwMCIsIjYzeDYzIjoiNjU0YzE1NjcxMWI3ZDJkNDhiNzNiMGQ0OGNiZmMyMDAiLCIxMDB4MTAwIjoiOGY2NzhhNzQzMTRkMWM3MjNiYjcyZDY5NTUzZDZiMDAiLCJ0b3AiOiJkYmQwNDQzYmE0ODViOThmYzk4N2E0YjIxNWM2YmQwMCJ9fV0=', '0', 'ship', 21, 'ship_goliath_design_sovereign', 'c', '', 'c', '', 139),
('Razer-Goliath', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTV9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxNX0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6M319LCJjZG4iOnsiMzB4MzAiOiI0OGY4Y2ZkNThlNTBiNGFjOGNkYTMyZDU1NTdjZjcwMCIsIjYzeDYzIjoiNTExMGZkMDg2YzkxNjgxNGQ1ZjI5NTYzNzBiM2I5MDAiLCIxMDB4MTAwIjoiMmY4ZTIzZGMyMDBkY2MxYzUwODYwOTM2ZTU1YjBmMDAiLCJ0b3AiOiJkMTBiMzRjZTUxZWY3ZmM4N2U2Y2EyZDc0YWQ4N2UwMCJ9fV0=', '0', 'ship', 21, 'ship_goliath_design_goliath-razer', 'x', '', 'c', '', 140),
('Apis Drone', 'W3sic2xvdHNldHMiOnsiZGVmYXVsdCI6eyJUIjpbMCw0LDExLDksNyw4LDEwXSwiUSI6Mn0sImRlc2lnbiI6eyJUIjpbMTZdLCJRIjoxfX0sInNlbGxpbmciOnsiY3JlZGl0cyI6MTAwMDAwfSwiY2RuIjp7IjMweDMwIjoiMzZmZjE0ZWE2Zjk5MjliYmUyNTFjOTdjN2FhOWMxMDAiLCI2M3g2MyI6IjRjYzJlNWY2NzgwZDBhNzEwZDBjNTM3ZDI5NTUxNTAwIiwiMTAweDEwMCI6ImI4YTAwMzdhNjFlZDk2YmQzMDQ5YTQ5Njk4NTEwNzAwIiwidG9wIjoiZjNiZmNlMmFkMzg5ZDNmMjQzOWIwNjE5Zjk4ODQ4MDAifX0seyJzbG90c2V0cyI6eyJkZWZhdWx0Ijp7IlQiOlswLDQsMTEsOSw3LDgsMTBdLCJRIjoyfSwiZGVzaWduIjp7IlQiOlsxNl0sIlEiOjF9fSwic2VsbGluZyI6eyJjcmVkaXRzIjoxNTAwMDB9LCJjZG4iOnsiMzB4MzAiOiI5NzA4OWZlNjAyMjdiMTNkMDk3NjA4ZDJjMGRhZDMwMCIsIjYzeDYzIjoiOTMyODA5OGNmNmY2MWY5YTE1YzE4NmNkYTkzYmI0MDAiLCIxMDB4MTAwIjoiNTQ3MDljNTZkYjJlMWYyZjkwMmQ0Nzc5YjI0M2RlMDAiLCJ0b3AiOiJlYmMxOGZkNzZmZDU3MzNkMzcwYThjZDVjYmZiMDIwMCJ9fSx7InNsb3RzZXRzIjp7ImRlZmF1bHQiOnsiVCI6WzAsNCwxMSw5LDcsOCwxMF0sIlEiOjJ9LCJkZXNpZ24iOnsiVCI6WzE2XSwiUSI6MX19LCJzZWxsaW5nIjp7ImNyZWRpdHMiOjIxMDAwMH0sImNkbiI6eyIzMHgzMCI6ImRiYzBkNDc4NjkxZGUwNTI3NDVjZjYxMjU5M2UwMTAwIiwiNjN4NjMiOiI2ZTU1NDUzOTNhZTk5NmIzZDg4MTc2ZTA4Mjg4MWYwMCIsIjEwMHgxMDAiOiI3YjhmYjU4MTVlNzBjMjdlZGViMGIzNDc2ZDg3NzYwMCIsInRvcCI6Ijg0MDlkNjM1M2FhYTE0M2NlYzczYTU2MThmZDJmZDAwIn19LHsic2xvdHNldHMiOnsiZGVmYXVsdCI6eyJUIjpbMCw0LDExLDksNyw4LDEwXSwiUSI6Mn0sImRlc2lnbiI6eyJUIjpbMTZdLCJRIjoxfX0sInNlbGxpbmciOnsiY3JlZGl0cyI6MjQwMDAwfSwiY2RuIjp7IjMweDMwIjoiMWU0NmUyY2VmNGQ1YzVkMzgwMDA5OGYwNDM4NzdlMDAiLCI2M3g2MyI6IjIzNTdkNWM0NDUxNmE5MGM2NWY3ZTZmODQ5YzA5YjAwIiwiMTAweDEwMCI6IjMxODUxNzhmYzQ1YTkyMDcwZGRkOGFmZWFkOTFmODAwIiwidG9wIjoiYWQ0ZmY1Y2M5ZDZkYjVhZTZmYTM4ODRjNTdiMzJiMDAifX0seyJzbG90c2V0cyI6eyJkZWZhdWx0Ijp7IlQiOlswLDQsMTEsOSw3LDgsMTBdLCJRIjoyfSwiZGVzaWduIjp7IlQiOlsxNl0sIlEiOjF9fSwic2VsbGluZyI6eyJjcmVkaXRzIjozMTUwMDB9LCJjZG4iOnsiMzB4MzAiOiIxOTM2NjBiMjY4ZTY4OTZlOTYxNDhkMjE1MzFkMWYwMCIsIjYzeDYzIjoiYmE2YjQ2ZDRjYWMxZDBkODE5OTE1YzFhODAzN2U5MDAiLCIxMDB4MTAwIjoiNDlhMzEyNmE0OTAzZjQ4YTdmOTZjZjY0YzdiNmJmMDAiLCJ0b3AiOiIyYzM0M2QxNDExNTQ1ZDcxZjJhYzVkNDczYmU4MGYwMCJ9fSx7InNsb3RzZXRzIjp7ImRlZmF1bHQiOnsiVCI6WzAsNCwxMSw5LDcsOCwxMF0sIlEiOjJ9LCJkZXNpZ24iOnsiVCI6WzE2XSwiUSI6MX19LCJzZWxsaW5nIjp7ImNyZWRpdHMiOjUwMDAwMH0sImNkbiI6eyIzMHgzMCI6IjZlMTZkYTVmMTQ2ZGIzZDY2YWEyYmI3ODg0OWViYTAwIiwiNjN4NjMiOiI2OTExMjJiMTg4MmFlMWY2ZWVlZjlkZGJjMTY2YzIwMCIsIjEwMHgxMDAiOiIzYjJiNGQwOWIxMjA3YTNjMDA3ZjJlYjY5MGEwOTAwMCIsInRvcCI6IjBlZWZlMDI1Y2QwYWY0ZDFkODJmMGIzMjRkNzg3MjAwIn19XQ==', '0', 'drone', 24, 'drone_apis', 'u', '', 'c', '', 141),
('Zeus Drone', 'W3sic2xvdHNldHMiOnsiZGVmYXVsdCI6eyJUIjpbMCw0LDExLDksNyw4LDEwXSwiUSI6Mn0sImRlc2lnbiI6eyJUIjpbMTZdLCJRIjoxfX0sInNlbGxpbmciOnsiY3JlZGl0cyI6MTAwMDAwfSwiY2RuIjp7IjMweDMwIjoiOTI5OTRmMDZlMDBlNTFhNjM3NjlmNWRlM2MyNDAwMDAiLCI2M3g2MyI6Ijk1YjBiM2UwNTc3MTg4ZDU4MmJmMmZkZDg1Y2IyZDAwIiwiMTAweDEwMCI6IjgxMWZkOGZjNzFjMGU2YWE3NGIxMjlkN2ZhNmQyMjAwIiwidG9wIjoiZDZkNjVhZmJjNmFmNzQxMmI4Y2Q3MThlNTUxNjQ0MDAifX0seyJzbG90c2V0cyI6eyJkZWZhdWx0Ijp7IlQiOlswLDQsMTEsOSw3LDgsMTBdLCJRIjoyfSwiZGVzaWduIjp7IlQiOlsxNl0sIlEiOjF9fSwic2VsbGluZyI6eyJjcmVkaXRzIjoxNTAwMDB9LCJjZG4iOnsiMzB4MzAiOiIyMmY3ZjhmZWQ2OTRjOGQwN2FkYjk0MzZjOGQyYzEwMCIsIjYzeDYzIjoiMzY1MTI0ZGQ3NDEzMzNjODg2ZWU0OGJkZWQyMjM4MDAiLCIxMDB4MTAwIjoiYzU1Yjg2NzdhMDk2MTI1Y2ZhMTQ4ODhkN2IxMjAxMDAiLCJ0b3AiOiJhMGM3NjNjNjJkYWJmNzMyNDY4ODE1MjQzYjA2Y2EwMCJ9fSx7InNsb3RzZXRzIjp7ImRlZmF1bHQiOnsiVCI6WzAsNCwxMSw5LDcsOCwxMF0sIlEiOjJ9LCJkZXNpZ24iOnsiVCI6WzE2XSwiUSI6MX19LCJzZWxsaW5nIjp7ImNyZWRpdHMiOjIxMDAwMH0sImNkbiI6eyIzMHgzMCI6IjA5MWU2ZmI0YTc4NDUxZDU5ZjZjY2I1ODdiMzUxNTAwIiwiNjN4NjMiOiJmN2ZlMzhjMTI4YzNjMTNkOTA5N2JmY2U4NTg5MWMwMCIsIjEwMHgxMDAiOiIxZWZjMjIzNmMwYTlhMDExMGI2MjJlZTVjMGEwMjIwMCIsInRvcCI6Ijg3YmIzY2RlZTNmN2E0MTc1YWE3YmU4MGRiN2Q1ODAwIn19LHsic2xvdHNldHMiOnsiZGVmYXVsdCI6eyJUIjpbMCw0LDExLDksNyw4LDEwXSwiUSI6Mn0sImRlc2lnbiI6eyJUIjpbMTZdLCJRIjoxfX0sInNlbGxpbmciOnsiY3JlZGl0cyI6MjQwMDAwfSwiY2RuIjp7IjMweDMwIjoiNDg2NDBhY2JhNDEwYjM3YzI4NzQwM2UyNzBkYTBjMDAiLCI2M3g2MyI6IjBjZDBkZTg2OTM1OGUyZjlhZTM2YjcyNTJjNTk1YjAwIiwiMTAweDEwMCI6Ijg1ZDgyMTI1ZmI5NjVjZjc5YTVlMGFmYTcxMGZlNDAwIiwidG9wIjoiMDFlODRlMWU0ZmQ4M2FiYWU3ZGQ1YTc1Mzk1YTYwMDAifX0seyJzbG90c2V0cyI6eyJkZWZhdWx0Ijp7IlQiOlswLDQsMTEsOSw3LDgsMTBdLCJRIjoyfSwiZGVzaWduIjp7IlQiOlsxNl0sIlEiOjF9fSwic2VsbGluZyI6eyJjcmVkaXRzIjozMTUwMDB9LCJjZG4iOnsiMzB4MzAiOiIzZjI1ZThkZDE2YjY2OTc0ZTk5NGEwMDI2MDJkYjUwMCIsIjYzeDYzIjoiMmM2NWZkMjQxNDBmOTgxYjUwYTQ3N2VmMjhjMGNiMDAiLCIxMDB4MTAwIjoiZjE0ZGVhOWQ1ZDU0MjQ1NGY4MTRiMDRhNGMwMjcwMDAiLCJ0b3AiOiI0MGQzNmUzYjU3NTE0YTkwMjA3Mjg4NWI1N2IxYWUwMCJ9fSx7InNsb3RzZXRzIjp7ImRlZmF1bHQiOnsiVCI6WzAsNCwxMSw5LDcsOCwxMF0sIlEiOjJ9LCJkZXNpZ24iOnsiVCI6WzE2XSwiUSI6MX19LCJzZWxsaW5nIjp7ImNyZWRpdHMiOjUwMDAwMH0sImNkbiI6eyIzMHgzMCI6IjRlZTg3OTFlYmI2Mzk1MTFhZGVmNTBhYWY5YzViNjAwIiwiNjN4NjMiOiI5ODdkNjJhOWEyYzYwMjkwNjM5Zjc3MTQ5MDllNjYwMCIsIjEwMHgxMDAiOiI5OGU4ZDJjZGNlYjY0MTJlNWI5YzY5ZWJiNzQ0NGEwMCIsInRvcCI6ImViYjEzNDNlOTk4NjVlNzMwOWE4ZGQ0NDM5OTZiZDAwIn19XQ==', '0', 'drone', 24, 'drone_zeus', 'u', '100000', 'c', '100000', 142),
('Aegis', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTB9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxNX0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6M319LCJzZWxsaW5nIjp7ImNyZWRpdHMiOjYyNTAwMH0sImNkbiI6eyI2M3g2MyI6ImJiNzM3OGRkNzQwNzQ4MGRmMGU4ZTMxZmI1MDU2MjAwIiwiMTAweDEwMCI6IjBiMzEyMTgzZjNhYzk3YjBlMGNhYWRhMjVlZjdjODAwIiwidG9wIjoiNzNhNDU5NmY3ODE1NWI0NTdmYzlhYzE1MGUxYzM3MDAifX1d', '0', 'ship', 22, 'ship_aegis', 'u', '250000', 'c', '', 143),
('Aegis Elite', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTB9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxNX0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6M319LCJzZWxsaW5nIjp7ImNyZWRpdHMiOjYyNTAwMH0sImNkbiI6eyI2M3g2MyI6IjEyZDdiNGVmNTZlMzNkNDYwZDk1OTg4NDFmNzBmNzAwIiwiMTAweDEwMCI6IjA4MzFmYzg1MzgyZmYxNjA3M2I5NTBiMGU5YjE4MDAwIiwidG9wIjoiYWViODVlNWI0YjM2OTI0ZTk3OTMzYzI4ZTVlYzg2MDAifX1d', '0', 'ship', 21, 'ship_aegis_design_aegis-superelite', 'u', '200000', 'c', '', 144),
('Citadel', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6N30sImdlbmVyYXRvcnMiOnsiVCI6WzMsNF0sIlEiOjIwfSwiaGVhdnlfZ3VucyI6eyJUIjpbMV0sIlEiOjJ9LCJleHRyYXMiOnsiVCI6WzExLDksNyw4LDEwLDZdLCJRIjo1fX0sInNlbGxpbmciOnsiY3JlZGl0cyI6NzUwMDAwfSwiY2RuIjp7IjYzeDYzIjoiYjYzMDBjODZiMDVjNGNmOWZkMGMyMTE2MWExOGJjMDAiLCIxMDB4MTAwIjoiNTM5ZTlkOWYyZjE0MjY2ZTVkMDU1MTljYjRjMzUxMDAiLCJ0b3AiOiIyNTZkMzI5ZGJmMzgwNWZkMGJmNjJlZjY2OTMxYzEwMCJ9fV0=', '0', 'ship', 22, 'ship_citadel', 'u', '300000', 'c', '', 145),
('F-10-CR', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjozMDAwMDB9LCJjZG4iOnsiMzB4MzAiOiJkOWYyOTIzNTM4YzA5ZTZjMTc5NDQ1NDU0Njc2NmQwMCIsIjYzeDYzIjoiYTgzNDRjN2I1ZGFkNmQ5MDgyODc3NjJmZGEzYTgzMDAiLCIxMDB4MTAwIjoiMGY5MmMwYmVjNjI3Y2ZmZmMxOGQ1YzIyOWZjNjU1MDAifX1d', '0', 'drone', 17, 'drone_formation_f-10-cr', 'c', '', 'c', '', 146),
('DCR-250', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoxMjUwfSwiY2RuIjp7IjMweDMwIjoiNjVhNjM1YTkzMWVhZDlkNzk0OGM0NTM5ZTRlZGIzMDAiLCI2M3g2MyI6IjRhYmEyOTFhOTk3MjJhYmUyMjdiY2NiZjg5ODljZDAwIiwiMTAweDEwMCI6ImFmYThkMTQ3MTA2NWRlYjI2NjcyY2U3Yzg4YzlhYjAwIn19XQ==', '0', 'battery', 14, 'ammunition_specialammo_dcr-250', 'c', '', 'c', '', 147),
('Blueprint - Zeus Part', 'W3siY2RuIjp7IjMweDMwIjoiZWVkZWQ0MDZhNjk2Y2NiNTgxY2IxYjE0MmY1ZmRlMDAiLCI2M3g2MyI6IjdlNzcwN2I0ZGIyZmE5MzUwMTAyZjZlYTA3YmQ4ZjAwIn19XQ==', '0', 'special', 25, 'resource_blueprint_zeus-part', 'c', '', 'c', '', 148),
('G-RL1', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo2MjUwfSwiY2RuIjp7IjMweDMwIjoiODI1MWRlMTZhNTg4NTk4ZTNjMTc1ZTIzMTM5ZDJmMDAiLCI2M3g2MyI6Ijk5MTE4YzIwN2Q3ZjI3OGJmNDM3NDA2MWM4NmRlZDAwIiwiMTAweDEwMCI6ImQ4ODRjODNiNjI2OTBjZDAzZDhmMWYwZmQ2YzZlMDAwIn19LHsic2VsbGluZyI6eyJjcmVkaXRzIjoxNTAwMH0sImNkbiI6eyIzMHgzMCI6IjgyNTFkZTE2YTU4ODU5OGUzYzE3NWUyMzEzOWQyZjAwIiwiNjN4NjMiOiI5OTExOGMyMDdkN2YyNzhiZjQzNzQwNjFjODZkZWQwMCIsIjEwMHgxMDAiOiJkODg0YzgzYjYyNjkwY2QwM2Q4ZjFmMGZkNmM2ZTAwMCJ9fSx7InNlbGxpbmciOnsiY3JlZGl0cyI6NDM3NTB9LCJjZG4iOnsiMzB4MzAiOiI4MjUxZGUxNmE1ODg1OThlM2MxNzVlMjMxMzlkMmYwMCIsIjYzeDYzIjoiOTkxMThjMjA3ZDdmMjc4YmY0Mzc0MDYxYzg2ZGVkMDAiLCIxMDB4MTAwIjoiZDg4NGM4M2I2MjY5MGNkMDNkOGYxZjBmZDZjNmUwMDAifX1d', '0', 'petGear', 19, 'equipment_petgear_g-rl1', 'c', '', 'c', '', 149),
('G-EL1', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoxNTAwMH0sImNkbiI6eyIzMHgzMCI6Ijg1NDA1YWZkZjdlYmRhMGRmNjk0YmM5MTZmMWZlMDAwIiwiNjN4NjMiOiIxMTQ2ODkzNjZmOTdmYjVhZjkyNDNiMzFmYjRlODMwMCIsIjEwMHgxMDAiOiJmYTU0MWQzYTkxYWFiYzY3MGZiOWI0ODIyM2EzYzAwMCJ9fSx7InNlbGxpbmciOnsiY3JlZGl0cyI6MzEyNTB9LCJjZG4iOnsiMzB4MzAiOiI4NTQwNWFmZGY3ZWJkYTBkZjY5NGJjOTE2ZjFmZTAwMCIsIjYzeDYzIjoiMTE0Njg5MzY2Zjk3ZmI1YWY5MjQzYjMxZmI0ZTgzMDAiLCIxMDB4MTAwIjoiZmE1NDFkM2E5MWFhYmM2NzBmYjliNDgyMjNhM2MwMDAifX0seyJzZWxsaW5nIjp7ImNyZWRpdHMiOjkzNzUwfSwiY2RuIjp7IjMweDMwIjoiODU0MDVhZmRmN2ViZGEwZGY2OTRiYzkxNmYxZmUwMDAiLCI2M3g2MyI6IjExNDY4OTM2NmY5N2ZiNWFmOTI0M2IzMWZiNGU4MzAwIiwiMTAweDEwMCI6ImZhNTQxZDNhOTFhYWJjNjcwZmI5YjQ4MjIzYTNjMDAwIn19XQ==', '0', 'petGear', 19, 'equipment_petgear_g-el1', 'c', '', 'c', '', 150),
('Fuel-Buy Assistant', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoxMjUwMH0sImNkbiI6eyIzMHgzMCI6IjdiMmE5ZDI5NjUwNzNjMGE5MjYwYjc1NDkyODNhNTAwIiwiNjN4NjMiOiJjYjgzODc1ZWI1YzNkYTE2NDg3OTYwNWMwMmQ2NTkwMCIsIjEwMHgxMDAiOiJlMDZkMzljMjllYTM2ZmI1ZTkzMjdiZDYwNmU5NTIwMCJ9fV0=', '0', 'special', 7, 'equipment_extra_cpu_fb-x', 'c', '', 'c', '', 151),
('F-09-MO', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjozMDAwMDB9LCJjZG4iOnsiMzB4MzAiOiJhNzUxNWM5ZmE5Y2ZhY2YyMTU4MGI1NjJkMzBmNzUwMCIsIjYzeDYzIjoiMGJhMGM2MmY2NjI0N2Y0MjkwM2M0YTdlNGFkOTlhMDAiLCIxMDB4MTAwIjoiNzkyNmY5Yzg5MmVkMDhmNGJkNTEyOGNjY2QwOWZjMDAifX1d', '0', 'drone', 17, 'drone_formation_f-09-mo', 'c', '', 'c', '', 152),
('F-06-DA', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjozMDAwMDB9LCJjZG4iOnsiMzB4MzAiOiJmMDNmZmM4N2ViOGM4ZDlmNWMyZmJjYmY4ZjM1YTMwMCIsIjYzeDYzIjoiYmMwNDYxNDY5ZTJlYjgxMWQxOTUyNDU1ZjA1MTY2MDAiLCIxMDB4MTAwIjoiZTEyNjNmZGIwNzMwMGIzZjY1MGFmYmE3NjBkYzI4MDAifX1d', '0', 'drone', 17, 'drone_formation_f-06-da', 'c', '', 'c', '', 153),
('Hull Module', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo1MDAwfSwiY2RuIjp7IjMweDMwIjoiNjY5MDI4ODg5MjAyYmM5NTM4YmM5ZTYzZThhOTI2MDAiLCI2M3g2MyI6IjZkZTJiMDUwODQwODA1OTc4NDIxNDEzM2M5NjFkNDAwIiwiMTAweDEwMCI6ImY0YjU4ZmUyMDFhOWM5OGI3YjFhNzczNDJmMTZmZjAwIn19XQ==', '0', 'module', 18, 'module_hulm-1', 'c', '', 'c', '', 154),
('CSR-02', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo1MDAwMH0sImNkbiI6eyIzMHgzMCI6Ijg3MDczMzFlZmRkNmQ3YzhjMDJlNzRjMWMzMDFjNzAwIiwiNjN4NjMiOiIxZGI2OWFhMWFmNWFjMTg2YjJjNDI3ZjBkNTc2YmEwMCIsIjEwMHgxMDAiOiI5NjBjNjExMjMxODg4YWFmZmI5ZGE3MzBhMWE3MjIwMCJ9fSx7InNlbGxpbmciOnsiY3JlZGl0cyI6NzUwMDB9LCJjZG4iOnsiMzB4MzAiOiI4NzA3MzMxZWZkZDZkN2M4YzAyZTc0YzFjMzAxYzcwMCIsIjYzeDYzIjoiMWRiNjlhYTFhZjVhYzE4NmIyYzQyN2YwZDU3NmJhMDAiLCIxMDB4MTAwIjoiOTYwYzYxMTIzMTg4OGFhZmZiOWRhNzMwYTFhNzIyMDAifX0seyJzZWxsaW5nIjp7ImNyZWRpdHMiOjEzNzUwMH0sImNkbiI6eyIzMHgzMCI6Ijg3MDczMzFlZmRkNmQ3YzhjMDJlNzRjMWMzMDFjNzAwIiwiNjN4NjMiOiIxZGI2OWFhMWFmNWFjMTg2YjJjNDI3ZjBkNTc2YmEwMCIsIjEwMHgxMDAiOiI5NjBjNjExMjMxODg4YWFmZmI5ZGE3MzBhMWE3MjIwMCJ9fV0=', '0', 'petGear', 19, 'equipment_petgear_csr-02', 'c', '', 'c', '', 155),
('Damage Booster Module', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo1MDAwfSwiY2RuIjp7IjMweDMwIjoiYTE4NTk0YmNhNGQxYmZlYjZkOGU5ODRlMWE5YmM1MDAiLCI2M3g2MyI6ImM5ZWI2NTg0NTRlNWQ2NTQwNWI1MzI1ZmFhMTBhNDAwIiwiMTAweDEwMCI6IjZkYjVhNjg0OWVlNWMwZjYyZGI3YTk0NGVjMGE1NzAwIn19XQ==', '0', 'module', 18, 'module_dmgm-1', 'c', '', 'c', '', 156),
('Honor Booster Module', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo1MDAwfSwiY2RuIjp7IjMweDMwIjoiNzE4ZTRkYjljNWY3ZjUyM2Q2NmE0ODZkMjlmNGE5MDAiLCI2M3g2MyI6ImMxOTI2M2M3YzJiNDQ3YTk1YjlkNjc4OTY3Y2EzOTAwIiwiMTAweDEwMCI6Ijg4MmQ4MTZjZGNjODRiMDczMjQzYjc0OTMwYjk0YzAwIn19XQ==', '0', 'module', 18, 'module_honm-1', 'c', '', 'c', '', 157),
('F-05-PI', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjozMDAwMDB9LCJjZG4iOnsiMzB4MzAiOiJkNDAxY2EzMzkzNWFkYTA1MGM2OGM0MmY0YjA2NDYwMCIsIjYzeDYzIjoiMjA0NTJkNDkzNjJlYjE2Y2E3MTY1MTEwMTA4ZWVhMDAiLCIxMDB4MTAwIjoiYzg2ZjBhYjEzZDFiYzE0ZDgxZWFjY2I3YWQ4OWU0MDAifX1d', '0', 'drone', 17, 'drone_formation_f-05-pi', 'c', '', 'c', '', 158),
('JOB-100', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoxfSwiY2RuIjp7IjMweDMwIjoiNmUyMDk0NWNmZWNkZTZjMTBiOTU4YjY5ZDIwN2EwMDAiLCI2M3g2MyI6IjM1YjE2ZGIzMDA0ZDEwYTQ4YmUzNzUyYzEyNTJhMzAwIiwiMTAweDEwMCI6IjFhNWQ0OGVlNjhmNjI5NzFmYzNmOWZjN2U4Y2Y1ZDAwIn19XQ==', '0', 'battery', 14, 'ammunition_laser_job-100', 'c', '', 'c', '', 159),
('AI-LM1', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoxMjUwMH0sInRleHRLZXlzIjp7ImFtb3VudCI6IjEifSwiY2RuIjp7IjMweDMwIjoiN2NmZGFhNmIxZjU2OTBlMTM0OWMxZmNiZTYzNWQ1MDAiLCI2M3g2MyI6Ijg1NzBiNGQ0NmI1YmJlYzdlYjc4ZjNlMmYwODY5ODAwIiwiMTAweDEwMCI6ImI1YmQwNzhhODAyZTMyOGMwYzIxMDMyNTM0YWE4MTAwIn19LHsic2VsbGluZyI6eyJjcmVkaXRzIjozMTI1MH0sInRleHRLZXlzIjp7ImFtb3VudCI6IjIifSwiY2RuIjp7IjMweDMwIjoiN2NmZGFhNmIxZjU2OTBlMTM0OWMxZmNiZTYzNWQ1MDAiLCI2M3g2MyI6Ijg1NzBiNGQ0NmI1YmJlYzdlYjc4ZjNlMmYwODY5ODAwIiwiMTAweDEwMCI6ImI1YmQwNzhhODAyZTMyOGMwYzIxMDMyNTM0YWE4MTAwIn19LHsic2VsbGluZyI6eyJjcmVkaXRzIjoxMTI1MDB9LCJ0ZXh0S2V5cyI6eyJhbW91bnQiOiI0In0sImNkbiI6eyIzMHgzMCI6IjdjZmRhYTZiMWY1NjkwZTEzNDljMWZjYmU2MzVkNTAwIiwiNjN4NjMiOiI4NTcwYjRkNDZiNWJiZWM3ZWI3OGYzZTJmMDg2OTgwMCIsIjEwMHgxMDAiOiJiNWJkMDc4YTgwMmUzMjhjMGMyMTAzMjUzNGFhODEwMCJ9fV0=', '0', 'petProtocol', 20, 'equipment_aiprotocol_ai-lm1', 'c', '', 'c', '', 160),
('Repair Module', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo1MDAwfSwiY2RuIjp7IjMweDMwIjoiZGQxMzk4NjZjYjJlM2MxZWExYmU1ZmQ2ZTNiMjYyMDAiLCI2M3g2MyI6ImVjYzk0MzM4ZWY5M2U0NmZlNTE5MWVlZjM1MDVjODAwIiwiMTAweDEwMCI6IjBlOTg5ZmE3YTQ2Zjc3ZWJjYTcwNjAzMDdmNzllYTAwIn19XQ==', '0', 'module', 18, 'module_repm-1', 'c', '', 'c', '', 161),
('F-08-CH', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjozMDAwMDB9LCJjZG4iOnsiMzB4MzAiOiJmMjZjOWRkYTc0NmQzNDYwNGM3NTQwYTA1ZWRiMmQwMCIsIjYzeDYzIjoiNjhlOTQ4MzkzMDU1NmJhOWI1YjQ5ODY0MzNlNTZhMDAiLCIxMDB4MTAwIjoiMjMyM2M4OWVmNjc4OTJhOTgxNTMzYzRmNDkwYTcwMDAifX1d', '0', 'drone', 17, 'drone_formation_f-08-ch', 'c', '', 'c', '', 162),
('Fireworks Razer', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjo1fSwiY2RuIjp7IjMweDMwIjoiMGJjMTE5Njc1NDc5OTQ1ZTEzN2ZkMzYzMTQ0ODViMDAiLCI2M3g2MyI6IjA4MDNjMWQxZmQ5MjBlOWUwZjE0N2JlMWE2OWQzNTAwIiwiMTAweDEwMCI6ImRkMDg1MWExODNhZGU4N2JjYmUyZDI0M2RjNDJhZTAwIn19XQ==', '0', 'battery', 14, 'ammunition_firework_fwx-rz', 'c', '', 'c', '', 163),
('Leonov', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6NX0sImdlbmVyYXRvcnMiOnsiVCI6WzMsNF0sIlEiOjV9LCJoZWF2eV9ndW5zIjp7IlQiOlsxXSwiUSI6MX0sImV4dHJhcyI6eyJUIjpbMTEsOSw3LDgsMTAsNl0sIlEiOjF9fSwic2VsbGluZyI6eyJjcmVkaXRzIjowfSwiY2RuIjp7IjYzeDYzIjoiMjgzNTJmZDZmNzZmN2Y2OWZkZTYwYmU2NTFkMjhiMDAiLCIxMDB4MTAwIjoiNTE0ZTEyYjFjYTVjMjdhMjJiNmVmNjQ2ZmI5YjhhMDAiLCJ0b3AiOiIwMDQxNWQ3NzY2NTQ2MmY2ZTE2MTA0ODU2MTlhNDAwMCJ9fV0=', '0', 'ship', 22, 'ship_leonov', 'u', '15000', 'c', '0', 164),
('Piranha', 'W3sic2xvdHNldHMiOnsibGFzZXJzIjp7IlQiOlswXSwiUSI6MTV9LCJnZW5lcmF0b3JzIjp7IlQiOlszLDRdLCJRIjoxNX0sImhlYXZ5X2d1bnMiOnsiVCI6WzFdLCJRIjoxfSwiZXh0cmFzIjp7IlQiOlsxMSw5LDcsOCwxMCw2XSwiUSI6M319LCJzZWxsaW5nIjp7ImNyZWRpdHMiOjIwMDAwMH0sImNkbiI6eyI2M3g2MyI6ImM2YzhhMDlhNDc0OWFmNjkxYjZhOTk0N2NmMmM2OTAwIiwiMTAweDEwMCI6IjVmY2RiODNlNjliNDAxZDkyY2MxYWU2YWJiMTcyMzAwIiwidG9wIjoiYTYwNGNkNDY2OWI4MGEwZGRkODlmYTU0ZmM5NDYzMDAifX1d', '0', 'ship', 22, 'ship_piranha', 'c', '125000', 'c', '0', 165),
('Armory Upgrade 1', 'W3sic2VsbGluZyI6eyJjcmVkaXRzIjoyNTAwMH0sImNkbiI6eyIzMHgzMCI6IjViNTA4OGQyYzk4MWUwY2Q3M2RmMDA1YWNhNmVkNzAwIiwiNjN4NjMiOiI2MzUyNzliNmQ2NjNiMzY1MmU3MDc0MzM2NTQzZGIwMCIsIjEwMHgxMDAiOiJmMWY1Nzg2YjdkYWQ3OTZiOTI3ZGViZWZjYWQyNDgwMCJ9fV0=', '0', 'special', 10, 'equipment_extra_cpu_g3x-amry-s', 'u', '5000', 'c', '25000', 166),
('Logfile', 'W3siY2RuIjp7IjMweDMwIjoiYjEyMzI2YjczY2MwYTBlYTk3NzZkZWIzZTllZTcwMDAiLCI2M3g2MyI6Ijc1M2FjMWVkZGI2MjcxNjZiMzcxY2U2YWRkMmE0ODAwIiwiMTAweDEwMCI6IjY5YTYxM2QwZTRjZDcyZTkwYWZkNmNkYzY4ZmNmYjAwIn19XQ==', '0', 'special', 25, 'resource_logfile', 'u', '300', 'c', '', 167);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ships`
--

CREATE TABLE IF NOT EXISTS `ships` (
`Id` smallint(11) NOT NULL,
  `Name` varchar(255) NOT NULL DEFAULT '-=[ ]=-',
  `type` varchar(100) NOT NULL DEFAULT '',
  `Costs` bigint(255) NOT NULL,
  `HP` int(255) NOT NULL DEFAULT '1000',
  `MaxNanohull` bigint(255) NOT NULL,
  `Shield` int(255) NOT NULL DEFAULT '0',
  `shieldAbsorb` smallint(11) NOT NULL DEFAULT '20',
  `Damage` int(255) NOT NULL DEFAULT '20',
  `maxDamage` int(11) NOT NULL,
  `Speed` smallint(11) NOT NULL DEFAULT '150',
  `isNeutral` enum('0','1') NOT NULL DEFAULT '1',
  `LaserId` tinyint(1) NOT NULL DEFAULT '0',
  `Lasers` bigint(255) NOT NULL,
  `Generators` bigint(255) NOT NULL,
  `Batteries` bigint(255) NOT NULL,
  `Rockets` bigint(255) NOT NULL,
  `Extra` int(11) NOT NULL,
  `Cargo` bigint(255) NOT NULL,
  `experience` int(11) NOT NULL DEFAULT '0',
  `honor` int(11) NOT NULL DEFAULT '0',
  `credits` int(11) NOT NULL DEFAULT '0',
  `uridium` int(11) NOT NULL DEFAULT '0',
  `rankPoints` bigint(20) NOT NULL DEFAULT '0',
  `AI` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=445 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ships`
--

INSERT INTO `ships` (`Id`, `Name`, `type`, `Costs`, `HP`, `MaxNanohull`, `Shield`, `shieldAbsorb`, `Damage`, `maxDamage`, `Speed`, `isNeutral`, `LaserId`, `Lasers`, `Generators`, `Batteries`, `Rockets`, `Extra`, `Cargo`, `experience`, `honor`, `credits`, `uridium`, `rankPoints`, `AI`) VALUES
(9, 'Bigboy', 'ship_bigboy', 200000, 160000, 160000, 55000, 80, 1300, 1400, 260, '1', 1, 8, 15, 18000, 900, 3, 700, 25600, 256, 0, 0, 0, 0),
(8, 'Vengeance', 'ship_vengeance', 30000, 180000, 180000, 145000, 80, 24000, 25000, 380, '1', 4, 10, 10, 16000, 800, 2, 1000, 12800, 128, 0, 0, 0, 0),
(7, 'Nostromo', 'ship_nostromo', 175000, 120000, 120000, 20000, 60, 1000, 1200, 340, '1', 1, 6, 8, 16000, 700, 2, 600, 6400, 64, 0, 0, 0, 0),
(6, 'Piranha', 'ship_piranha', 125000, 64000, 64000, 10000, 50, 550, 750, 360, '1', 1, 5, 7, 14000, 600, 2, 500, 3200, 32, 0, 0, 0, 0),
(5, 'Liberator', 'ship_liberator', 40000, 16000, 16000, 7500, 40, 400, 600, 300, '1', 1, 4, 6, 10000, 500, 2, 400, 1600, 16, 0, 0, 0, 0),
(4, 'Defcom', 'ship_defcom', 32000, 12000, 12000, 5000, 40, 350, 450, 280, '1', 1, 3, 5, 8000, 400, 2, 300, 800, 8, 0, 0, 0, 0),
(3, 'Leonov', 'ship_leonov', 15000, 64000, 64000, 70000, 80, 900, 1800, 360, '1', 1, 6, 6, 6000, 300, 1, 500, 400, 4, 0, 0, 0, 0),
(1, 'Phoenix', 'ship_phoenix', 0, 4000, 4000, 2000, 20, 100, 150, 320, '1', 1, 1, 1, 2000, 100, 1, 100, 100, 0, 0, 0, 0, 0),
(2, 'Yamato', 'ship_yamato', 16000, 8000, 8000, 2500, 25, 200, 300, 340, '1', 1, 2, 2, 4000, 200, 1, 200, 200, 2, 0, 0, 0, 0),
(94, '-=[Vagrant]=-', '', -1, 40000, 0, 40000, 60, 1900, 2500, 380, '0', 0, 0, 0, 0, 0, 0, 0, 2000, 4, 2000, 8, 0, 0),
(93, '-=[Marauder]=-', '', -1, 100000, 0, 60000, 60, 3500, 4500, 380, '0', 0, 0, 0, 0, 0, 0, 0, 4500, 8, 4500, 16, 0, 0),
(92, '-=[Outcast]=-', '', -1, 150000, 0, 80000, 60, 3800, 5000, 320, '0', 0, 0, 0, 0, 0, 0, 0, 7500, 12, 7500, 24, 0, 0),
(90, '-=[Century Falcon]=-', '', -1, 4000000, 0, 3000000, 60, 19000, 25000, 200, '0', 0, 0, 0, 0, 0, 0, 0, 1000000, 5000, 1000000, 5000, 0, 0),
(91, '-=[Corsair]=-', '', -1, 200000, 0, 120000, 60, 6000, 8000, 320, '0', 0, 0, 0, 0, 0, 0, 0, 10000, 32, 12000, 64, 0, 0),
(89, '-=[Refreebot]=-', '', -1, 1000, 0, 0, 20, 20, 20, 150, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(88, 'Goal', 'ship_goal', 100000, 256000, 256000, 265000, 92, 42500, 45000, 300, '1', 4, 15, 15, 32000, 1600, 3, 1500, 51200, 512, 0, 0, 0, 0),
(87, 'Referee', 'ship_referee', 100000, 256000, 256000, 265000, 92, 42500, 45000, 300, '1', 4, 15, 15, 32000, 1600, 3, 1500, 51200, 512, 0, 0, 0, 0),
(86, 'Kick', 'ship_kick', 100000, 256000, 256000, 265000, 92, 42500, 45000, 300, '1', 4, 15, 15, 32000, 1600, 3, 1500, 51200, 512, 0, 0, 0, 0),
(85, '-=[StreuneR]=-', '', -1, 20000, 0, 10000, 60, 350, 500, 280, '1', 0, 0, 0, 0, 0, 0, 0, 3200, 16, 6400, 8, 0, 0),
(84, '-=[Streuner]=-', '', -1, 800, 0, 400, 60, 10, 20, 270, '1', 0, 0, 0, 0, 0, 0, 0, 400, 2, 400, 1, 0, 0),
(83, '<==<Boss Kucurbium>==>', '', -1, 20000000, 0, 20000000, 60, 50000, 60000, 200, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82, '<==<Kucurbium>==>', '', -1, 5000000, 0, 5000000, 60, 20000, 25000, 200, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(81, '-=[Protegit]=-', '', -1, 50000, 0, 40000, 60, 1125, 1500, 380, '0', 0, 0, 0, 0, 0, 0, 0, 6400, 32, 12800, 16, 3, 0),
(80, '-=[Cubikon]=-', '', -1, 1600000, 0, 1200000, 60, 0, 0, 30, '1', 0, 0, 0, 0, 0, 0, 0, 512000, 4096, 1638400, 1024, 10, 0),
(79, '-=[Kristallon]=-', '', -1, 400000, 0, 300000, 60, 3750, 5000, 250, '1', 0, 0, 0, 0, 0, 0, 0, 51200, 256, 409600, 128, 8, 0),
(78, '-=[Kristallin]=-', '', -1, 50000, 0, 40000, 60, 900, 1200, 320, '0', 0, 0, 0, 0, 0, 0, 0, 6400, 32, 12800, 16, 3, 0),
(77, '-=[Lordakium]=-', '', -1, 300000, 0, 200000, 60, 3150, 3600, 230, '0', 0, 0, 0, 0, 0, 0, 0, 25600, 128, 204800, 64, 6, 0),
(76, '-=[Sibelonit]=-', '', -1, 40000, 0, 40000, 60, 750, 1000, 320, '0', 0, 0, 0, 0, 0, 0, 0, 3200, 16, 12800, 12, 3, 0),
(75, '-=[Saimon]=-', '', -1, 6000, 0, 3000, 60, 150, 200, 320, '0', 0, 0, 0, 0, 0, 0, 0, 1600, 8, 1600, 4, 2, 0),
(74, '-=[Sibelon]=-', '', -1, 200000, 0, 200000, 60, 2250, 3000, 100, '0', 0, 0, 0, 0, 0, 0, 0, 12800, 64, 102400, 32, 5, 0),
(73, '-=[Mordon]=-', '', -1, 20000, 0, 10000, 60, 300, 400, 125, '0', 0, 0, 0, 0, 0, 0, 0, 3200, 16, 6400, 8, 2, 0),
(71, '-=[Lordakia]=-', '', -1, 2000, 0, 2000, 60, 80, 100, 320, '0', 0, 0, 0, 0, 0, 0, 0, 800, 4, 800, 2, 0, 0),
(72, '-=[Devolarium]=-', '', -1, 100000, 0, 100000, 60, 900, 1200, 200, '0', 0, 0, 0, 0, 0, 0, 0, 6400, 32, 51200, 16, 4, 0),
(70, 'Spearhead', 'ship_spearhead', 45000, 100000, 100000, 0, 0, 3000, 4500, 370, '1', 0, 5, 12, 5000, 500, 2, 500, 0, 0, 0, 0, 0, 0),
(69, 'Citadel', 'ship_citadel', 300000, 550000, 550000, 0, 0, 25000, 30000, 240, '1', 0, 7, 20, 20000, 2000, 5, 4000, 0, 0, 0, 0, 0, 0),
(68, 'Ignite', 'ship_ignite', 80000, 256000, 256000, 265000, 92, 42500, 45000, 300, '1', 4, 15, 15, 32000, 1600, 3, 1500, 51200, 512, 0, 0, 0, 0),
(67, 'Venom', 'ship_venom', 250000, 256000, 256000, 265000, 92, 42500, 45000, 300, '1', 4, 15, 15, 32000, 1600, 3, 1500, 51200, 512, 0, 0, 0, 0),
(66, 'Sentinel', 'ship_sentinel', 250000, 256000, 256000, 265000, 92, 42500, 45000, 300, '1', 4, 15, 15, 32000, 1600, 3, 1500, 51200, 512, 0, 0, 0, 0),
(65, 'Spectrum', 'ship_spectrum', 250000, 256000, 256000, 265000, 92, 42500, 45000, 300, '1', 4, 15, 15, 32000, 1600, 3, 1500, 51200, 512, 0, 0, 0, 0),
(64, 'Diminisher', 'ship_diminisher', 250000, 256000, 256000, 265000, 92, 42500, 45000, 300, '1', 4, 15, 15, 32000, 1600, 3, 1500, 51200, 512, 0, 0, 0, 0),
(63, 'Solace', 'ship_solace', 250000, 256000, 256000, 265000, 92, 42500, 45000, 300, '1', 4, 15, 15, 32000, 1600, 3, 1500, 51200, 512, 0, 0, 0, 0),
(62, 'Exalted', 'ship_exalted', 100000, 256000, 256000, 265000, 92, 42500, 45000, 300, '1', 4, 15, 15, 32000, 1600, 3, 1500, 51200, 512, 0, 0, 0, 0),
(61, 'Veteran', 'ship_veteran', 100000, 256000, 256000, 265000, 92, 42500, 45000, 300, '1', 4, 15, 15, 32000, 1600, 3, 1500, 51200, 512, 0, 0, 0, 0),
(60, 'Avenger', 'ship_avenger', 100000, 180000, 180000, 145000, 80, 24000, 25000, 380, '1', 4, 10, 10, 16000, 800, 2, 1000, 12800, 128, 0, 0, 0, 0),
(59, 'Bastion', 'ship_bastion', 100000, 256000, 256000, 265000, 92, 42500, 45000, 300, '1', 4, 15, 15, 32000, 1600, 3, 1500, 51200, 512, 0, 0, 0, 0),
(58, 'Revenger', 'ship_revenger', 100000, 180000, 180000, 145000, 80, 24000, 25000, 380, '1', 4, 10, 10, 16000, 800, 2, 1000, 12800, 128, 0, 0, 0, 0),
(57, 'USA', 'ship_independence', 100000, 256000, 256000, 265000, 92, 42500, 45000, 300, '1', 4, 15, 15, 32000, 1600, 3, 1500, 51200, 512, 0, 0, 0, 0),
(56, 'Enforcer', 'ship_enforcer', 100000, 256000, 256000, 265000, 92, 42500, 45000, 300, '1', 4, 15, 15, 32000, 1600, 3, 1500, 51200, 512, 0, 0, 0, 0),
(55, 'Jade', 'ship_jade', 80000, 256000, 256000, 265000, 92, 42500, 45000, 300, '1', 4, 15, 15, 32000, 1600, 3, 1500, 51200, 512, 0, 0, 0, 0),
(54, 'Sapphire', 'ship_sapphire', 80000, 256000, 256000, 265000, 92, 42500, 45000, 300, '1', 4, 15, 15, 32000, 1600, 3, 1500, 51200, 512, 0, 0, 0, 0),
(53, 'Crismon', 'ship_crismon', 80000, 256000, 256000, 265000, 92, 42500, 45000, 300, '1', 4, 15, 15, 32000, 1600, 3, 1500, 51200, 512, 0, 0, 0, 0),
(52, 'Amber', 'ship_amber', 80000, 256000, 256000, 265000, 92, 42500, 45000, 300, '1', 4, 15, 15, 32000, 1600, 3, 1500, 51200, 512, 0, 0, 0, 0),
(50, 'red bigboy', '', 0, 160000, 160000, 0, 0, 0, 0, 260, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(49, 'Aegis', 'ship_aegis', 250000, 275000, 275000, 0, 0, 30000, 40000, 300, '1', 0, 10, 15, 15000, 3000, 3, 2000, 0, 0, 0, 0, 0, 0),
(48, '-=[Carnivalbot]=-', '', -1, 1000, 0, 0, 60, 20, 20, 150, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(46, '..::{Boss Sibelon}::..', '', -1, 800000, 0, 800000, 60, 9100, 12350, 100, '0', 0, 0, 0, 0, 0, 0, 0, 51200, 256, 408600, 128, 10, 0),
(45, '<-o(Uber Kristallon)o->', '', -1, 3200000, 0, 2400000, 60, 30000, 45000, 200, '1', 0, 0, 0, 0, 0, 0, 0, 409600, 2048, 3268800, 1024, 32, 0),
(42, '<-o(Uber Kristallin)o->', '', -1, 400000, 0, 320000, 60, 7200, 9400, 250, '0', 0, 0, 0, 0, 0, 0, 0, 51200, 256, 102400, 128, 12, 0),
(35, '..::{Boss Kristallon}::..', '', -1, 1600000, 0, 1200000, 60, 15000, 20000, 250, '1', 0, 0, 0, 0, 0, 0, 0, 204800, 1024, 1634400, 512, 16, 0),
(34, '..::{Boss StreuneR}::..', '', -1, 80000, 0, 40000, 60, 1500, 2000, 280, '1', 0, 0, 0, 0, 0, 0, 0, 12800, 64, 51200, 32, 4, 0),
(33, '-=[Super Ice Metroid]=-', '', -1, 3200000, 0, 2400000, 60, 0, 0, 200, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, '-=[Santabot]=-', '', -1, 1000, 0, 0, 20, 20, 0, 150, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, '..::{Boss Mordon}::..', '', -1, 80000, 0, 40000, 60, 1300, 1500, 125, '0', 0, 0, 0, 0, 0, 0, 0, 12800, 64, 51200, 32, 4, 0),
(30, 'leonov', '', 0, 160000, 160000, 0, 0, 0, 0, 380, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, '..::{Boss Kristallin}::..', '', -1, 200000, 0, 160000, 60, 3600, 4700, 320, '0', 0, 0, 0, 0, 0, 0, 0, 25600, 128, 51200, 64, 6, 0),
(28, '..::{Boss Lordakium}::..', '', -1, 1200000, 0, 800000, 60, 10000, 16000, 230, '1', 0, 0, 0, 0, 0, 0, 0, 102400, 512, 819200, 256, 12, 0),
(27, '..::{Boss Sibelonit}::..', '', -1, 160000, 0, 160000, 60, 3175, 4350, 320, '0', 0, 0, 0, 0, 0, 0, 0, 12800, 128, 51200, 64, 6, 0),
(26, '..::{Boss Devolarium}::..', '', -1, 400000, 0, 400000, 60, 4100, 4650, 200, '0', 0, 0, 0, 0, 0, 0, 0, 25600, 128, 204800, 64, 8, 0),
(25, '..::{Boss Saimon}::..', '', -1, 24000, 0, 12000, 60, 600, 720, 320, '0', 0, 0, 0, 0, 0, 0, 0, 6400, 32, 6400, 16, 4, 0),
(24, '..::{Boss Lordakia}::..', '', -1, 8000, 0, 8000, 60, 295, 350, 320, '0', 0, 0, 0, 0, 0, 0, 0, 3200, 16, 3200, 8, 2, 0),
(22, 'pet', '', -1, 20, 0, 20, 60, 20, 20, 200, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, '..::{Boss Streuner}::..', '', -1, 3200, 0, 1600, 60, 100, 120, 270, '1', 0, 0, 0, 0, 0, 0, 0, 1600, 8, 1600, 4, 2, 0),
(20, 'UFO', '', -1, 3200000, 0, 2400000, 60, 120000, 125000, 250, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 'mini UFO', '', -1, 400000, 0, 300000, 60, 4000, 5000, 300, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 'Vengeance Lightning', 'ship_lightning', 250000, 180000, 180000, 145000, 80, 24000, 25000, 380, '1', 4, 10, 10, 16000, 800, 2, 1000, 12800, 128, 0, 0, 0, 0),
(17, 'Vengeance Corsair', 'ship_corsair', 100000, 180000, 180000, 145000, 80, 24000, 25000, 380, '1', 4, 10, 10, 16000, 800, 2, 1000, 12800, 128, 0, 0, 0, 0),
(16, 'Vengeance Adept', 'ship_adpet', 100000, 180000, 180000, 145000, 80, 24000, 25000, 380, '1', 4, 10, 10, 16000, 800, 2, 1000, 12800, 128, 0, 0, 0, 0),
(15, 'pet', '', -1, 20, 0, 20, 60, 20, 20, 200, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 'pet', '', -1, 20, 0, 20, 60, 20, 20, 200, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 'pet', '', -1, 20, 0, 20, 60, 20, 20, 200, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'pet', '', -1, 20, 0, 20, 60, 20, 20, 200, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, '-=[demaNer]=-', '', -1, 400000, 0, 300000, 60, 3500, 4000, 300, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 'Goliath', 'ship_goliath', 80000, 256000, 256000, 265000, 92, 42500, 45000, 300, '1', 4, 15, 15, 32000, 1600, 3, 1500, 51200, 512, 0, 0, 0, 0),
(95, '-=[Convict]=-', '', -1, 400000, 0, 200000, 60, 9500, 12000, 340, '0', 0, 0, 0, 0, 0, 0, 0, 18000, 64, 25000, 128, 0, 0),
(96, '-=[Hooligan]=-', '', -1, 250000, 0, 200000, 60, 7000, 9000, 340, '0', 0, 0, 0, 0, 0, 0, 0, 12000, 16, 15000, 32, 0, 0),
(97, '-=[Ravager]=-', '', -1, 300000, 0, 200000, 60, 8000, 11000, 340, '0', 0, 0, 0, 0, 0, 0, 0, 15000, 64, 20000, 128, 0, 0),
(98, 'PoliceShip', 'ship_police', 0, 100000000, 100000000, 1250000, 90, 500000, 525000, 700, '1', 1, 50, 50, 1000000, 1000000, 10, 2500000, 1000000, 100000, 0, 0, 0, 0),
(99, '-=[Scorcher]=-', '', -1, 200000, 0, 200000, 60, 2500, 0, 280, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(100, '-=[Infernal]=-', '', -1, 60000, 0, 50000, 60, 950, 0, 300, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(101, '-=[Ice Meteoroid]=-', '', -1, 1600000, 0, 1200000, 60, 0, 0, 200, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(102, '-=[Melter]=-', '', -1, 1000, 0, 0, 20, 20, 0, 150, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(103, '<=<Icy>=>', '', -1, 100000, 0, 80000, 60, 1500, 0, 450, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(104, '-=[Binarybot]=-', '', -1, 800000, 0, 1200000, 80, 20000, 0, 300, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(105, '-=[Devourer]=-', '', -1, 1000, 0, 0, 20, 20, 0, 150, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(106, '-=[Lordakia]=-', '', -1, 2000, 0, 2000, 60, 80, 0, 320, '0', 0, 0, 0, 0, 0, 0, 0, 800, 4, 800, 2, 0, 0),
(107, '-=[Solarburst]=-', '', -1, 1000, 0, 0, 20, 20, 0, 150, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(108, '-=[Havok]=-', '', -1, 50000, 0, 50000, 60, 1400, 0, 300, '0', 0, 0, 0, 0, 0, 0, 0, 12800, 64, 12800, 32, 0, 0),
(109, 'Saturn', 'ship_saturn', 250000, 307200, 256000, 265000, 92, 42500, 45000, 300, '1', 4, 15, 15, 32000, 1600, 3, 1500, 51200, 512, 0, 0, 0, 0),
(110, 'Centaur', 'ship_centaur', 250000, 281600, 256000, 265000, 92, 42500, 45000, 300, '1', 4, 15, 15, 32000, 1600, 3, 1500, 51200, 512, 0, 0, 0, 0),
(111, '-=[Interceptor]=-', '', -1, 60000, 0, 40000, 60, 350, 500, 450, '0', 0, 0, 0, 0, 0, 0, 0, 7500, 24, 25000, 20, 1, 0),
(112, '-=[Barracuda]=-', '', -1, 180000, 0, 100000, 60, 4500, 6000, 430, '0', 0, 0, 0, 0, 0, 0, 0, 15000, 56, 90000, 25, 2, 0),
(113, '-=[Saboteur]=-', '', -1, 200000, 0, 150000, 60, 3000, 4000, 430, '0', 0, 0, 0, 0, 0, 0, 0, 22500, 72, 125000, 45, 2, 0),
(114, '-=[Annihilator]=-', '', -1, 300000, 0, 200000, 60, 12000, 14000, 350, '0', 0, 0, 0, 0, 0, 0, 0, 75000, 128, 250000, 65, 6, 0),
(115, '-=[Battleray]=-', '', -1, 500000, 0, 400000, 60, 7000, 10000, 250, '0', 0, 0, 0, 0, 0, 0, 0, 125000, 192, 1750000, 175, 8, 0),
(116, '-=[Hitac 2.0]=-', '', -1, 1000, 0, 0, 20, 20, 0, 150, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(117, '-=[Minion]=-', '', -1, 1000, 0, 0, 20, 20, 0, 150, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(118, '..::{Boss Twist}::..', '', -1, 1000, 0, 0, 20, 20, 0, 150, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(119, '-=[Twist]=-', '', -1, 1000, 0, 0, 20, 20, 0, 150, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(120, '-=[Turkey]=-', '', -1, 1000, 0, 0, 20, 20, 0, 150, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(121, '-=[Snowman]=-', '', -1, 1000, 0, 0, 20, 20, 0, 150, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(122, '-=[Emperor Kristallon]=-', '', -1, 1000, 0, 0, 20, 20, 0, 150, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123, '-=[Emperor Lordakium]=-', '', -1, 1000, 0, 0, 20, 20, 0, 150, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(124, '-=[Emperor Sibelon]=-', '', -1, 1000, 0, 0, 20, 20, 0, 150, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(125, '-=[Mine Car]=-', '', -1, 1000, 0, 0, 20, 20, 0, 150, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(442, '-=[Spaceball]=-', '', -1, 0, 0, 0, 0, 0, 0, 200, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(443, '-=[Spaceball]=-', '', -1, 0, 0, 0, 0, 0, 0, 200, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(444, '-=[Spaceball]=-', '', -1, 0, 0, 0, 0, 0, 0, 200, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ships_designs`
--

CREATE TABLE IF NOT EXISTS `ships_designs` (
`Id` smallint(11) NOT NULL,
  `ShipId` smallint(11) NOT NULL,
  `Name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ships_designs`
--

INSERT INTO `ships_designs` (`Id`, `ShipId`, `Name`, `type`) VALUES
(16, 8, 'Vengeance Adept', 'ship_vengeance_design_adept'),
(17, 8, 'Vengeance Corsair', 'ship_vengeance_design_corsair'),
(18, 8, 'Vengeance Skill Design Lightning', 'ship_vengeance_design_lightning'),
(19, 10, 'Goliath Jade', 'ship_goliath_design_jade'),
(52, 10, 'Goliath Orange / Amber', 'ship_goliath_design_amber'),
(53, 10, 'Goliath Red (Crimson)', 'ship_goliath_design_crimson'),
(54, 10, 'Goliath Blue / Sapphire', 'ship_goliath_design_sapphire'),
(56, 10, 'Goliath Black (Enforcer)', 'ship_goliath_design_enforcer'),
(57, 10, 'Goliath Stars and Stripes', 'ship_goliath_design_independence'),
(58, 8, 'Vengeance Revenge', 'ship_vengeance_design_revenge'),
(59, 10, 'Goliath Bastion', 'ship_goliath_design_bastion'),
(60, 8, 'Vengeance Avenger', 'ship_vengeance_design_avenger'),
(61, 10, 'Goliath Veteran', 'ship_goliath_design_veteran'),
(62, 10, 'Goliath Exalted', 'ship_goliath_design_exalted'),
(63, 10, 'Skill Design 1 - Solace', 'ship_goliath_design_solace'),
(64, 10, 'Skill Design 2 - Diminisher', 'ship_goliath_design_diminisher'),
(65, 10, 'Skill Design 3 - Spectrum', 'ship_goliath_design_spectrum'),
(66, 10, 'Skill Design 4 - Sentinel', 'ship_goliath_design_sentinel'),
(67, 10, 'Skill Design 5 - Venom', 'ship_goliath_design_venom'),
(68, 10, 'Goliath Ignite', 'ship_goliath_design_ignite'),
(86, 10, 'Goliath Kick', 'ship_goliath_design_kick'),
(87, 10, 'Goliath Referee', 'ship_goliath_design_referee'),
(88, 10, 'Goliath Goal', 'ship_goliath_design_goal'),
(109, 10, 'Goliath Saturn', 'ship_goliath_design_saturn'),
(110, 10, 'Goliath Centaur', 'ship_goliath_design_centaur');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`ID` int(255) NOT NULL,
  `Email` varchar(255) NOT NULL DEFAULT '',
  `Name` varchar(255) NOT NULL DEFAULT '',
  `pwHash` varchar(255) NOT NULL DEFAULT '',
  `Servers` text NOT NULL,
  `sessionId` bigint(20) NOT NULL DEFAULT '0',
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`ID`, `Email`, `Name`, `pwHash`, `Servers`, `sessionId`, `regDate`) VALUES
(1, 'a@a.com', 'Borja', 'eabff95ceee4885e265b2cad2f18ae66', '[{1:1}]', 82196565630805255, '2015-03-19 15:42:37');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cms`
--
ALTER TABLE `cms`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `handler` (`handler`);

--
-- Indices de la tabla `filecollection_file`
--
ALTER TABLE `filecollection_file`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `filecollection_location`
--
ALTER TABLE `filecollection_location`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `item_filter`
--
ALTER TABLE `item_filter`
 ADD UNIQUE KEY `filter_id_values` (`filter_id_values`);

--
-- Indices de la tabla `mailsystem`
--
ALTER TABLE `mailsystem`
 ADD PRIMARY KEY (`mailID`);

--
-- Indices de la tabla `maps`
--
ALTER TABLE `maps`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `messages`
--
ALTER TABLE `messages`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `navigation`
--
ALTER TABLE `navigation`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `portals`
--
ALTER TABLE `portals`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rank`
--
ALTER TABLE `rank`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servers`
--
ALTER TABLE `servers`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `server_1_auction_hour`
--
ALTER TABLE `server_1_auction_hour`
 ADD PRIMARY KEY (`autoID`);

--
-- Indices de la tabla `server_1_clan`
--
ALTER TABLE `server_1_clan`
 ADD PRIMARY KEY (`clanID`);

--
-- Indices de la tabla `server_1_clan_diplomacy`
--
ALTER TABLE `server_1_clan_diplomacy`
 ADD PRIMARY KEY (`autoID`);

--
-- Indices de la tabla `server_1_clan_join`
--
ALTER TABLE `server_1_clan_join`
 ADD PRIMARY KEY (`autoID`);

--
-- Indices de la tabla `server_1_hangar`
--
ALTER TABLE `server_1_hangar`
 ADD PRIMARY KEY (`hangarID`);

--
-- Indices de la tabla `server_1_hangar_config_drones`
--
ALTER TABLE `server_1_hangar_config_drones`
 ADD PRIMARY KEY (`autoID`);

--
-- Indices de la tabla `server_1_hangar_config_pet10`
--
ALTER TABLE `server_1_hangar_config_pet10`
 ADD PRIMARY KEY (`autoID`);

--
-- Indices de la tabla `server_1_hangar_config_ship`
--
ALTER TABLE `server_1_hangar_config_ship`
 ADD PRIMARY KEY (`autoID`);

--
-- Indices de la tabla `server_1_log`
--
ALTER TABLE `server_1_log`
 ADD PRIMARY KEY (`autoID`);

--
-- Indices de la tabla `server_1_players`
--
ALTER TABLE `server_1_players`
 ADD PRIMARY KEY (`playerID`);

--
-- Indices de la tabla `server_1_players_galaxygate`
--
ALTER TABLE `server_1_players_galaxygate`
 ADD PRIMARY KEY (`fixID`);

--
-- Indices de la tabla `server_1_players_items`
--
ALTER TABLE `server_1_players_items`
 ADD PRIMARY KEY (`item_id`);

--
-- Indices de la tabla `server_1_players_settings`
--
ALTER TABLE `server_1_players_settings`
 ADD PRIMARY KEY (`playerID`);

--
-- Indices de la tabla `server_1_player_all_items`
--
ALTER TABLE `server_1_player_all_items`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `server_1_player_drones`
--
ALTER TABLE `server_1_player_drones`
 ADD PRIMARY KEY (`drone_id`);

--
-- Indices de la tabla `server_1_player_hangar_general_ship`
--
ALTER TABLE `server_1_player_hangar_general_ship`
 ADD PRIMARY KEY (`autoID`);

--
-- Indices de la tabla `server_1_player_pet10`
--
ALTER TABLE `server_1_player_pet10`
 ADD PRIMARY KEY (`pet_id`);

--
-- Indices de la tabla `server_item_types`
--
ALTER TABLE `server_item_types`
 ADD PRIMARY KEY (`item_type_id`);

--
-- Indices de la tabla `server_lootids`
--
ALTER TABLE `server_lootids`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `server_shop_items`
--
ALTER TABLE `server_shop_items`
 ADD PRIMARY KEY (`autoId`);

--
-- Indices de la tabla `ships`
--
ALTER TABLE `ships`
 ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `ships_designs`
--
ALTER TABLE `ships_designs`
 ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cms`
--
ALTER TABLE `cms`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `mailsystem`
--
ALTER TABLE `mailsystem`
MODIFY `mailID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `maps`
--
ALTER TABLE `maps`
MODIFY `id` smallint(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT de la tabla `messages`
--
ALTER TABLE `messages`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `navigation`
--
ALTER TABLE `navigation`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `portals`
--
ALTER TABLE `portals`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT de la tabla `servers`
--
ALTER TABLE `servers`
MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `server_1_auction_hour`
--
ALTER TABLE `server_1_auction_hour`
MODIFY `autoID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT de la tabla `server_1_clan`
--
ALTER TABLE `server_1_clan`
MODIFY `clanID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `server_1_clan_diplomacy`
--
ALTER TABLE `server_1_clan_diplomacy`
MODIFY `autoID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `server_1_clan_join`
--
ALTER TABLE `server_1_clan_join`
MODIFY `autoID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `server_1_hangar`
--
ALTER TABLE `server_1_hangar`
MODIFY `hangarID` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `server_1_hangar_config_drones`
--
ALTER TABLE `server_1_hangar_config_drones`
MODIFY `autoID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `server_1_hangar_config_pet10`
--
ALTER TABLE `server_1_hangar_config_pet10`
MODIFY `autoID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `server_1_hangar_config_ship`
--
ALTER TABLE `server_1_hangar_config_ship`
MODIFY `autoID` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `server_1_log`
--
ALTER TABLE `server_1_log`
MODIFY `autoID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `server_1_players`
--
ALTER TABLE `server_1_players`
MODIFY `playerID` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `server_1_players_galaxygate`
--
ALTER TABLE `server_1_players_galaxygate`
MODIFY `fixID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `server_1_players_items`
--
ALTER TABLE `server_1_players_items`
MODIFY `item_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `server_1_players_settings`
--
ALTER TABLE `server_1_players_settings`
MODIFY `playerID` bigint(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1028;
--
-- AUTO_INCREMENT de la tabla `server_1_player_all_items`
--
ALTER TABLE `server_1_player_all_items`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'item id',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `server_1_player_drones`
--
ALTER TABLE `server_1_player_drones`
MODIFY `drone_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `server_1_player_hangar_general_ship`
--
ALTER TABLE `server_1_player_hangar_general_ship`
MODIFY `autoID` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `server_1_player_pet10`
--
ALTER TABLE `server_1_player_pet10`
MODIFY `pet_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `server_item_types`
--
ALTER TABLE `server_item_types`
MODIFY `item_type_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `server_lootids`
--
ALTER TABLE `server_lootids`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=268;
--
-- AUTO_INCREMENT de la tabla `server_shop_items`
--
ALTER TABLE `server_shop_items`
MODIFY `autoId` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=168;
--
-- AUTO_INCREMENT de la tabla `ships`
--
ALTER TABLE `ships`
MODIFY `Id` smallint(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=445;
--
-- AUTO_INCREMENT de la tabla `ships_designs`
--
ALTER TABLE `ships_designs`
MODIFY `Id` smallint(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
