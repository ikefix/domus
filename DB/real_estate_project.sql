-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 17, 2023 at 02:02 AM
-- Server version: 5.7.39
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `real_estate_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `password` varchar(150) NOT NULL,
  `token` varchar(80) DEFAULT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `full_name`, `email`, `photo`, `password`, `token`, `status`) VALUES
(1, 'John Doe', 'admin@gmail.com', '1696430317.jpg', '$2y$10$ZWxErZpXCc8M34cN57tA.OD0b/n/w5CjCZITFXtoObQ3xMkkiiPL6', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `password` varchar(150) NOT NULL,
  `company` text,
  `designation` text,
  `biography` text,
  `phone` text,
  `country` text,
  `address` text,
  `state` text,
  `city` text,
  `zip_code` text,
  `website` text,
  `facebook` text,
  `twitter` text,
  `linkedin` text,
  `pinterest` text,
  `instagram` text,
  `youtube` text,
  `token` varchar(80) DEFAULT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `full_name`, `email`, `photo`, `password`, `company`, `designation`, `biography`, `phone`, `country`, `address`, `state`, `city`, `zip_code`, `website`, `facebook`, `twitter`, `linkedin`, `pinterest`, `instagram`, `youtube`, `token`, `status`) VALUES
(1, 'David Beckham', 'david@gmail.com', '1696641449.jpg', '$2y$10$3XActt8YizvxBPXMGhyTvea/VXwCljK0caeG/VRDl2RaREoX3T52S', 'Muscle Factory', 'Casino cashier', '<p>Lorem ipsum dolor sit amet, omnis brute est ad. Ex eum noluisse voluptua, eos scripta ancillae ocurreret et. Animal facilis vulputate at mel, no nihil adipiscing usu. Nam purto meis viderer id, ea habeo dicat consequat cum.</p>', '401-772-2614', 'USA', '1953 Bond Street', 'RI', 'Woonsocket', '02895', 'https://danielyost.com', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', 'https://www.pinterest.com', 'https://www.instagram.com', 'https://www.youtube.com', '', 1),
(2, 'Patrick henderson', 'patrick@gmail.com', '1697085681.jpg', '$2y$10$yw7KnDREISYVY8Ra4bo7xOJTvvvAy8fxv1eziEO1sQFJS21twdO9u', 'MacMarr Stores', 'Graduate teaching assistant', '<p>Est aperiam voluptaria et. Decore voluptaria quo ei. Viris malorum ei usu, wisi ipsum habemus qui id. Vis cu fierent adversarium signiferumque, ne omittantur neglegentur mel, sint modus ut ius. Nemore doctus recteque an sit, ut pri meis scaevola rationibus, cetero definitiones ut vim. Ne principes suscipiantur quo. Agam liberavisse qui in.</p>', '405-579-3532', 'USA', '2679 Hott Street', 'OK', 'Norman', '73069', 'https://disposablenylons.com', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', 'https://www.pinterest.com', 'https://www.instagram.com', 'https://www.youtube.com', '', 1),
(4, 'Ruben Hill', 'ruben@gmail.com', '1697086023.jpg', '$2y$10$rBfdEtHQH0bS.l0mUuF2d.kYzFGMjG3fY9nFkm3Bqt36BY3rz1UnS', 'Four Leaf Clover', 'Circulation assistant', '<p>His at dicta dicunt euismod. Nec enim soleat tincidunt et. Eam utamur assentior at, adhuc movet detraxit ad has, ludus dictas vis ut. Per eu eius copiosae, sed ex viderer malorum civibus. Clita noluisse ius eu, pro in alterum detracto.</p>', '405-362-1382', 'USA', '3842 Ottis Street', 'OK', 'Oklahoma City', '73102 ', '', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', '', '', '', '', 1),
(5, 'Larry Nieves', 'larry@gmail.com', '1697086187.jpg', '$2y$10$8Nn7iRnEywFR3MJAkUc5K.d2QQIXTiFe5n7t2Nl4OvgLLg0C7Ym9i', 'Idea Infinity', 'Payroll technician', '<p>Melius civibus honestatis an ius, magna definiebas persequeris mel at. Iusto vivendo ne eum, et sed tale alterum. Quaestio deterruisset pro ne. Nostrud apeirian euripidis ad mel.<br /><br />Ei sale idque delenit pri, ne phaedrum hendrerit tincidunt sea, cu vim dicat corpora posidonium. Eu ipsum decore vidisse vel. Ut luptatum laboramus sea, ut duo esse integre mediocrem. Pertinacia ullamcorper ad quo, te hinc numquam offendit mei, et eos sapientem dissentiet. Ut nam eleifend laboramus. Simul perfecto ius et. Ei aliquam dolorum nusquam eos.</p>', '419-883-5341', 'USA', '4361 Upland Avenue', 'OH', 'Butler', '44822', '', 'https://www.facebook.com', 'https://www.twitter.com', '', '', 'https://www.instagram.com', '', '', 1),
(6, 'Kelly Alejo', 'kelly@gmail.com', '1697086287.jpg', '$2y$10$U/vn/K4/8LaYq6qbjiQlfuW01pFFgm.d/lIZe7DPM2nygHk2rZEoS', 'Eisner Food Stores', 'Training director', '<p>Regione patrioque ex pro, no simul intellegam sadipscing per. Cum ne putant quodsi eripuit, ius dicat accusamus deterruisset ex, mel iuvaret epicurei te. Nulla tibique eligendi ne sit, exerci mediocritatem qui eu. Eam ut sale assum, nec dico nulla tempor an. Doming copiosae ei cum, impedit albucius atomorum nam ad. Ea qui vidisse postulant constituto.</p>', '318-747-9098', 'USA', '2572 Emerson Road', 'LA', 'Shreveport', '71111', '', 'https://www.facebook.com', '', 'https://www.linkedin.com', '', '', 'https://www.youtube.com', '', 1),
(7, 'James Laubach', 'james@gmail.com', '', '$2y$10$hpERk7Vu02kPos5Ki4xDpu4ZC8E5gTIQWEy3DkipV19nDBog/ej32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1),
(8, 'Galen Gilliam', 'galen@gmail.com', '', '$2y$10$peZE6zwNe4hPv5yq0FqUVeAkhFvj7ZAcpdgbHlIW5zWtlINOHWMjq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1),
(9, 'Scott Harris', 'scott@gmail.com', '', '$2y$10$xrmbrnlKLFWDxqeYkdNAbecjzwtfHMNm36CNn0XI/8zHeFuKn7VaG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1),
(10, 'George Romero', 'george@gmail.com', '', '$2y$10$KCCxbn.8Up0I8RYtxrJl6.fobxPiiPt7ScZTDKeKErZvwsWQu8C42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`) VALUES
(1, 'Free Wifi'),
(2, 'Swimming Pool'),
(3, 'Parking Lot'),
(4, 'Gym'),
(5, 'Fitness Center'),
(6, 'Room Service'),
(7, 'Private Locker'),
(8, 'Washing Machine');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `password` varchar(150) NOT NULL,
  `token` varchar(80) DEFAULT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `full_name`, `email`, `photo`, `password`, `token`, `status`) VALUES
