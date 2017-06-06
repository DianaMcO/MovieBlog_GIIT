-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
<<<<<<< HEAD
-- Generation Time: May 30, 2017 at 08:17 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1
=======
-- Generation Time: Jun 02, 2017 at 10:50 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28
>>>>>>> 2ee62cc294115213311d4138fe43ea207e471106

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_members`
--

CREATE TABLE `blog_members` (
  `memberID` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `postID` int(11) DEFAULT NULL,
  `roleID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `blog_members`
--

INSERT INTO `blog_members` (`memberID`, `username`, `password`, `email`, `postID`, `roleID`) VALUES
(1, 'blog_admin', 'test1234', 'dptestchat@googlemail.com', 1, 1),
(2, 'guest1', '43wrgyF5vJdE2', 'guest1@example.com', NULL, 2),
(3, 'blog_admin', '61nD5J/beFkl2', 'blog_admin@example.com', NULL, 1),
(4, 'guest2', '93/jqcA0Nl4m.', 'guest2@example.com', NULL, 2),
(5, 'guest3', '95d7gQyBTRbBg', 'guest3@example.com', NULL, 2),
(6, 'guest4', '66KDpGv/3xRq6', 'guest4@example.com', NULL, 2),
(8, 'guest5', '94I7wO7mDxvBE', 'guest5@example.com', NULL, 2),
(9, 'guest6', '57nLJSrz4UBhM', 'guest6@example.com', NULL, 2),
(11, 'guest7', '64IFIuzIY8IRo', 'guest7@example.com', NULL, 2),
(12, 'guest8', '16N9NpxCE7LDE', 'guest8@example.com', NULL, 2),
(13, 'guest9', '83Ea3ffWcpve6', 'guest9@example.com', NULL, 2),
(15, 'guest10', '44.py6tr7b3Cc', 'guest10@example.com', NULL, 2),
(22, 'guest11', '820MraJAxL.yY', 'guest11@example.com', NULL, 2),
(23, 'guest12', '43wrgyF5vJdE2', 'guest12@example.com', NULL, 2),
(26, 'guest15', '52jnMDup5ciNc', 'guest15@example.com', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `postID` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `content` mediumtext,
  `date` datetime DEFAULT NULL,
  `movieID` int(11) DEFAULT NULL,
  `ratingID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`postID`, `title`, `description`, `content`, `date`, `movieID`, `ratingID`) VALUES
<<<<<<< HEAD
(1, 'The Godafther Film Review', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 'The Godfather is a 1972 American crime film directed by Francis Ford Coppola and produced by Albert S. Ruddy, based on Mario Puzo\'s best-selling novel of the same name. It stars Marlon Brando and Al Pacino as the leaders of a fictional New York crime family. The story, spanning 1945 to 1955, chronicles the family under the patriarch Vito Corleone, focusing on the transformation of Michael Corleone (Pacino) from reluctant family outsider to ruthless mafia boss.\n</br>\n</br>\nParamount Pictures obtained the rights to the novel for the price of $80,000, before it gained popularity. Studio executives had trouble finding a director; their first few candidates turned down the position. They and Coppola disagreed over who would play several characters, in particular, Vito and Michael. Filming was done on location and completed earlier than scheduled. The musical score was composed primarily by Nino Rota with additional pieces by Carmine Coppola.\n</br>\n</br>\nThe film was the highest-grossing film of 1972 and was for a time the highest-grossing film ever made. It won the Oscars for Best Picture, Best Actor (Brando) and Best Adapted Screenplay (for Puzo and Coppola). Its seven other Oscar nominations included Pacino, James Caan, and Robert Duvall for Best Supporting Actor and Coppola for Best Director. It was followed by sequels The Godfather Part II (1974) and The Godfather Part III (1990).\nThe Godfather is widely regarded as one of the greatest films in world cinema and one of the most influential, especially in the gangster genre. It was selected for preservation in the U.S. National Film Registry of the Library of Congress in 1990, being deemed \"culturally, historically, or aesthetically significant\" and is ranked the second-greatest film in American cinema (behind Citizen Kane) by the American Film Institute.\n</br>\n</br>\nIn 1945, at his daughter Connie\'s wedding, Vito Corleone hears requests in his role as the Godfather, the Don of a New York crime family. Vito\'s youngest son, Michael, who was a Marine during World War II, introduces his girlfriend, Kay Adams, to his family at the reception. Johnny Fontane, a famous singer and Vito\'s godson, seeks Vito\'s help in securing a movie role; Vito dispatches his consigliere, Tom Hagen, to Los Angeles to talk the obnoxious studio head, Jack Woltz, into giving Johnny the part. Woltz refuses until he wakes up in bed with the severed head of his prized stallion.\n</br>\n</br>\n{{video}}\n</br>\n</br>\nShortly before Christmas, drug baron Virgil \"The Turk\" Sollozzo, backed by the Tattaglia crime family, asks Vito for investment in his narcotics business and protection through his political connections. Wary of involvement in a dangerous new trade that risks alienating political insiders, Vito declines. Suspicious, Vito sends his enforcer, Luca Brasi, to spy on them. However, a Tattaglia button man garrotes Brasi during Brasi\'s first meeting with Bruno Tattaglia and Sollozzo. Later Sollozzo has Vito gunned down in the street, then kidnaps Hagen. With Corleone first-born Sonny in command, Hagen is pressured to persuade Sonny to accept Sollozzo\'s deal, then released. The family receives fish wrapped in Brasi\'s bullet-proof vest, indicating that Luca \"sleeps with the fishes.\" Vito survives, and at the hospital Michael thwarts another attempt on his father; Michael\'s jaw is broken by NYPD Captain Marc McCluskey, Sollozzo\'s bodyguard. Sonny retaliates with a hit on Bruno Tattaglia. Michael plots to murder Sollozzo and McCluskey: on the pretext of settling the dispute, Michael agrees to meet them in a Bronx restaurant. There, retrieving a planted handgun, he kills both men.\n</br>\n</br>\n\nDespite a clampdown by the authorities, the Five Families erupt in open warfare and Vito\'s sons fear for their safety. Michael takes refuge in Sicily, and his brother, Fredo, is sheltered by the Corleone\'s Las Vegas casino partner, Moe Greene. Sonny attacks his brother-in-law Carlo on the street for abusing his sister and threatens to kill him if it happens again. When it does, Sonny speeds to their home, but is ambushed at a highway toll booth and riddled with submachine gun fire. While in Sicily, Michael meets and marries Apollonia Vitelli, but a car bomb intended for him takes her life.\n\n</br>\n</br>\nDevastated by Sonny\'s death, Vito moves to end the feuds. Realizing that the Tattaglias are controlled by the now-dominant Don Emilio Barzini, Vito assures the Five Families that he will withdraw his opposition to their heroin business and forgo avenging his son\'s murder. His safety guaranteed, Michael returns home to enter the family business and marry Kay, who gives birth to two children by the early 1950s.\nWith his father at the end of his career and his brother too weak, Michael takes the family reins, promising his wife the business will be legitimate within five years. To that end, he insists Hagen relocate to Las Vegas and relinquish his role to Vito because Tom is not a \"wartime consigliere\"; Vito agrees Tom should \"have no part in what will happen\" in the coming battles with rival families. When Michael travels to Las Vegas to buy out Greene\'s stake in the family\'s casinos, their partner derides the Corleones for being run out of New York; Michael is dismayed to see that Fredo has fallen under Greene\'s sway.\n\n</br>\n', '2017-05-13 19:00:00', 1, 5),
(2, 'Pulp Fiction Film Review', 'Pulp Fiction is a 1994 American black comedy neo-noir crime film written and directed by Quentin Tarantino, from a story by Tarantino and Roger Avary. Directed in a highly stylized manner, Pulp Fiction connects the intersecting storylines of Los Angeles mobsters, fringe players, small-time criminals, and a mysterious briefcase.', 'Hitmen Jules Winnfield and Vincent Vega arrive at the apartment of Brett to retrieve a briefcase for their boss, gangster Marsellus Wallace. After Vincent checks the contents of the briefcase, Jules shoots one of Brett\'s associates, then declaims a passage from the Bible before he and Vincent kill Brett.\n</br></br>\nSome time later, champion boxer Butch Coolidge accepts a large sum from Marsellus to take a dive in his upcoming match. Vincent and Jules deliver the briefcase. The next day, Vincent purchases heroin from his drug dealer Lance. He shoots up to pass the day, then drives to meet Marsellus\'s wife Mia, who Marsellus has asked Vincent to escort while he is out of town. They head to a 1950s-themed restaurant and participate in a twist contest, then return to the Wallace house with the trophy. While Vincent is in the bathroom, Mia finds his heroin, mistakes it for cocaine, snorts it and overdoses. Vincent rushes her to Lance\'s house, where they revive her with an adrenaline shot to her heart.\n</br></br>\nButch double-crosses Marsellus and wins the bout, killing his opponent in the process. At the motel where he and his girlfriend Fabienne are lying low, Butch discovers she has forgotten to pack his father\'s gold watch, a beloved heirloom, and flies into a rage. Returning to his apartment to retrieve the watch, he notices a gun on the kitchen counter and hears the toilet flush. Vincent exits the bathroom and Butch shoots him dead.\n</br></br>\n{{video}}\n</br></br>\nAs Butch waits at a traffic light in his car, Marsellus spots him by chance and chases him into a pawnshop. The owner, Maynard, captures them at gunpoint and ties them up in the basement. Maynard is joined by Zed, a security guard; they take Marsellus to another room to rape him, leaving the \"gimp\", a silent figure in a bondage suit, to watch Butch. Butch breaks loose and knocks out the gimp. He is about to flee, but decides to save Marsellus. As Zed rapes Marsellus, Butch kills Maynard with a katana retrieved from the pawnshop. Marsellus retrieves Maynard\'s shotgun and shoots Zed. Marsellus informs Butch that they are even, so long as he tells no one about the rape and departs Los Angeles forever. Butch picks up Fabienne on Zed\'s chopper.\n</br></br>\nSome time earlier, after Vincent and Jules have executed Brett in his apartment, another man bursts out of the bathroom and shoots wildly, missing every time; Jules and Vincent shoot him. Jules decides their lucky escape was a miracle, which Vincent disputes. As Jules drives, Vincent accidentally shoots Brett\'s associate Marvin in the face. They hide the car at the home of their associate Jimmie, who insists they deal with the problem before his wife comes home. Marsellus sends his cleaner, Winston Wolfe, who directs Jules and Vincent to clean the car, hide the body in the trunk, dispose of their bloody clothes, and drive the car to a junk yard.\n</br></br>\nAt a diner, Jules tells Vincent he plans to retire from his life of crime, taking their \"miraculous\" survival as a sign. While Vincent is in the bathroom, a couple, Pumpkin and Honey Bunny, hold up the restaurant. When Jules holds Pumpkin at gunpoint, Honey Bunny becomes hysterical and trains her gun on him; Vincent returns with his gun trained on her, creating a Mexican standoff. Jules recites the biblical passage, expresses ambivalence about his life of crime, and allows the robbers to take his cash and leave. Jules and Vincent leave the diner with the briefcase.', '2017-05-28 00:00:00', 2, 4);
=======
(1, 'The Godfather Film Review', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 'This movie is strong, good script, great casting, excellent acting, and over the top directing. It is hard to fine a movie done this well, it is 29 years old and has aged well. Even if the viewer does not like mafia type of movies, he or she will watch the entire film, the audiences is glued to what will happen next as the film progresses. Its about, family, loyalty, greed, relationships, and real life. This is a great mix, and the artistic style make the film memorable.', '2017-05-13 19:00:00', 1, 5),
(2, 'Shawshank blog', 'just wanting to add a blog', 'to ensure linking to the comment does really work', '2017-05-22 23:57:04', 2, 4),
(3, 'jaws review', 'lalalala', 'pls work', '2017-05-27 19:29:31', NULL, NULL),
(4, 'review', 'Hoping I have not broken it.', 'Been trying too many things, and now look.', '2017-06-01 20:56:07', 3, 3);
>>>>>>> 2ee62cc294115213311d4138fe43ea207e471106

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catID` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catID`, `name`) VALUES
(1, 'crime'),
(2, 'comedy'),
(3, 'drama'),
(4, 'horror');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentID` int(11) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `date` datetime DEFAULT NULL,
  `member` varchar(100) NOT NULL,
  `postID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentID`, `comment`, `date`, `member`, `postID`) VALUES
