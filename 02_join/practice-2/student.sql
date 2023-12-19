DROP TABLE IF EXISTS student;

CREATE TABLE student (
  id integer primary key autoincrement ,
  name varchar(255) default NULL,
  year mediumint default NULL,
  major TEXT default NULL,
  gpa mediumint default NULL
);

INSERT INTO student (name,year,major,gpa)
VALUES
  ('MacKensie Carrillo',2013,'EE',3),
  ('Colby Franklin',2017,'EE',5),
  ('Maite Beck',2021,'CSE',4),
  ('Yvette Clayton',2018,'CSE',3),
  ('Ezekiel Watkins',1999,'EE',3),
  ('Daniel Murray',2000,'ME',3),
  ('Indigo Walker',1998,'EE',2),
  ('Tatyana Houston',2008,'EE',4),
  ('Althea Rutledge',2021,'ME',1),
  ('Keith Dawson',2002,'CSE',3);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Ria Dodson',2003,'ME',3),
  ('Hedley Watts',2011,'EE',2),
  ('Lila Waters',2007,'EE',5),
  ('Germane Mcfadden',2022,'EE',2),
  ('Thor Green',1999,'ME',4),
  ('Autumn Phelps',2011,'EE',5),
  ('Medge Craig',2010,'EE',2),
  ('Barrett Dalton',2004,'EE',2),
  ('Ursa Nichols',1998,'EE',5),
  ('Althea Valentine',1995,'CSE',2);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Shellie Ashley',1995,'EE',3),
  ('Audrey Hartman',2015,'EE',3),
  ('Caleb Moran',2005,'ME',2),
  ('Hasad Merrill',1999,'ME',1),
  ('Davis Henderson',2001,'ME',3),
  ('Dante Farmer',2009,'EE',5),
  ('Madonna Petersen',2022,'EE',4),
  ('Kasimir Herring',2005,'EE',3),
  ('Rama Stone',2013,'EE',2),
  ('Karly Butler',2010,'EE',1);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Leandra Sweet',1990,'ME',5),
  ('Flavia Lowe',2021,'EE',3),
  ('Danielle Schroeder',1994,'EE',2),
  ('Donovan Vega',1990,'CSE',3),
  ('Cody Owen',1997,'EE',2),
  ('Madeline Fernandez',2001,'EE',2),
  ('Lucius Sexton',2022,'EE',2),
  ('Quamar Reid',1997,'CSE',4),
  ('Emerson Valdez',2004,'EE',2),
  ('Astra Baxter',1997,'EE',4);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Marsden Crosby',2014,'EE',3),
  ('Harlan Chang',2019,'CSE',2),
  ('Deacon Joyce',1993,'CSE',2),
  ('Irma Cole',1997,'EE',3),
  ('Hiram Bright',2000,'CSE',2),
  ('Bree Williamson',1994,'EE',5),
  ('Gray Farley',1996,'EE',1),
  ('Eagan Hatfield',2008,'EE',3),
  ('Ayanna Calhoun',2022,'CSE',4),
  ('Hunter Cobb',2019,'EE',4);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Jaden Rasmussen',2023,'EE',5),
  ('Destiny Collins',2011,'EE',3),
  ('Marvin Little',1999,'ME',5),
  ('Wyatt Larson',2007,'EE',4),
  ('Angelica Peterson',2015,'EE',1),
  ('Wesley Carter',2007,'EE',5),
  ('Alan Flores',2009,'EE',4),
  ('Simon Horton',2000,'EE',1),
  ('Penelope Mclaughlin',2022,'CSE',2),
  ('Holmes Hebert',1997,'EE',5);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Garrett Rich',2002,'EE',5),
  ('Herman Brown',2004,'CSE',1),
  ('Bethany Sheppard',2018,'EE',1),
  ('Hector Buckner',1990,'EE',4),
  ('Fuller Pratt',1997,'EE',4),
  ('Gregory Hewitt',1993,'EE',5),
  ('Sybil Gallegos',1993,'EE',4),
  ('Ezekiel Baird',2011,'CSE',2),
  ('Dane Joyce',1999,'EE',5),
  ('Kiona Roman',1991,'CSE',4);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Erich Flowers',2002,'EE',5),
  ('Armando Frazier',2006,'ME',5),
  ('Aimee Mcbride',2001,'EE',5),
  ('Eric Blanchard',1996,'EE',1),
  ('Audra Harmon',2022,'EE',2),
  ('Jamal Roberson',2010,'EE',5),
  ('Wing Bright',2017,'EE',2),
  ('Elaine Chandler',2002,'EE',4),
  ('Ursula Green',1998,'ME',4),
  ('Imani Beard',2011,'CSE',3);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Ronan Hewitt',2014,'EE',4),
  ('Cyrus Velez',1998,'EE',3),
  ('Bianca Holmes',2010,'ME',2),
  ('Ria Sargent',1992,'EE',3),
  ('Demetria Martin',2023,'EE',4),
  ('Doris Watts',1998,'CSE',1),
  ('Damon Hogan',2021,'CSE',2),
  ('Luke Fowler',2001,'EE',2),
  ('Joelle Santana',2005,'ME',2),
  ('Minerva Ward',1998,'EE',2);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Buffy Dixon',2023,'EE',4),
  ('Aaron Little',1991,'ME',4),
  ('Molly Allen',2012,'CSE',4),
  ('Damian Sanders',2006,'CSE',3),
  ('Zahir Sullivan',1994,'ME',1),
  ('Vaughan Guzman',1992,'CSE',2),
  ('Stacey Rutledge',2011,'CSE',2),
  ('Aristotle Haney',2002,'ME',5),
  ('Warren Sawyer',1993,'ME',2),
  ('Honorato Carney',1991,'EE',2);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Chaney Leblanc',2016,'EE',2),
  ('Unity Miller',1991,'EE',1),
  ('Oleg Dyer',2016,'ME',2),
  ('Jackson Cobb',2002,'EE',4),
  ('Alexa Lawson',1998,'ME',2),
  ('Athena Sexton',2017,'EE',3),
  ('Hakeem Burke',2018,'EE',2),
  ('Damon Reilly',2007,'EE',3),
  ('Hashim Ramsey',2007,'ME',2),
  ('Irma Rich',1993,'CSE',4);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Alfonso Spence',2012,'ME',2),
  ('Elmo Cardenas',2015,'CSE',5),
  ('Jarrod Brooks',1995,'CSE',3),
  ('Ori Carey',2011,'CSE',4),
  ('Breanna Blanchard',2008,'EE',1),
  ('Vaughan Pugh',2004,'EE',2),
  ('Connor Clark',2008,'EE',5),
  ('Conan Hood',1995,'EE',3),
  ('Thane Rowland',1994,'EE',4),
  ('Evan Sykes',2015,'ME',2);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Molly Dyer',1998,'EE',2),
  ('Chaim Hampton',2017,'ME',3),
  ('Burke Berg',2020,'EE',4),
  ('Abraham Abbott',2007,'ME',1),
  ('Tamekah Barker',2017,'ME',2),
  ('Kenneth Waller',2005,'EE',4),
  ('Barclay Adkins',2007,'CSE',4),
  ('Vivian Mccormick',1995,'ME',2),
  ('Brenna Jefferson',1998,'EE',5),
  ('Nathaniel Kerr',2000,'CSE',1);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Petra Kelley',2000,'EE',4),
  ('Isadora Pollard',1991,'CSE',5),
  ('Ocean Frost',2023,'CSE',4),
  ('Eagan Watkins',2016,'ME',2),
  ('Nigel Wolfe',2013,'EE',3),
  ('Kirsten Clayton',1992,'EE',4),
  ('Alexander Hurley',1995,'CSE',3),
  ('Susan Anthony',2000,'EE',4),
  ('Daria Heath',2007,'CSE',4),
  ('Catherine O''donnell',2006,'EE',5);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Merritt Crawford',2012,'ME',1),
  ('Levi Hodges',2000,'EE',2),
  ('Cadman Roman',2007,'ME',1),
  ('Daphne Knox',2006,'CSE',1),
  ('Griffith Weaver',2017,'CSE',5),
  ('William Ellis',2018,'EE',1),
  ('Reagan Dillon',1993,'EE',2),
  ('Bertha Morales',2011,'ME',4),
  ('Elliott Hurley',1994,'CSE',4),
  ('Allegra Goodman',1994,'EE',5);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Graham Farmer',2010,'CSE',1),
  ('Rhona Simon',1998,'EE',2),
  ('Ramona Ramsey',2022,'CSE',3),
  ('Kim Thomas',2013,'EE',5),
  ('Melanie Ellis',2002,'ME',4),
  ('Ignatius Smith',2014,'CSE',2),
  ('Gary Berg',2017,'CSE',1),
  ('Hollee Mcdaniel',2017,'EE',2),
  ('Savannah Heath',2018,'CSE',1),
  ('Yuli Wiggins',1997,'CSE',4);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Lars Montgomery',2015,'EE',1),
  ('Libby Mccullough',1992,'CSE',2),
  ('Alan Hurley',1991,'EE',5),
  ('Keaton Bass',2002,'CSE',1),
  ('Aquila Gomez',2002,'CSE',2),
  ('Christian Jacobson',2018,'ME',3),
  ('Gray King',2016,'EE',2),
  ('Mia Montgomery',2007,'CSE',5),
  ('Ignacia Cannon',2018,'EE',2),
  ('Ivan Woods',2000,'EE',4);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Perry Harmon',1995,'EE',2),
  ('Marsden Thompson',2015,'EE',4),
  ('Kennedy Woods',2012,'EE',4),
  ('Lenore Conway',2020,'ME',1),
  ('Madaline Moses',2016,'ME',2),
  ('Desirae Gardner',2022,'EE',3),
  ('Preston Gates',2002,'EE',2),
  ('Guinevere Mejia',2003,'EE',3),
  ('Chaim Fisher',1993,'EE',2),
  ('Eugenia Grimes',2017,'CSE',2);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Adrienne Jefferson',1999,'EE',2),
  ('Hasad Ramsey',1999,'ME',3),
  ('Nigel Mendez',2004,'CSE',4),
  ('Ursula Carson',2008,'EE',3),
  ('Adara Spears',2000,'EE',4),
  ('Darrel Zimmerman',1999,'CSE',2),
  ('Clarke Bailey',2002,'EE',5),
  ('Abigail Sutton',1993,'CSE',5),
  ('Yvonne Holden',2014,'EE',4),
  ('Nevada Santana',2022,'EE',3);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Christian Stark',2022,'CSE',3),
  ('Wallace Mcclain',2007,'EE',3),
  ('Hiram Vazquez',2012,'CSE',4),
  ('Yardley Bell',2018,'CSE',1),
  ('Halla Carrillo',2006,'ME',4),
  ('Kylan Bolton',1996,'EE',2),
  ('Colby Guy',2014,'CSE',4),
  ('Vance Ratliff',2010,'EE',5),
  ('Lars Buckley',1993,'CSE',5),
  ('Azalia Mosley',2001,'CSE',1);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Brett Stanton',2021,'EE',3),
  ('Mason Richard',1993,'EE',3),
  ('Levi Woods',2007,'CSE',2),
  ('Donovan Beach',2011,'EE',3),
  ('Duncan Yates',2000,'EE',5),
  ('Germaine Vega',1992,'EE',2),
  ('Ella Owen',1992,'EE',4),
  ('Christen Anderson',1998,'ME',4),
  ('Portia Estes',2006,'EE',1),
  ('Xaviera Mullins',1992,'ME',3);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Brianna Hunt',2010,'ME',2),
  ('Jakeem Franks',2007,'CSE',4),
  ('Dora Todd',2008,'EE',2),
  ('Amery Glover',2014,'CSE',4),
  ('Craig Cash',2006,'CSE',3),
  ('Constance Hopper',2023,'EE',2),
  ('Yeo Lara',1998,'CSE',2),
  ('Zane Hale',2010,'ME',3),
  ('Cade Huber',2000,'EE',4),
  ('Aurelia Hays',2010,'ME',2);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Amery Heath',2012,'ME',4),
  ('Naida Kelley',2003,'ME',2),
  ('Ingrid Lloyd',2010,'EE',2),
  ('Vernon Perkins',2018,'ME',1),
  ('Troy Cabrera',2021,'EE',3),
  ('Dante Hendrix',2013,'EE',3),
  ('Audrey Lane',2008,'EE',2),
  ('Wade Decker',2002,'EE',1),
  ('Marvin Day',2014,'EE',2),
  ('Dane Larson',1990,'CSE',4);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Hope Rasmussen',2021,'EE',4),
  ('Herman Padilla',1999,'ME',4),
  ('Dorian Kaufman',2008,'EE',5),
  ('Hedley Garrett',1994,'ME',4),
  ('Drew Medina',1999,'EE',2),
  ('Dale Gray',2012,'EE',3),
  ('Deacon Patton',2022,'ME',4),
  ('Chandler Burch',2015,'EE',2),
  ('Tanisha Figueroa',1995,'ME',1),
  ('Kimberly Callahan',1992,'EE',3);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Michael Burton',2006,'EE',1),
  ('Jaime Chen',2009,'CSE',3),
  ('Jakeem Torres',2006,'CSE',3),
  ('Amaya Puckett',1997,'EE',2),
  ('Jennifer Whitehead',1999,'EE',2),
  ('Nelle Leonard',2012,'ME',3),
  ('Lois Brooks',2021,'EE',4),
  ('Wylie Daugherty',2005,'EE',5),
  ('Penelope Fry',2016,'EE',4),
  ('Hoyt Garrett',2011,'CSE',3);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Quail Shaffer',2004,'CSE',2),
  ('Lawrence Ortiz',2015,'ME',2),
  ('Caryn Clark',2009,'CSE',2),
  ('Kellie Wells',2020,'EE',2),
  ('Zephr Morrow',1991,'EE',3),
  ('Dexter Knox',1992,'EE',2),
  ('Ethan Sanchez',2020,'CSE',4),
  ('Xaviera David',2002,'CSE',5),
  ('Kamal Juarez',1999,'CSE',3),
  ('George Barron',2010,'EE',1);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Ramona Curry',2013,'EE',1),
  ('Lev Graves',2004,'EE',1),
  ('Elizabeth Chaney',2011,'CSE',5),
  ('Hadassah Farmer',2014,'EE',3),
  ('Ciaran Jarvis',1996,'CSE',1),
  ('Neve Britt',2020,'EE',2),
  ('Maggy Blanchard',2004,'EE',3),
  ('Clayton Stanley',2017,'EE',4),
  ('Quinn Reed',2005,'EE',4),
  ('Minerva Franks',2019,'CSE',4);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Kyla Kinney',2001,'EE',2),
  ('Isadora Gilmore',2001,'ME',5),
  ('Solomon Miranda',2001,'ME',3),
  ('Gretchen O''connor',2003,'ME',2),
  ('Alika Ball',2008,'ME',3),
  ('Calvin Talley',2015,'CSE',2),
  ('Gary Long',1990,'CSE',3),
  ('Hashim Rosales',2007,'EE',1),
  ('Fletcher Calderon',2002,'CSE',4),
  ('Tara Robinson',1998,'ME',2);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Aspen Foley',1999,'ME',4),
  ('Carla Robles',1997,'CSE',3),
  ('Ramona Webb',2009,'ME',1),
  ('Jasper Mullins',2013,'CSE',2),
  ('Calvin Wade',2020,'CSE',2),
  ('Kimberley Barr',1998,'ME',2),
  ('Joelle Ramsey',1999,'CSE',2),
  ('Jonas Vega',2018,'EE',4),
  ('Otto Robbins',1993,'CSE',2),
  ('Gloria Walter',2018,'CSE',2);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Anne Lambert',2005,'CSE',4),
  ('Jarrod Duffy',2000,'EE',3),
  ('Len Barker',2017,'EE',3),
  ('Lars Saunders',2014,'ME',1),
  ('Pandora Schneider',2015,'CSE',2),
  ('Britanni Summers',2007,'ME',5),
  ('Camille Webster',1999,'EE',3),
  ('Lewis Martin',2018,'EE',4),
  ('Brent Conley',2000,'ME',5),
  ('Ciara Good',1996,'CSE',4);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Nasim Conley',1993,'ME',2),
  ('Warren Goodman',1995,'EE',4),
  ('Alec Valencia',1992,'ME',2),
  ('Nyssa Griffin',2011,'CSE',3),
  ('Dante Fitzgerald',2021,'CSE',4),
  ('Steven Best',2022,'EE',4),
  ('Brenna Ochoa',1997,'ME',4),
  ('Olga Nolan',2020,'EE',5),
  ('Nero Juarez',2000,'EE',2),
  ('Marah Mullen',1993,'EE',5);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Adena Fuller',2007,'EE',3),
  ('Damian Blanchard',1994,'ME',3),
  ('Martina Webb',2003,'EE',1),
  ('Pamela Sexton',2018,'CSE',4),
  ('Axel Sanders',2019,'EE',2),
  ('Abra Bean',1996,'CSE',5),
  ('Leo Oneil',2012,'EE',3),
  ('Graiden Jackson',1990,'EE',1),
  ('Russell Mcclure',2020,'EE',2),
  ('Maia Harding',2008,'CSE',3);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Kaye Shelton',2023,'EE',2),
  ('Rigel Pacheco',2022,'EE',5),
  ('Charissa Andrews',2009,'EE',4),
  ('James Delgado',2013,'CSE',5),
  ('Alexa Dunlap',2000,'EE',4),
  ('Alan Hatfield',1993,'EE',3),
  ('Ian Bishop',2013,'EE',4),
  ('Chloe Hayden',2000,'ME',4),
  ('Bianca Hart',2019,'EE',1),
  ('Serena French',2022,'EE',2);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Lucian Marquez',2007,'ME',3),
  ('Aristotle Frank',2017,'EE',4),
  ('Naomi Hebert',2008,'ME',1),
  ('Ulric Lewis',2010,'EE',1),
  ('Phyllis Jacobson',1998,'CSE',3),
  ('Moses Alvarado',2021,'EE',1),
  ('Yasir Baxter',2013,'CSE',4),
  ('Omar Evans',2015,'EE',5),
  ('Nash Morse',2019,'CSE',2),
  ('Troy Decker',2016,'EE',3);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Miranda Macdonald',1990,'ME',2),
  ('Ainsley Davidson',2014,'EE',4),
  ('Keaton Thompson',2007,'CSE',2),
  ('Merrill Hansen',2010,'EE',4),
  ('Kiona Wolf',2022,'ME',3),
  ('Anne Christensen',1998,'CSE',5),
  ('Prescott Jenkins',1999,'ME',5),
  ('Jakeem Joyce',2011,'CSE',2),
  ('Sasha Collier',1992,'ME',3),
  ('Kameko Goodwin',2019,'EE',3);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Graham Calhoun',2013,'ME',1),
  ('Acton Keith',2014,'ME',5),
  ('Rajah Jenkins',2001,'EE',4),
  ('Callum Young',2001,'EE',3),
  ('Cyrus Bentley',2021,'EE',1),
  ('Cara Delaney',2010,'ME',1),
  ('Laura Kirkland',2022,'CSE',3),
  ('Hoyt Bush',2021,'CSE',3),
  ('Sophia Garrett',2006,'ME',4),
  ('Yolanda West',2022,'ME',4);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Lane Wagner',1994,'CSE',4),
  ('Gloria Garza',2003,'CSE',2),
  ('Wesley Harrison',2003,'EE',2),
  ('Jade Tran',2010,'EE',3),
  ('Patricia Butler',1999,'EE',2),
  ('Quamar Mcfarland',1995,'EE',2),
  ('Tobias Cochran',1992,'ME',4),
  ('Clark Ochoa',2018,'EE',4),
  ('Rashad Garrett',2011,'ME',3),
  ('Malik Stout',2006,'EE',4);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Lars Ware',2016,'EE',4),
  ('Blossom Bolton',2012,'EE',2),
  ('Hunter Stokes',2016,'ME',4),
  ('Neil Franco',2015,'CSE',2),
  ('Katell Newman',1998,'EE',2),
  ('Laith Boyer',2019,'EE',3),
  ('Caesar Boone',2006,'EE',4),
  ('Solomon Snyder',1995,'EE',2),
  ('Orson Hickman',2010,'EE',2),
  ('Pearl Eaton',2021,'CSE',2);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Forrest Elliott',2020,'ME',2),
  ('Reuben Ferrell',2017,'EE',2),
  ('Daria Barnes',2011,'EE',3),
  ('Buckminster Cleveland',2014,'CSE',2),
  ('Joseph Preston',2016,'ME',2),
  ('Arthur Wheeler',1999,'EE',2),
  ('Reagan Warner',2017,'CSE',1),
  ('Eric Underwood',2017,'EE',1),
  ('Stella Coffey',2018,'ME',1),
  ('Kennan Mcguire',2006,'ME',3);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Amal Justice',2018,'EE',1),
  ('Evangeline Acevedo',1999,'CSE',2),
  ('Branden Macdonald',1999,'ME',4),
  ('Ifeoma Saunders',2011,'ME',5),
  ('Cain Olson',1993,'CSE',3),
  ('Darrel Evans',2001,'ME',4),
  ('Drew Olson',2016,'EE',2),
  ('Hector Cook',2019,'ME',3),
  ('Wade Larsen',2018,'ME',5),
  ('Cole Wyatt',2006,'EE',2);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Lee Melendez',2013,'EE',2),
  ('Oscar Meyer',1994,'CSE',1),
  ('Jonah Mendez',2004,'EE',5),
  ('Alfonso Cardenas',2002,'EE',2),
  ('Ria Puckett',2008,'EE',4),
  ('Berk Gallagher',2000,'CSE',3),
  ('Mona Moreno',2016,'EE',3),
  ('Farrah Bray',1992,'EE',2),
  ('Janna Sears',2010,'CSE',3),
  ('Francis Keller',2019,'EE',5);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Elijah Dennis',2022,'ME',5),
  ('Pamela Montoya',2023,'EE',1),
  ('Colorado Stevenson',2010,'ME',2),
  ('Gabriel Faulkner',2008,'EE',2),
  ('Miriam Gonzales',2006,'CSE',1),
  ('Gregory Andrews',2000,'ME',3),
  ('Iola Bates',1992,'CSE',5),
  ('Alvin Maynard',2001,'EE',2),
  ('Abbot Merrill',2005,'EE',4),
  ('Rhiannon Whitehead',2009,'EE',2);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Uta Burt',1992,'EE',4),
  ('Kane Roy',1992,'EE',2),
  ('Kelsie Brewer',1992,'ME',3),
  ('Ethan Benton',1998,'EE',1),
  ('Lacy Glenn',1998,'EE',3),
  ('Brenna Newman',1995,'CSE',3),
  ('Astra Duran',1991,'EE',3),
  ('Jocelyn Chang',2002,'CSE',5),
  ('Yoko Sanchez',2000,'EE',1),
  ('Wing Branch',1995,'ME',3);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Maris Fry',2018,'ME',3),
  ('Elmo Jacobson',2009,'CSE',3),
  ('Ann Foley',2012,'EE',2),
  ('Amaya Hardy',2005,'EE',1),
  ('Christopher Tyler',2017,'ME',2),
  ('Dustin Ball',2013,'CSE',3),
  ('Reagan Daniels',1991,'CSE',3),
  ('Alden Mayo',2004,'EE',2),
  ('Mechelle Pruitt',2015,'EE',1),
  ('Eric Wong',2023,'CSE',2);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Clio Nichols',2021,'CSE',1),
  ('Jamal Lester',2002,'EE',2),
  ('Hayfa Sears',2001,'EE',5),
  ('Dustin Wiggins',2007,'EE',3),
  ('Daryl Cox',1994,'CSE',4),
  ('Morgan Jenkins',2009,'ME',2),
  ('Demetrius Rutledge',2012,'ME',3),
  ('Britanni Morris',1992,'CSE',2),
  ('Kirsten Aguirre',2018,'ME',3),
  ('Mufutau Ayala',2013,'ME',4);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Reed Taylor',1990,'EE',2),
  ('Risa Garcia',2002,'EE',3),
  ('Leigh Tran',2017,'EE',4),
  ('Tate Leach',2018,'EE',2),
  ('Zahir Huffman',2014,'ME',3),
  ('William Harmon',2022,'EE',3),
  ('Orli Mcmahon',2008,'ME',1),
  ('Sonya Joseph',2006,'EE',3),
  ('Yoshio Mckenzie',1999,'ME',4),
  ('Vivien Wade',1999,'EE',4);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Quinlan Mcclure',1996,'EE',3),
  ('Quinn Sanchez',2000,'CSE',4),
  ('Andrew Norris',1991,'EE',5),
  ('Amelia Horne',2014,'EE',4),
  ('George Rich',2013,'EE',5),
  ('Sybill Newman',1995,'EE',3),
  ('Ifeoma Young',2011,'EE',2),
  ('Daniel Cochran',2001,'EE',2),
  ('Vanna Mccray',1992,'CSE',5),
  ('Berk Bowen',2010,'EE',2);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Chester Browning',2002,'EE',2),
  ('Mason Church',2011,'EE',4),
  ('Jared Bowers',1995,'ME',2),
  ('Wayne Prince',2013,'EE',3),
  ('Cadman Murray',2005,'EE',1),
  ('Breanna Pierce',1990,'CSE',2),
  ('Cullen Goodwin',2018,'CSE',3),
  ('Shannon Case',2021,'EE',3),
  ('Paul Cervantes',2012,'CSE',4),
  ('Samson Larson',2000,'ME',2);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Moses Webster',1994,'EE',2),
  ('Danielle Manning',2003,'CSE',4),
  ('Dominic Sweet',2021,'EE',2),
  ('Shoshana Reese',2003,'EE',3),
  ('Rahim Richmond',2009,'EE',4),
  ('Quon Pacheco',2012,'CSE',4),
  ('Iris Leblanc',2002,'EE',3),
  ('Tyrone Cherry',2001,'EE',4),
  ('Alvin Cherry',2008,'EE',4),
  ('Lael Pace',1999,'CSE',1);
INSERT INTO student (name,year,major,gpa)
VALUES
  ('Alfreda Herrera',2020,'EE',4),
  ('Ivan Keller',2022,'EE',2),
  ('Josephine Dominguez',2011,'EE',2),
  ('Kylee Holland',2019,'ME',3),
  ('Reece Mcneil',2014,'EE',1),
  ('Maggie Bright',2002,'CSE',3),
  ('Leslie Vaughan',2019,'EE',4),
  ('Echo Norton',2013,'ME',3),
  ('Candice Montoya',1990,'EE',3),
  ('Perry Sexton',2010,'ME',2);
