-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.19 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para teamgym
CREATE DATABASE IF NOT EXISTS `teamgym` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `teamgym`;

-- Volcando estructura para tabla teamgym.ejercicios
CREATE TABLE IF NOT EXISTS `ejercicios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `grupo_id` int(10) unsigned NOT NULL,
  `ejercicio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `explicacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tiempo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `material` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posicion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consejo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ejercicios_id_grupo_foreign` (`grupo_id`),
  CONSTRAINT `ejercicios_id_grupo_foreign` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla teamgym.ejercicios: ~141 rows (aproximadamente)
/*!40000 ALTER TABLE `ejercicios` DISABLE KEYS */;
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(57, 1, 'abdominales banco multipower', 'abdominales/abdominales_banco_multipower.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(58, 1, 'abdominales_como_flexiones', 'abdominales/abdominales_como_flexiones.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(59, 1, 'abdominales_con_banco', 'abdominales/abdominales_con_banco.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(60, 1, 'abdominales_con_remo', 'abdominales/abdominales_con_remo.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(61, 1, 'abdominales_cuadriceps', 'abdominales/abdominales_cuadriceps.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(62, 1, 'abdominales_inferiro', 'abdominales/abdominales_inferiro.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(63, 1, 'abdominales_maquina', 'abdominales/abdominales_maquina.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(64, 1, 'abdominales_pies_elebados', 'abdominales/abdominales_pies_elebados.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(65, 1, 'abdominales_polea', 'abdominales/abdominales_polea.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(66, 1, 'abdominales_polea_triceps', 'abdominales/abdominales_polea_triceps.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(67, 1, 'abdominales_superior', 'abdominales/abdominales_superior.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(68, 1, 'oblicuos', 'abdominales/oblicuos.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(69, 1, 'oblicuos_pres_banca', 'abdominales/oblicuos_pres_banca.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(70, 1, 'oblicuos_tradicional', 'abdominales/oblicuos_tradicional.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(71, 2, 'curl_biceps', 'biceps/curl_biceps.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(72, 2, 'curl_biceps_aberto', 'biceps/curl_biceps_aberto.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(73, 2, 'curl_biceps_maquina', 'biceps/curl_biceps_maquina.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(74, 2, 'curl_biceps_polea', 'biceps/curl_biceps_polea.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(75, 2, 'curl_concentrado', 'biceps/curl_concentrado.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(76, 2, 'curl_concentrado_cerrado', 'biceps/curl_concentrado_cerrado.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(77, 2, 'curl_concentrado_depie', 'biceps/curl_concentrado_depie.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(78, 2, 'curl_concentrado_maquina', 'biceps/curl_concentrado_maquina.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(79, 2, 'curl_concentrado_multiPower', 'biceps/curl_concentrado_multiPower.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(80, 2, 'curl_concentrado_multiPower_abierto', 'biceps/curl_concentrado_multiPower_abierto.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(81, 2, 'curl_concentrado_rodila', 'biceps/curl_concentrado_rodila.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(82, 2, 'curl_con_mancuernas', 'biceps/curl_con_mancuernas.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(83, 2, 'curl_con_polea', 'biceps/curl_con_polea.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(84, 2, 'curl_con_polea_barra_recta', 'biceps/curl_con_polea_barra_recta.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(85, 2, 'curl_estiramiento', 'biceps/curl_estiramiento.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(86, 2, 'curl_martillo', 'biceps/curl_martillo.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(87, 2, 'curl_martillo_depie', 'biceps/curl_martillo_depie.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(88, 3, 'triceps_concentrado_maquina', 'triceps/triceps_concentrado_maquina.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(89, 3, 'triceps_concentrado_maquina_barra_v', 'triceps/triceps_concentrado_maquina_barra_v.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(90, 3, 'triceps_concentrado_maquina_un_brazo', 'triceps/triceps_concentrado_maquina_un_brazo.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(91, 3, 'triceps_fondos_entre_bancos', 'triceps/triceps_fondos_entre_bancos.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(92, 3, 'triceps_fondos_maquina', 'triceps/triceps_fondos_maquina.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(93, 3, 'triceps_pajaritos', 'triceps/triceps_pajaritos.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(94, 3, 'triceps_pajaritos_un_brazo', 'triceps/triceps_pajaritos_un_brazo.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(95, 3, 'triceps_presbanca', 'triceps/triceps_presbanca.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(96, 3, 'triceps_presbanca_dos_mancuernas', 'triceps/triceps_presbanca_dos_mancuernas.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(97, 3, 'triceps_presbanca_multipower', 'triceps/triceps_presbanca_multipower.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(98, 3, 'triceps_sentado_dos_brazos_una_mancuerna', 'triceps/triceps_sentado_dos_brazos_una_mancuerna.p', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(99, 3, 'triceps_sentado_un_brazos_una_mancuerna', 'triceps/triceps_sentado_un_brazos_una_mancuerna.pn', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(100, 4, 'espalda_banco', 'espalda/espalda_banco.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(101, 4, 'espalda_barra_multipower', 'espalda/espalda_barra_multipower.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(102, 4, 'espalda_biceps_polea', 'espalda/espalda_biceps_polea.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(103, 4, 'espalda_discos', 'espalda/espalda_discos.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(104, 4, 'espalda_dominadas', 'espalda/espalda_dominadas.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(105, 4, 'espalda_dominadas_maquina', 'espalda/espalda_dominadas_maquina.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(106, 4, 'espalda_exterior_barra_multipower', 'espalda/espalda_exterior_barra_multipower.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(107, 4, 'espalda_mancuernas', 'espalda/espalda_mancuernas.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(108, 4, 'espalda_polea_brazos_estirados', 'espalda/espalda_polea_brazos_estirados.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(109, 4, 'espalda_polea_delante', 'espalda/espalda_polea_delante.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(110, 4, 'espalda_polea_detras', 'espalda/espalda_polea_detras.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(111, 4, 'espalda_remo_cerrado', 'espalda/espalda_remo_cerrado.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(112, 5, 'Hombro', 'hombros/Hombro.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(113, 5, 'Hombro_aperturas', 'hombros/Hombro_aperturas.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(114, 5, 'Hombro_aperturas_banco_lateral', 'hombros/Hombro_aperturas_banco_lateral.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(115, 5, 'Hombro_aperturas_inclinado', 'hombros/Hombro_aperturas_inclinado.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(116, 5, 'Hombro_aperturas_polea', 'hombros/Hombro_aperturas_polea.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(117, 5, 'Hombro_deltoides', 'hombros/Hombro_deltoides.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(118, 5, 'Hombro_deltoides_mancuernas', 'hombros/Hombro_deltoides_mancuernas.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(119, 5, 'Hombro_deltoides_maquina', 'hombros/Hombro_deltoides_maquina.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(120, 5, 'Hombro_elebaciones', 'hombros/Hombro_elebaciones.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(121, 5, 'Hombro_elebaciones_polea', 'hombros/Hombro_elebaciones_polea.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(122, 5, 'Hombro_elebaciones_una_a_una', 'hombros/Hombro_elebaciones_una_a_una.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(123, 5, 'Hombro_pajaritos', 'hombros/Hombro_pajaritos.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(124, 5, 'Hombro', 'hombros/Hombro.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(125, 5, 'Hombro_aperturas', 'hombros/Hombro_aperturas.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(126, 5, 'Hombro_aperturas_banco_lateral', 'hombros/Hombro_aperturas_banco_lateral.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(127, 5, 'Hombro_aperturas_inclinado', 'hombros/Hombro_aperturas_inclinado.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(128, 5, 'Hombro_aperturas_polea', 'hombros/Hombro_aperturas_polea.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(129, 5, 'Hombro_deltoides', 'hombros/Hombro_deltoides.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(130, 5, 'Hombro_deltoides_mancuernas', 'hombros/Hombro_deltoides_mancuernas.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(131, 5, 'Hombro_deltoides_maquina', 'hombros/Hombro_deltoides_maquina.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(132, 5, 'Hombro_elebaciones', 'hombros/Hombro_elebaciones.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(133, 5, 'Hombro_elebaciones_polea', 'hombros/Hombro_elebaciones_polea.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(134, 5, 'Hombro_elebaciones_una_a_una', 'hombros/Hombro_elebaciones_una_a_una.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(135, 5, 'Hombro_pajaritos', 'hombros/Hombro_pajaritos.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(136, 6, 'pecho_aperturas', 'pecho/pecho_aperturas.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(137, 6, 'pecho_aperturas_mancuernas', 'pecho/pecho_aperturas_mancuernas.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(138, 6, 'pecho_aperturas_maquina', 'pecho/pecho_aperturas_maquina.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(139, 6, 'pecho_aperturas_poleas', 'pecho/pecho_aperturas_poleas.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(140, 6, 'pecho_concentrado', 'pecho/pecho_concentrado.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(141, 6, 'pecho_dominadas', 'pecho/pecho_dominadas.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(142, 6, 'pecho_flexiones', 'pecho/pecho_flexiones.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(143, 6, 'pecho_inclinado_mancuernas', 'pecho/pecho_inclinado_mancuernas.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(144, 6, 'pecho_inclinado_polea', 'pecho/pecho_inclinado_polea.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(145, 6, 'pecho_maquina', 'pecho/pecho_maquina.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(146, 6, 'pecho_maquina_concentrado', 'pecho/pecho_maquina_concentrado.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(147, 6, 'pecho_pesolibre', 'pecho/pecho_pesolibre.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(148, 6, 'pecho_peso_frances', 'pecho/pecho_peso_frances.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(149, 6, 'pecho_poleas', 'pecho/pecho_poleas.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(150, 6, 'pecho_presbanca', 'pecho/pecho_presbanca.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(151, 6, 'pecho_presbanca_inclinado_mancuernas', 'pecho/pecho_presbanca_inclinado_mancuernas.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(152, 6, 'pecho_presbanca_mancuernas', 'pecho/pecho_presbanca_mancuernas.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(153, 6, 'pecho_pres_banca_inclinado', 'pecho/pecho_pres_banca_inclinado.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(154, 6, 'presbanca', 'pecho/presbanca.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(155, 7, 'Cuadriceps', 'piernas/Cuadriceps.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(156, 7, 'Cuadriceps_manuernas', 'piernas/Cuadriceps_manuernas.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(157, 7, 'Cuadriceps_Prensa', 'piernas/Cuadriceps_Prensa.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(158, 7, 'Cuadriceps_Prensa_2', 'piernas/Cuadriceps_Prensa_2.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(159, 7, 'cuadriceps_pullover', 'piernas/cuadriceps_pullover.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(160, 7, 'cuadriceps_sentadillas', 'piernas/cuadriceps_sentadillas.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(161, 7, 'gemelos_escalon', 'piernas/gemelos_escalon.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(162, 7, 'gemelos_escalon_sentado', 'piernas/gemelos_escalon_sentado.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(163, 7, 'gemelos_prensa', 'piernas/gemelos_prensa.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(169, 8, 'bicycle_crunch', 'sinpesas_abdominal/bicycle_crunch.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(170, 8, 'crunch', 'sinpesas_abdominal/crunch.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(171, 8, 'diagona_plank', 'sinpesas_abdominal/diagona_plank.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(172, 8, 'kneli_side_plank', 'sinpesas_abdominal/kneli_side_plank.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(173, 8, 'plank', 'sinpesas_abdominal/plank.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(174, 8, 'reverse_crunch', 'sinpesas_abdominal/reverse_crunch.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(175, 8, 'side_plank', 'sinpesas_abdominal/side_plank.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(176, 8, 'side_plank_reach', 'sinpesas_abdominal/side_plank_reach.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(177, 8, 'sit_up', 'sinpesas_abdominal/sit_up.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(178, 9, 'El â€œTWISTâ€ abdominal', 'sinpesas_espalda/burddob.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(179, 9, 'horcestance', 'sinpesas_espalda/horcestance.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(180, 9, 'superman', 'sinpesas_espalda/superman.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(181, 9, 'wraise', 'sinpesas_espalda/wraise.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(182, 9, 'yraise', 'sinpesas_espalda/yraise.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(183, 10, 'box_jump', 'sinpesas_piernas_y_gluteos/box_jump.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(184, 10, 'but_bridge', 'sinpesas_piernas_y_gluteos/but_bridge.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(185, 10, 'lunge', 'sinpesas_piernas_y_gluteos/lunge.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(186, 10, 'one_led_rdl', 'sinpesas_piernas_y_gluteos/one_led_rdl.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(187, 10, 'side_hip_abduct', 'sinpesas_piernas_y_gluteos/side_hip_abduct.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(188, 10, 'side_lunge', 'sinpesas_piernas_y_gluteos/side_lunge.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(189, 10, 'side_skate_jump', 'sinpesas_piernas_y_gluteos/side_skate_jump.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(190, 10, 'squat', 'sinpesas_piernas_y_gluteos/squat.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(191, 10, 'step_up', 'sinpesas_piernas_y_gluteos/step_up.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(192, 10, 'wall_sit', 'sinpesas_piernas_y_gluteos/wall_sit.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(193, 11, 'High_knees', 'sinpesas_todo_el_cuerpo/High_knees.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(194, 11, 'inchworm', 'sinpesas_todo_el_cuerpo/inchworm.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(195, 11, 'jumping_jack', 'sinpesas_todo_el_cuerpo/jumping_jack.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(196, 11, 'jump_rope', 'sinpesas_todo_el_cuerpo/jump_rope.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(197, 11, 'squat_jump', 'sinpesas_todo_el_cuerpo/squat_jump.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(198, 12, 'chin_up', 'sinpesas_tronco/chin_up.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(199, 12, 'dip', 'sinpesas_tronco/dip.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(200, 12, 'pushup', 'sinpesas_tronco/pushup.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(201, 12, 'wallpush', 'sinpesas_tronco/wallpush.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
INSERT INTO `ejercicios` (`id`, `grupo_id`, `ejercicio`, `imagen`, `explicacion`, `tiempo`, `material`, `posicion`, `consejo`, `created_at`, `updated_at`) VALUES
	(202, 12, 'wallslide', 'sinpesas_tronco/wallslide.png', 'Haz rotaciones de pelvis hacia un lado y luego hacia otro, manten siempre la posicion de los hombros', '00:05 m', 'sin material', 'ponte de pie en la placa giratoria que las mÃ¡quinas dedicadas a este ejercicio tienen. Las manos en los agarres.', 'Flexiona un poco las rodillas para evitar tirones y controlar las rotaciones, Si quieres intensificar el esfuerzo sobre los oblicuos, flexiona ligeramente la espalda', NULL, NULL);
/*!40000 ALTER TABLE `ejercicios` ENABLE KEYS */;

-- Volcando estructura para tabla teamgym.ejercicio_modalidads
CREATE TABLE IF NOT EXISTS `ejercicio_modalidads` (
  `id` int(10) unsigned NOT NULL,
  `modalidad_id` int(10) unsigned NOT NULL,
  `ejercicio_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ejercicio_id`,`modalidad_id`),
  KEY `ejercicios_modalidad_id_modalidad_foreign` (`modalidad_id`),
  CONSTRAINT `ejercicios_modalidad_id_ejercicio_foreign` FOREIGN KEY (`ejercicio_id`) REFERENCES `ejercicios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ejercicios_modalidad_id_modalidad_foreign` FOREIGN KEY (`modalidad_id`) REFERENCES `modalidads` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla teamgym.ejercicio_modalidads: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `ejercicio_modalidads` DISABLE KEYS */;
INSERT INTO `ejercicio_modalidads` (`id`, `modalidad_id`, `ejercicio_id`) VALUES
	(1, 1, 57);
INSERT INTO `ejercicio_modalidads` (`id`, `modalidad_id`, `ejercicio_id`) VALUES
	(2, 1, 58);
INSERT INTO `ejercicio_modalidads` (`id`, `modalidad_id`, `ejercicio_id`) VALUES
	(3, 1, 59);
INSERT INTO `ejercicio_modalidads` (`id`, `modalidad_id`, `ejercicio_id`) VALUES
	(4, 1, 60);
INSERT INTO `ejercicio_modalidads` (`id`, `modalidad_id`, `ejercicio_id`) VALUES
	(5, 1, 61);
INSERT INTO `ejercicio_modalidads` (`id`, `modalidad_id`, `ejercicio_id`) VALUES
	(6, 1, 62);
INSERT INTO `ejercicio_modalidads` (`id`, `modalidad_id`, `ejercicio_id`) VALUES
	(7, 1, 63);
INSERT INTO `ejercicio_modalidads` (`id`, `modalidad_id`, `ejercicio_id`) VALUES
	(8, 1, 64);
INSERT INTO `ejercicio_modalidads` (`id`, `modalidad_id`, `ejercicio_id`) VALUES
	(9, 1, 65);
INSERT INTO `ejercicio_modalidads` (`id`, `modalidad_id`, `ejercicio_id`) VALUES
	(10, 1, 66);
INSERT INTO `ejercicio_modalidads` (`id`, `modalidad_id`, `ejercicio_id`) VALUES
	(11, 1, 67);
/*!40000 ALTER TABLE `ejercicio_modalidads` ENABLE KEYS */;

-- Volcando estructura para tabla teamgym.entrenos
CREATE TABLE IF NOT EXISTS `entrenos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `modalidad_id` int(10) unsigned NOT NULL,
  `repeticiones` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serie` int(11) NOT NULL,
  `nivel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peso` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entrenos_id_modalidad_foreign` (`modalidad_id`),
  CONSTRAINT `entrenos_id_modalidad_foreign` FOREIGN KEY (`modalidad_id`) REFERENCES `modalidads` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla teamgym.entrenos: ~15 rows (aproximadamente)
/*!40000 ALTER TABLE `entrenos` DISABLE KEYS */;
INSERT INTO `entrenos` (`id`, `modalidad_id`, `repeticiones`, `serie`, `nivel`, `peso`, `created_at`, `updated_at`) VALUES
	(1, 1, '12-20', 4, '1', '12-100', NULL, NULL);
INSERT INTO `entrenos` (`id`, `modalidad_id`, `repeticiones`, `serie`, `nivel`, `peso`, `created_at`, `updated_at`) VALUES
	(2, 1, '12-20', 3, '2', '6-12 ', NULL, NULL);
INSERT INTO `entrenos` (`id`, `modalidad_id`, `repeticiones`, `serie`, `nivel`, `peso`, `created_at`, `updated_at`) VALUES
	(3, 1, '12-20', 2, '3', '3-6', NULL, NULL);
INSERT INTO `entrenos` (`id`, `modalidad_id`, `repeticiones`, `serie`, `nivel`, `peso`, `created_at`, `updated_at`) VALUES
	(4, 2, '10-12', 4, '1', '12-100', NULL, NULL);
INSERT INTO `entrenos` (`id`, `modalidad_id`, `repeticiones`, `serie`, `nivel`, `peso`, `created_at`, `updated_at`) VALUES
	(5, 2, '10-12', 3, '2', '6-12 ', NULL, NULL);
INSERT INTO `entrenos` (`id`, `modalidad_id`, `repeticiones`, `serie`, `nivel`, `peso`, `created_at`, `updated_at`) VALUES
	(6, 2, '10-12', 2, '3', '3-6', NULL, NULL);
INSERT INTO `entrenos` (`id`, `modalidad_id`, `repeticiones`, `serie`, `nivel`, `peso`, `created_at`, `updated_at`) VALUES
	(7, 3, '8-10', 4, '1', '12-100', NULL, NULL);
INSERT INTO `entrenos` (`id`, `modalidad_id`, `repeticiones`, `serie`, `nivel`, `peso`, `created_at`, `updated_at`) VALUES
	(8, 3, '8-10', 3, '2', '6-12 ', NULL, NULL);
INSERT INTO `entrenos` (`id`, `modalidad_id`, `repeticiones`, `serie`, `nivel`, `peso`, `created_at`, `updated_at`) VALUES
	(9, 3, '8-10', 2, '3', '3-6', NULL, NULL);
INSERT INTO `entrenos` (`id`, `modalidad_id`, `repeticiones`, `serie`, `nivel`, `peso`, `created_at`, `updated_at`) VALUES
	(10, 4, '13-15', 4, '1', '12-100', NULL, NULL);
INSERT INTO `entrenos` (`id`, `modalidad_id`, `repeticiones`, `serie`, `nivel`, `peso`, `created_at`, `updated_at`) VALUES
	(11, 4, '13-15', 3, '2', '6-12 ', NULL, NULL);
INSERT INTO `entrenos` (`id`, `modalidad_id`, `repeticiones`, `serie`, `nivel`, `peso`, `created_at`, `updated_at`) VALUES
	(12, 4, '13-15', 2, '3', '3-6', NULL, NULL);
INSERT INTO `entrenos` (`id`, `modalidad_id`, `repeticiones`, `serie`, `nivel`, `peso`, `created_at`, `updated_at`) VALUES
	(13, 5, '3 aguantando', 1, '1', '0', NULL, NULL);
INSERT INTO `entrenos` (`id`, `modalidad_id`, `repeticiones`, `serie`, `nivel`, `peso`, `created_at`, `updated_at`) VALUES
	(14, 5, '3 aguantando', 1, '2', '0', NULL, NULL);
INSERT INTO `entrenos` (`id`, `modalidad_id`, `repeticiones`, `serie`, `nivel`, `peso`, `created_at`, `updated_at`) VALUES
	(15, 5, '3 aguantando', 1, '3', '0', NULL, NULL);
/*!40000 ALTER TABLE `entrenos` ENABLE KEYS */;

-- Volcando estructura para tabla teamgym.grupos
CREATE TABLE IF NOT EXISTS `grupos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `grupo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla teamgym.grupos: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `grupos` DISABLE KEYS */;
INSERT INTO `grupos` (`id`, `grupo`, `created_at`, `updated_at`) VALUES
	(1, 'abdominales', '2018-05-23 17:32:22', '2018-05-23 17:32:22');
INSERT INTO `grupos` (`id`, `grupo`, `created_at`, `updated_at`) VALUES
	(2, 'bíceps', '2018-05-23 17:32:46', '2018-05-23 17:32:46');
INSERT INTO `grupos` (`id`, `grupo`, `created_at`, `updated_at`) VALUES
	(3, 'tríceps', '2018-05-23 17:33:30', '2018-05-23 17:33:30');
INSERT INTO `grupos` (`id`, `grupo`, `created_at`, `updated_at`) VALUES
	(4, 'espalda', '2018-05-23 17:33:48', '2018-05-23 17:33:48');
INSERT INTO `grupos` (`id`, `grupo`, `created_at`, `updated_at`) VALUES
	(5, 'hombro', '2018-05-23 17:34:02', '2018-05-23 17:34:02');
INSERT INTO `grupos` (`id`, `grupo`, `created_at`, `updated_at`) VALUES
	(6, 'pecho', '2018-05-23 17:34:15', '2018-05-23 17:34:15');
INSERT INTO `grupos` (`id`, `grupo`, `created_at`, `updated_at`) VALUES
	(7, 'piernas', '2018-05-23 17:34:23', '2018-05-23 17:34:24');
INSERT INTO `grupos` (`id`, `grupo`, `created_at`, `updated_at`) VALUES
	(8, 'sin pesas abdominal', '2018-05-23 17:35:03', '2018-05-23 17:35:03');
INSERT INTO `grupos` (`id`, `grupo`, `created_at`, `updated_at`) VALUES
	(9, 'sin pesas espald', '2018-05-23 17:35:11', '2018-05-23 17:35:11');
INSERT INTO `grupos` (`id`, `grupo`, `created_at`, `updated_at`) VALUES
	(10, 'sin pesas piernas', '2018-05-23 17:35:53', '2018-05-23 17:35:53');
INSERT INTO `grupos` (`id`, `grupo`, `created_at`, `updated_at`) VALUES
	(11, 'sin pesas todo el cuerpo', '2018-05-23 17:36:03', '2018-05-23 17:36:03');
INSERT INTO `grupos` (`id`, `grupo`, `created_at`, `updated_at`) VALUES
	(12, 'sin pesas tronco', '2018-05-23 17:36:37', '2018-05-23 17:36:37');
/*!40000 ALTER TABLE `grupos` ENABLE KEYS */;

-- Volcando estructura para tabla teamgym.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla teamgym.migrations: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(3, '2018_05_23_135531_create_grupos_table', 2);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(4, '2018_05_23_135718_create_ejercicios_table', 2);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(5, '2018_05_23_135748_create_modalidades_table', 2);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(6, '2018_05_23_135829_create_entrenos_table', 2);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(7, '2018_05_23_140140_create_rutina_table', 2);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(8, '2018_05_23_140215_create_ejercicios_modalidad_table', 3);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(9, '2018_05_23_171306_create_users_table', 4);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(10, '2018_05_23_175141_create_rutinas_table', 5);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(11, '2018_05_26_221516_create_rutinas_table', 6);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(12, '2018_05_26_222018_create_rutinas_table', 7);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla teamgym.modalidads
CREATE TABLE IF NOT EXISTS `modalidads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla teamgym.modalidads: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `modalidads` DISABLE KEYS */;
INSERT INTO `modalidads` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
	(1, 'definir', '2018-05-23 17:40:51', '2018-05-23 17:40:51');
INSERT INTO `modalidads` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
	(2, 'mantener', '2018-05-23 17:41:04', '2018-05-23 17:41:04');
INSERT INTO `modalidads` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
	(3, 'muscular', '2018-05-23 17:41:34', '2018-05-23 17:41:34');
INSERT INTO `modalidads` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
	(4, 'resistencia', '2018-05-23 17:41:45', '2018-05-23 17:41:46');
INSERT INTO `modalidads` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
	(5, 'estiramientos', '2018-05-23 17:41:58', '2018-05-23 17:41:58');
/*!40000 ALTER TABLE `modalidads` ENABLE KEYS */;

-- Volcando estructura para tabla teamgym.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla teamgym.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla teamgym.rutinas
CREATE TABLE IF NOT EXISTS `rutinas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ejercicio1_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ejercicio2_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ejercicio3_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ejercicio4_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ejercicio5_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ejercicio6_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ejercicio7_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ejercicio8_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ejercicio9_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ejercicio10_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla teamgym.rutinas: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `rutinas` DISABLE KEYS */;
INSERT INTO `rutinas` (`id`, `ejercicio1_id`, `ejercicio2_id`, `ejercicio3_id`, `ejercicio4_id`, `ejercicio5_id`, `ejercicio6_id`, `ejercicio7_id`, `ejercicio8_id`, `ejercicio9_id`, `ejercicio10_id`, `created_at`, `updated_at`) VALUES
	(3, '57', '57', '57', '57', '57', '57', '57', '57', '57', '57', '2018-05-27 02:10:57', '2018-05-27 02:10:57');
INSERT INTO `rutinas` (`id`, `ejercicio1_id`, `ejercicio2_id`, `ejercicio3_id`, `ejercicio4_id`, `ejercicio5_id`, `ejercicio6_id`, `ejercicio7_id`, `ejercicio8_id`, `ejercicio9_id`, `ejercicio10_id`, `created_at`, `updated_at`) VALUES
	(4, '57', '57', '57', '57', '57', '57', '57', '57', '57', '57', '2018-05-27 04:06:40', '2018-05-27 04:06:40');
INSERT INTO `rutinas` (`id`, `ejercicio1_id`, `ejercicio2_id`, `ejercicio3_id`, `ejercicio4_id`, `ejercicio5_id`, `ejercicio6_id`, `ejercicio7_id`, `ejercicio8_id`, `ejercicio9_id`, `ejercicio10_id`, `created_at`, `updated_at`) VALUES
	(5, '57', '59', '67', '69', '57', '57', '131', '139', '141', '173', '2018-05-27 06:22:08', '2018-05-27 06:22:08');
INSERT INTO `rutinas` (`id`, `ejercicio1_id`, `ejercicio2_id`, `ejercicio3_id`, `ejercicio4_id`, `ejercicio5_id`, `ejercicio6_id`, `ejercicio7_id`, `ejercicio8_id`, `ejercicio9_id`, `ejercicio10_id`, `created_at`, `updated_at`) VALUES
	(6, '57', '57', '57', '57', '57', '57', '57', '57', '57', '57', '2018-05-27 06:24:26', '2018-05-27 06:24:26');
/*!40000 ALTER TABLE `rutinas` ENABLE KEYS */;

-- Volcando estructura para tabla teamgym.semanas
CREATE TABLE IF NOT EXISTS `semanas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usuario_id` int(10) unsigned DEFAULT NULL,
  `lunes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `martes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miercoles` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jueves` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viernes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sabado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domingo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `repeticiones` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `peso` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `<rutina></rutina>_id_usuario_foreign` (`usuario_id`),
  CONSTRAINT `rutina_id_usuario_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla teamgym.semanas: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `semanas` DISABLE KEYS */;
INSERT INTO `semanas` (`id`, `usuario_id`, `lunes`, `martes`, `miercoles`, `jueves`, `viernes`, `sabado`, `domingo`, `repeticiones`, `serie`, `peso`, `created_at`, `updated_at`) VALUES
	(1, 4, '1', '2', '3', '4', '5', '6', '7', '6', '4', '5', NULL, NULL);
/*!40000 ALTER TABLE `semanas` ENABLE KEYS */;

-- Volcando estructura para tabla teamgym.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexo` varchar(255) COLLATE utf8mb4_unicode_ci,
  `dob` date,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modalidad` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nivel` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla teamgym.users: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `apellido`, `email`, `sexo`, `dob`, `password`, `modalidad`, `nivel`, `remember_token`, `created_at`, `updated_at`) VALUES
	(4, 'skizo', NULL, 'klnlk@nllklk.com', NULL, NULL, '$2y$10$Rm4ullObDJwfsMce33/DhOcjZ6VWZ3No5Ns3OiIBOg34oNfya135e', 'muscular', '1', NULL, '2018-05-25 06:58:30', '2018-05-25 06:58:30');
INSERT INTO `users` (`id`, `name`, `apellido`, `email`, `sexo`, `dob`, `password`, `modalidad`, `nivel`, `remember_token`, `created_at`, `updated_at`) VALUES
	(5, 'pep', NULL, 'pep@gmil.com', NULL, NULL, '$2y$10$1noraIJdyRjfnf0jPxPmK.dGPrgOGz45pKZ.76CibmHr.EhwZKbuS', 'estiramientos', '2', 'X3ohEV7OmLINrEk3PPf3R447UfSEzH8XDEpvhm6NCzAQKNKnUs3vm6Hlw5gY', '2018-05-25 12:26:26', '2018-05-25 12:26:26');
INSERT INTO `users` (`id`, `name`, `apellido`, `email`, `sexo`, `dob`, `password`, `modalidad`, `nivel`, `remember_token`, `created_at`, `updated_at`) VALUES
	(6, 'ferran', NULL, 'fjasse@jaumebalmes.net', NULL, NULL, '$2y$10$AbAekXE76YOEO.RWo46DgumrtGFgt4GKAC/JR5SbB20n9t/vd1YP6', 'resistencia', '3', 'khCGjzwfY5WoH5iYNRDxzdOqDJjaWig2NxViy3NzeBLom5mXRudKeBwLY8R1', '2018-05-25 13:19:00', '2018-05-25 13:19:00');
INSERT INTO `users` (`id`, `name`, `apellido`, `email`, `sexo`, `dob`, `password`, `modalidad`, `nivel`, `remember_token`, `created_at`, `updated_at`) VALUES
	(7, 'ferran', 'jasse', 'peap@gmail.com', NULL, '2018-05-28', '$2y$10$S4HYDsWwGWDSG9YOitVH9Owrt1utH4AjJZd4aRKdRW3gatFFSGOga', 'muscular', '1', 'OWZq8vVqdbF2ayw5626l8zXUULGdyr3djVT2Nrcm0X2Qtc6ZJ4VCYE4pha2h', '2018-05-25 13:26:12', '2018-05-25 13:26:12');
INSERT INTO `users` (`id`, `name`, `apellido`, `email`, `sexo`, `dob`, `password`, `modalidad`, `nivel`, `remember_token`, `created_at`, `updated_at`) VALUES
	(8, 'ferran', 'jasse', 'jasse@gmail.com', 'varon', '2018-05-26', '$2y$10$ag4F1Ubmmqui75.qPn7MA.TS8HxQJOYK.elk.E4HxvDUgD7YyQ/gq', 'mantener', '2', NULL, '2018-05-25 13:27:42', '2018-05-25 13:27:42');
INSERT INTO `users` (`id`, `name`, `apellido`, `email`, `sexo`, `dob`, `password`, `modalidad`, `nivel`, `remember_token`, `created_at`, `updated_at`) VALUES
	(9, 'user', 'user', 'user@user.com', 'sexo', '2018-07-27', '$2y$10$HyN.nike2nuASIsl5nn3Juc4uXQmW.er3dGuyavZXUf7wKmsqerri', 'definir', '3', 'r9YW2iCZDDbm5dJ90vhLkGZSbDQI21xo1zCRpInQXVMMMhbZcJsMBY4fq1tT', '2018-05-26 01:21:05', '2018-05-26 01:21:05');
INSERT INTO `users` (`id`, `name`, `apellido`, `email`, `sexo`, `dob`, `password`, `modalidad`, `nivel`, `remember_token`, `created_at`, `updated_at`) VALUES
	(10, 'jojo', 'jojo', 'jojo@jo.com', 'varon', '2019-04-25', '123456', 'Defenir', '1', NULL, '2018-05-26 17:09:26', '2018-05-26 17:09:26');
INSERT INTO `users` (`id`, `name`, `apellido`, `email`, `sexo`, `dob`, `password`, `modalidad`, `nivel`, `remember_token`, `created_at`, `updated_at`) VALUES
	(11, 'pep', NULL, 'pep@pep.com', NULL, NULL, '$2y$10$BXVfsgy.TfRZeOJNw.zXU.BDkJ/wQfy4FTKjnLcume.ONpstWbPrO', NULL, '2', '5cRzTu0p6B5ug0bG4gfjvNZcc5iM8fMPF01sX9orxEo1aPeYJjwPvkKMNeM8', '2018-05-26 22:31:04', '2018-05-26 22:31:04');
INSERT INTO `users` (`id`, `name`, `apellido`, `email`, `sexo`, `dob`, `password`, `modalidad`, `nivel`, `remember_token`, `created_at`, `updated_at`) VALUES
	(12, 'nkn', 'lknkl', 'nnklnlk@mpmp.com', 'varon', '9888-05-20', '123456', 'definir', '3', NULL, '2018-05-27 06:04:22', '2018-05-27 06:04:22');
INSERT INTO `users` (`id`, `name`, `apellido`, `email`, `sexo`, `dob`, `password`, `modalidad`, `nivel`, `remember_token`, `created_at`, `updated_at`) VALUES
	(13, 'ferran', 'jasse', 'fj@gmail.com', 'varon', '2019-04-02', '$2y$10$IDg.BFQ.IgVQY73cDGWybe3QWgwBKAANMUUXW5ry5hHSEiCMw3CaO', 'Definir', '1', NULL, '2018-05-27 07:31:35', '2018-05-27 07:31:35');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