<<<<<<< HEAD
(1, 'Test comment', '2017-05-19 00:00:00', 'emileelam', 1);
=======
(1, 'Test comment', '2017-05-19 00:00:00', 'emileelam', 1),
(4, 'testing whether I have linked the Godfather post with the comment', '2017-05-22 23:50:15', 'guest1', 1),
(13, 'testing 30th may', '2017-05-30 21:55:55', 'guest2', 2),
(14, 'testing again', '2017-05-30 22:36:43', 'guest2', 2),
(15, 'test', '2017-05-31 18:57:17', 'guest4', 2),
(16, 'test2', '2017-05-31 19:01:43', 'guest4', 2),
(17, 'test3', '2017-05-31 19:09:10', 'guest4', 2),
(18, 'testing.', '2017-06-01 21:01:11', 'blog_admin', 4);
>>>>>>> 2ee62cc294115213311d4138fe43ea207e471106

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movieID` int(11) NOT NULL,
  `name` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `certificate` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `runTime` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(5000) DEFAULT NULL,
  `video` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movieID`, `name`, `year`, `certificate`, `runTime`, `image`, `video`) VALUES
<<<<<<< HEAD
(1, 'The Godfather', 1972, '18', '2 hrs 55 mins', 'https://i.ytimg.com/vi/rt-r-w7Z2Ag/maxresdefault.jpg', 'https://www.youtube.com/embed/sY1S34973zA'),
(2, 'Pulp Fiction', 1994, 'R', '1hr 21mins', 'https://pmd205465tn-a.akamaihd.net/Miramax/137/2/thumbnail_poster_color-PulpFiction_11r2_Approved_640x360_141767235537.jpg', 'https://www.youtube.com/embed/s7EdQ4FqbhY');
=======
(1, 'The Godfather', 1972, '18', '2 hrs 55 mins', 'https://i.ytimg.com/vi/rt-r-w7Z2Ag/maxresdefault.jpg', 'https://www.youtube.com/watch?v=sY1S34973zA'),
(2, 'Shawshank Redemption', 1995, '18', '200mins', 'http://www.wow247.co.uk/wp-content/uploads/2014/07/Shawshank-Redemption.jpg', NULL),
(3, 'Jaws', 1975, '18', '124 mins', 'http://az616578.vo.msecnd.net/files/2016/11/04/636138952733962231-1976331244_jaws.jpg', NULL);
>>>>>>> 2ee62cc294115213311d4138fe43ea207e471106

