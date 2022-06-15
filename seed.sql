--
-- MySQL 5.5.52
-- Tue, 12 Dec 2017 23:44:30 +0000
--

CREATE TABLE `leaguename` (
   `NameID` int(11) not null auto_increment,
   `ProposedName` varchar(32),
   PRIMARY KEY (`NameID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=33;

INSERT INTO `leaguename` (`NameID`, `ProposedName`) VALUES 
('1', 'The Hamburglers'),
('2', 'Future Millionaires'),
('3', 'Future Billionaires'),
('4', 'League of Legends'),
('5', 'League of Extraordinary Gentlemn'),
('7', 'Dirty Steve and the Jeezy Petes'),
('8', '9pm Bedtime'),
('10', 'Nick and the Niceties'),
('11', 'The Statistically Improbable Win'),
('12', 'Statistically Improbable Winners'),
('13', 'Statistically Improbable Losers'),
('15', 'TUUUUUUURBYRRRRRRN'),
('17', 'Password Is Taco'),
('22', 'Wocka Flocka Game'),
('23', ' 50$ buy in'),
('24', 'Eurocup'),
('25', 'Louis and Natasha 5ever'),
('31', 'the wentz that was promised'),
('32', 'New Haven Ravens');