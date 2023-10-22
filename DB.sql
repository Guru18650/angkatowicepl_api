SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE angkatowicepl_dev;
USE angkatowicepl_dev;

CREATE TABLE `categories` (
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `categories` (`name`) VALUES
('Unit 1'),
('Unit 2'),
('Unit 3'),
('Unit 4');

CREATE TABLE `irregular` (
  `pl` varchar(50) DEFAULT NULL,
  `f1` varchar(50) DEFAULT NULL,
  `f2` varchar(50) DEFAULT NULL,
  `f3` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` char(60) DEFAULT NULL,
  `isAdmin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `users` (`id`, `username`, `password`, `isAdmin`) VALUES
(1, 'wojtek69', '$2a$12$GQDrvL8D8uP4miNmNDN7duUrAOKqr6c6wr2JURzLvar3QYNUQBng.', 1),
(2, 'migu2137', '$2a$12$GQDrvL8D8uP4miNmNDN7duUrAOKqr6c6wr2JURzLvar3QYNUQBng.', 0);

CREATE TABLE `words` (
  `id` int(11) NOT NULL,
  `polish` varchar(50) DEFAULT NULL,
  `english` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `words` (`id`, `polish`, `english`, `category`) VALUES
(1, 'Kot', 'Cat', 'Unit 1'),
(7, 'Kurczak', 'Chicken', 'Unit 1'),
(10, 'Kotek', 'Kitten', 'Unit 3'),
(27, 'mężczyzna', 'male', 'Unit 1'),
(28, 'rozwiedziony', 'divorced', 'Unit 1'),
(29, 'kobieta', 'female', 'Unit 1'),
(30, 'imię', 'first name', 'Unit 1'),
(31, 'płeć', 'gender', 'Unit 1'),
(32, 'stan cywilny', 'martial status', 'Unit 1'),
(33, 'żonaty', 'married', 'Unit 1'),
(34, 'drugie imię', 'middle name', 'Unit 1'),
(35, 'zawód', 'occupation', 'Unit 1'),
(36, 'nazwisko', 'surname', 'Unit 1'),
(37, 'owdowiały', 'widowed', 'Unit 1'),
(38, 'starszy', 'elderly', 'Unit 1'),
(39, 'przystojny', 'good-looking', 'Unit 1'),
(40, 'umięśniony', 'muscular', 'Unit 1'),
(41, 'ładny', 'preety', 'Unit 1'),
(42, 'brzydki', 'ugly', 'Unit 1'),
(43, 'otyły', 'obese', 'Unit 1'),
(44, 'z nadwagą', 'overweight', 'Unit 1'),
(45, 'puszysty', 'plump', 'Unit 1'),
(46, 'chudy', 'skinny', 'Unit 1'),
(47, 'szczupły', 'slim', 'Unit 1');

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `words`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;
