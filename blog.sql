-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 07, 2017 at 04:49 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

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
(22, 'guest11', '820MraJAxL.yY', 'guest11@example.com', NULL, 2);

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
(1, 'The Godfather Film Review', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 'The Godfather is a 1972 American crime film directed by Francis Ford Coppola and produced by Albert S. Ruddy, based on Mario Puzo\'s best-selling novel of the same name. It stars Marlon Brando and Al Pacino as the leaders of a fictional New York crime family. The story, spanning 1945 to 1955, chronicles the family under the patriarch Vito Corleone, focusing on the transformation of Michael Corleone (Pacino) from reluctant family outsider to ruthless mafia boss.\n</br>\n</br>\nParamount Pictures obtained the rights to the novel for the price of $80,000, before it gained popularity. Studio executives had trouble finding a director; their first few candidates turned down the position. They and Coppola disagreed over who would play several characters, in particular, Vito and Michael. Filming was done on location and completed earlier than scheduled. The musical score was composed primarily by Nino Rota with additional pieces by Carmine Coppola.\n</br>\n</br>\nThe film was the highest-grossing film of 1972 and was for a time the highest-grossing film ever made. It won the Oscars for Best Picture, Best Actor (Brando) and Best Adapted Screenplay (for Puzo and Coppola). Its seven other Oscar nominations included Pacino, James Caan, and Robert Duvall for Best Supporting Actor and Coppola for Best Director. It was followed by sequels The Godfather Part II (1974) and The Godfather Part III (1990).\nThe Godfather is widely regarded as one of the greatest films in world cinema and one of the most influential, especially in the gangster genre. It was selected for preservation in the U.S. National Film Registry of the Library of Congress in 1990, being deemed \"culturally, historically, or aesthetically significant\" and is ranked the second-greatest film in American cinema (behind Citizen Kane) by the American Film Institute.\n</br>\n</br>\nIn 1945, at his daughter Connie\'s wedding, Vito Corleone hears requests in his role as the Godfather, the Don of a New York crime family. Vito\'s youngest son, Michael, who was a Marine during World War II, introduces his girlfriend, Kay Adams, to his family at the reception. Johnny Fontane, a famous singer and Vito\'s godson, seeks Vito\'s help in securing a movie role; Vito dispatches his consigliere, Tom Hagen, to Los Angeles to talk the obnoxious studio head, Jack Woltz, into giving Johnny the part. Woltz refuses until he wakes up in bed with the severed head of his prized stallion.\n</br>\n</br>\n{{video}}\n</br>\n</br>\nShortly before Christmas, drug baron Virgil \"The Turk\" Sollozzo, backed by the Tattaglia crime family, asks Vito for investment in his narcotics business and protection through his political connections. Wary of involvement in a dangerous new trade that risks alienating political insiders, Vito declines. Suspicious, Vito sends his enforcer, Luca Brasi, to spy on them. However, a Tattaglia button man garrotes Brasi during Brasi\'s first meeting with Bruno Tattaglia and Sollozzo. Later Sollozzo has Vito gunned down in the street, then kidnaps Hagen. With Corleone first-born Sonny in command, Hagen is pressured to persuade Sonny to accept Sollozzo\'s deal, then released. The family receives fish wrapped in Brasi\'s bullet-proof vest, indicating that Luca \"sleeps with the fishes.\" Vito survives, and at the hospital Michael thwarts another attempt on his father; Michael\'s jaw is broken by NYPD Captain Marc McCluskey, Sollozzo\'s bodyguard. Sonny retaliates with a hit on Bruno Tattaglia. Michael plots to murder Sollozzo and McCluskey: on the pretext of settling the dispute, Michael agrees to meet them in a Bronx restaurant. There, retrieving a planted handgun, he kills both men.\n</br>\n</br>\n\nDespite a clampdown by the authorities, the Five Families erupt in open warfare and Vito\'s sons fear for their safety. Michael takes refuge in Sicily, and his brother, Fredo, is sheltered by the Corleone\'s Las Vegas casino partner, Moe Greene. Sonny attacks his brother-in-law Carlo on the street for abusing his sister and threatens to kill him if it happens again. When it does, Sonny speeds to their home, but is ambushed at a highway toll booth and riddled with submachine gun fire. While in Sicily, Michael meets and marries Apollonia Vitelli, but a car bomb intended for him takes her life.\n\n</br>\n</br>\nDevastated by Sonny\'s death, Vito moves to end the feuds. Realizing that the Tattaglias are controlled by the now-dominant Don Emilio Barzini, Vito assures the Five Families that he will withdraw his opposition to their heroin business and forgo avenging his son\'s murder. His safety guaranteed, Michael returns home to enter the family business and marry Kay, who gives birth to two children by the early 1950s.\nWith his father at the end of his career and his brother too weak, Michael takes the family reins, promising his wife the business will be legitimate within five years. To that end, he insists Hagen relocate to Las Vegas and relinquish his role to Vito because Tom is not a \"wartime consigliere\"; Vito agrees Tom should \"have no part in what will happen\" in the coming battles with rival families. When Michael travels to Las Vegas to buy out Greene\'s stake in the family\'s casinos, their partner derides the Corleones for being run out of New York; Michael is dismayed to see that Fredo has fallen under Greene\'s sway.\n\n</br>\n', '2017-05-13 19:00:00', 1, 5),
(2, 'Pulp Fiction Film Review', 'Pulp Fiction is a 1994 American black comedy neo-noir crime film written and directed by Quentin Tarantino, from a story by Tarantino and Roger Avary. Directed in a highly stylized manner, Pulp Fiction connects the intersecting storylines of Los Angeles mobsters, fringe players, small-time criminals, and a mysterious briefcase.', 'Hitmen Jules Winnfield and Vincent Vega arrive at the apartment of Brett to retrieve a briefcase for their boss, gangster Marsellus Wallace. After Vincent checks the contents of the briefcase, Jules shoots one of Brett\'s associates, then declaims a passage from the Bible before he and Vincent kill Brett.\n</br></br>\nSome time later, champion boxer Butch Coolidge accepts a large sum from Marsellus to take a dive in his upcoming match. Vincent and Jules deliver the briefcase. The next day, Vincent purchases heroin from his drug dealer Lance. He shoots up to pass the day, then drives to meet Marsellus\'s wife Mia, who Marsellus has asked Vincent to escort while he is out of town. They head to a 1950s-themed restaurant and participate in a twist contest, then return to the Wallace house with the trophy. While Vincent is in the bathroom, Mia finds his heroin, mistakes it for cocaine, snorts it and overdoses. Vincent rushes her to Lance\'s house, where they revive her with an adrenaline shot to her heart.\n</br></br>\nButch double-crosses Marsellus and wins the bout, killing his opponent in the process. At the motel where he and his girlfriend Fabienne are lying low, Butch discovers she has forgotten to pack his father\'s gold watch, a beloved heirloom, and flies into a rage. Returning to his apartment to retrieve the watch, he notices a gun on the kitchen counter and hears the toilet flush. Vincent exits the bathroom and Butch shoots him dead.\n</br></br>\n{{video}}\n</br></br>\nAs Butch waits at a traffic light in his car, Marsellus spots him by chance and chases him into a pawnshop. The owner, Maynard, captures them at gunpoint and ties them up in the basement. Maynard is joined by Zed, a security guard; they take Marsellus to another room to rape him, leaving the \"gimp\", a silent figure in a bondage suit, to watch Butch. Butch breaks loose and knocks out the gimp. He is about to flee, but decides to save Marsellus. As Zed rapes Marsellus, Butch kills Maynard with a katana retrieved from the pawnshop. Marsellus retrieves Maynard\'s shotgun and shoots Zed. Marsellus informs Butch that they are even, so long as he tells no one about the rape and departs Los Angeles forever. Butch picks up Fabienne on Zed\'s chopper.\n</br></br>\nSome time earlier, after Vincent and Jules have executed Brett in his apartment, another man bursts out of the bathroom and shoots wildly, missing every time; Jules and Vincent shoot him. Jules decides their lucky escape was a miracle, which Vincent disputes. As Jules drives, Vincent accidentally shoots Brett\'s associate Marvin in the face. They hide the car at the home of their associate Jimmie, who insists they deal with the problem before his wife comes home. Marsellus sends his cleaner, Winston Wolfe, who directs Jules and Vincent to clean the car, hide the body in the trunk, dispose of their bloody clothes, and drive the car to a junk yard.\n</br></br>\nAt a diner, Jules tells Vincent he plans to retire from his life of crime, taking their \"miraculous\" survival as a sign. While Vincent is in the bathroom, a couple, Pumpkin and Honey Bunny, hold up the restaurant. When Jules holds Pumpkin at gunpoint, Honey Bunny becomes hysterical and trains her gun on him; Vincent returns with his gun trained on her, creating a Mexican standoff. Jules recites the biblical passage, expresses ambivalence about his life of crime, and allows the robbers to take his cash and leave. Jules and Vincent leave the diner with the briefcase.', '2017-05-28 00:00:00', 2, 4),
(3, 'Fast and Furious 8 Review', 'Dominic \"Dom\" Toretto and Letty Ortiz are on their honeymoon in Havana when Dom is challenged to a street race at an auto show by local racer Raldo. Dom races for Raldos car, intending to give it to his cousin Fernando, while wagering his own show car. After narrowly winning the race, Dom allows Raldo to keep his car, earning his respect, and instead leaves his cousin with his show car. ', 'Shortly after the encounter, Dom and his team, comprising Letty, Roman Pearce, Tej Parker, and Ramsey, are recruited by Diplomatic Security Service (DSS) agent Luke Hobbs to help him retrieve an EMP device from a military outpost in Berlin. During the getaway, Dom goes rogue, forcing Hobbs off the road and stealing the device for Cipher. Hobbs is arrested and locked up in the same high-security prison he helped imprison Deckard Shaw in. After escaping, both are recruited by intelligence operative Frank Petty/Mr. Nobody and his protege, Eric Reisner/Little Nobody, to help the team find Dom and capture Cipher.\n</br></br>\nDeckard reveals that Cipher was the mastermind of previous encounters with the team, such as employing his brother Owen Shaw to steal the Nightshade device and orchestrating the attempted theft of God\'s Eye, Ramsey\'s software program. The team tracks Dom and Cipher to their very location just as they attack the base and steal God\'s Eye.\n</br></br>\n{{video}}\n</br></br>\nCipher then sends Dom to New York City to retrieve a nuclear football held by the Russian Minister of Defence. Dom manages to evade her for a short time through a diversion created by Raldo, allowing him to meet with and persuade Deckard and Owen\'s mother, Magdalene Shaw, to help. The team intercepts Dom after he steals the nuclear football, but Dom escapes, shooting and apparently killing Deckard in the process. Cipher facilitates Dom\'s escape by hacking into all of the autonomous cars in the city and reprogramming them to auto-drive, wreaking havoc throughout the city. Letty catches up to Dom, but is ambushed and nearly killed by Cipher\'s enforcer, Connor Rhodes, before Dom rescues her. In retaliation, Cipher has Rhodes kill Elena in front of Dom.\n</br></br>\nDom is then sent to Russia to use the EMP device to disable a nuclear submarine, enabling Cipher to hijack it and attempt to use its arsenal to trigger a nuclear war. They are once again intercepted by the team, provided with modified vehicles by Petty. Meanwhile, Deckard, who had faked his death and been extracted by Tego Leo and Rico Santos, former members of Dom\'s team, infiltrates Cipher\'s plane to rescue Dom\'s son at Magdalene\'s behest, with the help of Owen. Once Deckard reports that the child is safe, Dom turns on Cipher and kills Rhodes, avenging Elena\'s death, before rejoining his team. Outraged, Cipher launches an infrared homing missile at Dom, but he breaks away from his team and maneuvers around it, causing the missile to hit the submarine instead. The team quickly forms a vehicular blockade around Dom, shielding him from the ensuing explosion. When Deckard reaches the front of the plane and confronts Cipher, she makes her escape by parachuting out of the plane.\n', '2017-06-06 00:00:00', 3, 3),
(4, 'The Hateful 8 - Movie Review', 'In the dead of a Wyoming winter, a bounty hunter and his prisoner find shelter in a cabin currently inhabited by a collection of nefarious characters.', 'Years after the Civil War, bounty hunter Major Marquis Warren is transporting three dead bounties to the town of Red Rock, Wyoming. He hitches a ride on a stagecoach driven by O.B. Jackson. Aboard is John Ruth, a bounty hunter known for bringing in outlaws alive to see them hang; handcuffed to him is fugitive Daisy Domergue, whom Ruth is escorting to Red Rock. Ruth is suspicious of anyone who might steal his claim to the bounty. Ruth and Warren bond over Warren\'s personal letter from Abraham Lincoln.\n</br></br>\nFormer Lost-Causer militiaman Chris Mannix, who claims he is traveling to Red Rock as the town\'s new sheriff, persuades Ruth and Warren to let him on the stagecoach. Warren and Ruth form an alliance to protect each other\'s bounties. Mannix and Warren almost come to blows over their controversial war records.\n\nThe group seeks refuge from a blizzard at Minnie\'s Haberdashery, a stagecoach lodge. They are greeted by Bob, a Mexican who says the owner, Minnie, is visiting her mother. The other lodgers are Oswaldo Mobray, a hangman; Joe Gage, a quiet cowboy traveling to visit his mother; and Sanford Smithers, a former Confederate general traveling to put his missing son to rest. Suspicious, Ruth disarms all but Warren. As the group eats, Mannix surmises that Warren\'s Lincoln letter is a forgery. Warren admits this, saying the letter buys him leeway with whites, outraging Ruth. Warren leaves a gun next to Smithers and provokes him into reaching for it by telling Smithers he tortured, raped, and killed Smithers\' son. Warren shoots Smithers dead in \"self-defense\" as revenge for Smithers\' execution of black soldiers at the Battle of Baton Rouge.\n</br></br>\n{{video}}\n</br></br>\nWhile everyone is distracted by the confrontation, someone seen only by Daisy poisons the brewing coffee. Ruth and O.B. drink it, causing them both to vomit blood, killing O.B. The dying Ruth attacks Daisy, but she kills him with his own gun. Warren disarms Daisy, holds the men at gunpoint and leaves her cuffed to Ruth\'s corpse. Warren is joined by Mannix, whom Warren trusts because he nearly drank the poisoned coffee. Warren executes Bob, deducing that he is an impostor who killed the lodge owners. When Warren threatens to execute Daisy, Gage admits that he poisoned the coffee. A man hiding in the cellar shoots Warren in the genitals. Mobray draws a concealed gun and shoots Mannix, who returns fire, wounding Mobray and forcing Gage against the wall.\n</br></br>\nEarlier that day, Bob, Mobray, Gage, and a fourth man, Jody, arrive at Minnie\'s Haberdashery and kill everyone but Smithers. Jody, Daisy\'s brother, tells Smithers they plan to ambush Ruth to rescue Daisy; his gang will spare Smithers if he keeps quiet, as they deduce that an extra lodger makes the setup more believable. The bandits dispose of the bodies, hide the evidence, and conceal guns around the lodge. As Ruth\'s stagecoach arrives, Jody hides in the cellar.', '2017-05-15 00:00:00', 4, 4),
(5, 'Pitch Perfect 2 Review', 'After a humiliating command performance at The Kennedy Center, the Barden Bellas enter an international competition that no American group has ever won in order to regain their status and right to perform.', 'Three years after winning the previous competition, the Barden Bellas are now led by Beca Mitchell and three-time super senior Chloe Beale. The Bellas have become ICCA champions each of these three years. However, the group becomes involved in a national scandal, dubbed Muffgate, when a wardrobe malfunction causes Fat Amy\'s pants to rip in front of President Barack Obama, as well as showing her vagina to the public since she did not wear underwear, leading to the Bellas\' suspension from the ICCAs. Beca makes a deal to allow the Bellas to be reinstated should they win the World Championship of a cappella.\n</br></br>\nFreshman Emily Junk begins her college career, hoping to follow in her mother Katherine\'s footsteps by being a Bella. At orientation, she watches an a cappella performance by the Treblemakers, now led by Beca\'s boyfriend Jesse Swanson. Benjamin \"Benji\" Applebaum, Jesse\'s best friend, overhears Emily, leading to a crush on her.\n\nThe Bellas learn that German a cappella group, Das Sound Machine, have replaced the Bellas on their victory tour. Additionally, Beca has started an internship at a recording studio, Residual Heat, something only Jesse knows.\n</br></br>\n{{video}}\n</br></br>\nEmily goes to the Bellas\' sorority house to audition for them because of their absence from the auditions. When she sings her unfinished song \"Flashlight,\" she succeeds in joining the Bellas.\n\nAt a car show where the ICCA winners are due to perform, the Bellas scout their replacements, German powerhouse \"Das Sound Machine\" (DSM) - led by intimidating duo Pieter Krämer and Kommissar, who take delight in mocking the all-girl group. Later, the Bellas are invited to an exclusive riff-off, but end up losing to DSM in the final round when a nervous Emily flubs an attempt to sing \"Flashlight,\" her original song not from the right category (\"90\'s Hip-Hop Jamz\").\n</br></br>\nThe next day at the warmups, the Bellas\' chance of winning end in disaster when the performance makes John and Gail question the Bellas\' identity and sets Cynthia-Rose\'s hair on fire by pyrotechnics. In order to regain harmony and sync, Chloe takes them to a retreat led by former leader Aubrey Posen. Beca starts a heated debate with Chloe over herself being the only one thinking about life beyond the Bellas and Chloe\'s obsession with winning Worlds.\n\nTo prove to her boss that she can produce music well, Beca offers Emily to produce \"Flashlight\" at the studio. The group realizes that they may not see each other after graduation and regain harmony by singing \"Cups (When I\'m Gone).\" At the studio, Emily and Beca present their song to Beca\'s boss, in which he envies their talent and looks forward to producing with them.', '2017-01-24 00:00:00', 5, 3),
(6, 'Mad Max: Fury Road Review', 'A woman rebels against a tyrannical ruler in postapocalyptic Australia in search for her home-land with the help of a group of female prisoners, a psychotic worshipper, and a drifter named Max.', 'Following a nuclear holocaust, the world has become a desert wasteland and civilization has collapsed. Max Rockatansky, a survivor, is captured by the War Boys, the army of the tyrannical Immortan Joe, and taken to Joe\'s Citadel. Designated a universal blood donor, Max is imprisoned and used as a \"blood bag\" for a sick War Boy called Nux. Meanwhile, Imperator Furiosa, one of Joe\'s lieutenants, is sent in her armoured semi-truck, the \"War Rig\", to collect gasoline. When she drives off-route, Joe realizes that his five wives—women selected for breeding—are missing. Joe leads his entire army in pursuit of Furiosa, calling on the aid of nearby Gas Town and the Bullet Farm.\n</br></br>\nNux joins the pursuit with Max strapped to his car to continue supplying blood. A battle ensues between the War Rig and Joe\'s forces. Furiosa drives into a sand storm, evading her pursuers, except Nux, who attempts to sacrifice himself to destroy the Rig. Max escapes and restrains Nux, but the car is destroyed. After the storm, Max finds Furiosa repairing the Rig, accompanied by the wives: Capable, Cheedo, Toast, the Dag and the Splendid Angharad, who is heavily pregnant with Joe\'s child. Max steals the Rig, but its kill switch disables it. Max reluctantly agrees to let Furiosa and the wives accompany him; Nux climbs on the Rig as it leaves and attempts to kill Furiosa, but is overcome and thrown out, and is picked up by Joe\'s army.\n</br></br>\n{{video}}\n</br></br>\nFuriosa drives through a biker gang-controlled canyon to barter a deal for safe passage. However, with Joe\'s forces pursuing, the gang turns on her, forcing her and the group to flee, while the bikers detonate the canyon walls to block Joe. Max and Furiosa fight pursuing bikers as Joe\'s car, with Nux now on board, breaks through the blockade and eventually attacks the War Rig, allowing Nux to board. However, as the Rig escapes, Angharad falls off in an attempt to protect Max and is run over by Joe\'s car, killing her and her child. Furiosa explains to Max that they are escaping to the \"Green Place\", an idyllic land she remembers from her childhood. Capable finds Nux hiding in the Rig, distraught over his failure, and consoles him. That night, the Rig gets stuck in the mud. Furiosa and Max slow Joe\'s forces with mines, but Joe\'s ally, the Bullet Farmer, continues pursuing them. Nux helps Max free the Rig while Furiosa shoots and blinds the Bullet Farmer. Max walks into the dark to confront the Bullet Farmer and his men, returning with guns and ammunition.\n</br></br>\nThey drive the War Rig overnight through swampland and desert, coming across a naked woman the next day. Max suspects a trap, but Furiosa approaches the woman and states her history and clan affiliation. The naked woman summons her clan, the Vuvalini, who recognize Furiosa as one of their own who was kidnapped as a child. Furiosa is devastated to learn that the swampland they passed was indeed the Green Place, now uninhabitable. The group then plans to ride motorbikes across immense salt flats in the hope of finding a new home. Max chooses to stay behind, but after seeing visions of a child he failed to save, he convinces them to return to the undefended Citadel, which has ample water and greenery that Joe keeps for himself, and trap Joe and his army in the bikers\' canyon.', '2017-03-08 00:00:00', 6, 4);

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
(1, 'Crime'),
(2, 'Comedy'),
(3, 'Drama'),
(4, 'Horror'),
(5, 'Action'),
(6, 'Adventure'),
(7, 'Sci-Fi');

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
(1, 'Test comment', '2017-05-19 00:00:00', 'emileelam', 1);

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
(1, 'The Godfather', 1972, '18', '2 hrs 55 mins', 'https://i.ytimg.com/vi/rt-r-w7Z2Ag/maxresdefault.jpg', 'https://www.youtube.com/embed/sY1S34973zA'),
(2, 'Pulp Fiction', 1994, 'R', '1hr 21mins', 'https://pmd205465tn-a.akamaihd.net/Miramax/137/2/thumbnail_poster_color-PulpFiction_11r2_Approved_640x360_141767235537.jpg', 'https://www.youtube.com/embed/s7EdQ4FqbhY'),
(3, 'Fast and Furious 8', 2017, 'PG-13', '2hr 16min', 'https://www.bellanaija.com/wp-content/uploads/2017/04/pd.jpg', 'https://www.youtube.com/embed/uisBaTkQAEs'),
(4, 'The Hateful 8', 2015, 'R', '3hr 7min', 'http://www.melonthecake.com/wp-content/uploads/2015/12/AlbDdAT.jpg', 'https://www.youtube.com/embed/6_UI1GzaWv0'),
(5, 'Pitch Perfect 2', 2015, 'PG-13', '1hr 55min', 'https://i.ytimg.com/vi/OgPm-yaLoyo/maxresdefault.jpg', 'https://www.youtube.com/embed/OgPm-yaLoyo'),
(6, 'Mad Max: Fury Road', 2015, 'R', '1hr', 'https://blogs-images.forbes.com/nickmessitte/files/2016/02/mad-max-fury-road-1200x687.jpg', 'https://www.youtube.com/embed/vjBb4SZ0F6Q');

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
(2, 'The Godfather - Crime Category', 1, 3),
(3, 'Pulp Fiction - Drama Category', 2, 3),
(4, 'Fast and Furious 8 - Action', 3, 5),
(5, 'Fast and Furious 8 - Crime', 3, 1),
(6, 'Fast and Furious 8 - Adventure', 3, 6),
(7, 'The Hateful 8 - Crime', 4, 1),
(8, 'The Hateful 8 - Drama', 4, 3),
(9, 'Pitch Perfect 2 - Comdey', 5, 2),
(10, 'Mad Max - Sci-Fi', 6, 7),
(11, 'Mad Max - Adventure', 6, 6),
(12, 'Mad Max - Action', 6, 5);

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
  MODIFY `memberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movieID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `movie_categories`
--
ALTER TABLE `movie_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
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
