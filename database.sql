-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 19, 2020 at 03:03 AM
-- Server version: 10.2.27-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elitesol_openaudioplayer`
--

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `userid` int(20) NOT NULL,
  `tracks` varchar(6000) NOT NULL,
  `createdon` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `plays` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `userid`, `tracks`, `createdon`, `plays`) VALUES
(1, 'Classical Music', 1, '[{\"id\":\"17\",\"track_name\":\"Waltz of the Flowers\",\"track_desc\":\"Tchaikovsky - Waltz of the Flowers\",\"thumbnail_url\":\"https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2Fa428d1b0-cb58-4df3-99d8-875080d3557f.jpg?alt=media&token=3050e9ad-572d-4e8c-aa6c-5c3dd908fce1\",\"audio_url\":\"https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2Fbfa66542-89fa-47d2-8089-66474980ce9d.mp3?alt=media&token=a866798b-4a39-48c3-89df-c4e20b76aa4a\"},{\"id\":\"6\",\"track_name\":\"Valse Fantaisie\",\"track_desc\":\"Glinka, Waltz Fantasia (Valse Fantaisie) (1856). \",\"thumbnail_url\":\"https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2F93acc1c5-4fef-4c46-bbe3-f758bfe89344.jpg?alt=media&token=90efe406-2294-4ad8-8801-4c72165507dd\",\"audio_url\":\"https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2Fd9a3596c-b7bd-4774-9b3a-d4582c535140.mp3?alt=media&token=a4939ccb-105a-4a37-b974-cd7928be70d6\"},{\"id\":\"13\",\"track_name\":\"String Quartet No. 15 \",\"track_desc\":\"String Quartet No. 15 In D Minor, K 421 - I. Allegro Moderato\",\"thumbnail_url\":\"https://www.iftf.org/uploads/RTEmagicC_Screen_Shot_2017-10-02_at_2.12.10_PM_03.png.png\",\"audio_url\":\"https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2Fb112614b-68bd-40d8-8531-bc6feb733c53.mp3?alt=media&token=72698b28-35ab-4bdc-93e9-cca4e3e9b70e\"},{\"id\":\"14\",\"track_name\":\"Symphony no. 40 \",\"track_desc\":\"Symphony no. 40 in G minor, K. 550 - II. Andante\",\"thumbnail_url\":\"https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2Fa8fdb124-4190-44d5-8347-9adda45e4ad1.jpg?alt=media&token=7cb9f382-82a3-4c6c-949f-d67fd68e39d1\",\"audio_url\":\"https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2F076285de-fe09-40e6-822d-ca586132906a.mp3?alt=media&token=e6b68309-aa47-430c-82fa-f49cee5b5a1c\"}]', '2020-06-06 23:38:12.253628', 0),
(2, 'Piano Playlist', 1, '[{\"id\":\"7\",\"track_name\":\" BWV 988 - Aria\",\"track_desc\":\"Goldberg Variations, BWV 988 - Aria\",\"thumbnail_url\":\"https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2F9718c491-c233-4a12-a90a-96bce45d6869.jpg?alt=media&token=37e33449-7007-4124-a3e2-a19a2e0cecbe\",\"audio_url\":\"https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2F192c5bd3-80aa-4ef5-bf66-388cad264d5f.mp3?alt=media&token=a87a0a35-e604-4667-8c65-e792b33e9348\"},{\"id\":\"19\",\"track_name\":\" Nocturne op.9 No.2\",\"track_desc\":\"Chopin - Nocturne op.9 No.2\",\"thumbnail_url\":\"https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2Fed62a63b-d4e1-417e-9e9e-057189926929.jpg?alt=media&token=311aa50b-7a47-4840-aa1a-3002124f308f\",\"audio_url\":\"https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2F49d272af-d01d-477f-ac0d-243030d1a09c.mp3?alt=media&token=59f0e49d-17eb-4da5-b96d-de8f60eada5c\"},{\"id\":\"20\",\"track_name\":\"Gymnopedies\",\"track_desc\":\"Erik Satie Trois Gymnopedies\",\"thumbnail_url\":\"https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2F2f71b8b6-f944-464a-9a1f-f5b4fd6e2b62.jpg?alt=media&token=97998635-2ee3-4968-8fd4-30b65b72a5dc\",\"audio_url\":\"https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2F98de23d2-c924-43e5-a9d4-84bbbf8ee22a.mp3?alt=media&token=701cd581-8a07-4bc7-b9f9-0b98e0a52f77\"},{\"id\":\"21\",\"track_name\":\"Scriabin Etude for piano in C# minor, Op. 2 no. 1\",\"track_desc\":\"Horowitz - Scriabin Etude for piano in C# minor, Op. 2 no. 1\",\"thumbnail_url\":\"https://www.iftf.org/uploads/RTEmagicC_Screen_Shot_2017-10-02_at_2.12.10_PM_03.png.png\",\"audio_url\":\"https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2Fc852245d-5582-45b9-a440-63b18a1686d2.mp3?alt=media&token=784bdc5e-2589-480f-b83d-be44fd9f46b3\"}]', '2020-06-06 23:59:21.233794', 1),
(5, 'Calm Music', 1, '[{\"id\":\"11\",\"track_name\":\"Interception\",\"track_desc\":\"Kai_Engel_-_07_-_Interception\",\"thumbnail_url\":\"https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2F17dbde4b-89c2-4802-993f-36266e69470f.jpg?alt=media&token=c4e1700a-2441-46d7-8a4a-d8ac4572af5a\",\"audio_url\":\"https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2Fe4acf730-0e30-4204-812f-9fd19e7aaa5b.mp3?alt=media&token=ab2c1868-e440-49b8-9c6a-d674608199d9\"},{\"id\":\"13\",\"track_name\":\"String Quartet No. 15 \",\"track_desc\":\"String Quartet No. 15 In D Minor, K 421 - I. Allegro Moderato\",\"thumbnail_url\":\"https://www.iftf.org/uploads/RTEmagicC_Screen_Shot_2017-10-02_at_2.12.10_PM_03.png.png\",\"audio_url\":\"https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2Fb112614b-68bd-40d8-8531-bc6feb733c53.mp3?alt=media&token=72698b28-35ab-4bdc-93e9-cca4e3e9b70e\"},{\"id\":\"16\",\"track_name\":\"The Nutcracker Suite\",\"track_desc\":\"Tchaikovsky - The Nutcracker Suite, Op 71a\",\"thumbnail_url\":\"https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2F2960836.png?alt=media&token=33b8ff31-994b-44da-a65d-66554c96af4a\\r\\n\",\"audio_url\":\"https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2F309f9af3-6354-4c90-a249-7c019822d215.mp3?alt=media&token=d3accc2c-db6a-4748-a0a1-360a75d709a6\"},{\"id\":\"20\",\"track_name\":\"Gymnopedies\",\"track_desc\":\"Erik Satie Trois Gymnopedies\",\"thumbnail_url\":\"https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2F2f71b8b6-f944-464a-9a1f-f5b4fd6e2b62.jpg?alt=media&token=97998635-2ee3-4968-8fd4-30b65b72a5dc\",\"audio_url\":\"https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2F98de23d2-c924-43e5-a9d4-84bbbf8ee22a.mp3?alt=media&token=701cd581-8a07-4bc7-b9f9-0b98e0a52f77\"},{\"id\":\"17\",\"track_name\":\"Waltz of the Flowers\",\"track_desc\":\"Tchaikovsky - Waltz of the Flowers\",\"thumbnail_url\":\"https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2Fa428d1b0-cb58-4df3-99d8-875080d3557f.jpg?alt=media&token=3050e9ad-572d-4e8c-aa6c-5c3dd908fce1\",\"audio_url\":\"https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2Fbfa66542-89fa-47d2-8089-66474980ce9d.mp3?alt=media&token=a866798b-4a39-48c3-89df-c4e20b76aa4a\"}]', '2020-06-19 00:51:14.717689', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE `tracks` (
  `id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `track_name` varchar(200) NOT NULL,
  `track_desc` varchar(500) NOT NULL,
  `thumbnail_url` varchar(500) NOT NULL,
  `audio_url` varchar(500) NOT NULL,
  `plays` int(20) NOT NULL,
  `createdon` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`id`, `user_id`, `track_name`, `track_desc`, `thumbnail_url`, `audio_url`, `plays`, `createdon`) VALUES