-- --------------------------------------------------------

--
-- Table structure for table `movie_categories`
--

CREATE TABLE `movie_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `movieID` int(11) DEFAULT NULL,
  `catID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_categories`
--

INSERT INTO `movie_categories` (`id`, `name`, `movieID`, `catID`) VALUES
(1, 'The Godfather - Drama Category', 1, 1),
<<<<<<< HEAD
(2, 'The Godfather - Crime Category', 1, 3),
(3, 'Pulp Fiction - Drama Category', 2, 3);
=======
(2, 'The Godfather - Crime Category', 1, 3);
>>>>>>> 2ee62cc294115213311d4138fe43ea207e471106

-- --------------------------------------------------------

--
-- Table structure for table `Rating`
--

CREATE TABLE `Rating` (
  `ratingID` int(11) NOT NULL,
  `rating` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Rating`
--

INSERT INTO `Rating` (`ratingID`, `rating`) VALUES
(1, '1/5'),
(2, '2/5'),
(3, '3/5'),
(4, '4/5'),
(5, '5/5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_members`
--
ALTER TABLE `blog_members`
  ADD PRIMARY KEY (`memberID`),
  ADD KEY `postID` (`postID`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`postID`),
  ADD KEY `movieID` (`movieID`),
  ADD KEY `ratingID` (`ratingID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catID`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentID`),
  ADD KEY `postID` (`postID`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movieID`);

--
-- Indexes for table `movie_categories`
--
ALTER TABLE `movie_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movieID` (`movieID`),
  ADD KEY `catID` (`catID`);

--
-- Indexes for table `Rating`
--
ALTER TABLE `Rating`
  ADD PRIMARY KEY (`ratingID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_members`
--
ALTER TABLE `blog_members`
  MODIFY `memberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
<<<<<<< HEAD
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
=======
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
>>>>>>> 2ee62cc294115213311d4138fe43ea207e471106
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
<<<<<<< HEAD
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
=======
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
>>>>>>> 2ee62cc294115213311d4138fe43ea207e471106
--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
<<<<<<< HEAD
  MODIFY `movieID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
=======
  MODIFY `movieID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
>>>>>>> 2ee62cc294115213311d4138fe43ea207e471106
--
-- AUTO_INCREMENT for table `movie_categories`
--
ALTER TABLE `movie_categories`
<<<<<<< HEAD
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
=======
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
>>>>>>> 2ee62cc294115213311d4138fe43ea207e471106
--
-- AUTO_INCREMENT for table `Rating`
--
ALTER TABLE `Rating`
  MODIFY `ratingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_members`
--
ALTER TABLE `blog_members`
  ADD CONSTRAINT `blog_members_ibfk_1` FOREIGN KEY (`postID`) REFERENCES `blog_posts` (`postID`);

--
-- Constraints for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD CONSTRAINT `blog_posts_ibfk_1` FOREIGN KEY (`movieID`) REFERENCES `movies` (`movieID`),
  ADD CONSTRAINT `blog_posts_ibfk_2` FOREIGN KEY (`ratingID`) REFERENCES `Rating` (`ratingID`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`postID`) REFERENCES `blog_posts` (`postID`);

--
-- Constraints for table `movie_categories`
--
ALTER TABLE `movie_categories`
  ADD CONSTRAINT `movie_categories_ibfk_1` FOREIGN KEY (`movieID`) REFERENCES `movies` (`movieID`),
  ADD CONSTRAINT `movie_categories_ibfk_2` FOREIGN KEY (`catID`) REFERENCES `category` (`catID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