(1, 'Peter Smith', 'peter@gmail.com', '1697419533.jpg', '$2y$10$ondb5FN9eT1on1jMzVvXYuq8yWA/MiJ2Uml/TPz9b5timG/.3xhCK', '', 1),
(2, 'Brent Grundy', 'brent@gmail.com', '', '$2y$10$29iaS5S1onofMGB/Hm0OpeVV0nvoCr6S6LgMWV4b20ezLqeQwJRfa', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`) VALUES
(1, 'How do I buy a property?', '<p>The process typically involves finding a property, making an offer, conducting inspections, obtaining financing, and closing the deal.</p>'),
(2, 'What is a real estate agent and what do they do?', '<p>Vel an sint suscipit deserunt, ut pri atomorum erroribus principes. Populo discere pri ne. Zril iracundia hendrerit qui ne. Aliquid legimus convenire at cum. No omnes ponderum adipisci mel, has dolorem intellegebat reprehendunt at, te falli blandit abhorreant vel. Te sit omnis adhuc adipiscing, etiam option luptatum ne vim, cu platonem torquatos dissentiunt pro.</p>'),
(3, 'What is a mortgage?', '<p>Velit principes repudiare eos ne. Purto noluisse placerat eu ius, modo primis omnium nec ea. Usu ei quas aliquando. Duo periculis repudiare an, mei ei debitis civibus. Duo an elit errem eripuit, suas oblique ex vel.</p>'),
(4, 'What is a home inspection?', '<p>Vis ex minim debet iuvaret. Has falli diceret persequeris ea, quem numquam moderatius sit cu, an nonumy senserit molestiae per. Legere nostrum senserit eu vis, tota iudicabit has te. Mel esse prima splendide eu.</p>'),
(5, 'What is property tax?', '<p>Velit legere eos id, mea offendit imperdiet ne. Graeci partiendo consectetuer usu cu, ea vix illum regione urbanitas, in eam erant quaestio cotidieque. Mea ei insolens dissentiet, usu perpetua ocurreret aliquando ei. An per vero postea, ne eum facete option reprimique. At sea praesent forensibus theophrastus. Ius eu alia impedit, usu ad cibo liber.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `slug`, `photo`) VALUES
(1, 'Newyork', 'newyork', '1696748021.jpg'),
(2, 'Boston', 'boston', '1696748057.jpg'),
(3, 'Chicago', 'chicago', '1696748081.jpg'),
(4, 'Dallas', 'dallas', '1696757411.jpg'),
(5, 'Denver', 'denver', '1696748113.jpg'),
(6, 'San Diago', 'san-diago', '1696748129.jpg'),
(7, 'California', 'california', '1696748151.jpg'),
(8, 'Washington', 'washington', '1696748162.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `customer_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `posted_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `subject`, `message`, `customer_id`, `agent_id`, `posted_on`) VALUES
(3, 'Why there is no swimming pool in a property?', '<p>I have seen some properties from you that are very high priced, but there is no swimming pool in there. Can I know the reason?</p>', 1, 4, '2023-10-15 18:28:29'),
(9, 'Do you have parking lot?', '<p>Do you have parking lot?</p>', 2, 4, '2023-10-16 02:23:33');

-- --------------------------------------------------------

--
-- Table structure for table `message_replies`
--

CREATE TABLE `message_replies` (
  `id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `sender` text NOT NULL,
  `reply` text NOT NULL,
  `reply_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message_replies`
--

INSERT INTO `message_replies` (`id`, `message_id`, `customer_id`, `agent_id`, `sender`, `reply`, `reply_on`) VALUES
(3, 3, 1, 4, 'Customer', 'I am waiting for your reply. Please respond as soon as possible.', '2023-10-16 01:07:23'),
(4, 3, 1, 4, 'Agent', 'Though there is no swimming pool, you are getting a lot of other facilities there.', '2023-10-16 01:14:57'),
(5, 3, 1, 4, 'Customer', 'But, that is important. If there is any property that have good conditioned swimming pool, please let me know. ', '2023-10-16 01:26:17'),
(8, 3, 1, 4, 'Agent', 'Ok, I will give you some lists soon. ', '2023-10-16 02:10:36'),
(9, 3, 1, 4, 'Customer', 'Thank you.', '2023-10-16 02:12:58'),
(10, 9, 2, 4, 'Agent', 'Not yet for all properties. ', '2023-10-16 02:24:52'),
(11, 9, 2, 4, 'Customer', 'Ok. Thank you. I will wait.', '2023-10-16 02:25:24');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `transaction_id` text NOT NULL,
  `payment_method` text NOT NULL,
  `paid_amount` text NOT NULL,
  `status` text NOT NULL,
  `purchase_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `currently_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `agent_id`, `package_id`, `transaction_id`, `payment_method`, `paid_amount`, `status`, `purchase_date`, `expire_date`, `currently_active`) VALUES
