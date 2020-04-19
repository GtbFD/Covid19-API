-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Abr-2020 às 04:55
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `covid19`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `status`
--

CREATE TABLE `status` (
  `id` bigint(20) NOT NULL,
  `curados` int(11) DEFAULT NULL,
  `total_casos` int(11) DEFAULT NULL,
  `total_mortes` int(11) DEFAULT NULL,
  `pais` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `status`
--

INSERT INTO `status` (`id`, `curados`, `total_casos`, `total_mortes`, `pais`) VALUES
(2550, 68285, 738913, 39015, 'USA'),
(2551, 74797, 194416, 20639, 'Spain'),
(2552, 44927, 175925, 23227, 'Italy'),
(2553, 35983, 151793, 19323, 'France'),
(2554, 85400, 143724, 4538, 'Germany'),
(2555, 0, 114217, 15464, 'UK'),
(2556, 77062, 82735, 4632, 'China'),
(2557, 55987, 80868, 5031, 'Iran'),
(2558, 10453, 82329, 1890, 'Turkey'),
(2559, 3057, 36793, 313, 'Russia'),
(2560, 8348, 37183, 5453, 'Belgium'),
(2561, 14026, 36760, 2368, 'Brazil'),
(2562, 11207, 33383, 1470, 'Canada'),
(2563, 250, 31589, 3601, 'Netherlands'),
(2564, 17100, 27404, 1368, 'Switzerland'),
(2565, 610, 19685, 687, 'Portugal'),
(2566, 10214, 14671, 443, 'Austria'),
(2567, 2463, 16365, 521, 'India'),
(2568, 77, 14758, 571, 'Ireland'),
(2569, 6684, 14420, 348, 'Peru'),
(2570, 550, 13822, 1511, 'Sweden'),
(2571, 3456, 13265, 164, 'Israel'),
(2572, 8042, 10661, 234, 'S. Korea'),
(2573, 1069, 10296, 222, 'Japan'),
(2574, 4035, 9730, 126, 'Chile'),
(2575, 981, 8742, 347, 'Poland'),
(2576, 1008, 9022, 456, 'Ecuador'),
(2577, 1730, 8418, 421, 'Romania'),
(2578, 1832, 7638, 143, 'Pakistan'),
(2579, 1329, 8274, 92, 'Saudi Arabia'),
(2580, 3847, 7242, 346, 'Denmark'),
(2581, 32, 7069, 164, 'Norway'),
(2582, 2627, 7497, 650, 'Mexico'),
(2583, 4167, 6586, 70, 'Australia'),
(2584, 1227, 6606, 181, 'Czech Republic'),
(2585, 1188, 6302, 37, 'UAE'),
(2586, 516, 6087, 397, 'Philippines'),
(2587, 740, 5992, 11, 'Singapore'),
(2588, 631, 6248, 535, 'Indonesia'),
(2589, 637, 5994, 117, 'Serbia'),
(2590, 3102, 5305, 88, 'Malaysia'),
(2591, 275, 5106, 133, 'Ukraine'),
(2592, 342, 4779, 45, 'Belarus'),
(2593, 510, 5008, 8, 'Qatar'),
(2594, 122, 4210, 116, 'Panama'),
(2595, 312, 4335, 217, 'Dominican Republic'),
(2596, 1700, 3681, 90, 'Finland'),
(2597, 601, 3537, 72, 'Luxembourg'),
(2598, 691, 3621, 166, 'Colombia'),
(2599, 701, 3032, 224, 'Egypt'),
(2600, 903, 3034, 52, 'South Africa'),
(2601, 685, 2839, 132, 'Argentina'),
(2602, 1787, 2733, 47, 'Thailand'),
(2603, 314, 2685, 137, 'Morocco'),
(2604, 894, 2534, 367, 'Algeria'),
(2605, 391, 2378, 57, 'Moldova'),
(2606, 269, 2235, 110, 'Greece'),
(2607, 66, 2144, 84, 'Bangladesh'),
(2608, 231, 1834, 172, 'Hungary'),
(2609, 615, 1832, 39, 'Croatia'),
(2610, 1291, 1760, 9, 'Iceland'),
(2611, 755, 1773, 7, 'Bahrain'),
(2612, 280, 1751, 6, 'Kuwait'),
(2613, 377, 1615, 17, 'Kazakhstan'),
(2614, 953, 1513, 82, 'Iraq'),
(2615, 162, 1512, 38, 'Estonia'),
(2616, 194, 1490, 5, 'Uzbekistan'),
(2617, 912, 1431, 12, 'New Zealand'),
(2618, 590, 1373, 18, 'Azerbaijan'),
(2619, 190, 1317, 70, 'Slovenia'),
(2620, 523, 1248, 20, 'Armenia'),
(2621, 228, 1239, 33, 'Lithuania'),
(2622, 338, 1268, 47, 'Bosnia and Herzegovina'),
(2623, 176, 1180, 6, 'Oman'),
(2624, 164, 1170, 49, 'North Macedonia'),
(2625, 213, 1089, 11, 'Slovakia'),
(2626, 568, 1024, 4, 'Hong Kong'),
(2627, 305, 1017, 42, 'Cameroon'),
(2628, 112, 933, 30, 'Afghanistan'),
(2629, 227, 986, 32, 'Cuba'),
(2630, 153, 878, 41, 'Bulgaria'),
(2631, 43, 866, 37, 'Tunisia'),
(2632, 79, 761, 12, 'Cyprus'),
(2633, 76, 732, 2, 'Djibouti'),
(2634, 644, 712, 13, 'Diamond Princess'),
(2635, 88, 712, 5, 'Latvia'),
(2636, 205, 704, 35, 'Andorra'),
(2637, 239, 801, 8, 'Ivory Coast'),
(2638, 99, 672, 21, 'Lebanon'),
(2639, 97, 655, 4, 'Costa Rica'),
(2640, 99, 834, 9, 'Ghana'),
(2641, 113, 639, 19, 'Niger'),
(2642, 321, 565, 36, 'Burkina Faso'),
(2643, 302, 548, 26, 'Albania'),
(2644, 298, 517, 9, 'Uruguay'),
(2645, 130, 506, 5, 'Kyrgyzstan'),
(2646, 166, 542, 19, 'Nigeria'),
(2647, 31, 520, 32, 'Bolivia'),
(2648, 65, 518, 3, 'Guinea'),
(2649, 73, 484, 21, 'Channel Islands'),
(2650, 15, 472, 46, 'Honduras'),
(2651, 60, 455, 39, 'San Marino'),
(2652, 99, 426, 3, 'Malta'),
(2653, 269, 413, 7, 'Jordan'),
(2654, 69, 418, 2, 'Palestine'),
(2655, 237, 407, 0, 'Reunion'),
(2656, 178, 398, 6, 'Taiwan'),
(2657, 86, 388, 4, 'Georgia'),
(2658, 211, 350, 3, 'Senegal'),
(2659, 180, 325, 9, 'Mauritius'),
(2660, 55, 307, 5, 'Montenegro'),
(2661, 180, 297, 6, 'Isle of Man'),
(2662, 26, 307, 25, 'DRC'),
(2663, 201, 268, 0, 'Vietnam'),
(2664, 60, 262, 12, 'Kenya'),
(2665, 117, 254, 4, 'Mayotte'),
(2666, 86, 254, 7, 'Sri Lanka'),
(2667, 21, 257, 7, 'Guatemala'),
(2668, 117, 227, 9, 'Venezuela'),
(2669, 41, 206, 8, 'Paraguay'),
(2670, 43, 190, 7, 'El Salvador'),
(2671, 173, 184, 0, 'Faroe Islands'),
(2672, 41, 216, 13, 'Mali'),
(2673, 25, 173, 5, 'Jamaica'),
(2674, 73, 163, 12, 'Martinique'),
(2675, 11, 147, 5, 'Tanzania'),
(2676, 73, 148, 8, 'Guadeloupe'),
(2677, 69, 144, 0, 'Rwanda'),
(2678, 11, 143, 6, 'Congo'),
(2679, 113, 137, 1, 'Brunei'),
(2680, 111, 132, 0, 'Gibraltar'),
(2681, 103, 122, 0, 'Cambodia'),
(2682, 35, 120, 0, 'Madagascar'),
(2683, 2, 135, 7, 'Somalia'),
(2684, 21, 114, 8, 'Trinidad and Tobago'),
(2685, 7, 108, 1, 'Gabon'),
(2686, 44, 96, 2, 'Aruba'),
(2687, 64, 96, 0, 'French Guiana'),
(2688, 16, 105, 3, 'Ethiopia'),
(2689, 22, 94, 3, 'Monaco'),
(2690, 5, 107, 5, 'Myanmar'),
(2691, 49, 84, 5, 'Togo'),
(2692, 35, 83, 5, 'Bermuda'),
(2693, 4, 79, 0, 'Equatorial Guinea'),
(2694, 55, 79, 1, 'Liechtenstein'),
(2695, 7, 76, 7, 'Liberia'),
(2696, 17, 75, 5, 'Barbados'),
(2697, 6, 66, 10, 'Sudan'),
(2698, 9, 63, 6, 'Guyana'),
(2699, 7, 61, 1, 'Cayman Islands'),
(2700, 12, 64, 9, 'Sint Maarten'),
(2701, 1, 58, 1, 'Cabo Verde'),
(2702, 22, 55, 0, 'Uganda'),
(2703, 2, 55, 0, 'French Polynesia'),
(2704, 10, 55, 9, 'Bahamas'),
(2705, 33, 57, 2, 'Zambia'),
(2706, 11, 49, 1, 'Libya'),
(2707, 16, 45, 0, 'Macao'),
(2708, 0, 46, 0, 'Guinea-Bissau'),
(2709, 0, 44, 3, 'Haiti'),
(2710, 5, 38, 2, 'Syria'),
(2711, 3, 39, 0, 'Eritrea'),
(2712, 18, 35, 1, 'Benin'),
(2713, 19, 37, 2, 'Saint Martin'),
(2714, 4, 35, 0, 'Mozambique'),
(2715, 5, 31, 0, 'Mongolia'),
(2716, 3, 31, 0, 'Nepal'),
(2717, 16, 35, 0, 'Maldives'),
(2718, 8, 33, 0, 'Chad'),
(2719, 0, 30, 0, 'Sierra Leone'),
(2720, 2, 25, 3, 'Zimbabwe'),
(2721, 3, 23, 3, 'Antigua and Barbuda'),
(2722, 2, 19, 0, 'Laos'),
(2723, 6, 24, 2, 'Angola'),
(2724, 8, 22, 1, 'Eswatini'),
(2725, 1, 18, 0, 'East Timor'),
(2726, 0, 18, 2, 'Belize'),
(2727, 14, 18, 0, 'New Caledonia'),
(2728, 3, 17, 2, 'Malawi'),
(2729, 0, 17, 0, 'Fiji'),
(2730, 6, 16, 0, 'Namibia'),
(2731, 8, 16, 0, 'Dominica'),
(2732, 0, 15, 1, 'Botswana'),
(2733, 11, 15, 0, 'Saint Lucia'),
(2734, 11, 14, 1, 'Curacao'),
(2735, 0, 14, 0, 'Saint Kitts and Nevis'),
(2736, 6, 14, 0, 'Grenada'),
(2737, 4, 12, 0, 'CAR'),
(2738, 1, 12, 0, 'St. Vincent Grenadines'),
(2739, 5, 11, 0, 'Seychelles'),
(2740, 3, 11, 0, 'Falkland Islands'),
(2741, 0, 11, 1, 'Turks and Caicos'),
(2742, 11, 11, 0, 'Greenland'),
(2743, 2, 11, 0, 'Montserrat'),
(2744, 6, 10, 1, 'Suriname'),
(2745, 2, 9, 1, 'Gambia'),
(2746, 6, 9, 2, 'Nicaragua'),
(2747, 0, 9, 2, 'MS Zaandam'),
(2748, 2, 8, 0, 'Vatican City'),
(2749, 6, 7, 1, 'Mauritania'),
(2750, 0, 7, 0, 'Papua New Guinea'),
(2751, 0, 6, 0, 'Western Sahara'),
(2752, 5, 6, 0, 'St. Barth'),
(2753, 0, 5, 1, 'Burundi'),
(2754, 2, 5, 0, 'Bhutan'),
(2755, 2, 4, 0, 'British Virgin Islands'),
(2756, 0, 4, 0, 'South Sudan'),
(2757, 0, 4, 0, 'Sao Tome and Principe'),
(2758, 1, 3, 0, 'Anguilla'),
(2759, 0, 3, 0, 'Caribbean Netherlands'),
(2760, 0, 1, 0, 'Yemen'),
(2761, 0, 1, 0, 'Saint Pierre Miquelon'),
(2762, 596850, 2331727, 160759, 'World');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `stats`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `stats`
--
ALTER TABLE `status`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2763;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
