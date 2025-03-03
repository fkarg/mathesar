CREATE TABLE "filter_sort" (
    mathesar_id integer NOT NULL,
    str_id varchar(32) NOT NULL,
    "varchar" varchar(32),
    "numeric" integer,
    "date"    date,
    "array"   integer[]
);

INSERT INTO "filter_sort" VALUES
(1,'a','string1',1,'2000-01-01','{}'),
(1,'b','string2',2,'2001-01-01','{0,0}'),
(3,'a','string3',3,'2002-01-01','{1,1}'),
(3,'b','string4',4,'2003-01-01','{2,2}'),
(5,'a','string5',5,'2004-01-01','{3,3}'),
(5,'b','string6',6,'2005-01-01','{4,4}'),
(7,'a','string7',7,'2006-01-01','{5,5}'),
(7,'b','string8',8,'2007-01-01','{6,6}'),
(9,'a','string9',9,'2008-01-01','{7,7}'),
(9,'b','string10',10,'2009-01-01','{8,8}'),
(11,'a','string11',11,'2010-01-01','{9,9}'),
(11,'b','string12',12,'2011-01-01','{10,10}'),
(13,'a','string13',13,'2012-01-01','{11,11}'),
(13,'b','string14',14,'2013-01-01','{12,12}'),
(15,'a','string15',15,'2014-01-01','{13,13}'),
(15,'b','string16',16,'2015-01-01','{14,14}'),
(17,'a','string17',17,'2016-01-01','{15,15}'),
(17,'b','string18',18,'2017-01-01','{16,16}'),
(19,'a','string19',19,'2018-01-01','{17,17}'),
(19,'b','string20',20,'2019-01-01','{18,18}'),
(21,'a','string21',21,'2020-01-01','{19,19}'),
(21,'b','string22',22,'2021-01-01','{20,20}'),
(23,'a','string23',23,'2022-01-01','{21,21}'),
(23,'b','string24',24,'2023-01-01','{22,22}'),
(25,'a','string25',25,'2024-01-01','{23,23}'),
(25,'b','string26',26,'2025-01-01','{24,24}'),
(27,'a','string27',27,'2026-01-01','{25,25}'),
(27,'b','string28',28,'2027-01-01','{26,26}'),
(29,'a','string29',29,'2028-01-01','{27,27}'),
(29,'b','string30',30,'2029-01-01','{28,28}'),
(31,'a','string31',31,'2030-01-01','{29,29}'),
(31,'b','string32',32,'2031-01-01','{30,30}'),
(33,'a','string33',33,'2032-01-01','{31,31}'),
(33,'b','string34',34,'2033-01-01','{32,32}'),
(35,'a','string35',35,'2034-01-01','{33,33}'),
(35,'b','string36',36,'2035-01-01','{34,34}'),
(37,'a','string37',37,'2036-01-01','{35,35}'),
(37,'b','string38',38,'2037-01-01','{36,36}'),
(39,'a','string39',39,'2038-01-01','{37,37}'),
(39,'b','string40',40,'2039-01-01','{38,38}'),
(41,'a','string41',41,'2040-01-01','{39,39}'),
(41,'b','string42',42,'2041-01-01','{40,40}'),
(43,'a','string43',43,'2042-01-01','{41,41}'),
(43,'b','string44',44,'2043-01-01','{42,42}'),
(45,'a','string45',45,'2044-01-01','{43,43}'),
(45,'b','string46',46,'2045-01-01','{44,44}'),
(47,'a','string47',47,'2046-01-01','{45,45}'),
(47,'b','string48',48,'2047-01-01','{46,46}'),
(49,'a','string49',49,'2048-01-01','{47,47}'),
(49,'b','string50',50,'2049-01-01','{48,48}'),
(51,'a','string51',51,'2050-01-01','{49,49}'),
(51,'b','string52',52,'2051-01-01','{50,50}'),
(53,'a','string53',53,'2052-01-01','{51,51}'),
(53,'b','string54',54,'2053-01-01','{52,52}'),
(55,'a','string55',55,'2054-01-01','{53,53}'),
(55,'b','string56',56,'2055-01-01','{54,54}'),
(57,'a','string57',57,'2056-01-01','{55,55}'),
(57,'b','string58',58,'2057-01-01','{56,56}'),
(59,'a','string59',59,'2058-01-01','{57,57}'),
(59,'b','string60',60,'2059-01-01','{58,58}'),
(61,'a','string61',61,'2060-01-01','{59,59}'),
(61,'b','string62',62,'2061-01-01','{60,60}'),
(63,'a','string63',63,'2062-01-01','{61,61}'),
(63,'b','string64',64,'2063-01-01','{62,62}'),
(65,'a','string65',65,'2064-01-01','{63,63}'),
(65,'b','string66',66,'2065-01-01','{64,64}'),
(67,'a','string67',67,'2066-01-01','{65,65}'),
(67,'b','string68',68,'2067-01-01','{66,66}'),
(69,'a','string69',69,'2068-01-01','{67,67}'),
(69,'b','string70',70,'2069-01-01','{68,68}'),
(71,'a','string71',71,'2070-01-01','{69,69}'),
(71,'b','string72',72,'2071-01-01','{70,70}'),
(73,'a','string73',73,'2072-01-01','{71,71}'),
(73,'b','string74',74,'2073-01-01','{72,72}'),
(75,'a','string75',75,'2074-01-01','{73,73}'),
(75,'b','string76',76,'2075-01-01','{74,74}'),
(77,'a','string77',77,'2076-01-01','{75,75}'),
(77,'b','string78',78,'2077-01-01','{76,76}'),
(79,'a','string79',79,'2078-01-01','{77,77}'),
(79,'b','string80',80,'2079-01-01','{78,78}'),
(81,'a','string81',81,'2080-01-01','{79,79}'),
(81,'b','string82',82,'2081-01-01','{80,80}'),
(83,'a','string83',83,'2082-01-01','{81,81}'),
(83,'b','string84',84,'2083-01-01','{82,82}'),
(85,'a','string85',85,'2084-01-01','{83,83}'),
(85,'b','string86',86,'2085-01-01','{84,84}'),
(87,'a','string87',87,'2086-01-01','{85,85}'),
(87,'b','string88',88,'2087-01-01','{86,86}'),
(89,'a','string89',89,'2088-01-01','{87,87}'),
(89,'b','string90',90,'2089-01-01','{88,88}'),
(91,'a','string91',91,'2090-01-01','{89,89}'),
(91,'b','string92',92,'2091-01-01','{90,90}'),
(93,'a','string93',93,'2092-01-01','{91,91}'),
(93,'b','string94',94,'2093-01-01','{92,92}'),
(95,'a','string95',95,'2094-01-01','{93,93}'),
(95,'b','string96',96,'2095-01-01','{94,94}'),
(97,'a','string97',97,'2096-01-01','{95,95}'),
(97,'b','string98',98,'2097-01-01','{96,96}'),
(99,'a','string99',99,'2098-01-01','{97,97}'),
(99,'b','string100',100,'2099-01-01','{98,98}'),
(101,'a',NULL,NULL,NULL,NULL),
(101,'b',NULL,NULL,NULL,NULL),
(103,'a',NULL,NULL,NULL,NULL),
(103,'b',NULL,NULL,NULL,NULL),
(105,'a',NULL,NULL,NULL,NULL);

ALTER TABLE ONLY "filter_sort"
    ADD CONSTRAINT "filter_sort_pkey" PRIMARY KEY (mathesar_id, str_id);
