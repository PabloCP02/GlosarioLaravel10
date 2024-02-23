-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-02-2024 a las 14:46:33
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel_glosario`
--
CREATE DATABASE IF NOT EXISTS `laravel_glosario` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel_glosario`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_10_215709_create_terminos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terminos`
--

CREATE TABLE `terminos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `concepto` varchar(100) NOT NULL,
  `definicion` text NOT NULL,
  `imagen` varchar(80) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `terminos`
--

INSERT INTO `terminos` (`id`, `concepto`, `definicion`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 'Cliente', 'El cliente es una entidad o sistema que solicita servicios o recursos a otro sistema llamado servidor. Puede ser una aplicación, dispositivo o sistema que interactúa con el servidor para obtener información o realizar funciones específicas.', 'img/conceptos/cliente.jpg', '2024-02-11 05:56:14', '2024-02-11 05:56:14'),
(2, 'Servidor', 'El servidor es una entidad que proporciona servicios, recursos o información a los clientes. Se encarga de procesar las solicitudes recibidas de los clientes y enviar las respuestas correspondientes.', 'img/conceptos/servidor.jpg', '2024-02-11 20:28:22', '2024-02-11 20:28:22'),
(3, 'Sistemas de computadoras centrales', 'Los ordenadores centrales o mainframes son ordenadores grandes, potentes y caros usados principalmente por grandes compañías para el procesamiento de grandes cantidades de datos, por ejemplo, el procesamiento de transacciones bancarias.', 'img/conceptos/computadorasCentrales.jpg', '2024-02-11 20:30:44', '2024-02-11 20:30:44'),
(4, 'Computadoras dedicadas', 'Se trata de un servidor físico completamente dedicado a un único usuario u organización, que proporciona acceso exclusivo a todos los recursos del servidor. Esto significa que no se comparte con otros sitios web y que no se compromete el rendimiento, la seguridad ni la personalización.', 'img/conceptos/computadorasDedicadas.jpg', '2024-02-12 07:18:03', '2024-02-12 07:18:03'),
(5, 'Recursos Compartidos', 'Los recursos compartidos, también conocidos como recursos de red, se refieren a datos informáticos, información o dispositivos de hardware a los que se puede acceder fácilmente desde una computadora remota a través de una red de área local (LAN) o intranet empresarial. El acceso exitoso a los recursos compartidos permite a los usuarios operar como si el recurso compartido estuviera en su propia computadora. Los objetos del entorno de red compartido más utilizados son archivos, datos, multimedia y recursos de hardware como impresoras, máquinas de fax y escáneres.', 'img/conceptos/recursosCompartidos.jpg', '2024-02-12 07:18:39', '2024-02-12 07:18:39'),
(6, 'Protocolos Asimétricos', 'Los protocolos asimétricos son un tipo de protocolo de comunicación en el que las claves utilizadas para cifrar y descifrar la información son diferentes. En un sistema asimétrico, la clave pública se comparte abiertamente y se utiliza para cifrar la información. Sin embargo, la clave privada se mantiene en secreto y se utiliza para descifrar la información.', 'img/conceptos/ca.png', '2024-02-12 07:22:24', '2024-02-12 07:22:24'),
(7, 'Encapsulación de Servicios', 'La idea principal de la encapsulación de servicios es proporcionar una capa de abstracción que permite a los usuarios o desarrolladores interactuar con los servicios sin necesidad de conocer los detalles internos de su implementación.', 'img/conceptos/encapsulamientoServicios.jpg', '2024-02-12 07:23:13', '2024-02-12 07:23:13'),
(8, 'Escalabilidad', 'La escalabilidad es la propiedad deseable de un sistema, una red o un proceso, que indica su habilidad para reaccionar y adaptarse sin perder calidad, o bien manejar el crecimiento continuo de trabajo de manera fluida, o bien para estar preparado para hacerse más grande sin perder calidad en los servicios ofrecidos', 'img/conceptos/escabilidad.jpg', '2024-02-12 07:23:50', '2024-02-12 07:23:50'),
(9, 'Integridad', 'La definición de integridad informática establece que los datos o información son exactos y fiables y que no han sido modificados accidentalmente o de manera intencional por terceros no autorizados, ni cuando están en reposo, en uso o en movimiento.', 'img/conceptos/integridad.jpg', '2024-02-12 07:26:25', '2024-02-12 07:26:25'),
(10, 'Infrastructure as a Service (IAAS)', 'La infraestructura como servicio (IaaS) es un modelo de servicio en la nube que ofrece recursos de infraestructura bajo demanda, como computación, almacenamiento, redes y virtualización, a empresas y particulares a través de la nube.', 'img/conceptos/iaas.jpg', '2024-02-12 07:27:13', '2024-02-12 07:27:13'),
(11, 'Platform as a Service (PASS)', 'Plataforma como servicio (también conocida como PaaS) es un tipo de modelo de servicio de cloud computing que ofrece una plataforma en la nube flexible y escalable para desarrollar, desplegar, ejecutar y gestionar aplicaciones. La PaaS proporciona a los desarrolladores todo lo que necesitan para desarrollar aplicaciones sin los quebraderos de cabeza que conlleva actualizar el sistema operativo y las herramientas de desarrollo y sin tener que mantener el hardware. En su lugar, los proveedores de servicios externos proporcionan la plataforma o la plataforma como servicio en la nube.', 'img/conceptos/paas.jpg', '2024-02-12 07:28:42', '2024-02-12 07:28:42'),
(12, 'Software as a Service (SAAS)', 'El software como servicio (SaaS) es un modelo de software basado en la nube que ofrece aplicaciones a los usuarios finales a través de un navegador de Internet. Los proveedores de SaaS alojan servicios y aplicaciones para que los clientes puedan acceder a ellos bajo demanda. Con una oferta SaaS, no hay que pensar en cómo se mantiene el servicio o cómo se administra la infraestructura subyacente; solo hay que pensar en cómo se va a utilizar el software.', 'img/conceptos/saas.jpg', '2024-02-12 07:29:28', '2024-02-12 07:29:28'),
(13, 'Cómputo en la nube', 'La computación en la nube es la disponibilidad a pedido de los recursos de procesamiento como los servicios por Internet. Elimina la necesidad de que las empresas obtengan, configuren o administren recursos por su cuenta; de esta forma, solo paguen por lo que usan.', 'img/conceptos/computoNube.jpg', '2024-02-12 07:30:38', '2024-02-12 07:30:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `terminos`
--
ALTER TABLE `terminos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `terminos`
--
ALTER TABLE `terminos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
