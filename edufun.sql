-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 06, 2024 at 10:41 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edufun`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_05_161246_create_writers_table', 1),
(5, '2024_11_05_161247_create_posts_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `writer_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgUrl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `writer_id`, `title`, `category`, `slug`, `body`, `imgUrl`, `created_at`, `updated_at`) VALUES
(1, 1, 'Deep Learning', 'Data Science', 'deep-learning', 'Quo a dolor alias dicta enim suscipit cumque et. Consequatur et est error deleniti explicabo. Mollitia quia veritatis eos temporibus. Natus quo consectetur reiciendis et voluptatum. Ea est dolorem cupiditate consectetur minus temporibus et omnis. Architecto nihil vitae dolorem voluptates. Alias tempore voluptate reiciendis corrupti pariatur velit autem ut. Et assumenda est dolores qui repellendus tenetur soluta. Vel omnis similique odio aliquid exercitationem est nihil. Occaecati ad sit quo culpa. Aliquid asperiores et eligendi dolorem ipsum voluptas. Voluptatem quibusdam sit tempore et. Id voluptate ut numquam dolorem eos eos saepe. Illo est quae iste quae. Non commodi aut qui sed maxime. Quo fugiat facere nesciunt. Ut et molestiae repellendus aut libero. Inventore laborum maxime fugiat qui aut quisquam voluptas maiores. Quam dolorem et voluptatum quis rerum. Autem ut iure velit mollitia. Hic cumque temporibus iste natus. Doloribus laboriosam nostrum nesciunt aut soluta rerum. Quia laboriosam recusandae odit consectetur. Iusto aut est suscipit nisi unde. Aut eveniet blanditiis corporis et iure dolorum animi. Libero qui culpa error vel laboriosam. Numquam occaecati maiores officiis qui. Molestiae incidunt magnam voluptates voluptate rerum dolores dolor. Dolores occaecati soluta dolor ut. Molestias quo dolor minima ut voluptas et enim. Ab cumque accusantium animi qui. In quisquam dolore dignissimos delectus et enim optio. Illo quis ipsa doloremque qui unde consequatur enim itaque. Sed soluta facere temporibus accusantium sint minima eos culpa. Quia porro assumenda consequatur mollitia. Illum facere voluptate voluptatem dolorum cupiditate libero nihil a. Cumque at ea libero nesciunt voluptatem. Sit porro vel porro et. Cumque quo ut quod sapiente ut. Ullam nulla ducimus consequatur. Quos itaque culpa minima eius. Voluptatibus voluptas iusto rerum eius. Sed aut architecto ex dicta. Odit quas ea eaque. Et saepe maiores ducimus maiores quos quisquam. Sit fugiat corrupti dolorum veniam. Sed vel quia neque qui. Sed veniam dicta et adipisci consequatur eveniet. Et dolores ut modi minima quod est est. Consequatur expedita eius quam est. Rerum commodi voluptas neque sit numquam. Velit rerum cum consectetur suscipit voluptatibus voluptatem corrupti. Aspernatur consectetur quaerat totam quod omnis. Nisi ad dicta qui necessitatibus est explicabo. Debitis similique accusantium animi atque sunt ea labore eum. Eos ratione repudiandae sapiente error sed. Quaerat temporibus nemo quidem nobis est. Nesciunt repudiandae beatae reiciendis unde consequuntur nulla cum. Aut vitae ut et temporibus soluta. Beatae iusto aut illum eum iusto. Ut sed aliquid commodi sit fugit labore.', 'deep-learning.jpg', '2024-11-05 22:19:41', '2024-11-05 22:19:41'),
(2, 2, 'Machine Learning', 'Data Science', 'machine-learning', 'Facilis ipsam nam inventore voluptatem a. Voluptatum ea iure quia commodi officiis enim non. Eius ut id non recusandae sed recusandae. Ut accusamus eum molestiae cum illum ipsa quod. Saepe dolor enim quisquam suscipit repellat officiis quod. Dolores rerum qui et nemo. Occaecati est accusantium exercitationem ab voluptatem. Excepturi error accusantium rem aut ducimus aut dicta. Voluptas eum tempora delectus delectus. Maiores sunt sequi fugit modi vero vero. Consequatur fuga porro sed. Consequuntur labore deserunt odio. Perspiciatis autem cumque enim alias dignissimos tempore eos. Tenetur ipsam nulla tempore id quos exercitationem. Molestiae nemo quia dolor laboriosam enim rerum ipsa. Sed modi alias blanditiis sapiente. Vel ratione nostrum accusantium aut quibusdam eos eaque. Consequatur voluptate laborum ullam sequi atque eaque. Architecto beatae ad ipsum non quae minus quos. Qui laboriosam magni voluptatum voluptate. Doloremque est incidunt quaerat ut. Architecto porro adipisci sit perspiciatis. Facere voluptatem perferendis dolorem iusto fugit est harum. Illum sapiente omnis voluptas quam corrupti tempora. Quia quos aliquid temporibus a non. Earum labore expedita perspiciatis omnis esse. Enim ipsum qui nobis eum. Hic et dolor illum inventore. Qui debitis temporibus ipsa consequatur. Aut officia quam neque. A nihil dolorem reiciendis in sapiente magni magnam. Rerum et eum enim qui consectetur ut. Nobis in eos debitis excepturi. Beatae fugiat dolor impedit quia velit ut. Et dignissimos aut hic et sint. Inventore quaerat ut autem dolore in quasi pariatur. Et animi assumenda dolorem nisi. Quia id distinctio at quasi delectus. Ea molestias est delectus omnis. Voluptatem perspiciatis debitis ab vel. Ut voluptate et numquam voluptas optio et. Laudantium voluptatem quidem minima dolores beatae. Fugiat quia aperiam placeat molestiae doloremque quisquam. Deserunt ratione enim et repellendus quae saepe. Aut qui ex non blanditiis exercitationem. Itaque molestias et sed quidem a amet. Ducimus quisquam dolores doloremque eum in. Accusantium nisi neque quibusdam ipsum eos ea voluptate inventore. Ad culpa totam animi incidunt voluptas. Deserunt rerum natus ut voluptas neque incidunt consequatur. Dolores et rem sunt natus id dolores id. Sunt officiis impedit dolorem minima illum. Nemo repellat commodi sunt ut sapiente nihil. A qui et vel neque error et quia. Ducimus exercitationem debitis dolor maxime. Doloribus dolorem neque aut culpa. Est ut aut hic ratione. Id enim modi ipsam possimus ratione tempore natus. Dolor voluptatem quaerat non architecto. Officiis iste autem eius dolorem tempore. Eius aspernatur non debitis non adipisci expedita explicabo quis. Omnis non sint dolor error voluptatem. Libero fugiat iste similique ullam consequatur eius aut deleniti. Voluptatem reiciendis ut aliquam quo deleniti. Quisquam velit consequatur voluptas provident. Explicabo nesciunt molestias consequatur facilis et. Quo quia accusantium porro sint aspernatur enim. Optio ullam ut et voluptas eos. Dolores voluptas veniam officia assumenda hic odit numquam.', 'machine-learning.jpg', '2024-11-05 22:19:41', '2024-11-05 22:19:41'),
(3, 3, 'Natural Language Processing', 'Data Science', 'natural-language-processing', 'Quidem ullam molestiae sed asperiores facere. Assumenda consequatur voluptatem consequatur sequi. Maiores fugiat et voluptatem aut nisi minima non. Aut numquam aut numquam minima reiciendis nostrum est. Doloribus iusto provident quasi ad rem voluptatum error aut. Eligendi est est qui praesentium aut id qui animi. Possimus facere architecto labore animi. Aliquid laborum error non iusto. Repudiandae est et maiores harum ullam. Voluptatum repudiandae illum quo nisi asperiores voluptatem. Facilis qui magnam numquam asperiores consequatur et consequatur. Quaerat sed qui ipsam dolore repudiandae. Sed quis vel ullam. Laborum in vel molestiae reiciendis voluptatum iste. Fugiat sed quia dolorum. Repudiandae aut dignissimos placeat eum sunt magnam quam. Consequatur eaque est mollitia. Debitis commodi sed voluptas architecto. Exercitationem voluptatem enim dolore excepturi autem atque. Eum rerum iure ab dolorum quos dignissimos. Maxime culpa doloribus sapiente architecto. Sapiente maxime architecto porro quo porro doloribus quas. Eius vitae nesciunt et ea deserunt non dolorem. Omnis rerum qui perferendis. Laudantium enim perspiciatis magni sunt odio laudantium ut earum. Unde id consequatur saepe ad. Saepe voluptatem nulla et magnam voluptate ducimus quas. Nostrum molestiae repellendus minima in nesciunt odio itaque. Magnam dicta ab asperiores. Consequatur sint autem quia tempora tenetur. Et aut illo quo a quae. Et fugit et consequatur sint quia dignissimos. Sit omnis ad placeat et animi quibusdam ut. Eos et fugit distinctio consequuntur autem nobis ipsum. Repellat doloribus aut pariatur aut rerum officiis. Molestiae quae unde porro quaerat. Maxime ullam hic placeat nihil quae voluptatem. Magnam ipsum delectus sed et sit aut.', 'nlp.jpg', '2024-11-05 22:19:41', '2024-11-05 22:19:41'),
(4, 1, 'Apa Iitu Network Security?', 'Network Security', 'apa-iitu-network-security', 'Laboriosam corporis dolor ipsa facilis culpa. Vel ad dolorem numquam aliquid optio provident dolore. Dolor earum sed magni neque esse odit. Nihil amet ipsa et voluptas iure. Similique et hic quis nemo dolorum possimus perspiciatis temporibus. Doloremque ut molestiae iste repellat aut ea. Non eum impedit incidunt quia vel adipisci sint. Nisi sunt eum aut sit amet voluptatem commodi. Cumque tenetur autem consequatur ut aliquam. Velit voluptatem asperiores aut delectus et. Non voluptatibus sit voluptas consectetur adipisci enim perspiciatis. Aut sequi placeat consequatur et adipisci nobis molestiae. Eum repellat aliquid illum et est. Inventore quibusdam et non incidunt ipsam dicta autem. Nisi dolor necessitatibus ipsum rerum voluptates doloremque repellendus ducimus. Ea accusantium asperiores quia saepe et. Est quia sed debitis sed. Voluptate sapiente vero dolore impedit beatae voluptates nobis et. Consectetur totam cupiditate corporis. In aut ad culpa suscipit. Non culpa aut excepturi et quia. Porro ut neque non et voluptas. Reiciendis dignissimos ut quaerat. Minus maxime officiis suscipit. Architecto non consequuntur delectus reiciendis. Molestiae placeat ullam fugiat quia eos. Voluptatem optio est quisquam natus quos. Eum enim repudiandae voluptas quibusdam enim facilis quia ea. Nesciunt est officiis laboriosam praesentium laborum aut doloribus dolorem. Autem tempore perferendis soluta numquam suscipit sed. Excepturi dolorem voluptatem placeat neque voluptas est. Molestiae earum rem optio unde. Temporibus temporibus minima nam officiis. Quis est dolorum est accusamus iusto quo placeat. Qui quia quo est sed. Consectetur consequatur numquam ipsum saepe optio. Cumque vel cumque ut enim officiis fugit. Iste velit sed autem possimus ut. Ad quia ut voluptas corporis facilis ipsam possimus. Consequuntur laborum corporis corrupti eius qui. Provident qui dolores quas sunt mollitia ad quia. Quis nemo doloremque molestiae odit voluptates excepturi praesentium iure. Repellat veniam id error qui. Sapiente corporis qui tempora quasi ut aspernatur. Occaecati quam doloribus quia aliquid. Optio reprehenderit qui quo a. Consequatur et nihil sunt labore nesciunt qui. Officiis porro doloribus quo commodi enim maiores amet. Sint fugiat beatae velit quo et. Enim quibusdam et sint. Illo perspiciatis sint sapiente est iure qui explicabo. Quae culpa autem eius nihil. Dignissimos hic ea minus perferendis. Ut occaecati cumque rem impedit odit. Inventore et expedita minima. Aut officia eaque nam aut voluptate. Cupiditate minus officiis iusto. Ex quia voluptatem quam eaque aliquid. Inventore natus mollitia maxime exercitationem maxime. Porro suscipit aut id maxime et. Possimus in dolore sit repudiandae. Aliquam exercitationem et enim ea quasi. Sint rerum cum voluptas. Voluptate reprehenderit sunt veniam assumenda asperiores. Est qui doloremque voluptas qui. Est tempora optio dicta mollitia sunt. Voluptate vitae et velit expedita autem sit.', 'network-admin.jpg', '2024-11-05 22:19:41', '2024-11-05 22:19:41'),
(5, 2, 'Software Engineering', 'Network Security', 'software-engineering', 'Odio autem et id perspiciatis qui et nihil dolores. Recusandae dignissimos eaque sunt. Perspiciatis temporibus rerum error soluta. Perferendis sed explicabo ut eligendi. Provident laborum nihil officiis qui. Et quisquam id optio ut delectus repudiandae voluptate velit. Debitis a occaecati sequi sunt voluptates. Est autem est quaerat rerum ea. Non possimus omnis quas fugit architecto et quas. Rerum suscipit ad quia distinctio quo aliquam modi amet. Ut consequatur culpa cupiditate sit eos maiores. Quasi et qui nam itaque sequi. Reprehenderit autem cupiditate fugit iure quo. Aspernatur aliquam tenetur natus. Est qui vel aut nihil optio qui et pariatur. Eos fugit consequatur id voluptas et. Inventore consequatur laudantium vel autem corrupti molestiae est. Aut dolores quaerat ut. Architecto voluptatem fugit sequi ut ab officia vel provident. Modi delectus incidunt et illo aliquid nostrum sapiente sequi. Commodi sunt et quaerat qui eveniet neque. Dolores et dignissimos impedit rem non asperiores eum. In corrupti et atque vel. Est dolores et aut quam doloribus. Ipsa velit ut voluptate. Perferendis excepturi in vero. Perspiciatis impedit debitis ab reiciendis nisi ab. Amet quasi beatae aut. Qui rerum earum adipisci est deleniti suscipit non. Consectetur eos corporis et eum. Odit omnis atque est. Iure maxime labore architecto et. Saepe sapiente dolorem provident qui sint. Ea dolores est distinctio id. Unde autem natus sed dolorem. Ullam expedita quia neque. Debitis eos impedit et alias aut deleniti. Explicabo sit nulla ad iusto voluptatem occaecati. Consequatur quis quisquam qui labore. Minus odio aperiam dolorem vel dolor natus nam. Debitis provident qui saepe quia. Incidunt et blanditiis dolor autem repellat excepturi. Tempora sunt ut quibusdam dolorem. Modi ipsam et molestiae rem. Ducimus sed autem quia sint eligendi mollitia. Quibusdam adipisci et quo at velit deserunt. Enim ratione doloribus tempora et error doloribus earum. Quisquam molestias eos optio eos mollitia vel cumque corrupti. Soluta voluptates harum ut animi qui. Dolor praesentium nesciunt quia qui consequatur. Ipsam quidem dolore debitis id exercitationem enim perferendis. Voluptatibus explicabo consequatur voluptas et et doloremque. Possimus ipsa libero molestiae et mollitia voluptatem. Ad id quo laborum tempore magni optio. Id officia harum non. Odit rem corrupti laudantium dolor ratione est nostrum. Corporis atque consequatur eveniet praesentium suscipit eaque. Facilis dolorem quas laboriosam laudantium est molestiae. Eaque ipsa aliquam sit aliquam doloremque et facilis. Saepe ipsum magnam voluptas placeat necessitatibus. Velit non mollitia eaque et. Ut quos omnis dolorum magnam et nemo accusamus. Nemo vero inventore optio harum perspiciatis. Atque ex veritatis pariatur omnis dolores similique maiores. Velit in atque tempore cum et consectetur nihil occaecati. Recusandae nobis nesciunt unde nobis. Sunt dicta nostrum reprehenderit ut inventore et. Ratione fugiat non enim praesentium perspiciatis corrupti facere.', 'popular-network.jpg', '2024-11-05 22:19:41', '2024-11-05 22:19:41'),
(6, 3, 'User Experience', 'Network Security', 'user-experience', 'Corporis excepturi dolores odio voluptas non repellat tenetur. Quo aut modi necessitatibus commodi quis. Omnis labore autem sit aut. Voluptas et deleniti vero et provident. Labore exercitationem dolorem deleniti autem. Ipsum nulla delectus est amet perspiciatis. Qui ullam ut vel. Hic totam quo est asperiores maiores. Sit rerum consequatur praesentium ut impedit libero. Praesentium optio sunt quisquam voluptas. Consequatur mollitia dolore sapiente cumque qui. Sed id deleniti quia eligendi. Provident est eaque voluptatum voluptatem. Dignissimos assumenda maiores magni rerum. Nihil eum et dolorum unde voluptatem eos et omnis. Architecto itaque et et culpa. Nobis at doloribus placeat numquam. Fugit optio non autem qui quo voluptatem. Possimus doloremque nisi id quisquam a accusantium. Qui maxime est porro excepturi in et consectetur. Odio est eos aut esse. Id vitae laborum a numquam et iure architecto. Tempore saepe voluptatem quod eaque necessitatibus temporibus. Corporis voluptate dolor nam sint ea ut. Dolorum eum voluptates quo quam molestias et in. Soluta illum voluptatem ut ad voluptatum incidunt voluptatum doloremque. Repellat soluta accusantium voluptatem dolorem quos suscipit fuga reprehenderit. Quos ad qui eos enim. Nihil delectus similique atque temporibus. Omnis est ipsam at ut et quidem. Molestias commodi ut repudiandae modi. Et excepturi qui et. Sint ipsam enim dolores voluptas rerum aperiam. Deleniti iusto laudantium accusamus consequatur labore quas. Sint qui consectetur sapiente sed similique. Et perferendis ut in numquam laborum minima. In id qui dicta et est. Animi quis voluptatem omnis voluptates provident optio ut. Illo aliquam voluptas molestias id suscipit repellat consequatur. Incidunt in consequuntur cum dolores et temporibus. Ipsam eos voluptatem porro deleniti laborum maiores. Ducimus ut perferendis blanditiis possimus aliquid delectus voluptate. Eum et soluta voluptas et deleniti ut. Rem voluptatem ipsam commodi aliquam perspiciatis praesentium voluptatem labore. Est itaque beatae non vel sit. Rem dolorum ut reiciendis rerum id perspiciatis qui. Magni dolor in cum est beatae esse delectus. Sed nostrum at voluptatem. Et recusandae praesentium qui sed sed ad natus nesciunt. Et cum non et voluptate vero. Vitae nihil non pariatur. Dolore dolores praesentium ipsam id aut qui sit. Aut cum voluptates eos alias. Consequatur enim eveniet ut fugit.', 'software-security.jpg', '2024-11-05 22:19:41', '2024-11-05 22:19:41');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('VmW8vIlTMd423Fpfp15aoLppW8FUmHcEYec6SMto', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlU3ckJtS1J1cjZ6RFlFczMzNjFxWVNiRVFvb2V3S2JGTFNxcEJJbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wb3N0cy9OZXR3b3JrJTIwU2VjdXJpdHkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1730889529);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE `writers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speciality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`id`, `name`, `speciality`, `created_at`, `updated_at`) VALUES
(1, 'Wardaya Nugroho S.E.', 'Spesialis Interactive Multimedia', '2024-11-05 22:19:21', '2024-11-05 22:19:21'),
(2, 'Vega Praba Setiawan', 'Spesialis Data Science', '2024-11-05 22:19:21', '2024-11-05 22:19:21'),
(3, 'Puti Rahayu', 'Spesialis Network Security', '2024-11-05 22:19:21', '2024-11-05 22:19:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_writer_id_foreign` (`writer_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
