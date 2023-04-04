#
# TABLE STRUCTURE FOR: day_of_the_week
#

DROP TABLE IF EXISTS `day_of_the_week`;

CREATE TABLE `day_of_the_week` (
  `id_day` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_day`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `day_of_the_week` (`id_day`, `title`) VALUES (1, 'accusamus');
INSERT INTO `day_of_the_week` (`id_day`, `title`) VALUES (2, 'praesentium');
INSERT INTO `day_of_the_week` (`id_day`, `title`) VALUES (3, 'optio');
INSERT INTO `day_of_the_week` (`id_day`, `title`) VALUES (4, 'sit');
INSERT INTO `day_of_the_week` (`id_day`, `title`) VALUES (5, 'facilis');
INSERT INTO `day_of_the_week` (`id_day`, `title`) VALUES (6, 'nemo');
INSERT INTO `day_of_the_week` (`id_day`, `title`) VALUES (7, 'dignissimos');


#
# TABLE STRUCTURE FOR: doctors
#

DROP TABLE IF EXISTS `doctors`;

CREATE TABLE `doctors` (
  `id_doctors` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_experience` int(11) NOT NULL,
  PRIMARY KEY (`id_doctors`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `doctors` (`id_doctors`, `full_name`, `category`, `work_experience`) VALUES (1, 'Rowland Kuhlman MD', '', 0);
INSERT INTO `doctors` (`id_doctors`, `full_name`, `category`, `work_experience`) VALUES (2, 'Nathen Bartell', '', 0);
INSERT INTO `doctors` (`id_doctors`, `full_name`, `category`, `work_experience`) VALUES (3, 'Raheem Ruecker Jr.', '', 0);
INSERT INTO `doctors` (`id_doctors`, `full_name`, `category`, `work_experience`) VALUES (4, 'Torrance Altenwerth DVM', '', 0);
INSERT INTO `doctors` (`id_doctors`, `full_name`, `category`, `work_experience`) VALUES (5, 'Pierre Veum I', '', 0);
INSERT INTO `doctors` (`id_doctors`, `full_name`, `category`, `work_experience`) VALUES (6, 'Mrs. Mara Rosenbaum Jr.', '', 0);
INSERT INTO `doctors` (`id_doctors`, `full_name`, `category`, `work_experience`) VALUES (7, 'Odie Luettgen IV', '', 0);
INSERT INTO `doctors` (`id_doctors`, `full_name`, `category`, `work_experience`) VALUES (8, 'Elaina Gutkowski', '', 0);
INSERT INTO `doctors` (`id_doctors`, `full_name`, `category`, `work_experience`) VALUES (9, 'Berenice Kirlin', '', 0);
INSERT INTO `doctors` (`id_doctors`, `full_name`, `category`, `work_experience`) VALUES (10, 'Taya Dickinson MD', '', 0);
INSERT INTO `doctors` (`id_doctors`, `full_name`, `category`, `work_experience`) VALUES (11, 'Jerry Schulist DVM', '', 0);
INSERT INTO `doctors` (`id_doctors`, `full_name`, `category`, `work_experience`) VALUES (12, 'Mrs. Shayna Lehner PhD', '', 0);
INSERT INTO `doctors` (`id_doctors`, `full_name`, `category`, `work_experience`) VALUES (13, 'Virginie Stracke', '', 0);
INSERT INTO `doctors` (`id_doctors`, `full_name`, `category`, `work_experience`) VALUES (14, 'Lucie Auer', '', 0);
INSERT INTO `doctors` (`id_doctors`, `full_name`, `category`, `work_experience`) VALUES (15, 'Madilyn Spencer', '', 0);
INSERT INTO `doctors` (`id_doctors`, `full_name`, `category`, `work_experience`) VALUES (16, 'Davin Beier', '', 0);
INSERT INTO `doctors` (`id_doctors`, `full_name`, `category`, `work_experience`) VALUES (17, 'Collin Powlowski', '', 0);
INSERT INTO `doctors` (`id_doctors`, `full_name`, `category`, `work_experience`) VALUES (18, 'Mathias Schiller', '', 0);
INSERT INTO `doctors` (`id_doctors`, `full_name`, `category`, `work_experience`) VALUES (19, 'Monique Franecki', '', 0);
INSERT INTO `doctors` (`id_doctors`, `full_name`, `category`, `work_experience`) VALUES (20, 'Eva Heller MD', '', 0);


#
# TABLE STRUCTURE FOR: patient_card
#

DROP TABLE IF EXISTS `patient_card`;

CREATE TABLE `patient_card` (
  `id_card` int(11) NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` char(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` char(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `insurance_policy_number` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `doctor_appointment` int(11) NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_card`),
  KEY `section_id` (`section_id`),
  CONSTRAINT `patient_card_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `section` (`id_section`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (1, '', '346 Cruickshank Plains\nJewellborough, WY', 'Triston Prosacco', '+59(3)03270', 914413442, 6876048, '1979-04-22 11:08:22', 4, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (2, 'f', '2747 Tromp Plains Apt. 362\nLake Walker,', 'Van Kilback', '(446)107-55', 0, 53637, '1981-05-03 10:19:56', 8, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (3, '', '35127 Rosenbaum Summit Apt. 920\nPort Lan', 'Loyal Gottlieb', '(625)255-82', 24483, 246, '1998-09-05 19:43:23', 7, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (4, 'f', '246 Olen Island Suite 899\nPort Adanshire', 'Jeff Bode', '1-044-555-6', 7003422, 0, '2006-11-22 22:17:36', 5, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (5, 'f', '872 Will Forge Apt. 173\nSouth Ariane, WA', 'Ferne Lesch', '761-830-011', 0, 0, '2007-11-25 22:08:36', 4, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (6, '', '05074 Alayna Inlet\nSouth Davon, KY 27471', 'Mr. Giovanni Effertz', '1-024-112-2', 717, 3796, '1972-12-24 16:36:05', 2, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (7, '', '8543 Heathcote Glen\nEast Kelton, AR 6630', 'Esteban Thompson', '07354224720', 657520, 591225, '1988-08-30 07:16:16', 6, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (8, 'f', '96217 Hauck Ports\nSydneeville, ME 32602-', 'Piper Kulas', '(833)601-14', 37969, 160001514, '1993-09-16 14:05:13', 0, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (9, '', '279 Kerluke Grove\nWestton, ID 21540', 'Dr. Magali Connelly', '151-185-782', 0, 353, '2003-02-26 01:05:34', 7, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (10, 'f', '12611 Ernser Underpass Suite 767\nNew Ran', 'Tyrese Runolfsdottir', '(441)841-62', 904194, 238208, '1985-09-02 02:59:14', 7, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (11, 'f', '8973 Scarlett Tunnel\nJacqueschester, IA', 'Marisol Wiegand', '1-626-787-0', 6879, 91096, '2016-10-28 06:23:11', 8, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (12, 'f', '070 Darien Expressway\nBrandoview, RI 005', 'Chet Conroy', '663.022.466', 0, 7622, '1994-08-08 01:32:25', 4, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (13, 'f', '924 Braun Tunnel\nSouth Juanashire, RI 33', 'Christy Heidenreich', '(730)329-03', 8, 35, '2020-07-31 12:28:03', 3, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (14, '', '821 Legros Manors Apt. 198\nNew Lauriane,', 'Sunny Grady', '(643)648-41', 661493516, 75724119, '1995-03-13 14:26:45', 2, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (15, 'f', '8757 Morar Turnpike\nPort Rossieberg, ND', 'Mathias Murray', '07670369179', 1880661, 645508, '1996-11-17 01:30:11', 6, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (16, '', '6558 Allan Spur\nWest Mekhi, WA 78057-304', 'Cory Cruickshank', '1-636-547-8', 281, 90861, '1977-04-25 07:05:30', 4, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (17, '', '86479 Macejkovic Trace Apt. 559\nNew Xzav', 'Rosina Swift', '(833)689-79', 7697363, 8, '1971-11-27 13:57:26', 6, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (18, 'f', '6315 Stone Garden\nNorth Taryn, NC 40508', 'Mr. Vladimir Wiza', '591.144.514', 89734317, 0, '1979-10-12 03:12:52', 9, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (19, '', '5474 Blick Street Suite 488\nLylabury, MO', 'Lauryn Huels DVM', '(196)445-48', 23707, 9, '1997-05-23 19:47:30', 5, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (20, 'f', '942 Ken Squares Suite 034\nPricestad, CA', 'Prof. Terence Marvin IV', '(082)251-89', 273267, 783, '2017-04-07 02:39:45', 3, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (21, 'f', '2865 Jenkins Flats\nWalshstad, MD 47722-4', 'Kurt Dach', '(703)552-81', 10816789, 57646, '2007-05-29 11:40:17', 3, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (22, 'f', '9132 Hope Hills\nKyliebury, DE 94219', 'Prof. Frida Cormier', '1-018-641-3', 98934779, 528638, '1978-02-09 12:59:56', 6, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (23, 'f', '02220 Keven Plains Apt. 114\nTrantowshire', 'Dr. Noemie Spencer DVM', '+96(3)82596', 5284954, 2232564, '1993-02-12 19:52:31', 2, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (24, 'f', '363 Ernie Green Apt. 140\nWest Omer, VT 7', 'Bettye Abernathy IV', '149.711.899', 3477390, 705940149, '1985-01-06 22:41:04', 1, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (25, 'f', '4114 Tavares Canyon Apt. 887\nMerlburgh,', 'Madison Waelchi', '(670)763-57', 1461, 35, '2002-03-12 09:55:13', 4, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (26, '', '60069 Kristian Corner Apt. 799\nIrvingpor', 'Rhiannon Deckow', '02391911291', 14, 0, '1978-10-27 10:22:06', 3, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (27, 'f', '5521 Stanton Isle\nNew Tryciafurt, MA 878', 'Mr. Trace Kreiger', '030-775-220', 506612890, 56549, '1979-03-25 14:25:10', 1, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (28, '', '9698 Bartoletti Terrace Apt. 566\nNorth K', 'Ebony Boyle PhD', '663-522-665', 228012778, 7, '2020-09-07 17:54:39', 0, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (29, 'f', '191 Reid Divide Apt. 372\nEast Constantin', 'Dr. Jarrell Schimmel', '(155)768-67', 897116608, 829, '1992-10-06 21:24:18', 6, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (30, 'f', '08727 Greenfelder Overpass Apt. 525\nLake', 'Ms. Maybelle Walter', '1-018-287-1', 19760, 69, '1989-11-18 09:09:23', 9, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (31, '', '6031 Shanahan Villages Apt. 670\nHalvorso', 'Cora Daniel IV', '(913)273-24', 36, 1878408, '2005-03-11 14:33:18', 6, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (32, 'f', '297 Ziemann Spring Suite 790\nMcLaughlinm', 'Isom Reichert DDS', '(851)241-50', 15341852, 0, '1993-01-25 03:14:58', 4, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (33, 'f', '58394 Sauer Spring Suite 989\nSouth Evans', 'Miss Rebeca Krajcik', '068-068-744', 40, 85, '2011-06-30 05:29:04', 9, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (34, 'f', '41512 Auer Route Suite 661\nPort Tristian', 'Richard Sporer', '777-707-192', 5, 71491914, '1984-04-06 19:06:01', 2, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (35, '', '2023 Sid Glen Suite 827\nSchneiderchester', 'Prof. Glenna Lakin', '(727)525-37', 925150, 0, '2010-08-14 21:00:19', 5, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (36, 'f', '9904 Luella Trafficway Suite 320\nAugusta', 'Bessie Rice IV', '664-564-924', 794086, 59105, '1979-04-24 19:26:05', 0, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (37, '', '142 Nona Cove\nNorth Patsyfort, ID 50881-', 'Franz Mertz', '736.195.248', 168451, 149381, '1995-08-30 00:11:03', 8, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (38, 'f', '6548 Hermann Pines Suite 497\nKleinport,', 'Jon Boehm', '1-215-418-1', 97, 2496701, '1999-04-16 00:56:00', 9, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (39, 'f', '130 Schamberger Plains\nSouth Edwinaland,', 'Greg McCullough', '(129)152-62', 54748, 32900404, '1975-09-12 06:01:28', 3, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (40, '', '081 Heller Light Apt. 399\nAbelland, DC 3', 'Layla Bednar', '742-583-790', 5, 70603, '1991-09-12 19:58:16', 4, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (41, '', '3059 Rhianna Summit Apt. 731\nNew Evehave', 'Mittie Marvin', '1-122-854-4', 647, 658038752, '2006-04-30 21:50:04', 6, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (42, 'f', '21190 Beier Divide\nSchaefermouth, VT 469', 'Ervin Reichel DVM', '857-107-548', 392300, 803566, '1990-01-10 14:09:19', 6, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (43, '', '4569 Brooke Shores\nStewartport, HI 52764', 'Mrs. Kelsie Barton MD', '796-186-843', 3, 0, '2020-10-28 15:09:34', 3, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (44, '', '133 Bruen Pine Suite 357\nKeeblermouth, A', 'Trycia Luettgen', '692.253.367', 5, 561889771, '1973-04-14 02:58:33', 6, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (45, '', '64621 Ratke Flats\nLemketon, PA 71056', 'Evelyn Klocko', '1-300-645-8', 3740825, 667468, '2010-06-09 17:30:59', 2, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (46, 'f', '721 Stehr Brook Apt. 983\nEast Shawnaview', 'Rosanna Bashirian', '012.692.617', 980410002, 0, '1981-07-09 14:43:18', 8, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (47, '', '933 Torphy Greens Apt. 598\nSouth Estrell', 'Luisa Littel', '288-200-906', 712014566, 0, '1971-10-30 04:49:17', 8, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (48, '', '37048 Torrey Key\nPort Aidaport, MI 77833', 'Ms. Kaylin Franecki', '801.348.041', 279, 8410012, '1975-04-25 21:41:24', 8, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (49, '', '29137 Estevan Mall\nPort Lilly, NE 25496', 'Jillian Heller DDS', '(004)212-77', 0, 295260235, '1991-06-06 15:13:50', 8, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (50, 'f', '9305 Rowland Path\nLake Tressastad, AL 61', 'Ms. Rosanna Ferry MD', '(587)380-87', 5, 41292683, '2000-02-22 17:51:57', 3, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (51, '', '535 Rau Extensions Suite 410\nLake Genesi', 'Rosamond Jacobi', '1-910-255-7', 7, 77606850, '2004-02-11 14:58:51', 6, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (52, '', '9982 Georgianna Mountain Apt. 668\nRitchi', 'Prof. Julien Grant', '541.655.380', 12, 416580790, '1972-07-30 06:12:58', 8, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (53, 'f', '82210 Muller Locks Suite 720\nMurazikfurt', 'Dr. Jedediah Kuhn III', '407-105-473', 560312, 9860, '1992-05-07 21:22:47', 3, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (54, '', '754 Breanna Dale Suite 792\nEast Ashleevi', 'Colt Batz PhD', '1-070-245-5', 63970, 28660531, '2006-08-27 00:50:35', 0, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (55, '', '806 Ryleigh Station Suite 036\nBrandymout', 'Dr. Meda Murazik II', '512-177-571', 234, 5300179, '1981-06-09 08:11:52', 1, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (56, '', '232 Ayden Expressway\nDonnellychester, GA', 'Dennis Botsford Jr.', '1-549-039-0', 2, 73992, '2004-11-11 10:34:50', 3, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (57, '', '34227 Jaskolski Trafficway\nSouth Ettie,', 'Heber Bogisich', '291.418.653', 575145, 613, '1994-12-29 03:01:06', 8, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (58, '', '4955 Weber Garden Suite 804\nImmanuelboro', 'Dr. Bobbie Buckridge', '197-353-153', 4846, 192, '2011-03-29 14:53:40', 1, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (59, '', '0553 Nikolas Stream\nWest Vesta, CA 07467', 'Sabina Littel', '126.507.922', 9034512, 3165288, '1987-04-26 13:51:42', 4, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (60, 'f', '58409 Elisha Wall\nGloverton, AL 87903', 'Florida Lind', '09211947561', 49931575, 682194902, '2006-12-10 21:54:12', 5, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (61, '', '155 Ethelyn Cove\nNew Penelopeshire, PA 8', 'Gideon Weimann I', '1-562-172-4', 1832, 3, '1981-01-28 23:25:24', 2, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (62, '', '403 Blake Squares Apt. 996\nMylesport, KS', 'Moises Lockman', '(967)181-47', 83897676, 9485, '2011-07-31 07:54:27', 3, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (63, '', '470 Harber Roads\nWest Ed, HI 97082-4255', 'Mr. Joey Borer DDS', '+02(3)58130', 1578045, 6, '2008-05-01 15:13:00', 4, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (64, 'f', '530 Nicolas Fort\nDominiqueview, OR 60286', 'Krystina Watsica', '(645)915-36', 4261796, 76, '1977-12-05 16:56:36', 5, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (65, '', '4256 Stracke Underpass\nKarinamouth, NM 8', 'Dr. Bart Bradtke V', '+19(5)06929', 752, 7, '1999-07-04 12:19:11', 3, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (66, 'f', '9702 Rohan Lights Apt. 060\nSouth Ophelia', 'Ms. Mollie Bruen IV', '806-782-944', 0, 369, '1971-12-08 13:51:09', 8, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (67, 'f', '995 Heaney Flats\nNew Fredrick, NC 60462', 'Kenny Renner', '1-721-985-2', 62, 8, '2019-11-16 02:51:28', 0, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (68, 'f', '4458 Schneider Park\nSchowalterport, NY 5', 'Johanna Casper', '+20(8)02271', 181868, 6, '1974-09-11 16:21:19', 6, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (69, '', '4814 Jamie Land Suite 161\nWest Marcellem', 'Lurline Wehner PhD', '04079728418', 9, 8, '2016-03-03 18:10:22', 2, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (70, 'f', '444 Berenice Knolls\nNanniebury, DE 50907', 'Lisette Swaniawski', '548.743.483', 8638761, 7948, '2004-07-07 19:14:58', 8, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (71, '', '7220 Gavin Divide Suite 252\nNew Micheal,', 'Tamara Kirlin', '(377)954-69', 938, 64913, '1994-10-12 03:02:04', 0, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (72, 'f', '90965 Garrick Common\nNorth Masontown, NV', 'Krista Barrows PhD', '02445277323', 5, 2237, '1972-10-16 20:48:07', 5, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (73, 'f', '05956 Nick Flat\nWest Neva, PA 23433-4457', 'Amy Mraz III', '(453)885-06', 56469581, 26431126, '1974-04-05 20:54:35', 3, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (74, 'f', '61541 Bradtke Flat\nNew Zettashire, IA 07', 'Prof. Bradly Marquardt IV', '343-998-798', 0, 32122, '1982-08-22 17:19:26', 6, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (75, 'f', '40694 Cartwright Parkway\nLake Joelleboro', 'Ms. Catharine Mante V', '171-213-537', 1819566, 64595, '1971-07-29 02:38:44', 1, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (76, 'f', '975 Swaniawski Stravenue\nEast Merrittche', 'Therese Spencer', '777.913.538', 982492493, 67827407, '1976-01-27 05:14:09', 8, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (77, 'f', '50231 Laurine Port\nCreminborough, MS 110', 'Shanna Gleason', '1-762-030-2', 63688086, 703, '1993-07-27 10:12:18', 9, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (78, '', '5834 Imani Plain Suite 078\nPort Edgardo,', 'Ericka Bernier', '361.992.517', 858, 378481, '2009-05-27 02:05:47', 1, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (79, 'f', '6223 Schoen Heights\nOrlandmouth, NJ 5507', 'Prof. Alba Marvin', '04383163876', 0, 0, '1977-03-07 07:16:20', 2, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (80, 'f', '45459 Monahan Hollow Suite 446\nSouth Pas', 'Miss Lilyan Pouros PhD', '(255)201-98', 0, 0, '2005-08-22 11:28:48', 2, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (81, 'f', '7453 Sibyl Lodge\nSipesstad, TN 41486', 'Kaitlin Bradtke', '05252252925', 92, 0, '2006-02-15 12:55:25', 3, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (82, '', '900 Orval Trail\nSouth Burniceborough, IN', 'Dr. Joana Braun Jr.', '107.667.609', 6566, 723, '2015-07-03 09:36:28', 7, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (83, '', '51678 Koepp Streets Apt. 444\nRohanport,', 'Lorena Mosciski DDS', '(439)528-91', 90, 4585, '1991-02-06 09:40:27', 4, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (84, '', '7136 Jaylon Inlet Apt. 769\nKaceytown, ME', 'Julia Wisozk', '422.350.132', 8, 216068056, '2017-05-08 00:32:10', 7, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (85, '', '663 Corkery Pines\nAbbottberg, KS 88803-9', 'Reinhold Grant MD', '685.799.933', 0, 2298, '1984-01-27 16:01:50', 5, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (86, 'f', '459 Barton Road\nNew Samanthaport, DE 809', 'Pearl Mueller', '(260)786-40', 2422808, 543126003, '2019-01-14 01:10:34', 1, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (87, 'f', '46678 O\'Conner Green\nSantinobury, SD 831', 'Aurore Morissette', '394-691-082', 62966, 27, '1992-07-31 11:24:15', 1, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (88, 'f', '595 Funk Mission Apt. 343\nO\'Konborough,', 'Kayden Zemlak', '404-935-295', 13236637, 534830249, '1976-04-24 21:43:55', 5, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (89, 'f', '4502 Reva Expressway Apt. 266\nWest Jena,', 'Joesph McLaughlin', '1-897-283-4', 755779, 62529, '1983-10-06 01:32:55', 6, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (90, '', '87222 Medhurst Lodge Apt. 008\nBoehmburgh', 'Miss Kristin Herzog III', '925.304.771', 10236, 17, '1993-02-09 14:58:25', 7, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (91, 'f', '67577 Myrna Mountains Apt. 109\nSpencerbo', 'Prof. Greta Botsford I', '663-536-950', 95753, 52446660, '2016-09-24 17:55:41', 3, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (92, '', '6285 Corbin Corner\nNorth Margaret, OR 23', 'Hallie Romaguera', '1-224-028-7', 18193, 350, '2022-12-04 15:33:10', 7, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (93, 'f', '62536 Rohan Manors Apt. 823\nBrianside, N', 'Leanne Muller', '323-987-562', 37238830, 6672654, '1990-07-01 11:57:43', 9, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (94, 'f', '354 Ike Plains\nYvettebury, WA 70510-6753', 'Sim Langworth', '237.154.315', 0, 39, '2004-09-26 11:10:49', 2, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (95, 'f', '236 Jaskolski Skyway Apt. 226\nPort Netti', 'Ivory Ebert', '(960)583-80', 0, 171, '1998-11-13 12:24:19', 1, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (96, '', '5312 Shaun Harbors\nStracketon, ME 88122', 'Serena Anderson', '(550)681-04', 45714371, 490566, '1973-03-29 15:27:56', 5, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (97, 'f', '68846 Frami Run Suite 383\nSchoenshire, M', 'Geovanny Jaskolski', '(021)238-09', 13818, 8679835, '2016-08-23 16:50:25', 5, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (98, '', '317 Axel Curve Suite 940\nPort Abbigail,', 'Emma Hermann III', '(900)145-40', 93372, 147687103, '2006-05-26 12:26:45', 5, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (99, '', '85385 Laurel Drive Suite 726\nNorth Aless', 'Gardner Hintz II', '(819)714-93', 6642153, 74936750, '1990-12-16 00:48:12', 1, NULL);
INSERT INTO `patient_card` (`id_card`, `gender`, `address`, `full_name`, `telephone`, `age`, `insurance_policy_number`, `date`, `doctor_appointment`, `section_id`) VALUES (100, 'f', '73243 Modesto Stravenue Suite 000\nLueilw', 'Pedro Wilkinson', '213.496.581', 87, 48969, '1976-12-03 21:25:19', 6, NULL);


#
# TABLE STRUCTURE FOR: schedule
#

DROP TABLE IF EXISTS `schedule`;

CREATE TABLE `schedule` (
  `id_schedule` int(11) NOT NULL AUTO_INCREMENT,
  `reception_time` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_number` char(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_schedule`),
  KEY `day_id` (`day_id`),
  KEY `section_id` (`section_id`),
  CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`day_id`) REFERENCES `day_of_the_week` (`id_day`),
  CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `section` (`id_section`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (1, '3', '', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (2, '5', '406', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (3, '4', '83742376', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (4, '5', '458376', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (5, '9', '484281', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (6, '4', '3', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (7, '7', '', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (8, '7', '1', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (9, '1', '7', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (10, '8', '526775', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (11, '1', '30318', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (12, '8', '3', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (13, '4', '48903', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (14, '', '', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (15, '4', '4', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (16, '4', '', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (17, '7', '942026111', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (18, '3', '3', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (19, '5', '547', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (20, '1', '985', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (21, '3', '7732700', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (22, '6', '34908', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (23, '8', '242', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (24, '4', '46', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (25, '3', '20714626', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (26, '3', '2278', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (27, '7', '5320', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (28, '5', '88309', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (29, '8', '', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (30, '7', '268038866', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (31, '8', '7466', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (32, '3', '708379', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (33, '9', '5801218', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (34, '1', '868', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (35, '5', '39', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (36, '3', '182783', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (37, '7', '646489', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (38, '3', '657', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (39, '9', '84309757', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (40, '4', '56438000', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (41, '7', '4390906', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (42, '1', '286921', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (43, '6', '', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (44, '3', '5181487', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (45, '', '502970', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (46, '1', '421098', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (47, '4', '', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (48, '7', '57005', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (49, '1', '6411963', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (50, '7', '7735473', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (51, '1', '843901737', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (52, '6', '', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (53, '2', '90309', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (54, '3', '2587', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (55, '8', '82', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (56, '3', '925216', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (57, '8', '29525', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (58, '3', '7355038', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (59, '4', '4', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (60, '4', '71', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (61, '3', '798098503', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (62, '8', '398686566', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (63, '8', '2702647', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (64, '5', '', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (65, '2', '2349398', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (66, '7', '408', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (67, '2', '16046517', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (68, '5', '2', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (69, '9', '830', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (70, '1', '9383', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (71, '9', '885', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (72, '5', '848453474', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (73, '2', '509774663', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (74, '9', '32', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (75, '8', '2465168', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (76, '3', '731', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (77, '', '4963684', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (78, '', '75763', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (79, '9', '2', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (80, '1', '785117', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (81, '2', '21179228', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (82, '8', '196473', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (83, '', '7', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (84, '5', '534', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (85, '8', '254', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (86, '5', '7939', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (87, '1', '209482', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (88, '1', '87', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (89, '8', '1481168', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (90, '7', '8523', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (91, '', '886827', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (92, '2', '2993910', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (93, '7', '9', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (94, '8', '30', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (95, '8', '60', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (96, '', '19332743', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (97, '7', '23842871', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (98, '6', '39311', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (99, '2', '6972', NULL, NULL);
INSERT INTO `schedule` (`id_schedule`, `reception_time`, `office_number`, `day_id`, `section_id`) VALUES (100, '8', '9674494', NULL, NULL);


#
# TABLE STRUCTURE FOR: section
#

DROP TABLE IF EXISTS `section`;

CREATE TABLE `section` (
  `id_section` int(11) NOT NULL AUTO_INCREMENT,
  `address` char(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_section`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `section` (`id_section`, `address`) VALUES (1, '830 Karen Ferry Apt. 638\nFramiland, GA 2');
INSERT INTO `section` (`id_section`, `address`) VALUES (2, '973 Koss Prairie\nEast Shanelleside, TN 2');
INSERT INTO `section` (`id_section`, `address`) VALUES (3, '57558 Murray Wells\nLauriebury, VT 66408-');
INSERT INTO `section` (`id_section`, `address`) VALUES (4, '8056 Spinka Mews\nHomenickstad, CO 46498-');
INSERT INTO `section` (`id_section`, `address`) VALUES (5, '334 Stokes Walk\nNew Olin, AZ 50559-4779');
INSERT INTO `section` (`id_section`, `address`) VALUES (6, '886 Hammes Cove Apt. 072\nShanahanbury, N');
INSERT INTO `section` (`id_section`, `address`) VALUES (7, '8413 Hermiston Fort\nMadelynmouth, RI 919');
INSERT INTO `section` (`id_section`, `address`) VALUES (8, '0656 Trace Ville Suite 113\nMorissettevie');
INSERT INTO `section` (`id_section`, `address`) VALUES (9, '7881 Rebekah Street Apt. 494\nLake Hipoli');
INSERT INTO `section` (`id_section`, `address`) VALUES (10, '8091 Maida Freeway\nSouth Marco, CA 75569');
INSERT INTO `section` (`id_section`, `address`) VALUES (11, '3174 Bette Estates Suite 808\nEast Kaley,');
INSERT INTO `section` (`id_section`, `address`) VALUES (12, '992 Giovani Courts\nBlockborough, AZ 5712');
INSERT INTO `section` (`id_section`, `address`) VALUES (13, '13763 Kasandra Fall\nLake Fabiolastad, OK');
INSERT INTO `section` (`id_section`, `address`) VALUES (14, '32903 Rowena Trail\nDietrichhaven, WI 770');
INSERT INTO `section` (`id_section`, `address`) VALUES (15, '816 Candice Pines\nNew Brook, MO 26776-26');
INSERT INTO `section` (`id_section`, `address`) VALUES (16, '493 Christiansen Plain Suite 480\nEast Mi');
INSERT INTO `section` (`id_section`, `address`) VALUES (17, '206 Huels Freeway\nNorth Kasandra, NE 671');
INSERT INTO `section` (`id_section`, `address`) VALUES (18, '8799 Louvenia Fields\nNorth Winston, WV 5');
INSERT INTO `section` (`id_section`, `address`) VALUES (19, '6450 Price Port Suite 028\nNew Maryam, NV');
INSERT INTO `section` (`id_section`, `address`) VALUES (20, '7409 Mann Crossing Suite 128\nLake Maveri');
INSERT INTO `section` (`id_section`, `address`) VALUES (21, '4513 Moen Run Apt. 600\nNew Janiceburgh,');
INSERT INTO `section` (`id_section`, `address`) VALUES (22, '0863 Schuppe Lane\nAprilside, AL 41294');
INSERT INTO `section` (`id_section`, `address`) VALUES (23, '3325 Heathcote Burg Suite 329\nWest Leann');
INSERT INTO `section` (`id_section`, `address`) VALUES (24, '71737 Waters Mill\nSylviaside, RI 86857-0');
INSERT INTO `section` (`id_section`, `address`) VALUES (25, '449 Deven Ford Apt. 085\nVincentfurt, CO');
INSERT INTO `section` (`id_section`, `address`) VALUES (26, '3216 West Avenue\nLake Jacklynton, CT 625');
INSERT INTO `section` (`id_section`, `address`) VALUES (27, '367 Bergstrom Valleys Apt. 681\nPort Emma');
INSERT INTO `section` (`id_section`, `address`) VALUES (28, '004 Rempel Corners Suite 756\nReillyville');
INSERT INTO `section` (`id_section`, `address`) VALUES (29, '843 Becker Mission\nEnriqueton, MO 04439');
INSERT INTO `section` (`id_section`, `address`) VALUES (30, '94678 Tatum Ridge Suite 432\nNew Dylanmou');
INSERT INTO `section` (`id_section`, `address`) VALUES (31, '84094 Reilly Light\nLanghaven, MS 66754');
INSERT INTO `section` (`id_section`, `address`) VALUES (32, '6717 Hansen Shore\nBaileybury, OK 97375');
INSERT INTO `section` (`id_section`, `address`) VALUES (33, '4371 Funk Shoals\nCummerataport, NH 71344');
INSERT INTO `section` (`id_section`, `address`) VALUES (34, '94479 Loyal Valleys Suite 529\nLake Arian');
INSERT INTO `section` (`id_section`, `address`) VALUES (35, '244 Frieda Way Suite 130\nLehnerbury, WY');
INSERT INTO `section` (`id_section`, `address`) VALUES (36, '894 Gerlach Forks\nRobertsside, SC 33461-');
INSERT INTO `section` (`id_section`, `address`) VALUES (37, '159 Deckow Corners Suite 457\nMcGlynnmout');
INSERT INTO `section` (`id_section`, `address`) VALUES (38, '7719 Domenic Fords Suite 934\nCreolaberg,');
INSERT INTO `section` (`id_section`, `address`) VALUES (39, '1462 Kirlin Ferry Suite 881\nPort Karibur');
INSERT INTO `section` (`id_section`, `address`) VALUES (40, '852 Gerardo Vista Apt. 263\nShanahanstad,');
INSERT INTO `section` (`id_section`, `address`) VALUES (41, '5731 Hackett Springs\nCasandrahaven, TN 0');
INSERT INTO `section` (`id_section`, `address`) VALUES (42, '92593 Mante Brook Apt. 889\nDenesikcheste');
INSERT INTO `section` (`id_section`, `address`) VALUES (43, '67482 Anais Ridge Apt. 835\nMyrticeland,');
INSERT INTO `section` (`id_section`, `address`) VALUES (44, '03679 Kathryn Prairie Suite 788\nNorth Mo');
INSERT INTO `section` (`id_section`, `address`) VALUES (45, '690 Casper Isle\nWest Marlen, RI 24583-69');
INSERT INTO `section` (`id_section`, `address`) VALUES (46, '5490 Hodkiewicz Mission\nNorth Guidoton,');
INSERT INTO `section` (`id_section`, `address`) VALUES (47, '1214 Daugherty Burgs Apt. 409\nWisozkches');
INSERT INTO `section` (`id_section`, `address`) VALUES (48, '82261 Schiller Stravenue Apt. 335\nPacoch');
INSERT INTO `section` (`id_section`, `address`) VALUES (49, '3059 Konopelski Valleys Apt. 045\nEmiemou');
INSERT INTO `section` (`id_section`, `address`) VALUES (50, '634 Luettgen Gateway Apt. 651\nPort Rolan');


#
# TABLE STRUCTURE FOR: visiting
#

DROP TABLE IF EXISTS `visiting`;

CREATE TABLE `visiting` (
  `id_visiting` int(11) NOT NULL AUTO_INCREMENT,
  `date` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complaint` char(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview` char(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purpose` char(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hospital_records` char(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visitingcol` char(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_doctors` int(11) NOT NULL,
  `card_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_visiting`),
  KEY `card_id` (`card_id`),
  CONSTRAINT `visiting_ibfk_1` FOREIGN KEY (`card_id`) REFERENCES `patient_card` (`id_card`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (1, '8', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (2, '1', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (3, '8', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (4, '8', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (5, '1', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (6, '4', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (7, '6', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (8, '4', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (9, '2', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (10, '9', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (11, '7', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (12, '7', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (13, '2', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (14, '7', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (15, '9', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (16, '9', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (17, '2', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (18, '', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (19, '4', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (20, '6', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (21, '6', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (22, '9', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (23, '1', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (24, '1', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (25, '2', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (26, '2', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (27, '3', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (28, '4', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (29, '3', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (30, '1', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (31, '7', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (32, '4', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (33, '5', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (34, '3', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (35, '9', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (36, '6', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (37, '7', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (38, '3', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (39, '4', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (40, '1', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (41, '2', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (42, '6', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (43, '2', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (44, '1', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (45, '4', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (46, '4', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (47, '9', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (48, '5', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (49, '9', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (50, '5', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (51, '9', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (52, '3', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (53, '1', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (54, '9', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (55, '8', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (56, '6', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (57, '9', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (58, '3', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (59, '3', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (60, '1', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (61, '5', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (62, '2', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (63, '5', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (64, '', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (65, '5', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (66, '1', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (67, '5', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (68, '', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (69, '7', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (70, '2', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (71, '', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (72, '', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (73, '7', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (74, '4', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (75, '6', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (76, '6', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (77, '3', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (78, '6', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (79, '3', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (80, '1', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (81, '3', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (82, '5', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (83, '1', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (84, '8', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (85, '2', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (86, '9', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (87, '', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (88, '4', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (89, '', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (90, '8', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (91, '4', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (92, '3', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (93, '7', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (94, '1', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (95, '6', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (96, '2', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (97, '9', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (98, '4', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (99, '2', '', '', '', '', '', 0, NULL);
INSERT INTO `visiting` (`id_visiting`, `date`, `complaint`, `preview`, `purpose`, `hospital_records`, `visitingcol`, `id_doctors`, `card_id`) VALUES (100, '3', '', '', '', '', '', 0, NULL);


#
# TABLE STRUCTURE FOR: work_on_the_site
#

DROP TABLE IF EXISTS `work_on_the_site`;

CREATE TABLE `work_on_the_site` (
  `work_on_the_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) DEFAULT NULL,
  `doctors_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`work_on_the_site_id`),
  KEY `section_id` (`section_id`),
  KEY `doctors_id` (`doctors_id`),
  CONSTRAINT `work_on_the_site_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `section` (`id_section`),
  CONSTRAINT `work_on_the_site_ibfk_2` FOREIGN KEY (`doctors_id`) REFERENCES `doctors` (`id_doctors`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (102, 8, 1);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (103, 1, 9);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (105, 3, 7);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (106, 2, 4);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (107, 2, 1);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (108, 9, 2);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (109, 5, 5);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (110, 8, 7);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (111, 4, 6);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (112, 1, 5);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (113, 7, 6);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (114, 8, 7);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (115, 3, 9);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (116, 6, 3);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (117, 6, 2);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (118, 1, 2);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (119, 7, 4);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (121, 3, 5);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (122, 2, 2);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (123, 2, 6);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (124, 9, 9);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (125, 9, 8);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (126, 3, 5);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (127, 3, 9);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (128, 8, 1);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (129, 6, 8);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (130, 9, 9);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (131, 3, 9);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (132, 7, 8);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (133, 8, 5);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (134, 5, 1);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (135, 8, 4);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (136, 7, 8);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (137, 8, 8);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (138, 9, 4);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (139, 8, 8);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (140, 1, 7);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (142, 5, 6);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (143, 9, 1);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (145, 4, 4);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (147, 5, 6);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (148, 4, 6);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (149, 1, 4);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (152, 1, 2);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (153, 7, 4);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (154, 2, 1);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (155, 8, 7);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (156, 3, 8);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (157, 7, 8);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (158, 9, 2);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (159, 6, 5);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (160, 7, 8);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (161, 3, 3);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (162, 3, 1);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (163, 1, 6);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (165, 1, 6);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (166, 2, 8);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (167, 9, 5);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (168, 1, 2);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (169, 7, 1);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (170, 2, 2);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (171, 8, 4);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (172, 7, 7);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (173, 2, 5);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (174, 3, 2);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (175, 3, 8);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (177, 4, 6);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (178, 1, 4);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (179, 2, 9);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (182, 7, 8);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (183, 1, 5);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (185, 2, 4);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (186, 2, 3);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (187, 4, 7);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (188, 1, 2);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (189, 5, 4);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (190, 4, 5);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (191, 1, 9);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (192, 1, 6);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (193, 8, 7);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (195, 8, 7);
INSERT INTO `work_on_the_site` (`work_on_the_site_id`, `section_id`, `doctors_id`) VALUES (198, 1, 9);