(1, 1, 'Act Three', 'Act Three credits to https://audionautix.com/', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2Fb9e778c3-d01c-4072-94d0-a6d9c001c9b8.jpg?alt=media&token=93115dfc-4578-4934-bf5b-c81aabbda81a', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2Fff9b92e9-1a2a-4c54-990a-89029e0cc36f.mp3?alt=media&token=c49bd750-b082-405a-a543-065804c268f6', 12, '2020-06-06 07:23:23.520278'),
(2, 1, 'A moments reflection', 'A moments reflection credits https://audionautix.com/', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2F2960836.png?alt=media&token=33b8ff31-994b-44da-a65d-66554c96af4a', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2F21b14230-b0c3-476b-b0de-19e10be31ee8.mp3?alt=media&token=adb20cb4-4122-4c20-81da-6193a4e95b6c', 4, '2020-06-06 07:44:09.276369'),
(3, 1, 'Betterdays', 'Kind of reminds me of a journey to the moon. credits be', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2Fac5ac0ed-4a20-4700-851d-5f93eed4d6a8.jpg?alt=media&token=6326e77d-0431-457f-aa5f-aae75172ae0a', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2F69790ea3-1aae-4883-afab-86c1e3fc801d.mp3?alt=media&token=18a4e462-8a59-4f33-8767-3bb5d4af48ee', 4, '2020-06-06 07:48:12.377147'),
(4, 1, 'Relaxing', 'Relaxing Credits bensound.com', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2Ff605d288-3617-4733-b448-1f59b9a48c17.jpg?alt=media&token=877cf80f-6e0f-4d17-8656-136a6aa61145', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2Fae41d348-9475-473b-b653-db08dd7ca32d.mp3?alt=media&token=dfe4e1bd-4a0f-43d0-9f4b-2e28149acb09', 9, '2020-06-06 07:51:09.416042'),
(5, 1, 'Escaping forever', 'Michael Vignola', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2F1733259f-442b-47e9-b9ab-61ff2edcb5cd.jpg?alt=media&token=dae95707-291a-4a9d-b785-6d78fae8c474', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2Fb629a80d-be9e-4f9f-be29-c3c4048992a5.mp3?alt=media&token=5ab467dd-9922-4880-b3ce-d54190f52e0a', 6, '2020-06-06 07:54:16.419622'),
(6, 1, 'Valse Fantaisie', 'Glinka, Waltz Fantasia (Valse Fantaisie) (1856). ', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2F93acc1c5-4fef-4c46-bbe3-f758bfe89344.jpg?alt=media&token=90efe406-2294-4ad8-8801-4c72165507dd', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2Fd9a3596c-b7bd-4774-9b3a-d4582c535140.mp3?alt=media&token=a4939ccb-105a-4a37-b974-cd7928be70d6', 5, '2020-06-06 07:57:01.877954'),
(7, 1, ' BWV 988 - Aria', 'Goldberg Variations, BWV 988 - Aria', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2F9718c491-c233-4a12-a90a-96bce45d6869.jpg?alt=media&token=37e33449-7007-4124-a3e2-a19a2e0cecbe', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2F192c5bd3-80aa-4ef5-bf66-388cad264d5f.mp3?alt=media&token=a87a0a35-e604-4667-8c65-e792b33e9348', 4, '2020-06-06 07:59:29.807573'),
(8, 1, 'The Blue Danube Waltz', 'Johann Strauss II - The Blue Danube Waltz', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2F7327b69f-e90c-4483-b86a-fce898f142e7.jpg?alt=media&token=cb852305-b17e-4734-9ae4-50bfe2b6ef2c', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2F61a20896-756e-4d26-ab36-6853d0d17ed9.mp3?alt=media&token=dd5c857a-972a-4966-80ce-47cda684b07f', 1, '2020-06-06 08:02:51.110710'),
(9, 1, 'Illumination', 'Kai_Engel_-_02_-_Illumination', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2F2960836.png?alt=media&token=33b8ff31-994b-44da-a65d-66554c96af4a', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2Ff48cbfa8-e061-4a12-961c-8c33e7c133de.mp3?alt=media&token=d3bd52d0-942e-4668-beaa-93287d1c177e', 8, '2020-06-06 08:09:01.931891'),
(10, 1, 'Illumination', 'Kai_Engel_-_02_-_Illumination', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2F2960836.png?alt=media&token=33b8ff31-994b-44da-a65d-66554c96af4a', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2Ff48cbfa8-e061-4a12-961c-8c33e7c133de.mp3?alt=media&token=d3bd52d0-942e-4668-beaa-93287d1c177e', 3, '2020-06-06 08:09:01.934480'),
(11, 1, 'Interception', 'Kai_Engel_-_07_-_Interception', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2F17dbde4b-89c2-4802-993f-36266e69470f.jpg?alt=media&token=c4e1700a-2441-46d7-8a4a-d8ac4572af5a', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2Fe4acf730-0e30-4204-812f-9fd19e7aaa5b.mp3?alt=media&token=ab2c1868-e440-49b8-9c6a-d674608199d9', 6, '2020-06-06 08:14:04.151117'),
(12, 1, 'Homeroad', 'Kai_Engel_-_09_-_Homeroad', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2F19221a9e-dd95-4b23-9653-b63765cdb77d.jpg?alt=media&token=5f04d81e-4f8e-4013-acc7-8316d3fa6677', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2F4af158a0-0602-48ee-ad87-2bbaa3572552.mp3?alt=media&token=6992f42c-2a26-48c1-95cc-743751d4d176', 6, '2020-06-06 08:15:30.457748'),
(13, 1, 'String Quartet No. 15 ', 'String Quartet No. 15 In D Minor, K 421 - I. Allegro Moderato', 'https://www.iftf.org/uploads/RTEmagicC_Screen_Shot_2017-10-02_at_2.12.10_PM_03.png.png', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2Fb112614b-68bd-40d8-8531-bc6feb733c53.mp3?alt=media&token=72698b28-35ab-4bdc-93e9-cca4e3e9b70e', 6, '2020-06-06 08:21:08.757930'),
(14, 1, 'Symphony no. 40 ', 'Symphony no. 40 in G minor, K. 550 - II. Andante', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2Fa8fdb124-4190-44d5-8347-9adda45e4ad1.jpg?alt=media&token=7cb9f382-82a3-4c6c-949f-d67fd68e39d1', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2F076285de-fe09-40e6-822d-ca586132906a.mp3?alt=media&token=e6b68309-aa47-430c-82fa-f49cee5b5a1c', 1, '2020-06-06 08:23:42.147375'),
(15, 1, 'Devils Trill Sonata', 'Tartini Violin Sonata in G minor Devils Trill Sonata', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2F2960836.png?alt=media&token=33b8ff31-994b-44da-a65d-66554c96af4a', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2F68d1fc50-0d4e-4c69-b02b-e7ab1fca837f.mp3?alt=media&token=a30935a1-2abe-4afa-9dc8-f289c16abb84', 6, '2020-06-06 08:26:38.301698'),
(16, 1, 'The Nutcracker Suite', 'Tchaikovsky - The Nutcracker Suite, Op 71a', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2F2960836.png?alt=media&token=33b8ff31-994b-44da-a65d-66554c96af4a\r\n', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2F309f9af3-6354-4c90-a249-7c019822d215.mp3?alt=media&token=d3accc2c-db6a-4748-a0a1-360a75d709a6', 7, '2020-06-06 08:28:48.758222'),
(17, 1, 'Waltz of the Flowers', 'Tchaikovsky - Waltz of the Flowers', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2Fa428d1b0-cb58-4df3-99d8-875080d3557f.jpg?alt=media&token=3050e9ad-572d-4e8c-aa6c-5c3dd908fce1', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2Fbfa66542-89fa-47d2-8089-66474980ce9d.mp3?alt=media&token=a866798b-4a39-48c3-89df-c4e20b76aa4a', 3, '2020-06-06 08:30:50.578977'),
(18, 1, 'TheBigDecision', 'TheBigDecision credits audionautix.com', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2Fad00eddf-4714-4436-9a95-038fd6ff6039.jpg?alt=media&token=ef290fb7-242b-4b77-9e64-c05f8148b08e', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2Ff6f3f88b-40db-40f9-a0d9-25c17cbd86a6.mp3?alt=media&token=acebdfe7-6ee5-41e9-bb48-a0296272fd7a', 2, '2020-06-06 08:31:50.208790'),
(19, 1, ' Nocturne op.9 No.2', 'Chopin - Nocturne op.9 No.2', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2Fed62a63b-d4e1-417e-9e9e-057189926929.jpg?alt=media&token=311aa50b-7a47-4840-aa1a-3002124f308f', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2F49d272af-d01d-477f-ac0d-243030d1a09c.mp3?alt=media&token=59f0e49d-17eb-4da5-b96d-de8f60eada5c', 0, '2020-06-06 23:56:16.486708'),
(20, 1, 'Gymnopedies', 'Erik Satie Trois Gymnopedies', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/image%2F2f71b8b6-f944-464a-9a1f-f5b4fd6e2b62.jpg?alt=media&token=97998635-2ee3-4968-8fd4-30b65b72a5dc', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2F98de23d2-c924-43e5-a9d4-84bbbf8ee22a.mp3?alt=media&token=701cd581-8a07-4bc7-b9f9-0b98e0a52f77', 6, '2020-06-06 23:57:49.032064'),
(21, 1, 'Scriabin Etude for piano in C# minor, Op. 2 no. 1', 'Horowitz - Scriabin Etude for piano in C# minor, Op. 2 no. 1', 'https://www.iftf.org/uploads/RTEmagicC_Screen_Shot_2017-10-02_at_2.12.10_PM_03.png.png', 'https://firebasestorage.googleapis.com/v0/b/open-audio-player.appspot.com/o/audio%2Fc852245d-5582-45b9-a440-63b18a1686d2.mp3?alt=media&token=784bdc5e-2589-480f-b83d-be44fd9f46b3', 0, '2020-06-06 23:58:28.167127');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `fuid` varchar(100) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `type` int(1) NOT NULL,
  `paid` int(1) NOT NULL,
  `createdon` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `fuid`, `profession`, `type`, `paid`, `createdon`) VALUES
(1, 'Nick Korage', 'nderitunick@gmail.com', '', '9kGVrO4r5ycm9HR28pQx6f3NC272', '', 0, 0, '2020-06-06 07:22:15.864553');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tracks`
--
ALTER TABLE `tracks`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