(4, 2, 1, 'pi_3O0GsuFu4RFhJ2GJ16Wf9qyP', 'Stripe', '19', 'Completed', '2023-10-12', '2023-10-27', 1),
(5, 4, 2, 'pi_3O0GtwFu4RFhJ2GJ0L21z27F', 'Stripe', '29', 'Completed', '2023-10-12', '2023-11-11', 1),
(8, 5, 3, 'pi_3O0LugFu4RFhJ2GJ0LxMIdzy', 'Stripe', '39', 'Completed', '2023-10-12', '2023-12-11', 1),
(9, 1, 3, 'pi_3O0eGRFu4RFhJ2GJ1hMewaGp', 'Stripe', '39', 'Completed', '2023-10-13', '2023-12-12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `allowed_days` int(11) NOT NULL,
  `allowed_properties` int(11) NOT NULL,
  `allowed_featured_properties` int(11) NOT NULL,
  `allowed_photos` int(11) NOT NULL,
  `allowed_videos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `price`, `allowed_days`, `allowed_properties`, `allowed_featured_properties`, `allowed_photos`, `allowed_videos`) VALUES
(1, 'Basic', 19, 15, 3, 0, 3, 3),
(2, 'Standard', 29, 30, 15, 3, 5, 5),
(3, 'Gold', 39, 60, -1, 15, 15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `slug` text NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `photo` text NOT NULL,
  `posted_on` date NOT NULL,
  `total_view` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `short_description`, `description`, `photo`, `posted_on`, `total_view`) VALUES
(1, 'Maximizing Your Property Investment: Tips for Success', 'maximizing-your-property-investment', 'In this blog, you will learn how to make smart real estate investments that will maximize your returns and help you reach your financial goals.', '<p>Lorem ipsum dolor sit amet, cibo impedit electram in has. Gubergren adolescens assueverit an est. Sed quas efficiantur ad, no ullum aperiam vel. Id postea debitis menandri ius. Mel eu maiorum explicari moderatius, cu vel feugait officiis. An amet copiosae instructior sea, cu noster iuvaret mea.<br /><br />Vel an sint suscipit deserunt, ut pri atomorum erroribus principes. Populo discere pri ne. Zril iracundia hendrerit qui ne. Aliquid legimus convenire at cum. No omnes ponderum adipisci mel, has dolorem intellegebat reprehendunt at, te falli blandit abhorreant vel. Te sit omnis adhuc adipiscing, etiam option luptatum ne vim, cu platonem torquatos dissentiunt pro.<br /><br />Velit principes repudiare eos ne. Purto noluisse placerat eu ius, modo primis omnium nec ea. Usu ei quas aliquando. Duo periculis repudiare an, mei ei debitis civibus. Duo an elit errem eripuit, suas oblique ex vel.<br /><br />Vis ex minim debet iuvaret. Has falli diceret persequeris ea, quem numquam moderatius sit cu, an nonumy senserit molestiae per. Legere nostrum senserit eu vis, tota iudicabit has te. Mel esse prima splendide eu.</p>', '1697471193.jpg', '2023-10-16', 1),
(2, 'The Insider\'s Guide to Finding Your Dream Home and Land', 'finding-your-dream-home', 'In this blog, you will learn how to make smart real estate investments that will maximize your returns and help you reach your financial goals.', '<p>Lorem ipsum dolor sit amet, cibo impedit electram in has. Gubergren adolescens assueverit an est. Sed quas efficiantur ad, no ullum aperiam vel. Id postea debitis menandri ius. Mel eu maiorum explicari moderatius, cu vel feugait officiis. An amet copiosae instructior sea, cu noster iuvaret mea.<br /><br />Vel an sint suscipit deserunt, ut pri atomorum erroribus principes. Populo discere pri ne. Zril iracundia hendrerit qui ne. Aliquid legimus convenire at cum. No omnes ponderum adipisci mel, has dolorem intellegebat reprehendunt at, te falli blandit abhorreant vel. Te sit omnis adhuc adipiscing, etiam option luptatum ne vim, cu platonem torquatos dissentiunt pro.<br /><br />Velit principes repudiare eos ne. Purto noluisse placerat eu ius, modo primis omnium nec ea. Usu ei quas aliquando. Duo periculis repudiare an, mei ei debitis civibus. Duo an elit errem eripuit, suas oblique ex vel.<br /><br />Vis ex minim debet iuvaret. Has falli diceret persequeris ea, quem numquam moderatius sit cu, an nonumy senserit molestiae per. Legere nostrum senserit eu vis, tota iudicabit has te. Mel esse prima splendide eu.</p>', '1697471202.jpg', '2023-10-16', 1),
(3, 'The Rise of the Sustainable Housing: Think Why It Matters', 'sustainable-housing', 'In this blog, you will learn how to make smart real estate investments that will maximize your returns and help you reach your financial goals.', '<p>Lorem ipsum dolor sit amet, cibo impedit electram in has. Gubergren adolescens assueverit an est. Sed quas efficiantur ad, no ullum aperiam vel. Id postea debitis menandri ius. Mel eu maiorum explicari moderatius, cu vel feugait officiis. An amet copiosae instructior sea, cu noster iuvaret mea.<br /><br />Vel an sint suscipit deserunt, ut pri atomorum erroribus principes. Populo discere pri ne. Zril iracundia hendrerit qui ne. Aliquid legimus convenire at cum. No omnes ponderum adipisci mel, has dolorem intellegebat reprehendunt at, te falli blandit abhorreant vel. Te sit omnis adhuc adipiscing, etiam option luptatum ne vim, cu platonem torquatos dissentiunt pro.<br /><br />Velit principes repudiare eos ne. Purto noluisse placerat eu ius, modo primis omnium nec ea. Usu ei quas aliquando. Duo periculis repudiare an, mei ei debitis civibus. Duo an elit errem eripuit, suas oblique ex vel.<br /><br />Vis ex minim debet iuvaret. Has falli diceret persequeris ea, quem numquam moderatius sit cu, an nonumy senserit molestiae per. Legere nostrum senserit eu vis, tota iudicabit has te. Mel esse prima splendide eu.</p>', '1697470195.jpg', '2023-10-16', 1),
(4, 'The Top 10 Most Popular Real Estate Markets of the Year', 'popular-real-estate-market-2023', 'In this blog, you will learn how to make smart real estate investments that will maximize your returns and help you reach your financial goals.', '<p>Lorem ipsum dolor sit amet, cibo impedit electram in has. Gubergren adolescens assueverit an est. Sed quas efficiantur ad, no ullum aperiam vel. Id postea debitis menandri ius. Mel eu maiorum explicari moderatius, cu vel feugait officiis. An amet copiosae instructior sea, cu noster iuvaret mea.<br /><br />Vel an sint suscipit deserunt, ut pri atomorum erroribus principes. Populo discere pri ne. Zril iracundia hendrerit qui ne. Aliquid legimus convenire at cum. No omnes ponderum adipisci mel, has dolorem intellegebat reprehendunt at, te falli blandit abhorreant vel. Te sit omnis adhuc adipiscing, etiam option luptatum ne vim, cu platonem torquatos dissentiunt pro.<br /><br />Velit principes repudiare eos ne. Purto noluisse placerat eu ius, modo primis omnium nec ea. Usu ei quas aliquando. Duo periculis repudiare an, mei ei debitis civibus. Duo an elit errem eripuit, suas oblique ex vel.<br /><br />Vis ex minim debet iuvaret. Has falli diceret persequeris ea, quem numquam moderatius sit cu, an nonumy senserit molestiae per. Legere nostrum senserit eu vis, tota iudicabit has te. Mel esse prima splendide eu.</p>', '1697470218.jpg', '2023-10-16', 10),
(5, 'The Benefits of Working with a Good Real Estate Agent', 'benefits-of-good-agent', 'In this blog, you will learn how to make smart real estate investments that will maximize your returns and help you reach your financial goals.', '<p>Lorem ipsum dolor sit amet, cibo impedit electram in has. Gubergren adolescens assueverit an est. Sed quas efficiantur ad, no ullum aperiam vel. Id postea debitis menandri ius. Mel eu maiorum explicari moderatius, cu vel feugait officiis. An amet copiosae instructior sea, cu noster iuvaret mea.<br /><br />Vel an sint suscipit deserunt, ut pri atomorum erroribus principes. Populo discere pri ne. Zril iracundia hendrerit qui ne. Aliquid legimus convenire at cum. No omnes ponderum adipisci mel, has dolorem intellegebat reprehendunt at, te falli blandit abhorreant vel. Te sit omnis adhuc adipiscing, etiam option luptatum ne vim, cu platonem torquatos dissentiunt pro.<br /><br />Velit principes repudiare eos ne. Purto noluisse placerat eu ius, modo primis omnium nec ea. Usu ei quas aliquando. Duo periculis repudiare an, mei ei debitis civibus. Duo an elit errem eripuit, suas oblique ex vel.<br /><br />Vis ex minim debet iuvaret. Has falli diceret persequeris ea, quem numquam moderatius sit cu, an nonumy senserit molestiae per. Legere nostrum senserit eu vis, tota iudicabit has te. Mel esse prima splendide eu.</p>', '1697470246.jpg', '2023-10-16', 1),
(6, 'The Impact of Interest Rates on the Real Estate Market', 'interest-rates-on-real-estate-market', 'In this blog, you will learn how to make smart real estate investments that will maximize your returns and help you reach your financial goals.', '<p>Lorem ipsum dolor sit amet, cibo impedit electram in has. Gubergren adolescens assueverit an est. Sed quas efficiantur ad, no ullum aperiam vel. Id postea debitis menandri ius. Mel eu maiorum explicari moderatius, cu vel feugait officiis. An amet copiosae instructior sea, cu noster iuvaret mea.<br /><br />Vel an sint suscipit deserunt, ut pri atomorum erroribus principes. Populo discere pri ne. Zril iracundia hendrerit qui ne. Aliquid legimus convenire at cum. No omnes ponderum adipisci mel, has dolorem intellegebat reprehendunt at, te falli blandit abhorreant vel. Te sit omnis adhuc adipiscing, etiam option luptatum ne vim, cu platonem torquatos dissentiunt pro.<br /><br />Velit principes repudiare eos ne. Purto noluisse placerat eu ius, modo primis omnium nec ea. Usu ei quas aliquando. Duo periculis repudiare an, mei ei debitis civibus. Duo an elit errem eripuit, suas oblique ex vel.<br /><br />Vis ex minim debet iuvaret. Has falli diceret persequeris ea, quem numquam moderatius sit cu, an nonumy senserit molestiae per. Legere nostrum senserit eu vis, tota iudicabit has te. Mel esse prima splendide eu.</p>', '1697470269.jpg', '2023-10-16', 6);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `amenities` text NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `description` text NOT NULL,
  `featured_photo` text NOT NULL,
  `price` int(11) NOT NULL,
  `purpose` text NOT NULL,
  `bedroom` int(11) NOT NULL,
  `bathroom` int(11) NOT NULL,
  `size` text NOT NULL,
  `floor` int(11) NOT NULL,
  `garage` int(11) NOT NULL,
  `balcony` int(11) NOT NULL,
  `address` text NOT NULL,
  `built_year` text NOT NULL,
  `map` text NOT NULL,
  `is_featured` text NOT NULL,
  `status` text NOT NULL,
  `posted_on` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `agent_id`, `location_id`, `type_id`, `amenities`, `name`, `slug`, `description`, `featured_photo`, `price`, `purpose`, `bedroom`, `bathroom`, `size`, `floor`, `garage`, `balcony`, `address`, `built_year`, `map`, `is_featured`, `status`, `posted_on`) VALUES
(5, 1, 1, 2, '5,4,3,2', 'Park Towers South', 'park-towers-south', '<p>Pro senserit vulputate ea, has erroribus accommodare ea, at cum eius ferri abhorreant. Pro no modo suscipit invidunt, ad honestatis definitiones pri. Mutat soluta tempor te nec, mel ei definiebas deterruisset. Zril honestatis reprehendunt pri ea, no magna albucius his, alia tacimates complectitur at mel. Ius sonet posidonium te, quo dissentiunt comprehensam et, quo nisl reque harum no. Ne mea equidem petentium accommodare, has te diam singulis.</p>', '1697087756.png', 23000, 'Sale', 3, 2, '4000', 3, 1, 2, '315 W 57th St, New York, NY 10019', '2000', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3021.7563146190532!2d-73.9863354242865!3d40.76738413422364!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c258587ccef2bb%3A0x26f8e6cbf1ffbbbd!2s315%20W%2057th%20St%2C%20New%20York%2C%20NY%2010019%2C%20USA!5e0!3m2!1sen!2sbd!4v1697045038770!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'No', 'Active', '2023-10-05'),
(6, 1, 1, 1, '5,1,4', 'FRANK 57 WEST', 'frank-57-west', '<p>Invenire delicatissimi nam no, cu sed magna verear. An per suas eripuit conclusionemque. Per natum graece scriptorem ea, sit persecuti abhorreant vituperatoribus at. Cu sit malis assum, nam quodsi lobortis id. Nam ex nobis disputando, pro iriure oblique deleniti ad.</p>', '1697087924.png', 56000, 'Sale', 3, 3, '5600', 3, 2, 3, '600 W 58th St, New York, NY 10019', '1990', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3021.5964957464676!2d-73.99435422428633!3d40.77089873400817!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2585b81894a29%3A0x869e1ea9b27ad0f8!2s600%20W%2058th%20St%2C%20New%20York%2C%20NY%2010019%2C%20USA!5e0!3m2!1sen!2sbd!4v1697045201758!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'No', 'Active', '2023-10-05'),
(7, 1, 4, 4, '1,3,7,6,8', 'South Side Flats', 'south-side-flats', '<p>Nec duis efficiendi ne, tollit patrioque adipiscing ad quo, pri in zril labore neglegentur. Ei habeo noluisse invenire eos, mei iracundia aliquando te, probo molestie oporteat vis ei. Ut pro graece quodsi albucius. Ex vim nostro euripidis, alia antiopam hendrerit nam ut. Est ei alia movet copiosae, id quo accumsan salutatus.</p>', '1697088745.png', 45000, 'Sale', 2, 2, '2500', 1, 1, 3, '1210 Botham Jean Blvd, Dallas, TX 75215', '2010', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3354.8399089364057!2d-96.79933252464295!3d32.76998218434604!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x864e990343afea6b%3A0x85ad20f4a289dedc!2s1210%20Botham%20Jean%20Blvd%2C%20Dallas%2C%20TX%2075215%2C%20USA!5e0!3m2!1sen!2sbd!4v1697045657127!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Yes', 'Active', '2023-10-05'),
(8, 1, 4, 6, '5,1,4,3,7,6,2', 'Halston on Frankford', 'halston-on-frankford', '<p>Nec duis efficiendi ne, tollit patrioque adipiscing ad quo, pri in zril labore neglegentur. Ei habeo noluisse invenire eos, mei iracundia aliquando te, probo molestie oporteat vis ei. Ut pro graece quodsi albucius. Ex vim nostro euripidis, alia antiopam hendrerit nam ut. Est ei alia movet copiosae, id quo accumsan salutatus.<br /><br />Ad scaevola oporteat eum, euismod aliquando quo et. Urbanitas assentior et vel. Qui molestie oportere ex, explicari rationibus persequeris et has. At alia adhuc nec.</p>', '1697089256.png', 70000, 'Sale', 3, 3, '6000', 2, 2, 2, '3702 Frankford Rd, Dallas, TX 75287', '2018', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3346.310798817118!2d-96.85446832463394!3d32.995580572785016!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x864c2416da7c297f%3A0x78c94b87fb4640f!2s3702%20Frankford%20Rd%2C%20Dallas%2C%20TX%2075287%2C%20USA!5e0!3m2!1sen!2sbd!4v1697045855087!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'No', 'Active', '2023-10-06'),
(9, 1, 4, 8, '1,4,3,2', 'The Village Dallas', 'the-village-dallas', '<p>Ei pro graece albucius scribentur, ea nec scaevola nominati. Ignota commune patrioque has ex. Et adhuc inimicus consectetuer qui, eos harum tamquam posidonium te. Vel rebum electram eu, scripta oblique labitur in vel, inermis maiorum appetere in per. Ipsum laboramus contentiones ea mei, vis in dolore albucius definitiones. At eum tantas graecis, tation complectitur ex eam.</p>', '1697089393.png', 65000, 'Rent', 2, 2, '2900', 2, 2, 2, '5605 Village Glen Dr, Dallas, TX 75206', '2020', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3351.454752992814!2d-96.7666750246394!3d32.85968547975725!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x864e9f9a4aaabd3f%3A0x4050c905412fe466!2s5605%20Village%20Glen%20Dr%2C%20Dallas%2C%20TX%2075206%2C%20USA!5e0!3m2!1sen!2sbd!4v1697046098554!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Yes', 'Active', '2023-10-06'),
(10, 1, 2, 7, '5,1,2', '1330 Boylston', '1330-boylston', '<p>Nominavi atomorum pertinacia vix an. Ei bonorum civibus perpetua eam. Posse ubique te his, nam ne offendit repudiare. Ei sit ubique putant delectus, his probo ceteros eu. Case euismod corrumpit his no.<br /><br />Volumus definiebas cu ius. Melius voluptaria usu at, tacimates disputationi ei vim. Ocurreret rationibus vix ex, eam ei choro alterum definitiones. Id dico iuvaret recteque mea, etiam errem dicam cu vel, quodsi menandri torquatos eu sed. Deleniti apeirian consequat vel ea.</p>', '1697089578.png', 38000, 'Sale', 3, 3, '3400', 2, 2, 2, '1330 Boylston St, Boston, MA 02215', '2010', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2948.9235564462165!2d-71.10096652420766!3d42.34415313610694!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89e379f5eed08f7f%3A0x264c341133e19fd0!2s1330%20Boylston%20St%2C%20Boston%2C%20MA%2002215%2C%20USA!5e0!3m2!1sen!2sbd!4v1697046401997!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Yes', 'Active', '2023-10-06'),
(11, 2, 2, 2, '1,3,2', 'Hancock Village', 'hancock-village', '<p>Impetus intellegat instructior pro id, graece libris essent sea ei, labore prompta eu duo. Sed ne latine fabulas omittantur, corpora tacimates cu eam. Agam movet impedit mel at, ex pro facilisi ocurreret. Et autem augue corpora vel.</p>', '1697089739.png', 30000, 'Sale', 4, 2, '4000', 2, 2, 2, '1 Hancock Village Dr, Chestnut Hill, MA 02467', '2005', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2951.0262531766125!2d-71.15892092420991!3d42.29930523893828!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89e378cdecf486a5%3A0x19da5e1d56dd24fd!2sHancock%20Village%20Townhome%20Style%20Apartments!5e0!3m2!1sen!2sbd!4v1697046623435!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'No', 'Active', '2023-10-06'),
(12, 2, 7, 4, '5,1,4,3', 'The Apartments of Wildewood', 'apartments-wildewood', '<p>Te eam dicat ullamcorper, choro albucius his no, vel et mutat everti mandamus. Vim ad fabulas scripserit, veniam integre ullamcorper vix an, erat movet scripserit vel no. Vidit atqui voluptatum has te, enim utamur omittam at eos. Ut sanctus persecuti ius, est forensibus efficiendi delicatissimi no. Solum tation honestatis sed cu. Eu eirmod tritani placerat sed, an vix luptatum concludaturque. Elit illud congue in eos, ut facete repudiare sadipscing sed, quem alienum ius et.</p>', '1697089909.png', 55000, 'Sale', 3, 2, '3800', 2, 1, 1, '23314 Surrey Way, California, MD 20619', '2000', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3130.8835514875004!2d-76.5314823244041!3d38.30536568141971!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b763e90b77f17f%3A0xb35fb046821f7220!2s23314%20Surrey%20Way%2C%20California%2C%20MD%2020619%2C%20USA!5e0!3m2!1sen!2sbd!4v1697046860127!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'No', 'Active', '2023-10-07'),
(13, 2, 7, 1, '5,1,4,3,7', 'Spring Valley Apartments', 'spring-valley-apartments', '<p>Accusamus elaboraret efficiantur ut quo, ex omnis dolores probatus vel. Simul nostrud ei qui, eos no adhuc atqui. Mei fugit nihil scripta in, agam fabulas maluisset at eum, has vocibus vulputate cu. Usu eu debitis recusabo. At sit reque utinam definiebas, cu cum laudem accommodare, aperiam praesent adipiscing no eum. Ut pri iuvaret dissentiunt ullamcorper, ea noluisse cotidieque per.</p>', '1697090035.png', 22000, 'Sale', 3, 3, '5000', 2, 2, 2, '46533 Valley Ct, Lexington Park, MD 20653', '2000', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3132.4904017544495!2d-76.46767262440581!3d38.268123483588944!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b761e67fb14075%3A0xc5c87faf799a23cf!2s46533%20Valley%20Ct%2C%20Lexington%20Park%2C%20MD%2020653%2C%20USA!5e0!3m2!1sen!2sbd!4v1697047101903!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'No', 'Active', '2023-10-07'),
(14, 4, 3, 1, '1,3,7,6,2', 'Lake Meadows', 'lake-meadows', '<p>Vim at dolorum volumus temporibus, ius at facilisi recusabo. Usu ad erat malis euripidis. Eum postulant constituto at, id vix iudico ridens voluptaria, ocurreret dignissim definitiones ad sit. Meis blandit principes at eam, et eos utamur delectus. Ea suas primis possim mei. Id discere volutpat vix, eu virtute adolescens mnesarchum vix.</p>', '1697090180.png', 31000, 'Sale', 3, 2, '3500', 2, 2, 3, '3233 S King Dr, Chicago, IL 60616', '2003', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2972.6779855119953!2d-87.61918092423339!3d41.835231668097556!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x880e2bf52db0e6f3%3A0xa0532dcfff690d3b!2s3233%20S%20King%20Dr%2C%20Chicago%2C%20IL%2060616%2C%20USA!5e0!3m2!1sen!2sbd!4v1697047332862!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Yes', 'Active', '2023-10-07'),
(15, 4, 3, 5, '5,1,4,6,2', 'Sentral Michigan Avenue', 'sentral-michigan-avenue', '<p>Est doming fuisset an, ne ludus choro assentior eos. Illud reque sadipscing mei ei, ne nec iudico accommodare philosophia, te pro quas movet minimum. Error facilisi cotidieque id qui. Sea natum modus platonem no, accusamus gloriatur eam ad. Sed et dicunt expetenda, cu aeque oratio oblique ius.</p>', '1697090369.png', 900, 'Rent', 2, 2, '700', 2, 2, 2, '808 S Michigan Ave, Chicago, IL 60605', '2000', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2970.9930834895267!2d-87.62714832423157!3d41.871495265828116!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x880e2c9940c21341%3A0x1bd04cfb5ed02931!2s808%20S%20Michigan%20Ave%2C%20Chicago%2C%20IL%2060605%2C%20USA!5e0!3m2!1sen!2sbd!4v1697047580648!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Yes', 'Active', '2023-10-07'),
(16, 4, 5, 1, '1,4,7', 'Ascend at Pena Station', 'ascend-pena-station', '<p>Accusamus elaboraret efficiantur ut quo, ex omnis dolores probatus vel. Simul nostrud ei qui, eos no adhuc atqui. Mei fugit nihil scripta in, agam fabulas maluisset at eum, has vocibus vulputate cu. Usu eu debitis recusabo. At sit reque utinam definiebas, cu cum laudem accommodare, aperiam praesent adipiscing no eum. Ut pri iuvaret dissentiunt ullamcorper, ea noluisse cotidieque per.<br /><br />Vim at dolorum volumus temporibus, ius at facilisi recusabo. Usu ad erat malis euripidis. Eum postulant constituto at, id vix iudico ridens voluptaria, ocurreret dignissim definitiones ad sit. Meis blandit principes at eam, et eos utamur delectus. Ea suas primis possim mei. Id discere volutpat vix, eu virtute adolescens mnesarchum vix.</p>', '1697090490.png', 1200, 'Rent', 2, 2, '1400', 2, 2, 2, '18591 E 61st Ave, Denver, CO 80249', '2006', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3064.959952944086!2d-104.77317192433317!3d39.80789009247107!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x876c65cb45de56ed%3A0xe3cec14b03ec2347!2s18591%20E%2061st%20Ave%2C%20Denver%2C%20CO%2080249%2C%20USA!5e0!3m2!1sen!2sbd!4v1697047933012!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Yes', 'Active', '2023-10-08'),
(17, 4, 5, 2, '5,1,4,2', 'Deco Apartments', 'deco-apartments', '<p>Vim at dolorum volumus temporibus, ius at facilisi recusabo. Usu ad erat malis euripidis. Eum postulant constituto at, id vix iudico ridens voluptaria, ocurreret dignissim definitiones ad sit. Meis blandit principes at eam, et eos utamur delectus. Ea suas primis possim mei. Id discere volutpat vix, eu virtute adolescens mnesarchum vix.<br /><br />Est doming fuisset an, ne ludus choro assentior eos. Illud reque sadipscing mei ei, ne nec iudico accommodare philosophia, te pro quas movet minimum. Error facilisi cotidieque id qui. Sea natum modus platonem no, accusamus gloriatur eam ad. Sed et dicunt expetenda, cu aeque oratio oblique ius.</p>', '1697090635.png', 1000, 'Rent', 2, 2, '1100', 2, 2, 2, '2180 S Colorado Blvd, Denver, CO 80222', '2010', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3070.7773124521846!2d-104.94307712433944!3d39.67722360031656!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x876c7f75ce9e6967%3A0xd4d7bc8159e80f93!2s2180%20S%20Colorado%20Blvd%2C%20Denver%2C%20CO%2080222%2C%20USA!5e0!3m2!1sen!2sbd!4v1697048125224!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'No', 'Active', '2023-10-08'),
(18, 4, 8, 6, '4,3,7', '4000 Massachusetts', '4000-massachusetts', '<p>Nec duis efficiendi ne, tollit patrioque adipiscing ad quo, pri in zril labore neglegentur. Ei habeo noluisse invenire eos, mei iracundia aliquando te, probo molestie oporteat vis ei. Ut pro graece quodsi albucius. Ex vim nostro euripidis, alia antiopam hendrerit nam ut. Est ei alia movet copiosae, id quo accumsan salutatus.</p>', '1697090772.png', 1800, 'Rent', 2, 2, '3400', 2, 2, 2, '4000 Massachusetts Ave NW, Washington, DC 20016', '2010', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3103.674804133343!2d-77.08131222437491!3d38.93140974469713!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b7b62009d0c6b1%3A0x3d2097ca3e26aeae!2s4000%20Massachusetts%20Ave.!5e0!3m2!1sen!2sbd!4v1697049749329!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'No', 'Active', '2023-10-10'),
(19, 5, 8, 7, '5,7,2', 'Avec on H Street', 'avec-h-street', '<p>Ad scaevola oporteat eum, euismod aliquando quo et. Urbanitas assentior et vel. Qui molestie oportere ex, explicari rationibus persequeris et has. At alia adhuc nec.<br /><br />Ei pro graece albucius scribentur, ea nec scaevola nominati. Ignota commune patrioque has ex. Et adhuc inimicus consectetuer qui, eos harum tamquam posidonium te. Vel rebum electram eu, scripta oblique labitur in vel, inermis maiorum appetere in per. Ipsum laboramus contentiones ea mei, vis in dolore albucius definitiones. At eum tantas graecis, tation complectitur ex eam.</p>', '1697090900.png', 2000, 'Rent', 2, 2, '2000', 2, 2, 2, '801-901 H St NE, Washington, DC 20002', '2000', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3105.04705110435!2d-76.99630212437636!3d38.900039346548795!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b7b83ddce7ac15%3A0xb7c490bb1b74c13c!2s901%20H%20St%20NE%20%23801%2C%20Washington%2C%20DC%2020002%2C%20USA!5e0!3m2!1sen!2sbd!4v1697050021089!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'No', 'Active', '2023-10-10'),
(20, 5, 8, 1, '5,1,3', 'The Hecht Warehouse', 'hecht-warehouse', '<p>Ad scaevola oporteat eum, euismod aliquando quo et. Urbanitas assentior et vel. Qui molestie oportere ex, explicari rationibus persequeris et has. At alia adhuc nec.<br /><br />Ei pro graece albucius scribentur, ea nec scaevola nominati. Ignota commune patrioque has ex. Et adhuc inimicus consectetuer qui, eos harum tamquam posidonium te. Vel rebum electram eu, scripta oblique labitur in vel, inermis maiorum appetere in per. Ipsum laboramus contentiones ea mei, vis in dolore albucius definitiones. At eum tantas graecis, tation complectitur ex eam.</p>', '1697091010.png', 2200, 'Rent', 2, 2, '2300', 2, 2, 2, '1401 New York Ave NE, Washington, DC 20002', '1999', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3104.379086818909!2d-76.98920991602266!3d38.91531207274489!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b7b91ce08dddc9%3A0x3092e7c86c7be15!2s1401%20New%20York%20Ave%20NE%2C%20Washington%2C%20DC%2020002%2C%20USA!5e0!3m2!1sen!2sbd!4v1697050219413!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'No', 'Active', '2023-10-12'),
(21, 5, 6, 1, '5,1,4,2', 'Gables Old Town North', 'gables-old-town-north', '<p>Ad scaevola oporteat eum, euismod aliquando quo et. Urbanitas assentior et vel. Qui molestie oportere ex, explicari rationibus persequeris et has. At alia adhuc nec.<br /><br />Ei pro graece albucius scribentur, ea nec scaevola nominati. Ignota commune patrioque has ex. Et adhuc inimicus consectetuer qui, eos harum tamquam posidonium te. Vel rebum electram eu, scripta oblique labitur in vel, inermis maiorum appetere in per. Ipsum laboramus contentiones ea mei, vis in dolore albucius definitiones. At eum tantas graecis, tation complectitur ex eam.</p>', '1697091143.png', 1300, 'Rent', 2, 2, '4000', 2, 2, 2, '525 Montgomery St, Alexandria, VA 22314', '2000', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3108.7915307697444!2d-77.04579842438041!3d38.814329751601825!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b7b0f021419483%3A0x2d7baeea0c9b68a6!2s525%20Montgomery%20St%2C%20Alexandria%2C%20VA%2022314%2C%20USA!5e0!3m2!1sen!2sbd!4v1697050442956!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'No', 'Active', '2023-10-12'),
(22, 5, 1, 8, '5,1,3', 'The DeSoto Apartments', 'desoto-apartments', '<p>Ad scaevola oporteat eum, euismod aliquando quo et. Urbanitas assentior et vel. Qui molestie oportere ex, explicari rationibus persequeris et has. At alia adhuc nec.<br /><br />Ei pro graece albucius scribentur, ea nec scaevola nominati. Ignota commune patrioque has ex. Et adhuc inimicus consectetuer qui, eos harum tamquam posidonium te. Vel rebum electram eu, scripta oblique labitur in vel, inermis maiorum appetere in per. Ipsum laboramus contentiones ea mei, vis in dolore albucius definitiones. At eum tantas graecis, tation complectitur ex eam.</p>', '1697091259.png', 1900, 'Rent', 2, 2, '2200', 2, 2, 2, '1445 P St NW, Washington, DC 20005', '2017', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3104.6155662257866!2d-77.03617742437592!3d38.90990564596648!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b7b7c1e00d30ab%3A0x98726ada62ba226!2s1445%20P%20St%20NW%2C%20Washington%2C%20DC%2020005%2C%20USA!5e0!3m2!1sen!2sbd!4v1697050645985!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'No', 'Active', '2023-10-14'),
(23, 5, 1, 3, '5,1,3,7,6,2', 'Monroe Street Market', 'monroe-street-market', '<p>Ad scaevola oporteat eum, euismod aliquando quo et. Urbanitas assentior et vel. Qui molestie oportere ex, explicari rationibus persequeris et has. At alia adhuc nec.<br /><br />Ei pro graece albucius scribentur, ea nec scaevola nominati. Ignota commune patrioque has ex. Et adhuc inimicus consectetuer qui, eos harum tamquam posidonium te. Vel rebum electram eu, scripta oblique labitur in vel, inermis maiorum appetere in per. Ipsum laboramus contentiones ea mei, vis in dolore albucius definitiones. At eum tantas graecis, tation complectitur ex eam.</p>', '1697091371.png', 3000, 'Rent', 2, 2, '1700', 2, 2, 2, '625 Monroe St NE, Washington, DC 20017', '2000', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3103.656154302587!2d-76.99969952437485!3d38.93183594467193!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b7c7f03b9c8b8f%3A0xd7e010397dabd569!2sCornerstone%2C%20625%20Monroe%20St%20NE%2C%20Washington%2C%20DC%2020017%2C%20USA!5e0!3m2!1sen!2sbd!4v1697050847366!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'No', 'Active', '2023-10-14'),
(24, 5, 4, 1, '5,1,4,3,7,6,2', 'Kessler Bluffs', 'kessler-bluffs', '<p>Ad scaevola oporteat eum, euismod aliquando quo et. Urbanitas assentior et vel. Qui molestie oportere ex, explicari rationibus persequeris et has. At alia adhuc nec.<br /><br />Ei pro graece albucius scribentur, ea nec scaevola nominati. Ignota commune patrioque has ex. Et adhuc inimicus consectetuer qui, eos harum tamquam posidonium te. Vel rebum electram eu, scripta oblique labitur in vel, inermis maiorum appetere in per. Ipsum laboramus contentiones ea mei, vis in dolore albucius definitiones. At eum tantas graecis, tation complectitur ex eam.</p>', '1697091469.png', 3200, 'Rent', 3, 3, '3300', 3, 3, 3, '1000 Fort Worth Ave, Dallas, TX 75208', '2020', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3354.8926834756753!2d-96.840197824643!3d32.768581984417494!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x864e9bd780628061%3A0xf09bcb743079ec08!2s1000%20Fort%20Worth%20Ave%2C%20Dallas%2C%20TX%2075208%2C%20USA!5e0!3m2!1sen!2sbd!4v1697051034520!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Yes', 'Active', '2023-10-14');

-- --------------------------------------------------------

--
-- Table structure for table `property_photos`
--

CREATE TABLE `property_photos` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `property_photos`
--

INSERT INTO `property_photos` (`id`, `property_id`, `photo`) VALUES
(7, 5, '1697087767.png'),
(8, 5, '1697087777.png'),
(9, 5, '1697087783.png'),
(10, 6, '1697087934.png'),
(11, 6, '1697087939.png'),
(12, 6, '1697087944.png'),
(13, 7, '1697088780.png'),
(14, 7, '1697088786.png'),
(15, 7, '1697088795.png'),
(16, 8, '1697089265.png'),
(17, 8, '1697089270.png'),
(18, 8, '1697089281.png'),
(19, 9, '1697089431.png'),
(20, 9, '1697089436.png'),
(21, 9, '1697089441.png'),
(22, 10, '1697089586.png'),
(23, 10, '1697089590.png'),
(24, 10, '1697089593.png'),
(25, 11, '1697089748.png'),
(26, 11, '1697089753.png'),
(27, 11, '1697089757.png'),
(28, 12, '1697089919.png'),
(29, 12, '1697089925.png'),
(30, 12, '1697089930.png'),
(31, 13, '1697090044.png'),
(33, 13, '1697090059.png'),
(34, 14, '1697090189.png'),
(35, 14, '1697090195.png'),
(36, 14, '1697090200.png'),
(37, 15, '1697090385.png'),
(38, 15, '1697090391.png'),
(39, 15, '1697090399.png'),
(40, 16, '1697090497.png'),
(41, 16, '1697090501.png'),
(42, 16, '1697090504.png'),
(43, 17, '1697090651.png'),
(44, 17, '1697090657.png'),
(45, 17, '1697090662.png'),
(46, 18, '1697090779.png'),
(47, 18, '1697090784.png'),
(48, 18, '1697090787.png'),
(49, 19, '1697090908.png'),
(50, 19, '1697090914.png'),
(51, 19, '1697090919.png'),
(52, 20, '1697091018.png'),
(53, 20, '1697091022.png'),
(54, 20, '1697091028.png'),
(55, 21, '1697091152.png'),
(56, 21, '1697091157.png'),
(57, 21, '1697091162.png'),
(58, 22, '1697091268.png'),
(59, 22, '1697091273.png'),
(60, 22, '1697091278.png'),
(61, 23, '1697091380.png'),
(62, 23, '1697091385.png'),
(63, 23, '1697091390.png'),
(64, 24, '1697091477.png'),
(65, 24, '1697091482.png'),
(66, 24, '1697091487.png'),
(67, 13, '1697139170.png');

-- --------------------------------------------------------

--
-- Table structure for table `property_videos`
--

CREATE TABLE `property_videos` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `video_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `property_videos`
--

INSERT INTO `property_videos` (`id`, `property_id`, `video_id`) VALUES
(7, 5, 'TgG8EUm9fHc'),
(8, 5, 'aN9DH_GxqEo'),
(9, 5, 'DGCshpSoeoc'),
(11, 6, 'mMstMmhgZmg'),
(12, 6, 'RMsVLYIJ0kw'),
(13, 7, 'YnJKCr7DJfY'),
(14, 7, 'wHZVfuVg_t0'),
(15, 7, 'hqkGIBKhTCs'),
(16, 8, '51ALckqxswY'),
(17, 8, '3r1QYHRESGM'),
(18, 8, 'tElvmuWqtcs'),
(19, 9, 'sL5_DVWFiNc'),
(20, 9, 'mr-uNuzVECg'),
(21, 9, 'bAnqNERdXLU'),
(22, 10, '88KwhpJ4spo'),
(23, 10, 'FRmXeUW5ewA'),
(24, 10, 'T0BI9x_QyrU'),
(25, 11, '6S9SKc4Z4Zo'),
(26, 11, 'AS5i3ASFjH8'),
(27, 11, 'pqtCqxa6bp4'),
(28, 12, 'l5u2O3M4JRg'),
(29, 12, '1cGFIBNWx-c'),
(30, 12, 'ZIUKyQ5LsJc'),
(31, 13, 'QGW5PLqxh7k'),
(32, 13, '914lPZxvI2A'),
(33, 13, '1Ceyw_kt8mo'),
(34, 14, 'ebbMSse45c0'),
(35, 14, '6Pv3GrWGr9k'),
(36, 14, 'UlyPpunP_A4'),
(37, 15, 'KvgXFX2HdP4'),
(38, 15, 'IOWUXVCsau4'),
(39, 15, 'X44LOYjacLQ'),
(40, 16, 'RVS5n2dBEGo'),
(41, 16, 'KxK9FnIdVow'),
(42, 16, 'nTPAyV19k9c'),
(43, 17, 'uXPNP9vso-Y'),
(44, 17, '5RNhHm8zTSY'),
(45, 17, 'chtKNsR8Fzs'),
(46, 18, '4iRJEgbfCzg'),
(47, 18, 'NIUQpTM5ebc'),
(48, 18, '6DhFG6NXaEk'),
(49, 19, 'QSm8Mtn7Wvw'),
(50, 19, 'cUWXDxR85ZU'),
(51, 19, 'JoSykYnK_-4'),
(52, 20, 'n8Qv2j0kkl4'),
(53, 20, 'nR67fySvaOg'),
(54, 20, 'VMF1MzufNI4'),
(55, 21, '78i5P72yjpY'),
(56, 21, 'P0Oh7e0T4Zg'),
(57, 21, 'm_fEW0QYsCs'),
(58, 22, 'b5AHh4jlTmI'),
(59, 22, '4QngoyQnUUg'),
(60, 22, 'tXDtEQ4OywY'),
(61, 23, 'PlG2jlclEW0'),
(62, 23, 'LGKrv9NQS1Q'),
(63, 23, 't2kgNMnrWfk'),
(64, 24, 'WUGn0nkYw-Q'),
(65, 24, '5xJxhF7b5jE'),
(66, 24, '7kuANvOEmgY');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `logo` text NOT NULL,
  `favicon` text NOT NULL,
  `banner` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `copyright` text NOT NULL,
  `facebook` text,
  `twitter` text,
  `youtube` text,
  `linkedin` text,
  `instagram` text,
  `map` text NOT NULL,
  `hero_heading` text NOT NULL,
  `hero_subheading` text NOT NULL,
  `hero_photo` text NOT NULL,
  `featured_property_heading` text NOT NULL,
  `featured_property_subheading` text NOT NULL,
  `featured_property_status` text NOT NULL,
  `why_choose_heading` text NOT NULL,
  `why_choose_subheading` text NOT NULL,
  `why_choose_photo` text NOT NULL,
  `why_choose_status` text NOT NULL,
  `agent_heading` text NOT NULL,
  `agent_subheading` text NOT NULL,
  `agent_status` text NOT NULL,
  `location_heading` text NOT NULL,
  `location_subheading` text NOT NULL,
  `location_status` text NOT NULL,
  `testimonial_heading` text NOT NULL,
  `testimonial_photo` text NOT NULL,
  `testimonial_status` text NOT NULL,
  `post_heading` text NOT NULL,
  `post_subheading` text NOT NULL,
  `post_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `banner`, `address`, `email`, `phone`, `copyright`, `facebook`, `twitter`, `youtube`, `linkedin`, `instagram`, `map`, `hero_heading`, `hero_subheading`, `hero_photo`, `featured_property_heading`, `featured_property_subheading`, `featured_property_status`, `why_choose_heading`, `why_choose_subheading`, `why_choose_photo`, `why_choose_status`, `agent_heading`, `agent_subheading`, `agent_status`, `location_heading`, `location_subheading`, `location_status`, `testimonial_heading`, `testimonial_photo`, `testimonial_status`, `post_heading`, `post_subheading`, `post_status`) VALUES
(1, 'logo.png', 'favicon.png', 'banner.jpg', '34 Antiger Lane, USA, 12937', 'contact@arefindev.com', '122-222-1212', ' Copyright 2023, ArefinDev. All Rights Reserved.', '#', '#', '#', '#', '#', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d71474.93754973999!2d-105.04913764985344!3d39.7205157902441!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x876b80aa231f17cf%3A0x118ef4f8278a36d6!2z4Kah4KeH4Kao4Kat4Ka-4KawLCDgppXgprLgp4vgprDgpr7gpqHgp4ssIOCmruCmvuCmsOCnjeCmleCmv-CmqCDgpq_gp4HgppXgp43gpqTgprDgpr7gprfgp43gpp_gp43gprA!5e0!3m2!1sbn!2sbd!4v1697502581664!5m2!1sbn!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Discover Your New Home', ' You can get your desired awesome properties, homes, condos etc. here by name, category or location. ', 'hero_photo.jpg', 'Featured Properties', 'Find out the awesome properties that you must love', 'Show', 'Why Choose Us', ' Describing why we are best in the property business', 'why_choose_photo.jpg', 'Show', 'Agents', ' Meet our expert property agents from the following list', 'Show', 'Locations', ' Check out all the properties of important locations', 'Show', ' Our Happy Clients', 'testimonial_photo.jpg', 'Show', 'Latest News', ' Check our latest news from the following section', 'Show');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `token` text NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `token`, `status`) VALUES
(2, 'test1@gmail.com', '', 1),
(3, 'test2@gmail.com', '', 1),
(4, 'test3@gmail.com', '', 1),
(5, 'test4@gmail.com', '76aca14a697cba9e8a5032db7ff3794a', 0);

-- --------------------------------------------------------

--
-- Table structure for table `terms_privacy_items`
--

CREATE TABLE `terms_privacy_items` (
  `id` int(11) NOT NULL,
  `terms` text NOT NULL,
  `privacy` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `terms_privacy_items`
--

INSERT INTO `terms_privacy_items` (`id`, `terms`, `privacy`) VALUES
(1, '<p>Lorem ipsum dolor sit amet, vix nihil equidem albucius ea, ut menandri oportere duo. Pro munere vituperata definitiones in, errem apeirian quo in. Qui veri vituperata te, quo adolescens elaboraret ne. Sumo assum populo cu eum, dicit latine scaevola vel ut, rebum sensibus id his. Consetetur instructior eum ne. Quodsi accusamus eam te, idque dicant virtute qui at, luptatum recusabo ex qui. Vix idque corrumpit ne, vix eu tota possim. Meis referrentur voluptatibus pri ea, ea dicam ceteros vix. Ea nec suas urbanitas ullamcorper.<br /><br />Vitae altera cu his, ex inani euripidis scripserit est, veri salutandi cu nam. Legere soluta consequat pro at. Nam fugit antiopam delicatissimi no. Dicit euismod ne usu, ex omnis expetenda cotidieque sea, te eirmod dolorem reprimique vis. Ut sit modo menandri volutpat. Vel noluisse repudiare an, sea ei vivendo convenire consetetur, nobis mollis sensibus ad ius. Pro ut virtute officiis scripserit. Modo eruditi ei vel, vel dolore quidam commodo id. Te cum eruditi alienum pericula, cu nobis audiam civibus quo. No doctus incorrupte concludaturque cum, vim et viris scripta, facilisis suscipiantur ex pro.<br /><br />Diceret praesent sententiae nec id. Ex mea cotidieque suscipiantur interpretaris. Tation libris scriptorem nam cu. Prompta dignissim at nec, et menandri qualisque sea. Est minimum detraxit eu, est lucilius petentium ei, ad eum agam melius adipiscing. Nec congue omittam et, epicurei dissentiet ei pro. Cu ridens suscipit has. Mei no eirmod explicari, an graecis repudiare ius. Iudico postea oblique has eu. Et mea dolores adversarium, ex eam vocibus intellegat mediocritatem. Quo feugiat volutpat prodesset no, his esse accommodare ex.<br /><br />At sea homero detracto. Suas timeam dignissim at vel. Atqui accusam repudiare has an. Iudicabit aliquando vix ex. Ei his labore interpretaris, id sapientem persecuti sit. Te sea lobortis repudiare, graeci imperdiet honestatis eum ex. Est ut illum inimicus moderatius, labitur deseruisse mei ut, te dolor mollis cum. No duo zril volumus, ea dictas luptatum theophrastus sea. Reque delicata an nec. At tale meis expetenda his. Pri viris phaedrum cu, qui altera adipisci ea. Ea purto civibus delectus pri, ne sea quodsi viderer nominati, ad nisl verear mei. In etiam primis eos. Dicunt legimus platonem pro ex, ne libris necessitatibus quo.<br /><br />Sea natum liberavisse ne. No sit voluptua maiestatis. Mea eu ignota consequat, omnes sanctus oportere pri an. Mel ut tollit bonorum, eos ut viris homero quidam, te usu assentior mnesarchum. Et mea impedit accusam accommodare. Scripta deserunt rationibus ea ius, et graeci everti delenit mea. Vis in sint oporteat verterem. Mollis iracundia gubergren mea ad, mucius delenit hendrerit eam eu. Eu est tota convenire. Delectus reformidans instructior ne pro, at pri magna malorum sadipscing, sed et utamur indoctum patrioque. Affert platonem scripserit ne eos, ipsum labitur cum id, modo zril aperiri ei usu.</p>', '<p>Lorem ipsum dolor sit amet, vix nihil equidem albucius ea, ut menandri oportere duo. Pro munere vituperata definitiones in, errem apeirian quo in. Qui veri vituperata te, quo adolescens elaboraret ne. Sumo assum populo cu eum, dicit latine scaevola vel ut, rebum sensibus id his. Consetetur instructior eum ne. Quodsi accusamus eam te, idque dicant virtute qui at, luptatum recusabo ex qui. Vix idque corrumpit ne, vix eu tota possim. Meis referrentur voluptatibus pri ea, ea dicam ceteros vix. Ea nec suas urbanitas ullamcorper.<br /><br />Vitae altera cu his, ex inani euripidis scripserit est, veri salutandi cu nam. Legere soluta consequat pro at. Nam fugit antiopam delicatissimi no. Dicit euismod ne usu, ex omnis expetenda cotidieque sea, te eirmod dolorem reprimique vis. Ut sit modo menandri volutpat. Vel noluisse repudiare an, sea ei vivendo convenire consetetur, nobis mollis sensibus ad ius. Pro ut virtute officiis scripserit. Modo eruditi ei vel, vel dolore quidam commodo id. Te cum eruditi alienum pericula, cu nobis audiam civibus quo. No doctus incorrupte concludaturque cum, vim et viris scripta, facilisis suscipiantur ex pro.<br /><br />Diceret praesent sententiae nec id. Ex mea cotidieque suscipiantur interpretaris. Tation libris scriptorem nam cu. Prompta dignissim at nec, et menandri qualisque sea. Est minimum detraxit eu, est lucilius petentium ei, ad eum agam melius adipiscing. Nec congue omittam et, epicurei dissentiet ei pro. Cu ridens suscipit has. Mei no eirmod explicari, an graecis repudiare ius. Iudico postea oblique has eu. Et mea dolores adversarium, ex eam vocibus intellegat mediocritatem. Quo feugiat volutpat prodesset no, his esse accommodare ex.<br /><br />At sea homero detracto. Suas timeam dignissim at vel. Atqui accusam repudiare has an. Iudicabit aliquando vix ex. Ei his labore interpretaris, id sapientem persecuti sit. Te sea lobortis repudiare, graeci imperdiet honestatis eum ex. Est ut illum inimicus moderatius, labitur deseruisse mei ut, te dolor mollis cum. No duo zril volumus, ea dictas luptatum theophrastus sea. Reque delicata an nec. At tale meis expetenda his. Pri viris phaedrum cu, qui altera adipisci ea. Ea purto civibus delectus pri, ne sea quodsi viderer nominati, ad nisl verear mei. In etiam primis eos. Dicunt legimus platonem pro ex, ne libris necessitatibus quo.<br /><br />Sea natum liberavisse ne. No sit voluptua maiestatis. Mea eu ignota consequat, omnes sanctus oportere pri an. Mel ut tollit bonorum, eos ut viris homero quidam, te usu assentior mnesarchum. Et mea impedit accusam accommodare. Scripta deserunt rationibus ea ius, et graeci everti delenit mea. Vis in sint oporteat verterem. Mollis iracundia gubergren mea ad, mucius delenit hendrerit eam eu. Eu est tota convenire. Delectus reformidans instructior ne pro, at pri magna malorum sadipscing, sed et utamur indoctum patrioque. Affert platonem scripserit ne eos, ipsum labitur cum id, modo zril aperiri ei usu.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `designation` text NOT NULL,
  `comment` text NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `comment`, `photo`) VALUES
(1, 'Robert Cooper', 'CEO, AA Company', 'I recently worked with Patrick Johnson on purchasing my dream home and I couldn\'t have asked for a better experience. Patrick Johnson was knowledgeable, professional, and truly cared about finding me the perfect property. They were always available to answer my questions and made the entire process stress-free. I highly recommend Patrick Johnson to anyone looking to buy or sell a property!', '1697467820.jpg'),
(2, 'Sal Harvey', 'Director, ZZ Company', 'I had the pleasure of working with Smith Brent during my recent home search and I can\'t speak highly enough of their services. Smith Brent listened to my needs and helped me find the perfect home that met all of my requirements. They were always there for me, from the initial search to closing, and made the process seamless and enjoyable. I would recommend Smith Brent to anyone looking for an experienced and dedicated real estate agent.', '1697467877.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`) VALUES
(1, 'Apartment'),
(2, 'Bungalow'),
(3, 'Cabin'),
(4, 'Condo'),
(5, 'Cottage'),
(6, 'Duplex'),
(7, 'Townhouse'),
(8, 'Villa');

