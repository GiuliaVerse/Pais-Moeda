-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/04/2024 às 03:44
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Banco de dados: `chicomoedas`
--
CREATE DATABASE IF NOT EXISTS `chicomoedas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `chicomoedas`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `paises`
--

CREATE TABLE `paises` (
  `id` int(11) NOT NULL,
  `pais` varchar(255) NOT NULL,
  `moeda` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `paises`
--

INSERT INTO `paises` (`id`, `pais`, `moeda`) VALUES
(197, 'Afghanistan', 'AFN'),
(198, 'Albania', 'ALL'),
(199, 'Algeria', 'DZD'),
(200, 'Andorra', 'EUR'),
(201, 'Angola', 'AOA'),
(202, 'Antigua and Barbuda', 'XCD'),
(203, 'Argentina', 'ARS'),
(204, 'Armenia', 'AMD'),
(205, 'Australia', 'AUD'),
(206, 'Austria', 'EUR'),
(207, 'Azerbaijan', 'AZN'),
(208, 'Bahamas', 'BSD'),
(209, 'Bahrain', 'BHD'),
(210, 'Bangladesh', 'BDT'),
(211, 'Barbados', 'BBD'),
(212, 'Belarus', 'BYN'),
(213, 'Belgium', 'EUR'),
(214, 'Belize', 'BZD'),
(215, 'Benin', 'XOF'),
(216, 'Bhutan', 'BTN'),
(217, 'Bolivia', 'BOB'),
(218, 'Bosnia and Herzegovina', 'BAM'),
(219, 'Botswana', 'BWP'),
(220, 'Brazil', 'BRL'),
(221, 'Brunei', 'BND'),
(222, 'Bulgaria', 'BGN'),
(223, 'Burkina Faso', 'XOF'),
(224, 'Burundi', 'BIF'),
(225, 'Cabo Verde', 'CVE'),
(226, 'Cambodia', 'KHR'),
(227, 'Cameroon', 'XAF'),
(228, 'Canada', 'CAD'),
(229, 'Central African Republic', 'XAF'),
(230, 'Chad', 'XAF'),
(231, 'Chile', 'CLP'),
(232, 'China', 'CNY'),
(233, 'Colombia', 'COP'),
(234, 'Comoros', 'KMF'),
(235, 'Congo, Democratic Republic of the', 'CDF'),
(236, 'Congo, Republic of the', 'XAF'),
(237, 'Costa Rica', 'CRC'),
(238, 'Côte dIvoire (Ivory Coast)', 'XOF'),
(239, 'Croatia', 'HRK'),
(240, 'Cuba', 'CUC'),
(241, 'Cyprus', 'EUR'),
(242, 'Czech Republic (Czechia)', 'CZK'),
(243, 'Denmark', 'DKK'),
(244, 'Djibouti', 'DJF'),
(245, 'Dominica', 'XCD'),
(246, 'Dominican Republic', 'DOP'),
(247, 'Ecuador', 'USD'),
(248, 'Egypt', 'EGP'),
(249, 'El Salvador', 'USD'),
(250, 'England', 'GBP'),
(251, 'Equatorial Guinea', 'XAF'),
(252, 'Eritrea', 'ERN'),
(253, 'Estonia', 'EUR'),
(254, 'Eswatini (Swaziland)', 'SZL'),
(255, 'Ethiopia', 'ETB'),
(256, 'Federated States of Micronesia', 'USD'),
(257, 'Fiji', 'FJD'),
(258, 'Finland', 'EUR'),
(259, 'France', 'EUR'),
(260, 'Gabon', 'XAF'),
(261, 'Gambia', 'GMD'),
(262, 'Georgia', 'GEL'),
(263, 'Germany', 'EUR'),
(264, 'Ghana', 'GHS'),
(265, 'Greece', 'EUR'),
(266, 'Grenada', 'XCD'),
(267, 'Guatemala', 'GTQ'),
(268, 'Guinea', 'GNF'),
(269, 'Guinea-Bissau', 'XOF'),
(270, 'Guyana', 'GYD'),
(271, 'Haiti', 'HTG'),
(272, 'Honduras', 'HNL'),
(273, 'Hungary', 'HUF'),
(274, 'Iceland', 'ISK'),
(275, 'India', 'INR'),
(276, 'Indonesia', 'IDR'),
(277, 'Iran', 'IRR'),
(278, 'Iraq', 'IQD'),
(279, 'Ireland', 'EUR'),
(280, 'Israel', 'ILS'),
(281, 'Italy', 'EUR'),
(282, 'Jamaica', 'JMD'),
(283, 'Japan', 'JPY'),
(284, 'Jordan', 'JOD'),
(285, 'Kazakhstan', 'KZT'),
(286, 'Kenya', 'KES'),
(287, 'Kiribati', 'AUD'),
(288, 'Kosovo', 'EUR'),
(289, 'Kuwait', 'KWD'),
(290, 'Kyrgyzstan', 'KGS'),
(291, 'Laos', 'LAK'),
(292, 'Latvia', 'EUR'),
(293, 'Lebanon', 'LBP'),
(294, 'Lesotho', 'LSL'),
(295, 'Liberia', 'LRD'),
(296, 'Libya', 'LYD'),
(297, 'Liechtenstein', 'CHF'),
(298, 'Lithuania', 'EUR'),
(299, 'Luxembourg', 'EUR'),
(300, 'Macedonia', 'MKD'),
(301, 'Madagascar', 'MGA'),
(302, 'Malawi', 'MWK'),
(303, 'Malaysia', 'MYR'),
(304, 'Maldives', 'MVR'),
(305, 'Mali', 'XOF'),
(306, 'Malta', 'EUR'),
(307, 'Marshall Islands', 'USD'),
(308, 'Mauritania', 'MRU'),
(309, 'Mauritius', 'MUR'),
(310, 'Mexico', 'MXN'),
(311, 'Federated States of Micronesia', 'U.S. Dollar'),
(312, 'Moldova', 'Leu'),
(313, 'Monaco', 'Euro'),
(314, 'Mongolia', 'Togrog'),
(315, 'Montenegro', 'Euro'),
(316, 'Morocco', 'Dirham'),
(317, 'Mozambique', 'Metical'),
(318, 'Myanmar (Burma)', 'Kyat'),
(319, 'Namibia', 'Namibian Dollar'),
(320, 'Nauru', 'Australian Dollar'),
(321, 'Nepal', 'Nepalese Rupee'),
(322, 'Netherlands', 'Euro, Previously: Guilder'),
(323, 'New Zealand', 'New Zealand Dollar'),
(324, 'Nicaragua', 'Nicaraguan Cordoba'),
(325, 'Niger', 'CFA Franc'),
(326, 'Nigeria', 'Naira'),
(327, 'Norway', 'Norwegian Krone'),
(328, 'Oman', 'Omani Rial'),
(329, 'Pakistan', 'Pakistani Rupee'),
(330, 'Palau', 'U.S. Dollar'),
(331, 'Palestine', 'Palestine Pound'),
(332, 'Panama', 'Panamian Balboa and U.S. Dollar'),
(333, 'Papua New Guinea', 'Kina'),
(334, 'Paraguay', 'Guaraní'),
(335, 'Peru', 'Sol'),
(336, 'Philippines', 'Peso'),
(337, 'Poland', 'Zloty'),
(338, 'Portugal', 'Euro, Previously: Escudo'),
(339, 'Qatar', 'Qatari Rial'),
(340, 'Romania', 'Romanian Rupee'),
(341, 'Russia', 'Ruble'),
(342, 'Rwanda', 'Rwandan Franc'),
(343, 'Saint Kitts and Nevis', 'East Caribbean Dollar'),
(344, 'Saint Lucia', 'East Caribbean Dollar'),
(345, 'Saint Vincent and the Grenadines', 'East Caribbean Dollar'),
(346, 'Samoa', 'Tala'),
(347, 'San Marino', 'Euro'),
(348, 'Sao Tome and Principe', 'Dobra'),
(349, 'Saudi Arabia', 'Riyal'),
(350, 'Senegal', 'CFA Franc'),
(351, 'Serbia', 'Serbian Dinar'),
(352, 'Seychelles', 'Seychelles rupee'),
(353, 'Sierra Leone', 'Leone'),
(354, 'Singapore', 'Singapore dollar'),
(355, 'Slovakia', 'Euro'),
(356, 'Slovenia', 'Euro, Previously: Slovenian Tolar'),
(357, 'Solomon Islands', 'Solomon Islands Dollar'),
(358, 'Somalia', 'Somali Shilling'),
(359, 'South Africa', 'Rand'),
(360, 'South Sudan', 'Sudanese Pound'),
(361, 'Spain', 'Euro, Previously: Peseta'),
(362, 'Sri Lanka', 'Sri Lankan Rupee'),
(363, 'Sudan', 'Sudanese Pound'),
(364, 'Suriname', 'Surinamese Dollar'),
(365, 'Swaziland', 'Lilangeni'),
(366, 'Sweden', 'Krona'),
(367, 'Switzerland', 'Swiss Franc'),
(368, 'Syria', 'Syrian Pound'),
(369, 'Taiwan', 'Taiwan Dollar'),
(370, 'Tajikistan', 'Somoni'),
(371, 'Tanzania', 'Tanzanian Shilling'),
(372, 'Thailand', 'Baht'),
(373, 'Togo', 'CFA Franc'),
(374, 'Tonga', 'Pa’anga'),
(375, 'Trinidad and Tobago', 'Trinidad and Tobago dollar'),
(376, 'Tunisia', 'Tunisian Dinar'),
(377, 'Turkey', 'Turkish Lira'),
(378, 'Turkmenistan', 'Manat'),
(379, 'Tuvalu', 'Tuvaluan Dollar'),
(380, 'Uganda', 'Ugandan New Shilling'),
(381, 'Ukraine', 'Hryvnia'),
(382, 'United Arab Emirates', 'U.A.E. Dirham'),
(383, 'United Kingdom', 'Pound Sterling'),
(384, 'United States of America', 'Dollar'),
(385, 'Uruguay', 'Uruguay Peso'),
(386, 'Uzbekistan', 'Uzbekistani Sum'),
(387, 'Vanuatu', 'Vatu'),
(388, 'Vatican City (Holy See)', 'Euro'),
(389, 'Venezuela', 'Bolivar'),
(390, 'Vietnam', 'Dong'),
(391, 'Yemen', 'Rial'),
(392, 'Zambia', 'Kwacha');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `paises`
--
ALTER TABLE `paises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=393;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
