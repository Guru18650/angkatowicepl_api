-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Paź 2023, 23:12
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `angkatowicepl_dev`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categories`
--

CREATE TABLE `categories` (
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `categories`
--

INSERT INTO `categories` (`name`) VALUES
('Unit 1'),
('Unit 2'),
('Unit 3'),
('Unit 4');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `irregular`
--

CREATE TABLE `irregular` (
  `pl` varchar(50) DEFAULT NULL,
  `f1` varchar(50) DEFAULT NULL,
  `f2` varchar(50) DEFAULT NULL,
  `f3` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `irregular`
--

INSERT INTO `irregular` (`pl`, `f1`, `f2`, `f3`) VALUES
('powstawać', 'arise', 'arose', 'arisen\r'),
('obudzić się', 'awake', 'awoke', 'awoken\r'),
('być', 'be', 'was, were', 'been\r'),
('rodzić', 'bear', 'bore', 'born\r'),
('bić', 'beat', 'beat', 'beaten\r'),
('stawać się', 'become', 'became', 'become\r'),
('zaczynać', 'begin', 'began', 'begun\r'),
('ginąć', 'bend', 'bent', 'bent\r'),
('stawiać zakład', 'bet', 'bet', 'bet\r'),
('wiązać', 'bind', 'bound', 'bound\r'),
('gryźć', 'bite', 'bit', 'bitten\r'),
('krwawić', 'bleed', 'bled', 'bled\r'),
('dmuchać', 'blow', 'blew', 'blown\r'),
('łamać', 'break', 'broke', 'broken\r'),
('hodować', 'breed', 'bred', 'bred\r'),
('przynosić', 'bring', 'brought', 'brought\r'),
('nadawać', 'broadcast', 'broadcast', 'broadcast\r'),
('budować', 'build', 'built', 'built\r'),
('palić', 'burn', 'burned, burnt', 'burned, burnt\r'),
('kupować', 'buy', 'bought', 'bought\r'),
('rzucić', 'cast', 'cast', 'cast\r'),
('łapać', 'catch', 'caught', 'caught\r'),
('wybierać', 'choose', 'chose', 'chosen\r'),
('trzymać się', 'cling', 'clung', 'clung\r'),
('przyjść', 'come', 'came', 'come\r'),
('kosztować', 'cost', 'cost', 'cost\r'),
('ciąć', 'cut', 'cut', 'cut\r'),
('handlować', 'deal', 'dealt', 'dealt\r'),
('kopać', 'dig', 'dug', 'dug\r'),
('robić', 'do', 'did', 'done\r'),
('rysować', 'draw', 'drew', 'drawn\r'),
('śnić', 'dream', 'dreamed, dreamt', 'dreamed, dreamt\r'),
('pić', 'drink', 'drank', 'drunk\r'),
('prowadzić', 'drive', 'drove', 'driven\r'),
('jeść', 'eat', 'ate', 'eaten\r'),
('czuć', 'feel', 'felt', 'felt\r'),
('walczyć', 'fight', 'fought', 'fought\r'),
('znaleźć', 'find', 'found', 'found\r'),
('pasować', 'fit', 'fit', 'fit\r'),
('uciekać', 'flee', 'fled', 'fled\r'),
('latać', 'fly', 'flew', 'flown\r'),
('zabraniać', 'forbid', 'forbade', 'forbidden\r'),
('przewidywać', 'forecast', 'forecast', 'forecast\r'),
('zapominać', 'forget', 'forgot', 'forgotten\r'),
('przebaczać', 'forgive', 'forgave', 'forgiven\r'),
('zamarzać', 'freeze', 'froze', 'frozen\r'),
('dostawać', 'get', 'got', 'got\r'),
('dawać', 'give', 'gave', 'given\r'),
('iść', 'go', 'went', 'gone\r'),
('rosnąć', 'grow', 'grew', 'grown\r'),
('wisieć', 'hang', 'hung', 'hung\r'),
('mieć', 'have', 'had', 'had\r'),
('słyszeć', 'hear', 'heard', 'heard\r'),
('ukrywać', 'hide', 'hid', 'hidden\r'),
('uderzać', 'hit', 'hit', 'hit\r'),
('trzymać', 'hold', 'held', 'held\r'),
('ranić', 'hurt', 'hurt', 'hurt\r'),
('utrzymywać', 'keep', 'kept', 'kept\r'),
('klękać', 'kneel', 'knelt, kneeled', 'knelt, kneeled\r'),
('robić na drutach', 'knit', 'knitted', 'knitted\r'),
('wiedzieć', 'know', 'knew', 'known\r'),
('kłaść', 'lay', 'laid', 'laid\r'),
('prowadzić', 'lead', 'led', 'led\r'),
('pochylić się', 'lean', 'leant, leaned', 'leant, leaned\r'),
('skakać', 'leap', 'leapt, leaped', 'leapt, leaped\r'),
('uczyć się', 'learn', 'learnt, learned', 'learnt, learned\r'),
('opuszczać', 'leave', 'left', 'left\r'),
('pożyczać', 'lend', 'lent', 'lent\r'),
('pozwolić', 'let', 'let', 'let\r'),
('leżeć', 'lie', 'lay', 'lain\r'),
('zapalać', 'light', 'lit', 'lit\r'),
('gubić', 'lose', 'lost', 'lost\r'),
('robić', 'make', 'made', 'made\r'),
('znaczyć', 'mean', 'meant', 'meant\r'),
('spotykać', 'meet', 'met', 'met\r'),
('pomylić', 'mistake', 'mistook', 'mistaken\r'),
('kosić', 'mow', 'mowed', 'mown, mowned\r'),
('pokonywać', 'overcome', 'overcame', 'overcome\r'),
('zaspać', 'oversleep', 'overslept', 'overslept\r'),
('płacić', 'pay', 'paid', 'paid\r'),
('udowadniać', 'prove', 'proved', 'proven, proven\r'),
('kłaść', 'put', 'put', 'put\r'),
('rzucić', 'quit', 'quit', 'quit\r'),
('czytać', 'read', 'read', 'read\r'),
('uwolnić się', 'rid', 'rid', 'rid\r'),
('jeździć', 'ride', 'rode', 'ridden\r'),
('dzwonić', 'ring', 'rang', 'rung\r'),
('wzrastać', 'rise', 'rose', 'risen\r'),
('biec', 'run', 'ran', 'run\r'),
('mówić', 'say', 'said', 'said\r'),
('widzieć', 'see', 'saw', 'seen\r'),
('szukać', 'seek', 'sought', 'sought\r'),
('sprzedawać', 'sell', 'sold', 'sold\r'),
('wysyłać', 'send', 'sent', 'sent\r'),
('ustawiać', 'set', 'set', 'set\r'),
('szyć', 'sew', 'sewed', 'sewn, sewed\r'),
('trząść', 'shake', 'shook', 'shaken\r'),
('zrzucać', 'shed', 'shed', 'shed\r'),
('świecić', 'shine', 'shone', 'shone\r'),
('strzelać', 'shoot', 'shot', 'shot\r'),
('pokazywać', 'show', 'showed', 'shown\r'),
('kurczyć się', 'shrink', 'shrank', 'shrunk\r'),
('zamykać', 'shut', 'shut', 'shut\r'),
('śpiewać', 'sing', 'sang', 'sung\r'),
('tonąć', 'sink', 'sank', 'sunk\r'),
('siedzieć', 'sit', 'sat', 'sat\r'),
('spać', 'sleep', 'slept', 'slept\r'),
('ślizgać się', 'slide', 'slid', 'slid\r'),
('pachnieć', 'smell', 'smelled, smelt', 'smelled, smelt\r'),
('mówić', 'speak', 'spoke', 'spoken\r'),
('prędkość', 'speed', 'speeded, sped', 'speeded, sped\r'),
('wydawać', 'spend', 'spent', 'spent\r'),
('kraść', 'steal', 'stole', 'stolen\r'),
('przyklejać', 'stick', 'stuck', 'stuck\r'),
('żądlić', 'sting', 'stung', 'stung\r'),
('śmierdzieć', 'stink', 'stank', 'stunk\r'),
('uderzać', 'strike', 'struck', 'struck\r'),
('przysięgać', 'swear', 'swore', 'sworn\r'),
('zamiatać', 'sweep', 'swept', 'swept\r'),
('puchnąć', 'swell', 'swelled', 'swollen, swelled\r'),
('pływać', 'swim', 'swam', 'swum\r'),
('huśtać się', 'swing', 'swung', 'swung\r'),
('brać', 'take', 'took', 'taken\r'),
('nauczać', 'teach', 'taught', 'taught\r'),
('drzeć', 'tear', 'tore', 'torn\r'),
('mówić', 'tell', 'told', 'told\r'),
('myśleć', 'think', 'thought', 'thought\r'),
('rzucać', 'throw', 'threw', 'thrown\r'),
('wpychać', 'thrust', 'thrust', 'thrust\r'),
('przechodzić', 'undergo', 'underwent', 'undergone\r'),
('rozumieć', 'understand', 'understood', 'understood\r'),
('budzić się', 'wake', 'woke', 'woken\r'),
('nosić', 'wear', 'wore', 'worn\r'),
('wygrywać', 'win', 'won', 'won\r'),
('nakręcać', 'wind', 'wound', 'wound\r'),
('wycofywać', 'withdraw', 'withdrew', 'withdrawn\r'),
('wykręcać', 'wring', 'wrung', 'wrung\r'),
('pisać', 'write', 'wrote', 'written\r');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `subcategories`
--

CREATE TABLE `subcategories` (
  `name` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `subcategories`
--

INSERT INTO `subcategories` (`name`, `category`) VALUES
('Personal data', 'Unit 1'),
('Appearance', 'Unit 1'),
('Features of characters', 'Unit 1'),
('Feelings and emotions', 'Unit 1'),
('Skills and interests', 'Unit 1'),
('Personal and social value system', 'Unit 1'),
('Authority figures', 'Unit 1'),
('Sense of identity', 'Unit 1'),
('Listening', 'Unit 1'),
('Reading', 'Unit 1'),
('The house and its surroundings', 'Unit 2'),
('Rooms and home furnishings', 'Unit 2'),
('Household jobs', 'Unit 2'),
('Renting, purchasing and selling property', 'Unit 2'),
('Architecture', 'Unit 2'),
('Listening', 'Unit 2'),
('Reading', 'Unit 2'),
('School and places in a school', 'Unit 3'),
('School and university subjects', 'Unit 3'),
('Learning and lifelong learning', 'Unit 3'),
('School objects', 'Unit 3'),
('Grades and requirements', 'Unit 3'),
('School life', 'Unit 3'),
('People', 'Unit 3'),
('Extracurricular activities', 'Unit 3'),
('Education system', 'Unit 3'),
('Listening', 'Unit 3'),
('Reading', 'Unit 3'),
('Jobs and responsibilities', 'Unit 4'),
('Temporary work', 'Unit 4'),
('Choosing a job', 'Unit 4'),
('Employment and work conditions', 'Unit 4'),
('Career', 'Unit 4'),
('Job mobility', 'Unit 4'),
('Work and job collocations', 'Unit 4'),
('Phrasal verbs', 'Unit 4'),
('Idioms', 'Unit 4');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` char(60) DEFAULT NULL,
  `isAdmin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `isAdmin`) VALUES
(1, 'wojtek69', '$2a$12$GQDrvL8D8uP4miNmNDN7duUrAOKqr6c6wr2JURzLvar3QYNUQBng.', 1),
(2, 'migu2137', '$2a$12$GQDrvL8D8uP4miNmNDN7duUrAOKqr6c6wr2JURzLvar3QYNUQBng.', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `words`
--

CREATE TABLE `words` (
  `id` int(11) NOT NULL,
  `polish` varchar(50) DEFAULT NULL,
  `english` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `subcategory` varchar(50) NOT NULL,
  `extended` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `words`
--

INSERT INTO `words` (`id`, `polish`, `english`, `category`, `subcategory`, `extended`) VALUES
(50, 'stołówka, bufet', 'canteen', 'Unit 3', 'School and places in a school', 0),
(51, 'świetlica', 'common room', 'Unit 3', 'School and places in a school', 0),
(52, 'gabinet dyrektora/dyrektorki szkoły', 'headteacher\'s office', 'Unit 3', 'School and places in a school', 0),
(53, 'pracownia (fizyczna lub chemiczna)', 'laboratory', 'Unit 3', 'School and places in a school', 0),
(54, 'aula', 'lecture hall', 'Unit 3', 'School and places in a school', 0),
(55, 'szatnia', 'locker room', 'Unit 3', 'School and places in a school', 0),
(56, 'boisko, plac zabaw', 'playground', 'Unit 3', 'School and places in a school', 0),
(57, 'sekretariat', 'secretary\'s office', 'Unit 3', 'School and places in a school', 1),
(58, 'boisko', 'sports field', 'Unit 3', 'School and places in a school', 0),
(59, 'pokój nauczycielski', 'staffroom', 'Unit 3', 'School and places in a school', 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `words`
--
ALTER TABLE `words`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `words`
--
ALTER TABLE `words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