-- --------------------------------------------------------

--
-- Table structure for table `why_choose_items`
--

CREATE TABLE `why_choose_items` (
  `id` int(11) NOT NULL,
  `heading` text NOT NULL,
  `text` text NOT NULL,
  `icon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `why_choose_items`
--

INSERT INTO `why_choose_items` (`id`, `heading`, `text`, `icon`) VALUES
(1, 'Years of Experience', ' With decades of combined experience in the industry, our agents have the expertise and knowledge to provide you with a seamless home-buying experience. ', 'fas fa-briefcase'),
(2, 'Competitive Prices', 'We understand that buying a home is a significant investment, which is why we strive to offer competitive prices to our clients. ', 'fas fa-search'),
(3, 'Responsive Communication', 'Our responsive agents are here to answer your questions and address your concerns, ensuring a smooth and stress-free home-buying experience. ', 'fas fa-share-alt');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `customer_id`, `property_id`) VALUES
(1, 1, 7),
(3, 1, 5),
(4, 1, 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_replies`
--
ALTER TABLE `message_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_photos`
--
ALTER TABLE `property_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_videos`
--
ALTER TABLE `property_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms_privacy_items`
--
ALTER TABLE `terms_privacy_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `why_choose_items`
--
ALTER TABLE `why_choose_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `message_replies`
--
ALTER TABLE `message_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `property_photos`
--
ALTER TABLE `property_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `property_videos`
--
ALTER TABLE `property_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `terms_privacy_items`
--
ALTER TABLE `terms_privacy_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `why_choose_items`
--
ALTER TABLE `why_choose_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
