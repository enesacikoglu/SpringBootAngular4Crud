/* User */
insert into user (user_id, password, first_name, last_name, email, company, phone, address1, address2, country, postal,
                  role, is_active, is_blocked, security_provider_id, default_customer_id, secret_question,
                  secret_answer, enable_beta_testing, enable_renewal)
values ('demo', 'demo', 'Mrinmoy', 'Majumdar', 'arivera2@joomla.org', 'Abshire Inc', '7-(740)701-4547',
        '80429 Garrison Crossing', '4967', 'USA', '64890', 'USER', 1, 0, 10001, 20000, 'Diverse', 'Yellow', 0, 0),
       ('admin', 'admin', 'Theresa', 'Russell', 'trussell1@about.me', 'Glover, Adams and Bins', '383-(779)851-3208',
        '30874 Graceland Terrace', '99152', 'USA', '51065', 'ADMIN', 1, 0, 10001, 20000, 'knowledge base', 'Mauv', 1,
        0),
       ('user', 'user', 'Virginia', 'Reynolds', 'vreynolds0@slashdot.org', 'Rippin, Osinski and Beatty',
        '84-(228)809-9998', '0118 Burrows Plaza', '496', 'USA', '94086', 'USER', 1, 0, 10001, 20000, 'Innovative',
        'Turquoise', 1, 1),
       ('jowens3', 'jowens3', 'Judy', 'Owens', 'jowens3@hp.com', 'Altenwerth, Fisher and Heidenreich',
        '30-(772)268-8227', '98 Loeprich Way', '447', 'Greece', null, 'USER', 0, 0, 10001, 20001, 'capacity', 'Fuscia',
        1, 1),
       ('kburns4', 'kburns4', 'Kelly', 'Burns', 'kburns4@icio.us', 'McCullough-Morar', '86-(857)185-5740',
        '1638 Basil Alley', '56297', 'China', null, 'ADMIN', 1, 0, 10000, 20002, 'user-facing', 'Crimson', 1, 1),
       ('jshaw5', 'jshaw5', 'Julie', 'Shaw', 'jshaw5@opera.com', 'Steuber-Okuneva', '1-(871)375-6188',
        '389 Myrtle Pass', '41444', 'Canada', null, 'ADMIN', 1, 1, 10000, 20000, 'software', 'Green', 0, 1),
       ('pgilbert6', 'pgilbert6', 'Peter', 'Gilbert', 'pgilbert6@eepurl.com', 'Robel Inc', '52-(372)555-4687',
        '11522 Fuller Avenue', '5', 'Mexico', '39230', 'ADMIN', 1, 1, 10000, 20000, 'multi-state', 'Puce', 1, 1),
       ('jjacobs7', 'jjacobs7', 'Justin', 'Jacobs', 'jjacobs7@google.co.uk', 'Harris-Bashirian', '963-(199)359-2552',
        '95012 Hanover Street', '2377', 'India', null, 'USER', 1, 0, 10000, 20002, 'motivating', 'Crimson', 1, 0),
       ('kbennett8', 'kbennett8', 'Kevin', 'Bennett', 'kbennett8@hostgator.com', 'Leannon Inc', '62-(892)710-5713',
        '459 Coleman Drive', '397', 'Indonesia', null, 'ADMIN', 0, 0, 10001, 20000, 'Exclusive', 'Purple', 1, 1),
       ('cmurphy9', 'cmurphy9', 'Chris', 'Murphy', 'cmurphy9@over-blog.com', 'Mosciski LLC', '64-(272)961-0086',
        '2 Ludington Point', '7', 'New Zealand', null, 'ADMIN', 0, 1, 10000, 20000, 'empowering', 'Maroon', 0, 1);

/* Employees */
insert into employees (id, last_name, first_name, email, phone, address1, address2, city, state, postal_code, country,
                       avatar, job_title, department, manager_id)
values (201, 'Harris', 'George', 'gharris0@pagesperso-orange.fr', '1-(210)270-8536', '2 Bayside Drive', null,
        'San Antonio', 'Texas', '78240', 'United States',
        'https://robohash.org/modilaboriosammolestiae.bmp?size=50x50&set=set1', 'Administrative Assistant I', 'Toys',
        null)
     , (202, 'Hayes', 'Rachel', 'rhayes1@si.edu', '1-(971)797-2729', '30 Anhalt Street', null, 'Portland', 'Oregon',
        '97232', 'United States', 'https://robohash.org/seddistinctiodolorem.jpg?size=50x50&set=set1',
        'Design Engineer', 'Books', null)
     , (203, 'Palmer', 'Anthony', 'apalmer2@posterous.com', '1-(702)984-2108', '02809 4th Pass', null,
        'North Las Vegas', 'Nevada', '89036', 'United States',
        'https://robohash.org/vitaererumdolore.png?size=50x50&set=set1', 'Health Coach II', 'Toys', null)
     , (204, 'Alvarez', 'Laura', 'lalvarez3@time.com', '1-(518)328-2658', '647 Lakeland Road', null, 'Albany',
        'New York', '12210', 'United States', 'https://robohash.org/nobisplaceatquisquam.jpg?size=50x50&set=set1',
        'Computer Systems Analyst II', 'Health', null)
     , (205, 'Reynolds', 'Annie', 'areynolds4@nasa.gov', '1-(775)838-2203', '163 Carey Street', null, 'Reno', 'Nevada',
        '89550', 'United States', 'https://robohash.org/praesentiumdoloremrerum.png?size=50x50&set=set1',
        'Senior Quality Engineer', 'Kids', null)
     , (206, 'Henry', 'Joe', 'jhenry5@bbb.org', '1-(682)563-2229', '1 Harper Circle', null, 'Fort Worth', 'Texas',
        '76178', 'United States', 'https://robohash.org/earumiurevoluptas.jpg?size=50x50&set=set1',
        'Chief Design Engineer', 'Electronics', null)
     , (207, 'Willis', 'Willie', 'wwillis6@berkeley.edu', '1-(317)654-6888', '641 Kropf Parkway', null, 'Indianapolis',
        'Indiana', '46216', 'United States', 'https://robohash.org/suntsitnecessitatibus.png?size=50x50&set=set1',
        'Structural Analysis Engineer', 'Shoes', null)
     , (208, 'Lawrence', 'Keith', 'klawrence7@discovery.com', '1-(501)583-8851', '2184 Melby Crossing', null,
        'Little Rock', 'Arkansas', '72222', 'United States',
        'https://robohash.org/delenitiomnisconsequatur.jpg?size=50x50&set=set1', 'VP Quality Control', 'Outdoors', null)
     , (209, 'Johnston', 'Tina', 'tjohnston8@alexa.com', '1-(901)128-9976', '72 Hauk Road', null, 'Memphis',
        'Tennessee', '38114', 'United States', 'https://robohash.org/voluptasautmaiores.png?size=50x50&set=set1',
        'Assistant Media Planner', 'Electronics', null)
     , (210, 'Burns', 'Lisa', 'lburns9@taobao.com', '1-(585)113-8402', '99 Manufacturers Drive', null, 'Rochester',
        'New York', '14624', 'United States', 'https://robohash.org/illumsinttempore.jpg?size=50x50&set=set1',
        'Operator', 'Industrial', null)
     , (211, 'Stone', 'Howard', 'hstonea@ucsd.edu', '1-(202)958-2516', '03 Anthes Center', null, 'Washington',
        'District of Columbia', '20425', 'United States', 'https://robohash.org/eautet.bmp?size=50x50&set=set1',
        'Account Executive', 'Electronics', null)
     , (212, 'Brown', 'Julie', 'jbrownb@squidoo.com', '1-(217)741-6449', '37574 4th Drive', null, 'Springfield',
        'Illinois', '62705', 'United States', 'https://robohash.org/laborumtotameveniet.png?size=50x50&set=set1',
        'Analog Circuit Design manager', 'Electronics', null)
     , (213, 'Turner', 'Edward', 'eturnerc@theatlantic.com', '1-(701)353-1996', '3 Bultman Circle', null, 'Fargo',
        'North Dakota', '58122', 'United States', 'https://robohash.org/sedutporro.png?size=50x50&set=set1',
        'Structural Engineer', 'Computers', null)
     , (214, 'Nichols', 'Douglas', 'dnicholsd@fda.gov', '1-(302)771-6486', '5150 Holmberg Way', null, 'Wilmington',
        'Delaware', '19805', 'United States', 'https://robohash.org/blanditiiscommodiet.png?size=50x50&set=set1',
        'Editor', 'Outdoors', null)
     , (215, 'Gilbert', 'Jessica', 'jgilberte@infoseek.co.jp', '1-(320)607-0289', '32 Summit Park', null, 'Saint Cloud',
        'Minnesota', '56372', 'United States', 'https://robohash.org/providentaccusamussed.bmp?size=50x50&set=set1',
        'Account Executive', 'Baby', null)
     , (216, 'Hernandez', 'Kathy', 'khernandezf@shinystat.com', '1-(210)733-3380', '24 Merrick Way', null,
        'San Antonio', 'Texas', '78225', 'United States', 'https://robohash.org/utfaciliset.png?size=50x50&set=set1',
        'Junior Executive', 'Movies', null)
     , (217, 'Sullivan', 'Lillian', 'lsullivang@flavors.me', '1-(904)885-2053', '42 Manufacturers Pass', null,
        'Jacksonville', 'Florida', '32215', 'United States', 'https://robohash.org/quiaetaut.jpg?size=50x50&set=set1',
        'Engineer I', 'Sports', null)
     , (218, 'Jenkins', 'Frances', 'fjenkinsh@huffingtonpost.com', '1-(512)764-3809', '69255 Dakota Plaza', null,
        'Austin', 'Texas', '78769', 'United States',
        'https://robohash.org/voluptatemnamaliquam.bmp?size=50x50&set=set1', 'Developer IV', 'Baby', null)
     , (219, 'Myers', 'Roger', 'rmyersi@alexa.com', '1-(480)583-9583', '3 Eagle Crest Place', null, 'Gilbert',
        'Arizona', '85297', 'United States', 'https://robohash.org/consequaturutquo.png?size=50x50&set=set1',
        'Account Executive', 'Beauty', null)
     , (220, 'Hunter', 'Bonnie', 'bhunterj@ucsd.edu', '1-(320)933-5140', '99 Arapahoe Terrace', null, 'Saint Cloud',
        'Minnesota', '56372', 'United States', 'https://robohash.org/etfacilisquo.bmp?size=50x50&set=set1',
        'Analog Circuit Design manager', 'Baby', null);

/* Books */
insert into books (id, book_code, book_name, description, standard_cost, list_price, target_level, reorder_level,
                   minimum_reorder_quantity, quantity_per_unit, discontinued, category)
values (601, 'B1', 'Game Of Thrones I.', null, 47.09, 23.39, 75, 10, 10, 50, 1, 'Adventure')
     , (602, 'B2', 'Game Of Thrones II.', null, 38.83, 93.84, 90, 15, 15, 56, 0, 'Adventure')
     , (603, 'B3', 'The 100', null, 82.83, 83.84, 95, 20, 30, 56, 0, 'Drama')
     , (604, 'B4', 'Introduction to Big Data', null, 82.83, 93.84, 180, 75, 50, 56, 0, 'Informative')
     , (605, 'B5', 'Wayward Pines II.', null, 88.83, 93.84, 40, 15, 15, 56, 0, 'Drama')
     , (606, 'B6', 'Thinking in Java', null, 63.88, 51.7, 75, 10, 20, 79, 1, 'Action')
     , (607, 'B7', 'Wayward Pines III.', null, 11.02, 13.98, 100, 30, 10, 92, 1, 'Drama')
     , (608, 'B8', 'Harry Potter and the Philosophers Stone', null, 58.44, 46.34, 75, 20, 20, 54, 1, 'Action')
     , (609, 'B9', 'C programming for experts', null, 47.58, 48.83, 50, 5, 15, 58, 1, 'Informative')
     , (610, 'B10', 'Conjuring', null, 15.81, 15.61, 120, 40, 30, 11, 1, 'Drama')
     , (611, 'B11', 'Game Of Thrones III.', null, 87.09, 72.39, 75, 25, 15, 50, 1, 'Adventure')
     , (612, 'B12', 'The Traveller', null, 82.83, 79.84, 50, 10, 5, 56, 0, 'Adventure')
     , (613, 'B13', 'Supernatural', null, 82.83, 93.84, 55, 10, 5, 56, 0, 'Drama')
     , (614, 'B14', 'Criminal Minds', null, 82.83, 93.84, 50, 10, 10, 56, 0, 'Drama')
     , (615, 'B15', 'Introduction to C++', null, 86.83, 93.84, 200, 80, 50, 56, 0, 'Informative')
     , (616, 'B16', 'Harry Potter and the Prisoner of Azkaban', null, 33.88, 71.76, 250, 100, 50, 79, 1, 'Action')
     , (617, 'B17', 'Harry Potter and the Goblet of Fire', null, 41.02, 60.98, 100, 30, 20, 92, 1, 'Action')
     , (618, 'B18', 'Harry Potter and the Chamber of Secrets', null, 53.44, 56.34, 75, 15, 10, 54, 1, 'Action')
     , (619, 'B19', 'Python for beginers', null, 57.58, 48.83, 75, 15, 15, 58, 1, 'Informative')
     , (620, 'B20', 'Wayward Pines I.', null, 17.81, 10.61, 80, 14, 10, 11, 1, 'Drama');

/* Customers */
insert into customers (id, last_name, first_name, email, company, phone, address1, address2, city, state, postal_code,
                       country)
values (1, 'Gray', 'Clarence', 'cgray0@rambler.ru', 'Jetpulse', '1-(260)615-5114', '02937 Merrick Avenue', null,
        'Fort Wayne', 'Indiana', '46805', 'United States')
     , (2, 'Cooper', 'Emily', 'ecooper1@macromedia.com', 'Skippad', '1-(251)614-5034', '60 Forster Crossing', null,
        'Mobile', 'Alabama', '36605', 'United States')
     , (3, 'Wilson', 'George', 'gwilson2@xinhuanet.com', 'Riffpath', '1-(901)445-9881', '52 Browning Center', null,
        'Memphis', 'Tennessee', '38181', 'United States')
     , (4, 'Mcdonald', 'Michael', 'mmcdonald3@twitter.com', 'Feedfire', '1-(419)743-7314', '85093 Jackson Park', null,
        'Toledo', 'Ohio', '43610', 'United States')
     , (5, 'Tucker', 'Lori', 'ltucker4@etsy.com', 'Oyondu', '1-(202)381-2663', '0706 Heffernan Pass', null,
        'Washington', 'District of Columbia', '20380', 'United States')
     , (6, 'Hansen', 'Lois', 'lhansen5@stumbleupon.com', 'Yozio', '1-(315)385-6866', '2 Ruskin Pass', null, 'Syracuse',
        'New York', '13251', 'United States')
     , (7, 'Grant', 'Frances', 'fgrant6@yale.edu', 'Eire', '1-(863)799-9068', '61402 Morning Court', null, 'Lakeland',
        'Florida', '33811', 'United States')
     , (8, 'Lewis', 'Catherine', 'clewis7@unesco.org', 'Realpoint', '1-(915)208-4997', '775 Messerschmidt Junction',
        null, 'El Paso', 'Texas', '88563', 'United States')
     , (9, 'Rogers', 'Edward', 'erogers8@guardian.co.uk', 'Quinu', '1-(971)934-2404', '7074 Montana Place', null,
        'Portland', 'Oregon', '97271', 'United States')
     , (10, 'Owens', 'Tina', 'towens9@earthlink.net', 'Blogtag', '1-(712)989-9002', '59039 Sachtjen Street', null,
        'Sioux City', 'Iowa', '51105', 'United States')
     , (11, 'Peterson', 'Fred', 'fpetersona@home.pl', 'Meedoo', '1-(202)228-9380', '55 Knutson Street', null,
        'Washington', 'District of Columbia', '20099', 'United States')
     , (12, 'Cox', 'Jason', 'jcoxb@slashdot.org', 'Tagcat', '1-(651)991-0172', '19 Hoffman Avenue', null, 'Saint Paul',
        'Minnesota', '55114', 'United States')
     , (13, 'Perez', 'Paul', 'pperezc@ask.com', 'Kazu', '1-(405)290-7944', '6336 Continental Circle', null,
        'Oklahoma City', 'Oklahoma', '73167', 'United States')
     , (14, 'Duncan', 'Anthony', 'aduncand@disqus.com', 'Aibox', '1-(727)705-8400', '17794 Northport Point', null,
        'Clearwater', 'Florida', '33763', 'United States')
     , (15, 'Graham', 'Sean', 'sgrahame@google.com.br', 'Tekfly', '1-(901)443-0731', '47493 Reinke Drive', null,
        'Memphis', 'Tennessee', '38131', 'United States')
     , (16, 'Simpson', 'Jose', 'jsimpsonf@youtube.com', 'Youspan', '1-(518)381-4659', '498 Carey Lane', null, 'Albany',
        'New York', '12262', 'United States')
     , (17, 'Simmons', 'Frances', 'fsimmonsg@webster.com', 'Feednation', '1-(251)473-1327', '44102 Montana Crossing',
        null, 'Mobile', 'Alabama', '36641', 'United States')
     , (18, 'Schmidt', 'John', 'jschmidth@vinaora.com', 'Topicblab', '1-(202)945-2079', '384 Goodland Pass', null,
        'Washington', 'District of Columbia', '20210', 'United States')
     , (19, 'West', 'Roger', 'rwesti@cornell.edu', 'Skilith', '1-(716)707-3907', '74 Nancy Pass', null, 'Buffalo',
        'New York', '14215', 'United States')
     , (20, 'Fields', 'Jesse', 'jfieldsj@shop-pro.jp', 'Vinte', '1-(617)810-9493', '602 Laurel Park', null, 'Boston',
        'Massachusetts', '02203', 'United States')
     , (21, 'Patterson', 'Kathy', 'kpattersonk@machines.org', 'Brainverse', '1-(806)803-9725', '67063 Spenser Junction',
        null, 'Amarillo', 'Texas', '79188', 'United States')
     , (22, 'Bell', 'Stephanie', 'sbelll@gravatar.com', 'DabZ', '1-(801)924-1975', '05 Gina Crossing', null,
        'Salt Lake City', 'Utah', '84145', 'United States')
     , (23, 'Turner', 'Martha', 'mturnerm@hp.com', 'Yadel', '1-(225)880-9134', '97789 Scofield Point', null,
        'Baton Rouge', 'Louisiana', '70894', 'United States')
     , (24, 'Ross', 'Richard', 'rrossn@weebly.com', 'Voolith', '1-(415)690-1916', '19 Briar Crest Alley', null,
        'San Francisco', 'California', '94164', 'United States')
     , (25, 'Stephens', 'Stephanie', 'sstephenso@times.co.uk', 'BlogXS', '1-(501)827-1408', '63291 Huxley Drive', null,
        'North Little Rock', 'Arkansas', '72118', 'United States')
     , (26, 'Sanchez', 'Diane', 'dsanchezp@sun.com', 'Tagtune', '1-(315)979-6793', '13 Oneill Junction', null,
        'Syracuse', 'New York', '13224', 'United States')
     , (27, 'Lawrence', 'Douglas', 'dlawrenceq@flickr.com', 'Browsetype', '1-(610)622-4045', '83224 Mallard Center',
        null, 'Philadelphia', 'Pennsylvania', '19109', 'United States')
     , (28, 'Hansen', 'Lori', 'lhansenr@patch.com', 'Einti', '1-(915)266-1989', '48410 Westport Circle', null,
        'El Paso', 'Texas', '88546', 'United States')
     , (29, 'Medina', 'Robert', 'rmedinas@uiuc.edu', 'Tambee', '1-(216)752-7216', '0562 Muir Trail', null, 'Cleveland',
        'Ohio', '44197', 'United States')
     , (30, 'Harrison', 'Shawn', 'sharrisont@webnode.com', 'Youopia', '1-(205)595-8085', '20 Mayer Center', null,
        'Birmingham', 'Alabama', '35205', 'United States')
     , (31, 'Alexander', 'Julia', 'jalexanderu@netsol.com', 'Oodoo', '1-(864)349-2185', '61859 West Point', null,
        'Greenville', 'South Carolina', '29610', 'United States')
     , (32, 'Stanley', 'Victor', 'vstanleyv@wikipedia.org', 'Centimia', '1-(561)507-7317', '08229 Glacier Hill Avenue',
        null, 'Boynton Beach', 'Florida', '33436', 'United States')
     , (33, 'Wheeler', 'Dennis', 'dwheelerw@indiatimes.com', 'Dynabox', '1-(419)889-2883', '409 American Ash Plaza',
        null, 'Lima', 'Ohio', '45807', 'United States')
     , (34, 'Frazier', 'Rachel', 'rfrazierx@sfgate.com', 'Skivee', '1-(314)249-1796', '7 Waxwing Court', null,
        'Saint Louis', 'Missouri', '63131', 'United States')
     , (35, 'Brooks', 'Shawn', 'sbrooksy@mediafire.com', 'Omba', '1-(971)854-8478', '614 Monica Terrace', null,
        'Portland', 'Oregon', '97240', 'United States')
     , (36, 'Coleman', 'Frank', 'fcolemanz@un.org', 'Agimba', '1-(318)446-4337', '4 Browning Park', null, 'Shreveport',
        'Louisiana', '71151', 'United States')
     , (37, 'Wright', 'Frank', 'fwright10@flickr.com', 'Meedoo', '1-(504)852-2553', '03446 Sheridan Trail', null,
        'New Orleans', 'Louisiana', '70183', 'United States')
     , (38, 'Perkins', 'Tina', 'tperkins11@va.gov', 'Rhybox', '1-(571)497-0755', '62 Grayhawk Lane', null, 'Fairfax',
        'Virginia', '22036', 'United States')
     , (39, 'Griffin', 'Ruth', 'rgriffin12@pcworld.com', 'Trudoo', '1-(504)312-7448', '29701 Jenifer Junction', null,
        'Metairie', 'Louisiana', '70033', 'United States')
     , (40, 'Sanchez', 'Sean', 'ssanchez13@bandcamp.com', 'Chatterpoint', '1-(316)535-7647', '10 Stuart Road', null,
        'Wichita', 'Kansas', '67260', 'United States')
     , (41, 'Harris', 'Linda', 'lharris14@ask.com', 'Blogpad', '1-(913)258-6547', '17635 Elka Alley', null,
        'Shawnee Mission', 'Kansas', '66205', 'United States')
     , (42, 'Wood', 'George', 'gwood15@imdb.com', 'Feednation', '1-(865)482-7169', '210 Anhalt Drive', null,
        'Knoxville', 'Tennessee', '37924', 'United States')
     , (43, 'Bennett', 'Nancy', 'nbennett16@netsol.com', 'Yodo', '1-(210)749-3167', '97861 Harper Pass', null,
        'San Antonio', 'Texas', '78260', 'United States')
     , (44, 'Pierce', 'Jesse', 'jpierce17@cyberchimps.com', 'Divanoodle', '1-(501)518-2300', '0 Columbus Terrace', null,
        'Little Rock', 'Arkansas', '72231', 'United States')
     , (45, 'Larson', 'Jerry', 'jlarson18@ustream.tv', 'Kazu', '1-(916)702-0977', '0422 Merry Court', null,
        'Sacramento', 'California', '95852', 'United States')
     , (46, 'Williams', 'Norma', 'nwilliams19@spiegel.de', 'Yacero', '1-(562)631-4036', '5779 Burning Wood Crossing',
        null, 'Long Beach', 'California', '90847', 'United States')
     , (47, 'Kelley', 'Louis', 'lkelley1a@wsj.com', 'Linkbuzz', '1-(432)286-2200', '04321 Northport Pass', null,
        'Odessa', 'Texas', '79764', 'United States')
     , (48, 'Mason', 'Ruby', 'rmason1b@census.gov', 'Trudeo', '1-(763)835-7627', '99219 5th Place', null, 'Monticello',
        'Minnesota', '55565', 'United States')
     , (49, 'Carr', 'Nicole', 'ncarr1c@yellowbook.com', 'Plajo', '1-(330)154-9245', '41 Monica Parkway', null,
        'Youngstown', 'Ohio', '44511', 'United States')
     , (50, 'Franklin', 'Michelle', 'mfranklin1d@ucoz.com', 'Wikivu', '1-(405)751-8906', '62 Rutledge Alley', null,
        'Oklahoma City', 'Oklahoma', '73147', 'United States')
     , (51, 'Hawkins', 'Larry', 'lhawkins1e@typepad.com', 'Tagpad', '1-(240)796-9270', '48 Columbus Road', null,
        'Hagerstown', 'Maryland', '21747', 'United States')
     , (52, 'Adams', 'Lillian', 'ladams1f@smugmug.com', 'Avamm', '1-(419)394-2363', '69708 West Avenue', null, 'Toledo',
        'Ohio', '43605', 'United States')
     , (53, 'Williamson', 'Janice', 'jwilliamson1g@sbwire.com', 'Wordware', '1-(212)576-0309', '311 Clemons Crossing',
        null, 'New York City', 'New York', '10090', 'United States')
     , (54, 'Mitchell', 'Lisa', 'lmitchell1h@live.com', 'Trudoo', '1-(225)794-6979', '17242 Eagan Terrace', null,
        'Baton Rouge', 'Louisiana', '70820', 'United States')
     , (55, 'Lawrence', 'Anna', 'alawrence1i@manage.com', 'Pixope', '1-(818)505-8262', '51241 Tennessee Point', null,
        'Santa Monica', 'California', '90405', 'United States')
     , (56, 'Scott', 'Margaret', 'mscott1j@arizona.edu', 'Mynte', '1-(202)265-0994', '117 Arapahoe Crossing', null,
        'Washington', 'District of Columbia', '20051', 'United States')
     , (57, 'Harper', 'Timothy', 'tharper1k@loc.gov', 'Trudoo', '1-(212)348-5025', '137 Commercial Court', null,
        'New York City', 'New York', '10175', 'United States')
     , (58, 'Frazier', 'Mary', 'mfrazier1l@mapy.cz', 'Photobug', '1-(214)939-0299', '281 Briar Crest Way', null,
        'Garland', 'Texas', '75049', 'United States')
     , (59, 'Young', 'Margaret', 'myoung1m@ehow.com', 'Realmix', '1-(318)144-2666', '537 Memorial Way', null,
        'Shreveport', 'Louisiana', '71105', 'United States')
     , (60, 'Sullivan', 'Phyllis', 'psullivan1n@jiathis.com', 'Demivee', '1-(518)361-7505', '117 Onsgard Crossing',
        null, 'Albany', 'New York', '12227', 'United States')
     , (61, 'Knight', 'Roy', 'rknight1o@qq.com', 'Meezzy', '1-(478)438-2599', '60 Kinsman Drive', null, 'Macon',
        'United Kingdom', '31210', 'United States')
     , (62, 'Ruiz', 'Andrea', 'aruiz1p@domainmarket.com', 'Fivespan', '1-(415)374-7204', '55455 Heffernan Plaza', null,
        'San Francisco', 'California', '94142', 'United States')
     , (63, 'Hayes', 'Heather', 'hhayes1q@odnoklasniki.ru', 'Twitternation', '1-(615)919-6350', '31 Banding Plaza',
        null, 'Jackson', 'Mississippi', '39296', 'United States')
     , (64, 'Chapman', 'Roy', 'rchapman1r@theguardian.com', 'BlogXS', '1-(941)329-4488', '27487 Fair Oaks Crossing',
        null, 'Sarasota', 'Florida', '34233', 'United States')
     , (65, 'Moore', 'Daniel', 'dmoore1s@google.co.uk', 'Twitterbridge', '1-(408)838-8747', '52377 Everett Court', null,
        'San Jose', 'California', '95194', 'United States')
     , (66, 'Day', 'Amy', 'aday1t@indiegogo.com', 'Brainverse', '1-(336)903-6679', '50107 Northport Circle', null,
        'Winston Salem', 'North Carolina', '27157', 'United States')
     , (67, 'Kelley', 'Jesse', 'jkelley1u@who.int', 'Zoomzone', '1-(304)183-6041', '31740 Bayside Trail', null,
        'Huntington', 'West Virginia', '25711', 'United States')
     , (68, 'Andrews', 'Andrea', 'aandrews1v@patch.com', 'Fanoodle', '1-(206)996-3516', '544 Lakewood Gardens Alley',
        null, 'Seattle', 'Washington', '98148', 'United States')
     , (69, 'Willis', 'Robert', 'rwillis1w@si.edu', 'Tazz', '1-(678)738-3382', '0998 Bellgrove Circle', null, 'Duluth',
        'United Kingdom', '30195', 'United States')
     , (70, 'Reid', 'Daniel', 'dreid1x@miitbeian.gov.cn', 'Babbleblab', '1-(786)539-0220', '2 New Castle Avenue', null,
        'Miami', 'Florida', '33111', 'United States')
     , (71, 'Roberts', 'Louise', 'lroberts1y@cpanel.net', 'Skippad', '1-(316)418-5043', '598 Mayfield Road', null,
        'Wichita', 'Kansas', '67210', 'United States')
     , (72, 'Harrison', 'Margaret', 'mharrison1z@globe.ne.jp', 'Zoovu', '1-(775)625-5357', '636 Maple Point', null,
        'Reno', 'Nevada', '89550', 'United States')
     , (73, 'Chapman', 'Peter', 'pchapman20@eventbrite.com', 'Linkbuzz', '1-(574)707-4449', '1 Vermont Plaza', null,
        'South Bend', 'Indiana', '46620', 'United States')
     , (74, 'Tucker', 'Willie', 'wtucker21@hubpages.com', 'Eazzy', '1-(814)593-2963', '3 Dryden Trail', null, 'Erie',
        'Pennsylvania', '16505', 'United States')
     , (75, 'Bradley', 'Adam', 'abradley22@cnet.com', 'Yabox', '1-(903)334-0845', '15 Veith Center', null, 'Tyler',
        'Texas', '75705', 'United States')
     , (76, 'Armstrong', 'Juan', 'jarmstrong23@archive.org', 'Gevee', '1-(916)285-8157', '95 Claremont Crossing', null,
        'Sacramento', 'California', '95865', 'United States')
     , (77, 'Payne', 'Kenneth', 'kpayne24@com.com', 'Skinte', '1-(770)150-8423', '75 Beilfuss Court', null,
        'Alpharetta', 'United Kingdom', '30022', 'United States')
     , (78, 'Jacobs', 'Louis', 'ljacobs25@intel.com', 'Photolist', '1-(404)386-3449', '542 Browning Park', null,
        'Atlanta', 'United Kingdom', '30343', 'United States')
     , (79, 'Cooper', 'Marilyn', 'mcooper26@whitehouse.gov', 'Yotz', '1-(520)875-3539', '03 Transport Point', null,
        'Tucson', 'Arizona', '85710', 'United States')
     , (80, 'Watkins', 'William', 'wwatkins27@pbs.org', 'Brightbean', '1-(719)568-3678', '0316 La Follette Drive', null,
        'Colorado Springs', 'Colorado', '80920', 'United States')
     , (81, 'Baker', 'Douglas', 'dbaker28@exblog.jp', 'Voonix', '1-(619)121-6070', '99 Kedzie Terrace', null,
        'Chula Vista', 'California', '91913', 'United States')
     , (82, 'Cunningham', 'Daniel', 'dcunningham29@oakley.com', 'Leexo', '1-(619)609-6206', '53540 Hallows Place', null,
        'San Diego', 'California', '92137', 'United States')
     , (83, 'Mitchell', 'Edward', 'emitchell2a@amazon.com', 'Jatri', '1-(502)427-5275', '3 Jana Junction', null,
        'Louisville', 'Kentucky', '40280', 'United States')
     , (84, 'Matthews', 'Adam', 'amatthews2b@live.com', 'Muxo', '1-(316)764-9074', '5 Arapahoe Plaza', null, 'Wichita',
        'Kansas', '67220', 'United States')
     , (85, 'Jacobs', 'Diane', 'djacobs2c@jimdo.com', 'Youspan', '1-(804)398-4775', '6 Moose Street', null, 'Richmond',
        'Virginia', '23285', 'United States')
     , (86, 'Frazier', 'Mary', 'mfrazier2d@forbes.com', 'Zoomdog', '1-(716)502-4243', '713 Continental Trail', null,
        'Buffalo', 'New York', '14210', 'United States')
     , (87, 'Howard', 'Anthony', 'ahoward2e@disqus.com', 'Katz', '1-(805)800-7968', '006 Elka Center', null,
        'Bakersfield', 'California', '93311', 'United States')
     , (88, 'Kelly', 'Anna', 'akelly2f@unc.edu', 'Trilia', '1-(804)117-9707', '292 Browning Circle', null, 'Richmond',
        'Virginia', '23228', 'United States')
     , (89, 'Clark', 'Kathy', 'kclark2g@businesswire.com', 'Gigabox', '1-(831)755-4869', '45 Walton Parkway', null,
        'Salinas', 'California', '93907', 'United States')
     , (90, 'Carpenter', 'Gerald', 'gcarpenter2h@foxnews.com', 'Yakidoo', '1-(213)344-9608', '84560 Stephen Parkway',
        null, 'Los Angeles', 'California', '90055', 'United States')
     , (91, 'Hart', 'Albert', 'ahart2i@scribd.com', 'Jaloo', '1-(415)201-5281', '0 Washington Place', null, 'Oakland',
        'California', '94611', 'United States')
     , (92, 'Young', 'Julia', 'jyoung2j@craigslist.org', 'Oloo', '1-(615)660-1203', '0623 Gale Drive', null, 'Jackson',
        'Mississippi', '39210', 'United States')
     , (93, 'Pierce', 'Tammy', 'tpierce2k@psu.edu', 'Ntags', '1-(703)772-3155', '501 Leroy Parkway', null, 'Washington',
        'District of Columbia', '20041', 'United States')
     , (94, 'Washington', 'Ronald', 'rwashington2l@drupal.org', 'Livetube', '1-(202)828-6093', '6220 Del Sol Alley',
        null, 'Washington', 'District of Columbia', '20551', 'United States')
     , (95, 'Carter', 'Alan', 'acarter2m@simplemachines.org', 'Centizu', '1-(952)234-1678', '043 Sunnyside Center',
        null, 'Young America', 'Minnesota', '55551', 'United States')
     , (96, 'Freeman', 'Stephanie', 'sfreeman2n@redcross.org', 'Feednation', '1-(504)126-8245', '1120 Veith Parkway',
        null, 'New Orleans', 'Louisiana', '70165', 'United States')
     , (97, 'Price', 'Sara', 'sprice2o@irs.gov', 'Izio', '1-(415)668-5714', '96394 Bonner Hill', null, 'San Francisco',
        'California', '94116', 'United States')
     , (98, 'Parker', 'Emily', 'eparker2p@4shared.com', 'Skalith', '1-(330)637-4894', '0 Old Shore Center', null,
        'Akron', 'Ohio', '44310', 'United States')
     , (99, 'Chavez', 'Jeremy', 'jchavez2q@businessweek.com', 'Topicware', '1-(515)769-2045', '8584 Jay Street', null,
        'Des Moines', 'Iowa', '50335', 'United States')
     , (100, 'Kim', 'Pamela', 'pkim2r@stumbleupon.com', 'Photolist', '1-(510)144-4318', '3688 Gerald Trail', null,
        'Sacramento', 'California', '95823', 'United States');


/* orders */
insert into orders (id, employee_id, customer_id, order_date, shipped_date, ship_name, ship_address1, ship_address2,
                    ship_city, ship_state, ship_postal_code, ship_country, shipping_fee, payment_type, paid_date,
                    order_status)
values (4001, 204, 40, '2016-04-05', '2016-11-06', 'Jean Fuller', '93 Spohn Place', null, 'Manggekompo', null, null,
        'Indonesia', 8.14, 'Card', '2016-10-12', 'On Hold')
     , (4002, 204, 95, '2017-01-29', '2016-05-28', 'Diane Holmes', '46 Eliot Trail', null, 'Virginia Beach', 'Virginia',
        '23459', 'United States', 1.55, 'Check', '2016-06-27', 'Shipped')
     , (4003, 218, 54, '2016-08-19', '2016-12-08', 'Jerry Frazier', '23 Sundown Junction', null, 'Obodivka', null, null,
        'Ukraine', 2.29, 'Cash', '2016-09-27', 'On Hold')
     , (4004, 204, 69, '2016-09-25', '2016-12-24', 'Denise Freeman', '4909 Beilfuss Hill', null, 'Nova Venécia', null,
        '29830-000', 'Brazil', 4.77, 'Check', '2016-07-04', 'New')
     , (4005, 215, 10, '2017-03-14', '2016-03-19', 'Jonathan Gordon', '7 Ludington Court', null, 'Sukamaju', null, null,
        'Indonesia', 8.78, 'Check', '2016-03-22', 'On Hold')
     , (4006, 211, 23, '2016-08-14', '2016-12-05', 'Sean Carter', '859 Dahle Plaza', null, 'Dayou', null, null, 'China',
        9.43, 'Cash', '2016-08-21', 'New')
     , (4007, 204, 92, '2017-01-02', '2016-07-09', 'Alice Warren', '5 Fuller Center', null, 'Log pri Brezovici', null,
        '1358', 'India', 3.25, 'Cash', '2016-03-24', 'Shipped')
     , (4008, 205, 20, '2016-05-15', '2016-09-12', 'Andrea Hamilton', '99 Blue Bill Park Junction', null, 'Liangshui',
        null, null, 'China', 7.04, 'Check', '2016-09-02', 'On Hold')
     , (4009, 219, 58, '2016-11-27', '2017-03-02', 'Wanda Hill', '907 Sundown Court', null, 'Pedra Azul', null,
        '39970-000', 'Brazil', 4.35, 'Cash', '2016-09-27', 'On Hold')
     , (4010, 218, 57, '2016-09-11', '2017-02-26', 'Carolyn Foster', '0 Charing Cross Court', null, 'Chicago',
        'Illinois', '60609', 'United States', 1.23, 'Cash', '2016-08-09', 'Complete')
     , (4011, 207, 3, '2017-03-01', '2016-08-04', 'Timothy Warren', '19 John Wall Parkway', null, 'Lyon', 'Rhône-Alpes',
        '69362 CEDEX 07', 'France', 9.57, 'Card', '2016-05-08', 'Complete')
     , (4012, 210, 59, '2016-12-31', '2016-08-08', 'Kathleen Marshall', '2 Swallow Circle', null, 'Cunliji', null, null,
        'China', 9.03, 'Cash', '2016-04-23', 'On Hold')
     , (4013, 204, 57, '2017-01-11', '2017-02-13', 'Jane Ortiz', '1136 Kedzie Alley', null, 'Eirado',
        'Viana do Castelo', '4990-540', 'Portugal', 8.9, 'Check', '2016-10-26', 'Shipped')
     , (4014, 212, 26, '2016-09-23', '2016-05-13', 'Carolyn Martinez', '954 Kropf Court', null, 'Ibitinga', null,
        '14940-000', 'Brazil', 4.57, 'Card', '2016-09-11', 'New')
     , (4015, 201, 86, '2016-11-04', '2016-10-03', 'Debra Willis', '89 Grasskamp Road', null, 'San Francisco', null,
        '8501', 'Philippines', 3.53, 'Card', '2016-10-05', 'New')
     , (4016, 208, 17, '2016-04-17', '2016-03-22', 'Sharon Little', '27501 Sommers Junction', null, 'San Juan Opico',
        null, null, 'India', 6.87, 'Card', '2017-01-08', 'Complete')
     , (4017, 205, 73, '2016-07-03', '2016-09-26', 'Nancy Hughes', '1 John Wall Avenue', null, 'La Libertad', null,
        null, 'Argentina', 4.67, 'Check', '2017-02-01', 'New')
     , (4018, 213, 16, '2016-12-01', '2016-06-08', 'Sara Knight', '98248 Tony Pass', null, 'Val-d''Or', 'Québec', 'J9P',
        'Canada', 9.52, 'Card', '2016-08-06', 'New')
     , (4019, 209, 10, '2016-04-18', '2016-04-25', 'Russell Wood', '3 Commercial Point', null, 'Rokietnica', null,
        '62-090', 'Poland', 6.8, 'Card', '2017-01-20', 'On Hold')
     , (4020, 216, 1, '2016-07-23', '2017-02-23', 'Aaron Grant', '15477 Farwell Circle', null, 'Yongyang', null, null,
        'China', 3.17, 'Cash', '2016-08-11', 'Complete')
     , (4021, 209, 38, '2016-12-16', '2017-02-14', 'Ryan Foster', '9218 Leroy Avenue', null, 'Mogapinyana', null, null,
        'India', 3.34, 'Cash', '2016-06-21', 'On Hold')
     , (4022, 207, 91, '2016-07-18', '2016-04-06', 'Peter Montgomery', '570 Londonderry Pass', null, 'Mathakola', null,
        null, 'India', 8.11, 'Card', '2016-10-27', 'New')
     , (4023, 209, 39, '2016-07-15', '2017-02-02', 'Lawrence Schmidt', '371 Acker Drive', null, 'Mesa', 'Arizona',
        '85205', 'United States', 1.39, 'Cash', '2016-10-27', 'Complete')
     , (4024, 219, 51, '2016-12-08', '2017-01-03', 'Eric Gray', '4608 Farmco Point', null, 'Gemblengmulyo', null, null,
        'Indonesia', 8.76, 'Card', '2016-05-13', 'Complete')
     , (4025, 204, 77, '2016-09-24', '2017-01-20', 'Gloria Green', '62 Sunnyside Park', null, 'Itararé', null,
        '18460-000', 'Brazil', 7.75, 'Cash', '2017-02-06', 'On Hold')
     , (4026, 215, 73, '2016-09-15', '2016-12-24', 'Nicholas Price', '5672 Ruskin Hill', null, 'Maimará', null, '4624',
        'Argentina', 9.11, 'Card', '2016-07-22', 'On Hold')
     , (4027, 208, 98, '2016-05-31', '2016-07-14', 'Doris Watson', '133 Gina Street', null, 'Bantiran', null, null,
        'Indonesia', 3.0, 'Cash', '2016-10-08', 'Complete')
     , (4028, 217, 39, '2016-05-10', '2016-04-07', 'Linda Foster', '40382 4th Terrace', null, 'Agrelo', 'Braga',
        '4730-300', 'Portugal', 2.39, 'Cash', '2016-09-11', 'Complete')
     , (4029, 212, 52, '2016-09-14', '2016-12-21', 'Anthony Spencer', '02 Esker Junction', null, 'El Ocotón', null,
        null, 'Canada', 7.72, 'Check', '2016-09-23', 'Shipped')
     , (4030, 218, 74, '2016-05-08', '2016-07-21', 'James Kennedy', '7460 Westport Hill', null, 'Köln',
        'Nordrhein-Westfalen', '51107', 'Germany', 6.16, 'Cash', '2016-11-27', 'Shipped')
     , (4031, 214, 4, '2016-05-31', '2017-03-03', 'Theresa Robinson', '44 Havey Way', null, 'Qingtong', null, null,
        'China', 5.02, 'Check', '2017-03-15', 'New')
     , (4032, 201, 81, '2016-07-05', '2016-11-18', 'Jesse Ray', '68 Derek Hill', null, 'Azogues', null, null,
        'Argentina', 5.41, 'Check', '2016-10-16', 'New')
     , (4033, 203, 15, '2016-09-07', '2016-06-09', 'Harold Fields', '2 Vermont Terrace', null, 'Mogocha', null,
        '673732', 'Russia', 2.38, 'Check', '2016-03-30', 'Complete')
     , (4034, 217, 11, '2016-08-19', '2016-12-08', 'Larry Watkins', '629 Waxwing Avenue', null, 'Krasnyy Oktyabr’',
        null, '398526', 'Russia', 5.23, 'Cash', '2016-07-01', 'On Hold')
     , (4035, 205, 51, '2016-11-29', '2016-09-02', 'Debra Marshall', '23578 Arizona Junction', null, 'Juhut', null,
        null, 'Indonesia', 1.59, 'Card', '2016-06-17', 'Shipped')
     , (4036, 217, 56, '2016-10-21', '2017-02-13', 'Todd Stephens', '63633 Columbus Avenue', null, 'Paccho', null, null,
        'Peru', 5.09, 'Cash', '2016-04-25', 'New')
     , (4037, 219, 60, '2016-09-22', '2016-11-08', 'Jean Webb', '0916 Grover Way', null, 'Kuršėnai', null, '81001',
        'Denmark', 8.66, 'Cash', '2016-09-30', 'Shipped')
     , (4038, 213, 3, '2016-06-01', '2016-10-07', 'Heather Snyder', '44 Grayhawk Court', null, 'Haenam', null, null,
        'Finland', 5.33, 'Cash', '2016-06-30', 'Complete')
     , (4039, 201, 28, '2017-02-19', '2016-11-25', 'Janet Howard', '5351 Barby Trail', null, 'Shanghu', null, null,
        'China', 9.18, 'Check', '2017-03-16', 'On Hold')
     , (4040, 215, 74, '2016-09-14', '2016-06-23', 'Aaron Wheeler', '08 Burrows Avenue', null, 'Tân Sơn', null, null,
        'Vietnam', 3.36, 'Card', '2017-03-05', 'New')
     , (4041, 204, 79, '2016-09-27', '2017-02-15', 'Lori Watkins', '3 Pennsylvania Court', null, 'Victoria', null,
        'VCT', 'India', 9.41, 'Card', '2016-08-12', 'New')
     , (4042, 205, 92, '2016-11-03', '2016-05-11', 'Alice Miller', '7895 Amoth Avenue', null, 'Mae Lao', null, '57250',
        'Thailand', 2.11, 'Cash', '2016-08-06', 'Shipped')
     , (4043, 212, 82, '2016-11-17', '2016-04-19', 'Marilyn Nguyen', '25203 Meadow Ridge Plaza', null, 'Nine', 'Braga',
        '4775-446', 'Portugal', 6.03, 'Cash', '2016-05-07', 'On Hold')
     , (4044, 218, 55, '2016-06-26', '2016-08-15', 'Ashley West', '08621 Porter Lane', null, 'Kingsport', 'Tennessee',
        '37665', 'United States', 8.23, 'Cash', '2016-12-17', 'New')
     , (4045, 217, 53, '2016-05-07', '2017-02-25', 'Julia Fernandez', '91519 Harbort Way', null, 'Issoire', 'Auvergne',
        '63504 CEDEX', 'France', 1.14, 'Check', '2016-10-27', 'Complete')
     , (4046, 211, 78, '2016-12-11', '2017-02-15', 'Willie Sims', '683 Caliangt Parkway', null, 'Balazar', 'Braga',
        '4805-005', 'Portugal', 6.57, 'Card', '2017-02-13', 'On Hold')
     , (4047, 201, 77, '2016-05-20', '2017-02-19', 'Samuel Burke', '25 Grover Lane', null, 'Housuo', null, null,
        'China', 6.99, 'Cash', '2016-08-12', 'New')
     , (4048, 217, 72, '2016-11-06', '2016-09-29', 'Patricia Green', '29791 Thierer Street', null, 'Campamento', null,
        '052027', 'Argentina', 3.33, 'Check', '2016-03-24', 'Complete')
     , (4049, 210, 98, '2016-08-24', '2016-04-16', 'Nicole Washington', '68 Monica Point', null, 'Cikaung', null, null,
        'Indonesia', 5.78, 'Check', '2016-04-30', 'Complete')
     , (4050, 215, 26, '2016-10-07', '2016-11-03', 'Marie Bryant', '36611 Schlimgen Place', null, 'Villa Francisca',
        null, '10215', 'Canada', 4.11, 'Check', '2016-07-29', 'Complete')
     , (4051, 212, 51, '2016-05-19', '2017-03-16', 'Brandon Lane', '5 Duke Center', null, 'Soutinho', 'Porto',
        '4650-530', 'Portugal', 9.62, 'Check', '2016-11-28', 'Shipped')
     , (4052, 205, 9, '2016-07-19', '2016-09-05', 'Pamela Ferguson', '0 Mockingbird Crossing', null, 'Jefferson City',
        'Missouri', '65105', 'United States', 9.98, 'Card', '2016-12-08', 'Shipped')
     , (4053, 210, 42, '2016-04-09', '2017-02-05', 'Gloria Edwards', '8275 Sage Plaza', null, 'Yilkiqi', null, null,
        'China', 5.21, 'Cash', '2016-11-10', 'On Hold')
     , (4054, 211, 70, '2017-02-28', '2017-02-11', 'John Cole', '4679 Trailsway Circle', null, 'Sanlanbahai', null,
        null, 'China', 4.42, 'Card', '2017-01-06', 'Complete')
     , (4055, 208, 65, '2017-01-11', '2017-02-14', 'Bobby Butler', '314 Jenna Crossing', null, 'Malusac', null, '2005',
        'Philippines', 7.37, 'Cash', '2017-03-15', 'Shipped')
     , (4056, 220, 15, '2016-07-12', '2016-09-06', 'Anthony Lane', '1 Packers Avenue', null, 'Batambak', null, null,
        'Indonesia', 5.41, 'Card', '2016-11-21', 'On Hold')
     , (4057, 220, 76, '2016-05-05', '2016-04-19', 'Karen Ray', '891 Raven Street', null, 'Chinju', null, null,
        'Finland', 4.71, 'Cash', '2017-02-11', 'On Hold')
     , (4058, 216, 90, '2017-01-26', '2016-12-19', 'Martha Gonzalez', '8695 Mandrake Place', null, 'Maythalūn', null,
        null, 'India', 1.75, 'Card', '2017-03-16', 'On Hold')
     , (4059, 212, 43, '2016-09-20', '2017-02-11', 'Judy Daniels', '154 Lukken Court', null, 'Luoqiao', null, null,
        'China', 4.63, 'Check', '2016-11-09', 'On Hold')
     , (4060, 207, 80, '2016-04-29', '2016-07-01', 'Jane Stevens', '43 Kingsford Pass', null, 'Dobruševo', null, '7514',
        'Denmark', 1.96, 'Cash', '2016-09-02', 'On Hold')
     , (4061, 214, 89, '2016-10-09', '2016-09-09', 'Emily Miller', '5 Pearson Lane', null, 'East London', null, '5688',
        'South Africa', 2.14, 'Card', '2016-06-10', 'Complete')
     , (4062, 220, 8, '2016-12-01', '2017-03-09', 'Sarah Johnson', '30 Chinook Lane', null, 'Selishche', null, '180536',
        'Russia', 3.76, 'Card', '2016-11-18', 'On Hold')
     , (4063, 220, 48, '2017-03-05', '2016-11-30', 'Carolyn Reyes', '72 Michigan Pass', null, 'Sukasenang', null, null,
        'Indonesia', 6.52, 'Cash', '2016-05-20', 'Shipped')
     , (4064, 214, 31, '2016-07-19', '2016-08-16', 'Kathryn Coleman', '43358 Packers Court', null, 'Przystajń', null,
        '42-141', 'Poland', 1.68, 'Card', '2016-12-13', 'Complete')
     , (4065, 205, 41, '2016-12-09', '2016-03-20', 'Clarence Graham', '1675 Starling Point', null, 'Zangbawa', null,
        null, 'China', 5.82, 'Cash', '2016-07-08', 'Complete')
     , (4066, 205, 41, '2016-05-25', '2016-11-15', 'David Harris', '00 Warner Court', null, 'Kabba', null, null,
        'Netherlands', 7.24, 'Cash', '2016-09-24', 'New')
     , (4067, 218, 13, '2016-07-24', '2016-12-06', 'Ruth Fields', '88567 Golf Course Plaza', null, 'Mauá', null,
        '09300-000', 'Brazil', 6.82, 'Cash', '2017-01-26', 'New')
     , (4068, 206, 11, '2016-05-04', '2016-07-10', 'Todd Butler', '88 Graedel Point', null, 'Jablah', null, null,
        'India', 3.83, 'Cash', '2016-06-17', 'On Hold')
     , (4069, 215, 55, '2016-12-22', '2016-03-28', 'Catherine Perkins', '95 Troy Parkway', null, 'Frampol', null,
        '23-440', 'Poland', 7.6, 'Check', '2016-08-24', 'Shipped')
     , (4070, 220, 40, '2016-10-17', '2016-12-01', 'Jeffrey Rodriguez', '3393 Weeping Birch Court', null, 'Burunday',
        null, null, 'Denmark', 2.52, 'Cash', '2016-09-06', 'Shipped')
     , (4071, 218, 70, '2017-03-16', '2016-12-09', 'Rachel Butler', '79327 Ridgeway Circle', null, 'Dupnitsa', null,
        '2680', 'Denmark', 6.25, 'Check', '2016-04-02', 'Complete')
     , (4072, 205, 45, '2017-01-22', '2016-05-15', 'Robin Fisher', '0 Susan Court', null, 'Morohongō', null, '357-0211',
        'Japan', 4.42, 'Card', '2017-03-06', 'Complete')
     , (4073, 217, 94, '2017-01-25', '2016-04-11', 'Ruth Carpenter', '4 Glacier Hill Road', null, 'Ngrejo', null, null,
        'Indonesia', 4.9, 'Cash', '2016-08-13', 'On Hold')
     , (4074, 219, 27, '2017-01-06', '2017-01-03', 'Irene Kelly', '0 Comanche Junction', null, 'Chao', null, null,
        'Peru', 5.32, 'Check', '2016-11-20', 'On Hold')
     , (4075, 214, 44, '2016-06-24', '2016-12-20', 'Douglas Sims', '81709 Helena Park', null, 'Dongmaku', null, null,
        'China', 3.35, 'Card', '2017-02-27', 'Complete')
     , (4076, 216, 27, '2016-09-23', '2016-10-05', 'Kenneth Rose', '5316 Dottie Way', null, 'Olszówka', null, '62-641',
        'Poland', 2.63, 'Cash', '2016-05-27', 'Shipped')
     , (4077, 211, 84, '2016-11-24', '2016-08-04', 'Jimmy Morgan', '42187 Shoshone Center', null, 'Saltsjöbaden',
        'Stockholm', '133 41', 'Sweden', 1.11, 'Cash', '2016-09-09', 'On Hold')
     , (4078, 202, 57, '2016-05-28', '2016-06-02', 'Annie Vasquez', '5 Lien Junction', null, 'Al Qaţn', null, null,
        'South Africa', 2.73, 'Check', '2016-11-14', 'On Hold')
     , (4079, 202, 64, '2016-07-05', '2016-05-20', 'Henry Mccoy', '58 Nelson Circle', null, 'Tsaghkahovit', null, null,
        'India', 3.29, 'Card', '2016-08-18', 'Shipped')
     , (4080, 216, 44, '2017-02-20', '2016-10-08', 'Norma Graham', '27 Heffernan Pass', null, 'Cairima', null, null,
        'China', 7.02, 'Check', '2017-03-06', 'Complete')
     , (4081, 218, 60, '2017-03-16', '2016-08-06', 'Albert Wright', '572 Vahlen Place', null, 'Drahovo', null, null,
        'Ukraine', 4.92, 'Check', '2017-01-29', 'New')
     , (4082, 219, 15, '2016-12-26', '2017-02-17', 'Jane Wells', '21 Merchant Way', null, 'Acacías', null, '507009',
        'Argentina', 6.53, 'Card', '2016-06-04', 'Complete')
     , (4083, 212, 61, '2016-06-24', '2016-03-23', 'Jesse Mitchell', '4060 Carioca Drive', null, 'Ntoroko', null, null,
        'South Africa', 9.41, 'Cash', '2016-10-19', 'On Hold')
     , (4084, 216, 3, '2016-08-20', '2017-02-15', 'Carlos Brooks', '868 Pankratz Trail', null, 'Bat Khela', null,
        '18351', 'Iran', 1.0, 'Check', '2016-12-22', 'On Hold')
     , (4085, 209, 25, '2016-12-03', '2016-06-01', 'Christopher Williamson', '8874 Starling Plaza', null, 'Tarbes',
        'Midi-Pyrénées', '65951 CEDEX 9', 'France', 4.15, 'Card', '2017-02-04', 'New')
     , (4086, 205, 2, '2016-06-19', '2016-08-26', 'Joseph Wells', '7223 Carpenter Road', null, 'Chitral', null, '17200',
        'Iran', 5.31, 'Card', '2016-07-22', 'Shipped')
     , (4087, 216, 96, '2016-06-04', '2016-12-31', 'Teresa Thomas', '908 Ramsey Junction', null, 'Dzerzhinskiy', null,
        '140083', 'Russia', 4.29, 'Cash', '2017-03-03', 'Shipped')
     , (4088, 203, 35, '2016-09-21', '2017-01-08', 'Scott Gomez', '70537 Tennessee Crossing', null, 'Bồng Sơn', null,
        null, 'Vietnam', 6.93, 'Cash', '2017-01-01', 'New')
     , (4089, 210, 18, '2017-02-17', '2016-10-28', 'Nicole Miller', '0 Jackson Place', null, 'Šilheřovice', null,
        '747 15', 'Czech Republic', 5.64, 'Card', '2016-11-17', 'On Hold')
     , (4090, 201, 8, '2016-11-12', '2016-06-02', 'Donald Nguyen', '7320 Bunting Pass', null, 'Namioka', null,
        '953-0062', 'Japan', 7.07, 'Cash', '2016-09-29', 'Complete')
     , (4091, 212, 67, '2016-04-08', '2016-11-21', 'Shawn Myers', '1844 Esch Plaza', null, 'Gračec', null, '10370',
        'Canada', 4.84, 'Card', '2016-03-17', 'New')
     , (4092, 220, 16, '2017-01-12', '2016-08-04', 'Daniel Armstrong', '2 Donald Alley', null, 'La Colorada', null,
        null, 'Denmark', 2.98, 'Check', '2016-12-08', 'Shipped')
     , (4093, 203, 60, '2016-04-17', '2016-05-10', 'Henry Gonzales', '23848 6th Center', null, 'Guayatá', null,
        '153047', 'Argentina', 1.54, 'Check', '2016-04-18', 'New')
     , (4094, 209, 37, '2016-08-07', '2016-04-26', 'Stephanie Snyder', '1152 Morning Park', null, 'Zhitan', null, null,
        'China', 9.76, 'Card', '2016-05-23', 'New')
     , (4095, 205, 46, '2016-09-01', '2017-02-25', 'Joan Butler', '98050 Mitchell Point', null, 'Bun Barat', null, null,
        'Indonesia', 9.57, 'Card', '2017-01-25', 'Shipped')
     , (4096, 211, 92, '2017-01-02', '2016-12-06', 'Gloria Murray', '8 Vidon Terrace', null, 'Rumenka', null, null,
        'India', 5.33, 'Card', '2016-12-28', 'Shipped')
     , (4097, 210, 66, '2016-07-04', '2016-05-30', 'Dorothy Simpson', '0 Pearson Point', null, 'Yevpatoriya', null,
        null, 'Ukraine', 3.52, 'Check', '2016-04-28', 'Complete')
     , (4098, 219, 59, '2016-09-27', '2016-12-17', 'Katherine Brooks', '921 Anhalt Place', null, 'Rietavas', null,
        '90018', 'Denmark', 5.29, 'Check', '2016-12-19', 'Complete')
     , (4099, 207, 65, '2016-07-06', '2016-10-11', 'Linda Reid', '89712 Dryden Point', null, 'Bronnitsy', null,
        '142451', 'Russia', 5.68, 'Card', '2016-07-08', 'New')
     , (4100, 212, 61, '2016-04-14', '2016-05-02', 'Richard Carpenter', '17032 Melrose Crossing', null, 'White River',
        null, '1256', 'South Africa', 7.22, 'Card', '2016-08-03', 'Shipped')
     , (4101, 206, 23, '2016-03-28', '2016-12-01', 'Clarence Coleman', '9167 Valley Edge Point', null, 'Guocun', null,
        null, 'China', 5.86, 'Check', '2016-08-19', 'Shipped')
     , (4102, 202, 16, '2016-07-26', '2017-01-18', 'Kevin Dunn', '178 Park Meadow Avenue', null, 'Mlonggo', null, null,
        'Indonesia', 4.15, 'Check', '2016-08-03', 'Complete')
     , (4103, 211, 65, '2017-01-17', '2016-11-09', 'Keith Lopez', '689 Anthes Pass', null, 'Cibanten', null, null,
        'Indonesia', 8.25, 'Check', '2016-10-15', 'Shipped')
     , (4104, 218, 86, '2017-03-12', '2016-05-25', 'Chris Wright', '57974 Riverside Junction', null, 'Ban Mai', null,
        '80000', 'Thailand', 4.85, 'Cash', '2016-05-08', 'New')
     , (4105, 215, 57, '2016-07-03', '2016-05-03', 'Michael Snyder', '93 Ohio Hill', null, 'Bryan', 'Texas', '77806',
        'United States', 3.54, 'Card', '2016-08-10', 'Shipped')
     , (4106, 210, 2, '2017-03-07', '2016-09-18', 'David Day', '5024 Summerview Circle', null, 'Itapira', null,
        '13970-000', 'Brazil', 3.6, 'Cash', '2017-01-20', 'On Hold')
     , (4107, 218, 4, '2016-10-10', '2016-09-02', 'Lisa Kim', '4892 Huxley Center', null, 'Tanjungagung', null, null,
        'Indonesia', 6.23, 'Cash', '2016-06-11', 'On Hold')
     , (4108, 214, 26, '2016-06-02', '2016-10-05', 'Teresa Ellis', '1569 Mariners Cove Terrace', null, 'Maszkienice',
        null, '32-854', 'Poland', 7.65, 'Check', '2016-04-14', 'On Hold')
     , (4109, 201, 51, '2016-10-07', '2017-02-02', 'Jimmy Lawson', '2165 Bluestem Center', null, 'Kampungbaru', null,
        null, 'Indonesia', 1.73, 'Check', '2016-09-30', 'Shipped')
     , (4110, 215, 4, '2016-08-21', '2017-02-05', 'Jerry Murray', '40070 Anderson Court', null, 'Vicente Guerrero',
        'Veracruz Llave', '92440', 'Mexico', 1.57, 'Card', '2016-06-26', 'New')
     , (4111, 210, 56, '2016-07-06', '2016-09-19', 'Joan Adams', '5322 Goodland Avenue', null, 'Paris 17',
        'Île-de-France', '75853 CEDEX 17', 'France', 7.52, 'Cash', '2016-05-07', 'New')
     , (4112, 214, 77, '2016-09-04', '2016-10-19', 'Chris Young', '7 Clove Center', null, 'Gongjiahe', null, null,
        'China', 3.31, 'Card', '2016-11-06', 'New')
     , (4113, 217, 62, '2016-07-18', '2016-09-30', 'Norma Oliver', '6002 Rieder Road', null, 'Lingbei', null, null,
        'China', 8.85, 'Check', '2016-09-25', 'Complete')
     , (4114, 213, 72, '2016-08-01', '2016-09-12', 'Douglas Day', '88 Helena Drive', null, 'Alcoutim', 'Faro',
        '8970-055', 'Portugal', 5.52, 'Card', '2016-12-19', 'New')
     , (4115, 220, 6, '2016-11-13', '2017-02-22', 'Janet James', '820 Westend Place', null, 'Springfield',
        'Massachusetts', '01129', 'United States', 4.72, 'Cash', '2016-03-21', 'On Hold')
     , (4116, 201, 72, '2016-09-01', '2016-09-07', 'Martha Lee', '2 Donald Hill', null, 'Majiang', null, null, 'China',
        4.39, 'Cash', '2016-12-10', 'Shipped')
     , (4117, 202, 40, '2017-02-04', '2016-12-09', 'Benjamin Cruz', '02989 Morningstar Avenue', null, 'Gīvī', null,
        null, 'Iran', 1.77, 'Check', '2017-01-29', 'Complete')
     , (4118, 213, 48, '2016-12-24', '2017-01-06', 'Diane Porter', '7 Kensington Center', null, 'Pingyi', null, null,
        'China', 4.69, 'Check', '2016-05-31', 'On Hold')
     , (4119, 205, 69, '2016-06-30', '2016-05-01', 'Brandon Myers', '80411 Victoria Center', null, 'Punsu', null, null,
        'Indonesia', 7.8, 'Cash', '2016-12-28', 'New')
     , (4120, 220, 63, '2016-11-11', '2016-10-30', 'Beverly Garza', '2750 Sullivan Place', null, 'San Jose', null,
        '8427', 'Philippines', 8.15, 'Check', '2016-09-23', 'Shipped')
     , (4121, 220, 32, '2016-05-05', '2016-09-05', 'Cynthia Simpson', '0731 Clarendon Point', null, 'Pomichna', null,
        null, 'Ukraine', 5.56, 'Card', '2017-02-23', 'On Hold')
     , (4122, 201, 38, '2016-04-24', '2016-07-30', 'Janet West', '4800 Dottie Parkway', null, 'Tân Kỳ', null, null,
        'Vietnam', 2.63, 'Cash', '2016-06-17', 'On Hold')
     , (4123, 214, 24, '2016-04-04', '2016-06-11', 'Kevin Stone', '85 Duke Avenue', null, 'Shemonaīkha', null, null,
        'Denmark', 9.99, 'Card', '2016-09-24', 'On Hold')
     , (4124, 210, 9, '2016-09-01', '2016-06-18', 'Amy Austin', '80663 Almo Park', null, 'Zaječov', null, '267 63',
        'Czech Republic', 3.58, 'Card', '2016-08-29', 'Complete')
     , (4125, 206, 78, '2017-02-09', '2016-07-07', 'Gregory Greene', '6 Commercial Junction', null, 'Hudong', null,
        null, 'China', 7.34, 'Cash', '2016-12-26', 'New')
     , (4126, 215, 48, '2016-07-30', '2016-12-25', 'Laura Woods', '115 Ramsey Plaza', null, 'Allentown', 'Pennsylvania',
        '18105', 'United States', 4.92, 'Check', '2016-09-28', 'On Hold')
     , (4127, 220, 19, '2016-03-29', '2016-05-27', 'Stephanie Reed', '452 Grayhawk Way', null, 'Sicheng', null, null,
        'China', 1.1, 'Card', '2017-03-14', 'Shipped')
     , (4128, 208, 64, '2016-06-03', '2016-08-13', 'Craig Gonzalez', '6028 West Street', null, 'Kliteh', null, null,
        'Indonesia', 1.73, 'Cash', '2016-06-23', 'Complete')
     , (4129, 201, 28, '2016-09-05', '2016-04-03', 'Raymond Gomez', '4 Stone Corner Place', null, 'Chechenglu', null,
        null, 'China', 4.32, 'Card', '2016-06-29', 'Complete')
     , (4130, 215, 83, '2016-11-14', '2016-09-13', 'Kenneth Taylor', '7 Nevada Way', null, 'Alīpur', null, '34451',
        'Iran', 5.07, 'Card', '2016-11-28', 'Complete')
     , (4131, 203, 76, '2017-02-01', '2017-01-04', 'Jose Peters', '2493 Saint Paul Crossing', null, 'Bofuer', null,
        null, 'Indonesia', 9.85, 'Card', '2016-11-18', 'New')
     , (4132, 207, 67, '2016-09-02', '2017-03-10', 'Martin West', '7251 Prairieview Place', null, 'Espinillo', null,
        '3460', 'Argentina', 7.9, 'Card', '2017-02-05', 'New')
     , (4133, 208, 78, '2016-08-27', '2016-12-26', 'Louise Dunn', '4076 East Trail', null, 'Caramanta', null, '056047',
        'Argentina', 1.28, 'Cash', '2016-12-22', 'Shipped')
     , (4134, 209, 93, '2016-06-27', '2016-04-10', 'Gregory Stanley', '67 Namekagon Crossing', null, 'Pasarkayu', null,
        null, 'Indonesia', 2.83, 'Check', '2016-09-17', 'Complete')
     , (4135, 206, 60, '2016-03-23', '2016-06-19', 'Ronald Palmer', '21 Old Shore Place', null, 'Tujing', null, null,
        'China', 9.01, 'Check', '2016-12-22', 'New')
     , (4136, 209, 10, '2016-11-07', '2016-11-21', 'Harry Robinson', '740 Toban Court', null, 'Liujiage', null, null,
        'China', 7.13, 'Card', '2016-09-20', 'New')
     , (4137, 214, 83, '2016-05-20', '2016-04-08', 'Joan Torres', '5167 Laurel Drive', null, 'Nirji', null, null,
        'China', 9.81, 'Card', '2016-09-13', 'Complete')
     , (4138, 207, 47, '2016-07-17', '2016-10-03', 'Carlos Jones', '4 Fuller Lane', null, 'Detroit', 'Michigan',
        '48258', 'United States', 8.02, 'Card', '2016-11-16', 'On Hold')
     , (4139, 214, 92, '2016-07-17', '2017-01-23', 'Terry Freeman', '738 Vernon Road', null, 'Veverská Bítýška', null,
        '664 71', 'Czech Republic', 1.93, 'Check', '2016-04-04', 'Complete')
     , (4140, 204, 92, '2016-06-09', '2016-05-06', 'Rose Hunt', '3242 Bunting Trail', null, 'Schaumburg', 'Illinois',
        '60193', 'United States', 7.65, 'Check', '2016-07-03', 'On Hold')
     , (4141, 214, 12, '2016-11-19', '2017-03-16', 'Harry Reid', '395 Hauk Road', null, 'Rudky', null, null, 'Ukraine',
        5.23, 'Card', '2017-01-18', 'On Hold')
     , (4142, 212, 88, '2016-12-25', '2016-12-14', 'Fred Olson', '9311 Old Gate Park', null, 'Hejiabao', null, null,
        'China', 4.02, 'Check', '2016-05-16', 'New')
     , (4143, 217, 79, '2016-06-14', '2016-08-25', 'Paul Arnold', '08347 Comanche Pass', null, 'Bukovec', null,
        '739 84', 'Czech Republic', 6.02, 'Card', '2016-05-08', 'New')
     , (4144, 216, 56, '2016-06-03', '2016-07-22', 'Carolyn Woods', '55 Stoughton Pass', null, 'Shengmi', null, null,
        'China', 7.32, 'Card', '2016-07-27', 'New')
     , (4145, 218, 84, '2016-07-02', '2016-11-05', 'Craig Schmidt', '2 Stephen Plaza', null, 'Arhust', null, null,
        'Japan', 3.31, 'Check', '2016-06-17', 'New')
     , (4146, 219, 13, '2016-09-02', '2017-01-29', 'Antonio Jordan', '452 Clemons Court', null, 'København',
        'Region Hovedstaden', '1787', 'Denmark', 4.84, 'Card', '2016-11-10', 'Complete')
     , (4147, 212, 51, '2016-10-19', '2017-01-20', 'Carol Evans', '1649 Crescent Oaks Road', null, 'Roubaix',
        'Nord-Pas-de-Calais', '59100', 'France', 7.71, 'Card', '2017-03-08', 'On Hold')
     , (4148, 217, 26, '2016-04-16', '2016-11-28', 'Steven Torres', '73679 Morning Drive', null, 'Ayotupas', null, null,
        'Japan', 7.0, 'Card', '2016-06-12', 'On Hold')
     , (4149, 215, 1, '2017-02-06', '2016-10-27', 'Louis Watson', '03 Golf View Way', null, 'Madaoua', null, null,
        'United Kingdom', 4.45, 'Check', '2016-07-22', 'Complete')
     , (4150, 210, 100, '2017-01-14', '2016-11-12', 'Robin Reynolds', '5 Hagan Hill', null, 'Huacaschuque', null, null,
        'Peru', 7.37, 'Check', '2017-02-09', 'New')
     , (4151, 217, 24, '2016-09-06', '2016-10-11', 'Julia Gilbert', '3 Manitowish Avenue', null, 'Passos',
        'Viana do Castelo', '4990-770', 'Portugal', 1.76, 'Card', '2016-07-16', 'New')
     , (4152, 210, 90, '2016-05-26', '2016-07-14', 'Chris Chavez', '0 Birchwood Plaza', null, 'Odivelas', 'Lisboa',
        '2675-080', 'Portugal', 8.35, 'Cash', '2017-02-05', 'On Hold')
     , (4153, 220, 79, '2016-10-27', '2016-08-14', 'Adam Morrison', '04510 West Circle', null, 'Weda', null, null,
        'Japan', 8.84, 'Check', '2016-10-05', 'On Hold')
     , (4154, 210, 57, '2017-02-21', '2016-09-28', 'Doris Snyder', '37027 Hintze Parkway', null, 'Vakhrushi', null,
        '613110', 'Russia', 2.75, 'Cash', '2016-12-02', 'Complete')
     , (4155, 202, 24, '2017-02-03', '2016-08-03', 'Lisa Fisher', '919 Warner Circle', null, 'Kanbe', null, null,
        'India', 2.48, 'Check', '2016-12-23', 'New')
     , (4156, 213, 89, '2017-01-26', '2016-06-25', 'Gloria Murphy', '6750 Hansons Center', null, 'Saint Petersburg',
        null, '190990', 'Russia', 2.88, 'Cash', '2017-01-31', 'On Hold')
     , (4157, 219, 83, '2016-08-03', '2016-06-15', 'Sara Mcdonald', '88365 Namekagon Park', null, 'Maofan', null, null,
        'China', 4.69, 'Cash', '2016-09-22', 'New')
     , (4158, 202, 79, '2016-08-13', '2016-10-08', 'John Barnes', '41 Springs Plaza', null, 'Carangola', null,
        '36800-000', 'Brazil', 4.84, 'Check', '2016-11-25', 'New')
     , (4159, 215, 84, '2016-11-30', '2017-02-27', 'Bobby Matthews', '39153 Kipling Trail', null, 'Now Zād', null, null,
        'Germany', 7.56, 'Cash', '2016-09-25', 'Shipped')
     , (4160, 216, 40, '2016-07-27', '2016-12-05', 'Robin Greene', '899 Waubesa Alley', null, 'Vellinge', 'Skåne',
        '235 93', 'Sweden', 4.17, 'Card', '2016-12-22', 'New')
     , (4161, 211, 91, '2017-03-12', '2016-09-11', 'Joseph Long', '3 Nobel Terrace', null, 'Bukabu', null, null,
        'Japan', 2.26, 'Card', '2016-10-26', 'On Hold')
     , (4162, 204, 94, '2016-10-08', '2016-09-26', 'Lisa Rodriguez', '880 Arizona Terrace', null, 'Elena', null, '5815',
        'Argentina', 3.13, 'Cash', '2016-06-15', 'Shipped')
     , (4163, 208, 49, '2017-02-23', '2016-06-05', 'Douglas Parker', '79 Mariners Cove Plaza', null, 'Şafāshahr', null,
        null, 'Iran', 1.83, 'Cash', '2016-10-26', 'On Hold')
     , (4164, 201, 23, '2016-10-31', '2017-01-07', 'Laura Stewart', '97911 Meadow Ridge Road', null, 'Hexi', null, null,
        'China', 1.24, 'Check', '2017-03-08', 'Shipped')
     , (4165, 202, 27, '2017-01-07', '2016-10-05', 'Matthew Jordan', '29 Lakewood Trail', null, 'Kalkal Barat', null,
        null, 'Japan', 9.19, 'Card', '2016-09-03', 'Shipped')
     , (4166, 218, 61, '2016-03-31', '2017-03-03', 'Denise Mason', '79 Carberry Alley', null, 'Vạn Giã', null, null,
        'Vietnam', 7.78, 'Card', '2016-03-23', 'New')
     , (4167, 220, 56, '2016-11-12', '2016-06-18', 'Phillip Castillo', '9910 Reindahl Parkway', null, 'Shangyanzhuang',
        null, null, 'China', 2.48, 'Card', '2016-07-14', 'Complete')
     , (4168, 201, 41, '2016-07-10', '2016-07-29', 'Dorothy Nelson', '8 Hermina Terrace', null, 'Petrolina', null,
        '56300-000', 'Brazil', 1.52, 'Check', '2016-11-11', 'Shipped')
     , (4169, 218, 100, '2016-12-18', '2016-12-02', 'Lawrence Willis', '21 Northland Trail', null, 'Bukor', null, null,
        'India', 2.28, 'Card', '2017-01-06', 'New')
     , (4170, 218, 6, '2016-10-31', '2016-10-20', 'Jonathan Banks', '5748 Kings Hill', null, 'Tianning', null, null,
        'China', 5.71, 'Check', '2016-06-02', 'Shipped')
     , (4171, 211, 93, '2016-11-16', '2017-01-20', 'Gary Green', '001 Straubel Point', null, 'Huangshapu', null, null,
        'China', 3.6, 'Cash', '2016-12-12', 'Complete')
     , (4172, 203, 46, '2016-10-16', '2016-09-08', 'Nancy Bryant', '367 Gateway Park', null, 'Zhutang', null, null,
        'China', 2.19, 'Cash', '2017-02-15', 'Shipped')
     , (4173, 208, 72, '2016-08-27', '2016-04-09', 'Jeremy Rose', '8 Service Lane', null, 'Jinshandian', null, null,
        'China', 8.09, 'Check', '2017-01-18', 'On Hold')
     , (4174, 212, 88, '2016-06-25', '2016-08-21', 'Rebecca Gibson', '74 American Crossing', null, 'Canmang', null,
        null, 'China', 1.31, 'Card', '2017-02-08', 'New')
     , (4175, 208, 75, '2017-02-28', '2017-01-03', 'Marilyn Hanson', '676 Service Crossing', null, 'Racławice', null,
        '32-222', 'Poland', 2.88, 'Check', '2017-02-18', 'New')
     , (4176, 204, 1, '2016-09-23', '2016-08-16', 'Denise Hanson', '8 Lakewood Crossing', null, 'Huaizhong', null, null,
        'China', 9.48, 'Card', '2016-12-30', 'On Hold')
     , (4177, 204, 20, '2017-03-02', '2016-12-27', 'John Shaw', '4752 Meadow Ridge Lane', null, 'Sosnovo-Ozerskoye',
        null, '612955', 'Russia', 7.17, 'Check', '2016-06-21', 'On Hold')
     , (4178, 202, 30, '2016-03-20', '2016-10-17', 'Russell Fernandez', '5941 Esch Lane', null, 'Shuiyang', null, null,
        'China', 1.04, 'Check', '2017-01-05', 'On Hold')
     , (4179, 202, 27, '2017-01-14', '2016-07-31', 'Annie Ruiz', '67778 Butterfield Trail', null, 'Qalyūb', null, null,
        'Germany', 5.51, 'Card', '2016-05-12', 'Shipped')
     , (4180, 208, 1, '2017-03-16', '2016-04-04', 'Ashley Gonzales', '88504 Johnson Street', null, 'Salingogan', null,
        '6417', 'Philippines', 7.56, 'Check', '2016-07-26', 'Shipped')
     , (4181, 203, 70, '2016-03-25', '2016-11-06', 'Richard George', '54 3rd Circle', null, 'Haibeitou', null, null,
        'China', 1.99, 'Cash', '2016-09-05', 'New')
     , (4182, 219, 69, '2016-04-11', '2017-02-03', 'David Harris', '2 Menomonie Pass', null, 'Oslo', 'Oslo', '0188',
        'Greece', 1.93, 'Check', '2016-11-30', 'Shipped')
     , (4183, 211, 25, '2016-12-08', '2016-11-16', 'Catherine Reynolds', '302 Autumn Leaf Parkway', null, 'Lameiras',
        'Lisboa', '2715-145', 'Portugal', 6.68, 'Cash', '2016-04-02', 'Shipped')
     , (4184, 217, 73, '2016-06-19', '2016-11-29', 'Donald Moreno', '690 Laurel Park', null, 'Sinisian', null, '4212',
        'Philippines', 3.1, 'Check', '2017-01-06', 'New')
     , (4185, 210, 34, '2016-07-03', '2016-05-23', 'Ryan Thomas', '45044 Harper Place', null, 'Madīnat Lab‘ūs', null,
        null, 'South Africa', 6.31, 'Cash', '2016-06-27', 'Complete')
     , (4186, 206, 91, '2016-05-26', '2016-09-09', 'Ruby Lynch', '8350 Karstens Parkway', null, 'Puyo', null, null,
        'Argentina', 6.07, 'Check', '2016-05-10', 'Shipped')
     , (4187, 208, 64, '2016-05-31', '2016-10-16', 'Linda Robinson', '6069 Chive Plaza', null, 'Joutseno', null,
        '54101', 'Finland', 3.11, 'Card', '2016-05-15', 'Shipped')
     , (4188, 216, 41, '2017-02-07', '2016-03-28', 'Bonnie Morris', '2611 Comanche Junction', null, 'Lacombe',
        'Alberta', 'T4L', 'Canada', 2.53, 'Check', '2016-08-31', 'New')
     , (4189, 206, 51, '2016-12-20', '2016-12-08', 'Dennis Gardner', '2348 Blue Bill Park Crossing', null, 'Ngkiong',
        null, null, 'Japan', 5.1, 'Check', '2016-11-28', 'New')
     , (4190, 220, 54, '2016-08-06', '2016-08-27', 'Carolyn Matthews', '817 Ohio Point', null, 'Orekhovo-Zuyevo', null,
        '142609', 'Russia', 7.52, 'Card', '2016-03-22', 'On Hold')
     , (4191, 207, 96, '2016-07-03', '2016-06-18', 'Jesse Parker', '3 Eastwood Terrace', null, 'Berezovo', null, null,
        'Ukraine', 6.64, 'Check', '2016-05-07', 'New')
     , (4192, 216, 18, '2016-06-05', '2017-01-11', 'Ann Gilbert', '6 Oak Valley Lane', null, 'Caijiang', null, null,
        'China', 3.72, 'Cash', '2016-11-17', 'On Hold')
     , (4193, 208, 22, '2016-06-26', '2017-02-22', 'Martha Hawkins', '57581 Union Road', null, 'Ilinden', null, '1041',
        'Denmark', 5.64, 'Cash', '2016-05-23', 'On Hold')
     , (4194, 207, 42, '2017-02-03', '2017-01-08', 'Jeffrey Hart', '83 Green Ridge Point', null, 'Wangcheng', null,
        null, 'China', 1.15, 'Check', '2016-12-07', 'Shipped')
     , (4195, 217, 28, '2016-10-18', '2016-05-01', 'Joseph Riley', '54373 Coleman Street', null, 'Karangbungur', null,
        null, 'Japan', 5.9, 'Cash', '2016-04-23', 'Complete')
     , (4196, 207, 78, '2016-07-09', '2016-07-15', 'Brian Dean', '9 Stone Corner Hill', null, 'Dambulla', null, '21100',
        'United Kingdom', 5.15, 'Check', '2016-07-09', 'On Hold')
     , (4197, 204, 38, '2016-07-19', '2016-04-13', 'Christine Campbell', '47302 Porter Junction', null, 'Dananshan',
        null, null, 'China', 6.74, 'Card', '2016-11-07', 'Complete')
     , (4198, 201, 7, '2017-03-02', '2016-08-16', 'Ruth Mcdonald', '401 Erie Avenue', null, 'Borkowice', null, '26-422',
        'Poland', 3.24, 'Cash', '2016-04-17', 'New')
     , (4199, 216, 87, '2016-12-14', '2017-03-05', 'Jean Armstrong', '450 Sullivan Avenue', null, 'Carpenter', null,
        '2009', 'Philippines', 4.25, 'Cash', '2016-07-11', 'Complete')
     , (4200, 218, 8, '2017-02-01', '2016-04-17', 'Gary Price', '775 Butterfield Lane', null, 'Vaasa', null, '66999',
        'Finland', 5.36, 'Card', '2016-07-09', 'Shipped')
     , (4201, 217, 77, '2016-11-10', '2016-11-13', 'Carolyn Scott', '5878 Badeau Lane', null, 'Kazanskaya', null,
        '396614', 'Russia', 7.94, 'Card', '2016-12-09', 'New')
     , (4202, 204, 10, '2016-08-12', '2016-03-21', 'Earl Anderson', '9 Roth Court', null, 'Governor’s Harbour', null,
        null, 'Canada', 2.47, 'Card', '2016-08-06', 'Complete')
     , (4203, 204, 54, '2016-05-26', '2016-04-18', 'Elizabeth Kelley', '70 Burrows Street', null, 'Fucheng', null, null,
        'China', 9.94, 'Cash', '2016-08-24', 'Shipped')
     , (4204, 208, 58, '2017-03-09', '2016-04-17', 'Julia Wilson', '46476 Burning Wood Crossing', null, 'Koper', null,
        '6600', 'India', 3.82, 'Card', '2016-08-26', 'New')
     , (4205, 208, 85, '2016-05-04', '2016-03-18', 'Jeffrey Oliver', '39 Tennessee Avenue', null, 'Jejkowice', null,
        '44-290', 'Poland', 7.22, 'Card', '2016-09-23', 'Shipped')
     , (4206, 220, 8, '2016-06-16', '2017-01-03', 'Angela Walker', '579 Miller Street', null, 'Hà Tĩnh', null, null,
        'Vietnam', 1.04, 'Check', '2016-05-18', 'Complete')
     , (4207, 212, 55, '2016-07-04', '2016-11-09', 'Karen Hansen', '953 Manufacturers Pass', null, 'Lysekil',
        'Västra Götaland', '453 35', 'Sweden', 8.81, 'Check', '2016-03-18', 'New')
     , (4208, 217, 96, '2016-10-26', '2016-07-11', 'Patricia West', '1 Browning Alley', null, 'Huayang', null, null,
        'China', 7.54, 'Card', '2016-09-15', 'New')
     , (4209, 203, 71, '2016-08-04', '2017-01-01', 'Phillip Gardner', '30438 Mariners Cove Way', null, 'Phu Khiao',
        null, '36110', 'Thailand', 3.03, 'Check', '2016-03-31', 'Shipped')
     , (4210, 207, 30, '2017-03-08', '2016-07-21', 'Fred Howard', '45981 Hovde Trail', null, 'Suncheon', null, null,
        'Finland', 1.13, 'Check', '2016-07-14', 'On Hold')
     , (4211, 217, 57, '2016-05-28', '2017-03-11', 'George Wagner', '24863 Messerschmidt Road', null, 'Ningzhong', null,
        null, 'China', 6.5, 'Check', '2016-07-26', 'New')
     , (4212, 213, 19, '2016-11-28', '2016-06-09', 'Clarence Russell', '85 Kropf Circle', null, 'Ouro Branco', null,
        '59347-000', 'Brazil', 6.88, 'Check', '2016-04-02', 'On Hold')
     , (4213, 217, 51, '2016-06-25', '2016-05-25', 'Jane Johnston', '1708 Corscot Pass', null, 'Şafāshahr', null, null,
        'Iran', 9.16, 'Cash', '2016-10-12', 'Complete')
     , (4214, 203, 88, '2017-02-19', '2016-03-25', 'John Adams', '100 Hollow Ridge Way', null, 'Satita', null, null,
        'India', 3.01, 'Cash', '2016-11-19', 'Shipped')
     , (4215, 202, 12, '2017-01-26', '2016-10-07', 'Diana Graham', '12 Esch Park', null, 'Krasnokamensk', null,
        '662955', 'Russia', 9.29, 'Check', '2016-06-10', 'Shipped')
     , (4216, 211, 66, '2016-07-19', '2016-11-30', 'John Henry', '448 Hanover Trail', null, 'Phitsanulok', null,
        '65000', 'Thailand', 7.23, 'Card', '2016-09-22', 'Shipped')
     , (4217, 218, 98, '2016-11-20', '2016-11-12', 'Donna Bradley', '92136 Arkansas Avenue', null, 'Balong Wetan', null,
        null, 'Japan', 7.79, 'Card', '2016-12-18', 'New')
     , (4218, 206, 5, '2016-05-04', '2016-08-19', 'Kevin Harper', '2911 Laurel Point', null, 'Patapan', null, null,
        'Japan', 1.52, 'Card', '2016-03-20', 'On Hold')
     , (4219, 205, 76, '2016-11-15', '2016-12-12', 'Margaret Hanson', '9603 Northridge Junction', null, 'Mwembe', null,
        null, 'India', 4.76, 'Cash', '2017-03-14', 'Shipped')
     , (4220, 206, 62, '2016-12-30', '2016-10-23', 'Henry Bradley', '84 Lake View Plaza', null, 'Zheleznovodsk', null,
        '357408', 'Russia', 8.08, 'Cash', '2017-02-23', 'Complete')
     , (4221, 218, 91, '2016-08-07', '2016-08-31', 'Jane Fowler', '2484 Hoepker Hill', null, 'Huangcun', null, null,
        'China', 9.34, 'Card', '2017-01-10', 'Complete')
     , (4222, 207, 19, '2016-05-22', '2016-06-25', 'Kimberly Peterson', '5851 Carey Crossing', null, 'Pochuta', null,
        '04008', 'Japan', 9.16, 'Card', '2016-04-25', 'Shipped')
     , (4223, 203, 69, '2017-02-13', '2016-09-18', 'Nicholas Simpson', '9 Hudson Way', null, 'Chashan', null, null,
        'China', 5.37, 'Check', '2017-01-01', 'On Hold')
     , (4224, 214, 71, '2017-02-28', '2016-06-18', 'Carol Rodriguez', '78 Grayhawk Place', null, 'Luntas', null, null,
        'Indonesia', 1.76, 'Card', '2016-10-06', 'Shipped')
     , (4225, 207, 34, '2017-03-06', '2016-07-20', 'Jessica Mason', '65 Merrick Lane', null, 'Křižanov', null, '789 01',
        'Czech Republic', 9.75, 'Card', '2016-12-28', 'New')
     , (4226, 209, 74, '2016-06-04', '2017-01-15', 'Jeffrey Sims', '05441 Wayridge Pass', null, 'Rennes', 'Bretagne',
        '35047 CEDEX 9', 'France', 9.09, 'Check', '2016-05-19', 'Shipped')
     , (4227, 205, 74, '2016-09-09', '2017-01-06', 'Arthur Simmons', '733 Logan Circle', null, 'Dzhankoy', null, null,
        'Ukraine', 2.51, 'Check', '2017-01-25', 'New')
     , (4228, 207, 52, '2017-01-30', '2017-01-08', 'Kevin Williams', '3561 6th Trail', null, 'Narganá', null, null,
        'Denmark', 7.32, 'Cash', '2016-06-24', 'On Hold')
     , (4229, 209, 76, '2016-05-05', '2016-07-11', 'Joe Stewart', '0314 Ryan Parkway', null, 'San Jose', 'Oaxaca',
        '69570', 'Mexico', 9.28, 'Check', '2016-05-06', 'Shipped')
     , (4230, 214, 2, '2016-09-19', '2016-09-08', 'Walter Barnes', '80695 Stone Corner Road', null, 'Busdi', null,
        '6210', 'Philippines', 5.97, 'Check', '2016-07-19', 'Shipped')
     , (4231, 211, 55, '2016-08-27', '2016-10-04', 'Sean Holmes', '91 Becker Drive', null, 'Gezan', null, null, 'China',
        3.81, 'Check', '2016-06-14', 'Shipped')
     , (4232, 209, 14, '2016-04-01', '2017-03-06', 'Sandra Perez', '45373 Buhler Park', null, 'Ust’-Kut', null,
        '162176', 'Russia', 4.25, 'Cash', '2017-01-22', 'Shipped')
     , (4233, 205, 96, '2016-09-27', '2016-07-03', 'Sara Kelly', '73457 Buhler Court', null, 'Sima', null, null,
        'Canada', 7.2, 'Card', '2016-12-14', 'Complete')
     , (4234, 217, 74, '2016-11-22', '2017-01-18', 'Edward Reid', '02 Westport Trail', null, 'Tchaourou', null, null,
        'India', 3.5, 'Cash', '2016-12-25', 'New')
     , (4235, 206, 69, '2016-03-17', '2016-10-29', 'Betty Cook', '83578 Ohio Avenue', null, 'Stockholm', 'Stockholm',
        '101 22', 'Sweden', 6.17, 'Check', '2016-09-02', 'On Hold')
     , (4236, 217, 97, '2017-02-06', '2016-07-01', 'Diana Ellis', '49 Jenna Circle', null, 'Yanshan', null, null,
        'China', 6.06, 'Check', '2016-07-16', 'Complete')
     , (4237, 216, 17, '2016-11-30', '2016-10-02', 'Donald Miller', '8581 Farragut Junction', null, 'Yosowilangun',
        null, null, 'Indonesia', 8.9, 'Check', '2016-11-01', 'Complete')
     , (4238, 203, 21, '2017-02-09', '2016-12-14', 'Eric Coleman', '9242 Badeau Street', null, 'Caiyuan', null, null,
        'China', 4.1, 'Check', '2016-06-07', 'Shipped')
     , (4239, 213, 23, '2016-09-15', '2016-11-04', 'Heather Vasquez', '454 Gale Hill', null, 'Susoh', null, null,
        'Indonesia', 1.59, 'Check', '2016-10-25', 'New')
     , (4240, 208, 2, '2016-05-28', '2016-05-21', 'Martin Sims', '30 Bunting Center', null, 'Efeng', null, null,
        'China', 1.92, 'Cash', '2016-12-15', 'Complete')
     , (4241, 202, 85, '2017-02-05', '2016-08-13', 'Catherine Washington', '637 Hermina Court', null, 'San Francisco',
        'Jalisco', '46175', 'Mexico', 6.49, 'Card', '2016-12-20', 'On Hold')
     , (4242, 204, 17, '2016-10-04', '2016-05-13', 'Gary Kennedy', '2 Grasskamp Point', null, 'Famaillá', null, '4132',
        'Argentina', 9.78, 'Card', '2016-12-03', 'Complete')
     , (4243, 205, 86, '2016-04-15', '2016-05-25', 'Pamela Parker', '43642 Utah Point', null, 'Santa Rosa',
        'Nuevo Leon', '67803', 'Mexico', 1.78, 'Card', '2017-02-16', 'Shipped')
     , (4244, 208, 3, '2016-08-02', '2017-03-13', 'Michelle Russell', '947 Jenna Place', null, 'Kinshasa', null, null,
        'Canada', 8.43, 'Cash', '2016-04-13', 'New')
     , (4245, 210, 32, '2016-06-16', '2016-07-14', 'Lois Jenkins', '1 Pepper Wood Road', null, 'Kallinge', 'Blekinge',
        '372 53', 'Sweden', 4.77, 'Cash', '2016-03-17', 'On Hold')
     , (4246, 203, 39, '2017-02-04', '2016-08-08', 'Kelly Ramirez', '20490 Eagle Crest Circle', null, 'Baraba', null,
        '623509', 'Russia', 8.65, 'Cash', '2016-10-04', 'Complete')
     , (4247, 202, 24, '2016-05-05', '2016-11-26', 'Harold Gray', '9033 Elmside Plaza', null, 'N’dalatando', null, null,
        'Netherlands', 2.78, 'Cash', '2016-07-24', 'New')
     , (4248, 210, 16, '2017-01-27', '2017-03-14', 'Dennis Fisher', '4 Sage Road', null, 'Niederanven', null, 'L-6948',
        'United Kingdom', 1.26, 'Check', '2016-05-12', 'On Hold')
     , (4249, 203, 20, '2016-07-21', '2016-12-08', 'Antonio Wells', '99743 Algoma Hill', null, 'Mūdīyah', null, null,
        'South Africa', 4.36, 'Card', '2016-05-28', 'Complete')
     , (4250, 217, 88, '2016-05-31', '2016-10-17', 'William Gonzales', '3258 Holy Cross Way', null, 'Yangdun', null,
        null, 'China', 7.06, 'Check', '2016-04-13', 'New')
     , (4251, 211, 1, '2017-03-04', '2016-10-27', 'Ronald Ward', '5 Logan Terrace', null, 'Tanahmerah', null, null,
        'Indonesia', 4.38, 'Card', '2016-09-22', 'On Hold')
     , (4252, 217, 87, '2016-12-29', '2016-09-18', 'Gloria Boyd', '10 Grayhawk Hill', null, 'Boromlya', null, null,
        'Ukraine', 4.84, 'Cash', '2016-08-01', 'On Hold')
     , (4253, 212, 99, '2017-02-02', '2016-04-28', 'Raymond Scott', '3 Donald Trail', null, 'Lakshmīpur', null, '1553',
        'Canada', 8.37, 'Cash', '2016-12-06', 'On Hold')
     , (4254, 201, 7, '2016-11-28', '2016-04-11', 'Arthur Hamilton', '95 Doe Crossing Avenue', null, 'Purwosari', null,
        null, 'Indonesia', 6.84, 'Card', '2016-06-14', 'Shipped')
     , (4255, 220, 100, '2016-09-30', '2016-10-08', 'Jean Wagner', '5690 Meadow Valley Alley', null, 'Svedala', 'Skåne',
        '233 94', 'Sweden', 8.57, 'Check', '2017-01-06', 'Shipped')
     , (4256, 218, 78, '2016-04-28', '2016-04-03', 'Kimberly Rose', '6067 Twin Pines Hill', null, 'Capinzal', null,
        '89665-000', 'Brazil', 6.07, 'Check', '2016-05-18', 'New')
     , (4257, 213, 44, '2016-11-04', '2016-03-28', 'Doris Foster', '170 Chive Court', null, 'Lang', null, null, 'China',
        1.72, 'Card', '2016-10-20', 'Shipped')
     , (4258, 208, 46, '2017-01-11', '2016-09-25', 'Teresa Reynolds', '3 Prairie Rose Alley', null, 'Tashang', null,
        null, 'China', 4.84, 'Card', '2016-10-16', 'On Hold')
     , (4259, 215, 89, '2016-07-07', '2016-12-29', 'Christine Turner', '0746 Heffernan Center', null, 'Henggang', null,
        null, 'China', 6.81, 'Cash', '2016-08-21', 'New')
     , (4260, 210, 23, '2016-10-26', '2017-02-10', 'Jimmy Jordan', '903 Anniversary Trail', null, 'Elaiochóri', null,
        null, 'Greece', 9.66, 'Cash', '2017-01-10', 'Complete')
     , (4261, 207, 20, '2016-11-07', '2017-02-17', 'Andrew Baker', '3 Pennsylvania Park', null, 'Kansas City',
        'Missouri', '64130', 'United States', 5.46, 'Cash', '2016-11-20', 'Complete')
     , (4262, 203, 32, '2017-02-21', '2016-11-17', 'Diana Dixon', '18520 Maryland Drive', null, 'Santa Catalina', null,
        '2701', 'Philippines', 4.66, 'Card', '2017-01-09', 'On Hold')
     , (4263, 210, 10, '2017-02-28', '2017-02-26', 'Karen Miller', '5608 Moose Court', null, 'Torres Vedras', 'Lisboa',
        '2560-234', 'Portugal', 5.71, 'Card', '2016-11-30', 'New')
     , (4264, 214, 39, '2017-01-09', '2016-10-24', 'Angela Austin', '9659 Vera Point', null, 'Santiaoshi', null, null,
        'China', 6.59, 'Check', '2016-05-07', 'Shipped')
     , (4265, 203, 3, '2016-11-11', '2016-11-22', 'Steve Snyder', '7626 Hoepker Junction', null, 'Wulan Hada', null,
        null, 'China', 5.67, 'Cash', '2017-01-01', 'New')
     , (4266, 218, 94, '2016-04-06', '2016-10-02', 'Kevin Daniels', '24 Chinook Point', null, 'Bhairāhawā', null, null,
        'United Kingdom', 8.21, 'Card', '2016-05-12', 'Shipped')
     , (4267, 203, 58, '2016-11-14', '2016-03-28', 'Patricia Welch', '60375 Corry Street', null, 'Solidaridad',
        'Veracruz Llave', '94330', 'Mexico', 2.77, 'Card', '2017-02-02', 'On Hold')
     , (4268, 218, 2, '2016-07-02', '2016-08-14', 'Wanda Reynolds', '965 Calypso Circle', null, 'Dera Bugti', null,
        '80100', 'Iran', 8.86, 'Check', '2017-01-30', 'On Hold')
     , (4269, 216, 47, '2017-03-11', '2016-07-16', 'Harold Williamson', '14332 Texas Junction', null, 'Mzimba', null,
        null, 'India', 2.47, 'Cash', '2016-06-01', 'Shipped')
     , (4270, 213, 62, '2016-11-09', '2017-02-07', 'Juan Fox', '17 Eagan Crossing', null, 'Xiayang', null, null,
        'China', 7.63, 'Card', '2017-02-17', 'Shipped')
     , (4271, 211, 70, '2016-04-16', '2016-04-26', 'Ryan Long', '0 Harper Circle', null, 'Blagoveshchenka', null,
        '658670', 'Russia', 3.2, 'Card', '2016-09-10', 'Complete')
     , (4272, 206, 29, '2016-03-25', '2016-10-07', 'Frank Cole', '07 Westend Place', null, 'Laixi', null, null, 'China',
        1.93, 'Cash', '2016-05-01', 'New')
     , (4273, 209, 25, '2016-05-06', '2016-04-13', 'Tammy Wilson', '74278 Grim Pass', null, 'Åkersberga', 'Stockholm',
        '184 70', 'Sweden', 2.83, 'Card', '2016-10-29', 'Complete')
     , (4274, 206, 82, '2017-02-07', '2017-03-06', 'Joan Gonzales', '40 Stephen Street', null, 'Tlogoagung', null, null,
        'Indonesia', 3.44, 'Check', '2016-10-14', 'Complete')
     , (4275, 203, 91, '2016-10-10', '2016-11-04', 'Jeffrey Hughes', '38 Toban Plaza', null, 'Privas', 'Rhône-Alpes',
        '07004 CEDEX', 'France', 8.33, 'Card', '2016-04-23', 'On Hold')
     , (4276, 210, 89, '2016-05-14', '2016-09-03', 'Rachel Martin', '08 Lake View Hill', null, 'Sandgerði', null, '245',
        'India', 2.07, 'Cash', '2016-06-07', 'Complete')
     , (4277, 208, 97, '2016-04-06', '2016-07-02', 'Laura Harper', '1 Dexter Street', null, 'Xintaimen', null, null,
        'China', 8.08, 'Check', '2016-05-11', 'Shipped')
     , (4278, 215, 3, '2017-03-04', '2017-03-08', 'Annie Rivera', '5975 Debra Park', null, 'Canchaque', null, null,
        'Peru', 5.65, 'Check', '2016-04-09', 'Complete')
     , (4279, 201, 6, '2017-03-01', '2016-08-06', 'Pamela Graham', '2 Monument Avenue', null, 'Danxi', null, null,
        'China', 2.05, 'Check', '2016-05-23', 'New')
     , (4280, 202, 35, '2017-02-04', '2016-06-09', 'Joseph Jenkins', '00001 Fairfield Center', null, 'Mashtūl as Sūq',
        null, null, 'Germany', 5.32, 'Card', '2016-12-28', 'New')
     , (4281, 203, 76, '2016-05-19', '2016-07-29', 'Eugene Garcia', '8308 Onsgard Lane', null, 'Limoncito', null, null,
        'India', 4.07, 'Card', '2016-10-20', 'Shipped')
     , (4282, 204, 27, '2016-07-20', '2016-09-26', 'Kevin Anderson', '8 Thierer Center', null, 'Saint-Étienne',
        'Rhône-Alpes', '42963 CEDEX 9', 'France', 4.88, 'Card', '2016-07-21', 'Complete')
     , (4283, 214, 50, '2016-11-27', '2016-06-14', 'Robin Parker', '51949 Forster Parkway', null, 'Laval',
        'Pays de la Loire', '53009 CEDEX', 'France', 1.04, 'Check', '2016-04-20', 'Complete')
     , (4284, 214, 74, '2016-11-29', '2016-12-08', 'Kelly Palmer', '2 Hauk Hill', null, 'Östersund', 'Jämtland',
        '831 17', 'Sweden', 4.26, 'Card', '2016-10-08', 'Complete')
     , (4285, 214, 76, '2016-10-22', '2016-05-05', 'Diane Freeman', '5441 Petterle Way', null, 'El Tambo', null, null,
        'Peru', 7.17, 'Check', '2016-09-27', 'New')
     , (4286, 209, 96, '2016-11-08', '2016-08-26', 'Kathleen Adams', '423 Talisman Point', null, 'Kurume', null,
        '963-8846', 'Japan', 1.99, 'Cash', '2016-05-19', 'On Hold')
     , (4287, 204, 76, '2016-10-18', '2017-01-15', 'Teresa Mendoza', '818 Atwood Lane', null, 'Mosteiro',
        'Viana do Castelo', '4980-125', 'Portugal', 3.29, 'Cash', '2016-10-03', 'On Hold')
     , (4288, 210, 45, '2016-10-15', '2016-12-14', 'Irene Anderson', '4 Rutledge Alley', null, 'Saparua', null, null,
        'Indonesia', 4.35, 'Card', '2016-10-13', 'On Hold')
     , (4289, 209, 61, '2017-02-12', '2016-07-15', 'Terry Bennett', '351 Johnson Circle', null, 'Quiling', null, '2902',
        'Philippines', 6.77, 'Card', '2016-07-20', 'New')
     , (4290, 203, 1, '2017-03-02', '2016-08-25', 'Ronald Mccoy', '73609 Waywood Center', null, 'Zheleznodorozhnyy',
        null, '238411', 'Russia', 1.05, 'Cash', '2016-06-10', 'New')
     , (4291, 211, 73, '2016-09-13', '2016-04-17', 'Andrew Matthews', '820 Lawn Crossing', null, 'Japeri', null,
        '26400-000', 'Brazil', 1.22, 'Cash', '2016-09-08', 'New')
     , (4292, 215, 15, '2016-12-26', '2016-10-04', 'Melissa Chapman', '88384 Ohio Park', null, 'Dayr al Ghuşūn', null,
        null, 'India', 9.89, 'Check', '2016-08-14', 'Shipped')
     , (4293, 210, 18, '2016-11-23', '2016-12-12', 'Russell Griffin', '6 Eliot Lane', null, 'Changshu City', null, null,
        'China', 9.37, 'Check', '2016-05-10', 'On Hold')
     , (4294, 206, 95, '2016-06-24', '2017-01-21', 'Jeffrey Gray', '04078 Hudson Drive', null, 'Luangwa', null, null,
        'India', 2.58, 'Cash', '2016-06-15', 'Shipped')
     , (4295, 215, 85, '2016-10-23', '2017-01-29', 'Lori Frazier', '724 Logan Drive', null, 'Gent', 'Vlaanderen',
        '9052', 'Denmark', 8.59, 'Cash', '2017-01-01', 'New')
     , (4296, 217, 83, '2016-04-08', '2017-02-07', 'Joan Ortiz', '90 Merchant Avenue', null, 'Irasan', null, '3120',
        'Philippines', 4.64, 'Card', '2016-09-01', 'Complete')
     , (4297, 211, 29, '2016-07-13', '2017-02-06', 'John Stanley', '680 Artisan Pass', null, 'Borås', 'Västra Götaland',
        '504 75', 'Sweden', 1.77, 'Cash', '2016-07-12', 'On Hold')
     , (4298, 208, 65, '2016-12-28', '2016-04-19', 'Dorothy Bell', '397 Kim Place', null, 'Zhongxin', null, null,
        'China', 1.2, 'Check', '2017-01-28', 'On Hold')
     , (4299, 201, 43, '2017-01-12', '2016-08-07', 'Doris Ramirez', '181 Prentice Terrace', null, 'Severnyy', null,
        '141707', 'Russia', 2.65, 'Card', '2016-08-13', 'Shipped')
     , (4300, 207, 27, '2016-11-10', '2016-11-01', 'Elizabeth Harrison', '067 Talisman Trail', null, 'Guangang', null,
        null, 'China', 4.78, 'Check', '2016-04-30', 'On Hold')
     , (4301, 206, 64, '2016-08-14', '2017-01-13', 'Judith Howard', '55095 Sloan Alley', null, 'Longhua', null, null,
        'China', 1.93, 'Card', '2016-10-29', 'New')
     , (4302, 213, 33, '2017-01-19', '2016-05-23', 'Julia Simpson', '87375 Londonderry Parkway', null, 'Fufang', null,
        null, 'China', 9.23, 'Card', '2016-11-15', 'Shipped')
     , (4303, 220, 49, '2016-08-01', '2016-04-23', 'Elizabeth Bell', '60 Ridgeview Trail', null, 'Infantas', 'Braga',
        '4810-578', 'Portugal', 3.22, 'Check', '2017-02-01', 'Complete')
     , (4304, 217, 56, '2016-09-07', '2016-08-13', 'Ernest Andrews', '231 Graceland Terrace', null, 'Pindamonhangaba',
        null, '12400-000', 'Brazil', 2.77, 'Card', '2016-04-04', 'On Hold')
     , (4305, 219, 44, '2016-06-11', '2016-03-27', 'Jeffrey Lopez', '76434 Havey Court', null, 'Khvalovo', null,
        '187435', 'Russia', 8.84, 'Cash', '2016-04-14', 'Shipped')
     , (4306, 212, 16, '2016-05-29', '2016-12-31', 'Ralph Weaver', '15 Armistice Alley', null, 'Odienné', null, null,
        'Canada', 7.1, 'Card', '2017-01-09', 'Shipped')
     , (4307, 210, 16, '2016-10-19', '2017-01-10', 'Mary Stevens', '1928 Aberg Park', null, 'Dzwola', null, '23-304',
        'Poland', 4.04, 'Card', '2016-08-24', 'Complete')
     , (4308, 220, 50, '2016-09-23', '2016-09-16', 'Douglas Welch', '9 Ryan Circle', null, 'Babakanloa', null, null,
        'Indonesia', 1.11, 'Card', '2016-10-13', 'Shipped')
     , (4309, 217, 99, '2016-10-17', '2017-01-01', 'Raymond Cruz', '0402 Burning Wood Alley', null, 'Bucay', null,
        '2805', 'Philippines', 9.27, 'Cash', '2016-06-02', 'Complete')
     , (4310, 219, 65, '2016-04-14', '2016-05-14', 'Sara Frazier', '43 Truax Terrace', null, 'Halton', 'England', 'LS9',
        'United Kingdom', 5.56, 'Check', '2016-12-04', 'New')
     , (4311, 220, 17, '2017-02-03', '2016-07-09', 'Sarah Lane', '414 Gina Point', null, 'Fulong', null, null, 'China',
        3.35, 'Cash', '2016-12-27', 'New')
     , (4312, 205, 77, '2017-02-27', '2016-04-10', 'Michelle Bradley', '16664 Towne Point', null, 'Yangchun', null,
        null, 'China', 8.64, 'Cash', '2017-01-28', 'Complete')
     , (4313, 210, 68, '2016-08-29', '2016-10-27', 'Marie Porter', '7802 Hovde Plaza', null, 'Redakodi', null, null,
        'Indonesia', 1.97, 'Cash', '2016-11-08', 'Complete')
     , (4314, 207, 41, '2016-08-08', '2016-08-31', 'Melissa Moore', '438 Mendota Way', null, 'Bensonville', null, null,
        'United Kingdom', 7.97, 'Cash', '2017-01-17', 'New')
     , (4315, 212, 96, '2016-08-08', '2016-07-27', 'Katherine Bell', '76 Manley Park', null, 'Xagmakajor', null, null,
        'China', 7.49, 'Cash', '2016-03-29', 'New')
     , (4316, 209, 67, '2016-09-26', '2017-02-03', 'Katherine Elliott', '86 Nelson Point', null, 'Boavista', 'Aveiro',
        '4520-104', 'Portugal', 1.92, 'Card', '2016-04-28', 'Complete')
     , (4317, 219, 40, '2016-10-09', '2016-12-21', 'Dorothy Rose', '75962 Basil Drive', null, 'Pécs', 'Baranya', '7610',
        'Denmark', 3.23, 'Card', '2017-02-21', 'Shipped')
     , (4318, 209, 68, '2017-01-15', '2017-01-03', 'Larry Hicks', '5985 Crest Line Road', null, 'Lingqiao', null, null,
        'China', 2.77, 'Check', '2017-01-20', 'Complete')
     , (4319, 214, 55, '2016-07-14', '2017-03-05', 'Paula Rodriguez', '6 Lawn Court', null, 'Simajia', null, null,
        'China', 6.33, 'Check', '2016-04-08', 'Shipped')
     , (4320, 203, 83, '2016-12-26', '2016-10-07', 'Sharon Richards', '43297 Rigney Avenue', null, 'Salto', null, null,
        'India', 7.32, 'Check', '2016-09-14', 'Complete')
     , (4321, 215, 29, '2016-12-27', '2016-07-21', 'Craig Day', '22 Thierer Center', null, 'Alberton',
        'Prince Edward Island', 'P7K', 'Canada', 5.32, 'Check', '2016-04-02', 'On Hold')
     , (4322, 207, 80, '2016-12-06', '2016-05-21', 'Donna Butler', '4149 Bartelt Point', null, 'Carbonear',
        'Newfoundland and Labrador', 'A1Y', 'Canada', 3.1, 'Check', '2016-10-03', 'New')
     , (4323, 216, 31, '2016-06-27', '2017-03-13', 'Carolyn Ferguson', '97225 Bartelt Avenue', null, 'Tinalmud', null,
        '1531', 'Philippines', 7.11, 'Cash', '2016-05-22', 'Complete')
     , (4324, 212, 78, '2016-05-19', '2016-11-14', 'Peter Romero', '22977 Westridge Terrace', null, 'Toulouse',
        'Midi-Pyrénées', '31029 CEDEX 4', 'France', 2.97, 'Check', '2016-09-09', 'Shipped')
     , (4325, 213, 73, '2017-02-18', '2016-09-22', 'Jose Greene', '40351 Rusk Place', null, 'Vila Nova de Gaia',
        'Porto', '4400-005', 'Portugal', 5.76, 'Cash', '2016-12-12', 'Shipped')
     , (4326, 208, 62, '2017-02-14', '2016-11-13', 'Betty Anderson', '8403 Melody Center', null, 'Būsh', null, null,
        'Germany', 9.56, 'Check', '2016-10-08', 'Shipped')
     , (4327, 220, 56, '2016-09-06', '2016-08-17', 'Amanda Frazier', '47 Dapin Center', null, 'Pasirmanggu', null, null,
        'Indonesia', 2.25, 'Card', '2016-07-11', 'On Hold')
     , (4328, 201, 24, '2016-10-29', '2017-01-25', 'Douglas Foster', '6953 Stoughton Avenue', null, 'Bokhan', null,
        '669310', 'Russia', 1.26, 'Card', '2016-07-06', 'Complete')
     , (4329, 206, 33, '2017-03-09', '2017-03-12', 'Louis Brown', '76 Little Fleur Park', null, 'Shazhenxi', null, null,
        'China', 3.4, 'Check', '2016-08-09', 'Complete')
     , (4330, 205, 61, '2016-04-14', '2016-09-26', 'Elizabeth Butler', '82 Springview Road', null, 'Kimito', null,
        '11710', 'Finland', 1.92, 'Card', '2016-10-18', 'Shipped')
     , (4331, 220, 39, '2016-06-10', '2016-04-07', 'Albert Flores', '19 Talmadge Hill', null, 'Almelo',
        'Provincie Overijssel', '7604', 'Netherlands', 4.23, 'Check', '2016-12-15', 'Shipped')
     , (4332, 217, 47, '2016-10-25', '2016-09-28', 'Kimberly Fowler', '0 Trailsway Crossing', null, 'Iwata', null,
        '925-0145', 'Japan', 8.14, 'Check', '2016-06-06', 'On Hold')
     , (4333, 209, 12, '2016-12-25', '2016-10-31', 'Joe Powell', '5 Everett Drive', null, 'Bergen', 'Hordaland', '5895',
        'Greece', 8.02, 'Cash', '2016-09-05', 'Shipped')
     , (4334, 219, 1, '2016-08-12', '2017-02-18', 'Virginia Collins', '78693 Cordelia Point', null, 'San Benito', null,
        '8423', 'Philippines', 8.4, 'Cash', '2017-01-06', 'Complete')
     , (4335, 220, 59, '2017-02-26', '2016-11-05', 'Mary Howard', '5 Golf View Street', null, 'Gjinkar', null, null,
        'Canada', 3.54, 'Card', '2016-06-09', 'Complete')
     , (4336, 220, 19, '2017-02-09', '2017-01-26', 'Ronald Stevens', '57 Old Shore Crossing', null, 'Bureng', null,
        null, 'United Kingdom', 8.21, 'Card', '2016-12-21', 'On Hold')
     , (4337, 204, 59, '2016-05-14', '2016-07-08', 'James Evans', '44078 Warner Drive', null, 'Amurzet', null, '679230',
        'Russia', 9.35, 'Card', '2016-07-22', 'Complete')
     , (4338, 213, 96, '2016-09-02', '2016-11-10', 'Willie Snyder', '361 Stone Corner Pass', null, 'Sindangsari', null,
        null, 'Indonesia', 9.32, 'Check', '2016-04-10', 'Complete')
     , (4339, 220, 30, '2017-03-04', '2016-08-16', 'Julie Black', '2922 Grasskamp Alley', null, 'Cotonou', null, null,
        'India', 9.14, 'Cash', '2017-03-07', 'Shipped')
     , (4340, 206, 17, '2016-11-18', '2016-11-24', 'Roy Olson', '4 Shopko Hill', null, 'Binagadi', null, null, 'India',
        5.22, 'Check', '2016-10-14', 'Shipped')
     , (4341, 202, 28, '2016-11-18', '2017-02-18', 'Evelyn Lawrence', '90 Crownhardt Center', null, 'Bayshint', null,
        null, 'Japan', 7.25, 'Check', '2016-12-16', 'On Hold')
     , (4342, 209, 37, '2016-10-30', '2016-06-07', 'John Rodriguez', '69 Golf View Avenue', null, 'Hezuoqiao', null,
        null, 'China', 8.23, 'Cash', '2016-11-05', 'On Hold')
     , (4343, 203, 51, '2016-04-09', '2016-12-17', 'Ruth Kim', '0027 Dunning Pass', null, 'Kuteynykove', null, null,
        'Ukraine', 2.46, 'Cash', '2016-03-28', 'New')
     , (4344, 217, 34, '2016-12-16', '2016-10-11', 'Shawn Patterson', '36 Little Fleur Circle', null, 'Xiekou', null,
        null, 'China', 6.43, 'Cash', '2016-03-27', 'New')
     , (4345, 213, 59, '2016-10-30', '2016-07-10', 'Nancy Jones', '47088 Crowley Junction', null, 'Promna', null,
        '26-803', 'Poland', 5.67, 'Cash', '2016-12-02', 'Complete')
     , (4346, 217, 70, '2016-12-27', '2016-10-06', 'Deborah Bishop', '1 Summer Ridge Circle', null, 'Bunobogu', null,
        null, 'Indonesia', 7.57, 'Cash', '2016-09-19', 'New')
     , (4347, 203, 30, '2016-05-26', '2016-08-14', 'Steve Hunt', '4393 Summer Ridge Crossing', null, 'Hošťka', null,
        '348 06', 'Czech Republic', 5.78, 'Cash', '2016-12-30', 'Shipped')
     , (4348, 203, 9, '2016-04-14', '2016-10-19', 'Betty Black', '23 Nova Junction', null, 'Sępólno Krajeńskie', null,
        '89-400', 'Poland', 8.55, 'Cash', '2016-09-23', 'New')
     , (4349, 211, 95, '2017-01-28', '2016-04-13', 'Gregory Wood', '96 Grasskamp Point', null, 'Psará', null, null,
        'Greece', 8.47, 'Cash', '2016-12-18', 'Shipped')
     , (4350, 218, 97, '2016-03-22', '2016-04-13', 'Martin Martinez', '5 Towne Crossing', null, 'Kista', 'Stockholm',
        '164 45', 'Sweden', 8.07, 'Check', '2016-05-15', 'On Hold')
     , (4351, 215, 80, '2016-06-20', '2016-11-05', 'Margaret Cook', '82 Eggendart Junction', null, 'Omuthiya', null,
        null, 'India', 9.71, 'Cash', '2016-09-18', 'Shipped')
     , (4352, 211, 15, '2016-09-02', '2017-01-23', 'Justin Myers', '6734 Continental Drive', null, 'Tadabliro', null,
        null, 'Indonesia', 2.23, 'Cash', '2016-05-12', 'New')
     , (4353, 216, 77, '2016-10-09', '2016-07-31', 'Jane Ruiz', '2743 Harbort Center', null, 'Pasar', null, null,
        'Indonesia', 4.88, 'Cash', '2016-06-04', 'New')
     , (4354, 202, 53, '2017-03-15', '2016-06-21', 'Philip Bradley', '6 Bartillon Park', null, 'Aimorés', null,
        '35200-000', 'Brazil', 5.01, 'Cash', '2016-05-16', 'New')
     , (4355, 220, 14, '2017-01-03', '2016-05-07', 'Phillip White', '1 Schurz Crossing', null, 'Tuzhai', null, null,
        'China', 7.06, 'Check', '2016-10-18', 'New')
     , (4356, 208, 85, '2016-12-26', '2016-07-28', 'George Ryan', '92 Morrow Road', null, 'Nijmegen',
        'Provincie Gelderland', '6519', 'Netherlands', 5.76, 'Cash', '2016-12-14', 'New')
     , (4357, 208, 73, '2016-04-06', '2016-04-01', 'Evelyn Rose', '134 Milwaukee Lane', null, 'Tiechang', null, null,
        'China', 5.37, 'Cash', '2016-12-19', 'Shipped')
     , (4358, 202, 77, '2016-04-14', '2016-10-21', 'Janet Robertson', '09309 Dottie Park', null, 'Ljubešćica', null,
        '42222', 'Canada', 5.27, 'Cash', '2016-06-07', 'On Hold')
     , (4359, 202, 35, '2016-05-08', '2017-01-27', 'Diana Perry', '95535 Lotheville Center', null, 'Kvasice', null,
        '768 21', 'Czech Republic', 7.1, 'Card', '2016-07-27', 'New')
     , (4360, 210, 86, '2016-11-23', '2016-10-12', 'Todd Elliott', '6737 Melrose Road', null, 'Catumbela', null, null,
        'Netherlands', 2.19, 'Check', '2016-04-05', 'Shipped')
     , (4361, 209, 45, '2016-04-07', '2016-06-30', 'Emily Dean', '143 Ridge Oak Alley', null, 'Diriá', null, null,
        'United Kingdom', 1.33, 'Cash', '2016-12-31', 'Complete')
     , (4362, 208, 88, '2016-05-08', '2016-04-14', 'Eric Simpson', '8113 Graceland Junction', null, 'Borovoy', null,
        '309135', 'Russia', 3.81, 'Card', '2016-06-21', 'Shipped')
     , (4363, 211, 84, '2016-12-31', '2016-06-05', 'Alan Chapman', '461 Westport Center', null, 'Inayauan', null,
        '3336', 'Philippines', 8.62, 'Card', '2017-03-03', 'Complete')
     , (4364, 205, 100, '2016-09-10', '2017-02-19', 'Denise Dixon', '066 Gerald Avenue', null, 'Venëv', null, '301320',
        'Russia', 4.82, 'Check', '2016-04-22', 'Shipped')
     , (4365, 211, 7, '2017-03-09', '2017-03-16', 'Douglas Nelson', '03051 Grasskamp Way', null, 'Póvoa', 'Vila Real',
        '4870-130', 'Portugal', 1.67, 'Check', '2016-08-30', 'Complete')
     , (4366, 213, 24, '2016-04-25', '2016-06-06', 'Louis Frazier', '65 Buhler Circle', null, 'Bīleh Savār', null, null,
        'Iran', 9.53, 'Check', '2016-12-20', 'Complete')
     , (4367, 207, 8, '2016-09-24', '2016-04-06', 'Theresa Stanley', '487 Birchwood Point', null, 'T’et’ri Tsqaro',
        null, null, 'United Kingdom', 5.06, 'Cash', '2016-04-08', 'New')
     , (4368, 207, 76, '2016-12-21', '2016-05-03', 'Sean Chapman', '3917 Miller Pass', null, 'Andaray', null, null,
        'Peru', 4.36, 'Check', '2016-07-25', 'New')
     , (4369, 215, 90, '2016-03-30', '2017-01-03', 'Eugene Brooks', '137 1st Hill', null, 'Independencia', 'Tamaulipas',
        '89888', 'Mexico', 9.56, 'Check', '2017-01-23', 'Shipped')
     , (4370, 204, 33, '2016-12-17', '2016-10-22', 'Joan Martin', '24 Hayes Point', null, 'Dobrzeń Wielki', null,
        '46-081', 'Poland', 8.87, 'Cash', '2016-07-09', 'Shipped')
     , (4371, 204, 13, '2016-12-11', '2016-05-07', 'Martha Mendoza', '0 Sommers Point', null, 'Jiamachi', null, null,
        'China', 1.53, 'Check', '2016-08-05', 'On Hold')
     , (4372, 211, 90, '2016-10-27', '2017-02-14', 'Joan Allen', '64 Bluestem Drive', null, 'Conde', 'Braga',
        '4815-019', 'Portugal', 2.66, 'Card', '2016-09-25', 'Shipped')
     , (4373, 208, 81, '2016-08-20', '2017-03-16', 'Tammy Richards', '15541 Ramsey Alley', null, 'Gunungkendeng', null,
        null, 'Indonesia', 5.66, 'Cash', '2016-05-03', 'Shipped')
     , (4374, 216, 19, '2017-01-22', '2016-09-10', 'Andrea Medina', '3 Goodland Pass', null, 'Ḩarīb', null, null,
        'South Africa', 1.03, 'Card', '2016-10-12', 'Shipped')
     , (4375, 213, 8, '2016-09-13', '2016-12-21', 'Antonio Carpenter', '453 Duke Point', null, 'Rouen',
        'Haute-Normandie', '76029 CEDEX', 'France', 5.11, 'Cash', '2017-01-26', 'Complete')
     , (4376, 207, 83, '2016-11-29', '2016-04-13', 'Jeffrey Smith', '7 Old Shore Center', null, 'Licuan', null, '2500',
        'Philippines', 8.55, 'Cash', '2016-11-08', 'New')
     , (4377, 216, 13, '2016-11-06', '2016-10-08', 'Mark Perkins', '57 Troy Court', null, 'Mojimán', null, null,
        'Canada', 2.03, 'Card', '2017-01-06', 'Shipped')
     , (4378, 219, 4, '2016-08-05', '2017-03-04', 'Louis Jordan', '5 Armistice Street', null, 'Labège', 'Midi-Pyrénées',
        '31673 CEDEX', 'France', 3.61, 'Cash', '2016-12-07', 'New')
     , (4379, 218, 66, '2017-02-26', '2016-11-18', 'Fred Johnson', '4 Dovetail Crossing', null, 'Santa Cruz', null,
        null, 'India', 1.08, 'Cash', '2016-04-02', 'Complete')
     , (4380, 201, 27, '2016-09-01', '2016-05-08', 'Rose Harvey', '8 Canary Plaza', null, 'Pingtan', null, null,
        'China', 6.9, 'Check', '2016-12-09', 'Complete')
     , (4381, 209, 89, '2017-02-04', '2016-08-30', 'Christine Thomas', '008 Carberry Alley', null, 'Logung', null, null,
        'Indonesia', 6.13, 'Card', '2016-05-09', 'On Hold')
     , (4382, 204, 47, '2016-08-11', '2016-12-27', 'Juan Reed', '4337 Del Sol Hill', null, 'Dayeuhluhur', null, null,
        'Indonesia', 7.76, 'Card', '2016-06-15', 'New')
     , (4383, 215, 30, '2016-08-07', '2016-07-22', 'Diane Gray', '899 Oneill Pass', null, 'Alegrete', null, '97540-000',
        'Brazil', 5.62, 'Cash', '2016-12-26', 'Complete')
     , (4384, 212, 88, '2016-07-23', '2016-05-07', 'Louise Baker', '46092 Kedzie Court', null, 'Ban Mo', null, '18130',
        'Thailand', 4.0, 'Card', '2016-07-11', 'Complete')
     , (4385, 203, 62, '2017-02-20', '2016-10-01', 'Paul Thompson', '77444 Northwestern Pass', null,
        'Francisco I Madero', 'Coahuila De Zaragoza', '26010', 'Mexico', 3.99, 'Check', '2016-12-23', 'Shipped')
     , (4386, 218, 26, '2016-09-02', '2016-06-10', 'Anne Kim', '67814 Buena Vista Court', null, 'Sanjie', null, null,
        'China', 9.61, 'Card', '2016-04-05', 'New')
     , (4387, 219, 20, '2017-03-05', '2016-12-19', 'Matthew Gutierrez', '33055 Evergreen Crossing', null, 'Cusco', null,
        null, 'Peru', 6.52, 'Check', '2017-02-17', 'Shipped')
     , (4388, 219, 71, '2016-09-06', '2016-05-24', 'Janet Hernandez', '9243 Forest Run Parkway', null, 'Ulanov', null,
        null, 'Ukraine', 3.04, 'Cash', '2016-09-20', 'New')
     , (4389, 207, 2, '2016-04-25', '2017-02-16', 'Louis Chapman', '878 Roth Alley', null, 'Kusak', null, '423430',
        'Russia', 5.78, 'Cash', '2017-02-18', 'On Hold')
     , (4390, 218, 64, '2016-09-25', '2016-09-22', 'Joe Carpenter', '56 Artisan Park', null, 'Xinjiang', null, null,
        'China', 8.2, 'Card', '2016-12-01', 'On Hold')
     , (4391, 218, 64, '2016-07-30', '2016-07-23', 'Charles Harper', '7 Sutherland Road', null, 'Tatarbunary', null,
        null, 'Ukraine', 4.62, 'Cash', '2016-06-29', 'Shipped')
     , (4392, 206, 92, '2016-05-05', '2016-07-17', 'Craig Reynolds', '3 Erie Park', null, 'East End', null, null,
        'Canada', 2.03, 'Check', '2017-02-03', 'New')
     , (4393, 212, 45, '2016-06-29', '2016-06-17', 'Raymond Mcdonald', '792 Brown Trail', null, 'Yangfang', null, null,
        'China', 4.44, 'Card', '2017-02-27', 'Complete')
     , (4394, 211, 87, '2016-09-28', '2016-04-03', 'Sandra Medina', '7 Eagan Circle', null, 'Baratleke', null, null,
        'Indonesia', 4.34, 'Cash', '2017-01-05', 'Complete')
     , (4395, 203, 57, '2016-08-18', '2017-03-05', 'Sean Carpenter', '33 Dottie Park', null, 'Sokal’', null, null,
        'Ukraine', 5.39, 'Cash', '2017-02-22', 'On Hold')
     , (4396, 203, 87, '2016-06-19', '2016-07-10', 'Alice Ferguson', '0399 Dixon Hill', null, 'Privolzhskiy', null,
        '413138', 'Russia', 8.74, 'Cash', '2016-12-23', 'New')
     , (4397, 216, 61, '2016-08-01', '2016-12-25', 'Diana Nguyen', '5052 Rigney Junction', null, 'Guaynabo', 'Pr',
        '00971', 'Germany', 5.36, 'Check', '2016-07-12', 'On Hold')
     , (4398, 211, 52, '2016-12-04', '2016-05-11', 'Earl Gutierrez', '32 Summit Avenue', null, 'Maqbanah', null, null,
        'South Africa', 5.82, 'Cash', '2016-07-21', 'New')
     , (4399, 208, 71, '2016-05-16', '2017-02-25', 'Gloria Gordon', '5 Prentice Trail', null, 'Xichang', null, null,
        'China', 3.2, 'Card', '2016-05-24', 'Complete')
     , (4400, 218, 7, '2016-09-06', '2016-03-21', 'Robert Wheeler', '83 Logan Circle', null, 'Zhongshan', null, null,
        'China', 9.15, 'Cash', '2016-08-16', 'Shipped')
     , (4401, 210, 53, '2016-09-05', '2016-05-01', 'Walter Williamson', '8459 American Plaza', null, 'Santo Rosario',
        null, '3114', 'Philippines', 7.71, 'Check', '2017-01-25', 'New')
     , (4402, 216, 92, '2016-10-10', '2016-03-28', 'Jonathan James', '164 Bonner Hill', null, 'Vale de Mendiz',
        'Vila Real', '5085-105', 'Portugal', 2.96, 'Card', '2016-07-15', 'Shipped')
     , (4403, 212, 12, '2016-09-15', '2016-11-11', 'Judy Williams', '207 Scofield Place', null, 'Lawa-an', null, '5706',
        'Philippines', 9.68, 'Check', '2016-04-30', 'On Hold')
     , (4404, 213, 83, '2016-04-25', '2016-05-14', 'Amy Olson', '84189 Schurz Circle', null, 'Ogoja', null, null,
        'Netherlands', 5.18, 'Card', '2016-11-02', 'Complete')
     , (4405, 209, 7, '2016-12-01', '2016-08-30', 'Donna Vasquez', '82460 Ridgeway Hill', null, 'La Guacamaya', null,
        null, 'Canada', 5.32, 'Card', '2017-02-11', 'Complete')
     , (4406, 209, 66, '2016-09-14', '2016-05-13', 'Susan Jacobs', '17 Morningstar Lane', null, 'Chedao', null, null,
        'China', 4.12, 'Cash', '2016-11-11', 'New')
     , (4407, 214, 57, '2016-05-04', '2016-06-03', 'Kathryn Burns', '116 Hollow Ridge Park', null, 'Comagascas', null,
        '1950', 'Philippines', 1.05, 'Cash', '2017-01-28', 'New')
     , (4408, 201, 64, '2017-02-11', '2016-06-08', 'Doris Bennett', '090 Lien Place', null, 'Luotang', null, null,
        'China', 1.35, 'Cash', '2016-12-16', 'Complete')
     , (4409, 209, 41, '2017-02-28', '2016-09-05', 'Cynthia Robertson', '6 Eliot Center', null, 'Abu Dhabi', null, null,
        'Denmark', 4.21, 'Check', '2017-01-01', 'New')
     , (4410, 215, 24, '2016-08-28', '2016-10-30', 'Jonathan Parker', '0 Weeping Birch Hill', null, 'Cienfuegos', null,
        null, 'Denmark', 1.69, 'Card', '2017-01-21', 'Shipped')
     , (4411, 206, 10, '2016-08-30', '2016-12-06', 'Bobby Foster', '8279 Ridgeview Place', null, 'Cruz Alta', null,
        '98000-000', 'Brazil', 7.5, 'Cash', '2016-09-09', 'On Hold')
     , (4412, 205, 65, '2016-12-13', '2017-02-27', 'Phyllis Moore', '806 Acker Drive', null, 'Paoay', null, '2902',
        'Philippines', 4.63, 'Cash', '2017-01-11', 'Shipped')
     , (4413, 211, 2, '2016-12-05', '2016-12-07', 'Kevin Gordon', '00875 Sherman Lane', null, 'Wansheng', null, null,
        'China', 2.7, 'Card', '2016-07-31', 'New')
     , (4414, 219, 25, '2017-02-08', '2016-06-22', 'Jack Mccoy', '2 Killdeer Center', null, 'Gresik', null, null,
        'Indonesia', 4.1, 'Check', '2017-03-05', 'On Hold')
     , (4415, 220, 9, '2017-01-02', '2016-08-28', 'Margaret Fuller', '1960 Parkside Hill', null, 'Kafr Zaytā', null,
        null, 'India', 1.09, 'Cash', '2016-08-07', 'New')
     , (4416, 214, 100, '2017-01-07', '2017-02-07', 'Melissa Nichols', '6 Lakewood Gardens Avenue', null, 'Stockholm',
        'Stockholm', '113 90', 'Sweden', 4.1, 'Cash', '2016-03-31', 'On Hold')
     , (4417, 210, 87, '2017-01-23', '2016-12-14', 'William Webb', '84 Mifflin Junction', null, 'Kanungu', null, null,
        'South Africa', 4.38, 'Card', '2016-05-05', 'Complete')
     , (4418, 213, 29, '2017-01-05', '2017-02-07', 'Anne Gonzales', '7 Myrtle Plaza', null, 'Davila', null, '2012',
        'Philippines', 5.45, 'Cash', '2016-05-23', 'Shipped')
     , (4419, 212, 94, '2016-10-19', '2016-12-20', 'Kathleen Graham', '22 Forest Run Hill', null, 'Mollepampa', null,
        null, 'Peru', 5.86, 'Check', '2016-07-31', 'Shipped')
     , (4420, 201, 32, '2016-11-29', '2016-09-24', 'Diana Sanders', '8925 Kennedy Parkway', null,
        'San Miguel de Tucumán', null, '4137', 'Argentina', 3.71, 'Cash', '2016-08-10', 'Complete')
     , (4421, 208, 58, '2017-03-02', '2016-04-03', 'Willie Wright', '60 Old Shore Alley', null, 'Jinjiang', null, null,
        'China', 6.72, 'Card', '2016-10-09', 'Shipped')
     , (4422, 206, 59, '2016-04-19', '2016-12-29', 'Frank Evans', '785 Little Fleur Center', null, 'El Triunfo', null,
        null, 'Argentina', 9.43, 'Check', '2016-05-13', 'New')
     , (4423, 209, 68, '2016-08-22', '2016-11-20', 'Phillip Carter', '6398 John Wall Center', null, 'Shouxihu', null,
        null, 'China', 4.22, 'Check', '2016-10-18', 'New')
     , (4424, 205, 31, '2016-10-05', '2016-10-09', 'Lillian Gomez', '17560 Melrose Point', null, 'Milwaukee',
        'Wisconsin', '53205', 'United States', 1.16, 'Check', '2016-04-17', 'On Hold')
     , (4425, 202, 7, '2016-07-24', '2017-02-22', 'John Ortiz', '45 Vera Place', null, 'Kiel', 'Schleswig-Holstein',
        '24109', 'Germany', 5.86, 'Cash', '2016-10-13', 'On Hold')
     , (4426, 214, 80, '2016-10-04', '2016-09-01', 'Brandon Fields', '94792 Jackson Hill', null, 'San Juan', 'Pr',
        '00918', 'Germany', 2.54, 'Check', '2016-12-19', 'On Hold')
     , (4427, 209, 23, '2016-06-23', '2016-04-29', 'Willie Hart', '20 Sloan Terrace', null, 'Mount Darwin', null, null,
        'India', 3.71, 'Cash', '2016-09-22', 'Complete')
     , (4428, 211, 7, '2016-09-07', '2016-10-28', 'Walter Montgomery', '67285 Crowley Road', null, 'Wailolong', null,
        null, 'Indonesia', 9.79, 'Check', '2016-04-05', 'Complete')
     , (4429, 217, 10, '2017-03-02', '2016-11-27', 'Sara Williamson', '72 Monterey Circle', null, 'Salvacion', null,
        '1114', 'Philippines', 3.33, 'Card', '2016-05-18', 'On Hold')
     , (4430, 210, 12, '2017-02-18', '2016-03-17', 'Wayne Sanders', '21302 Valley Edge Pass', null, 'Balakasap', null,
        null, 'Indonesia', 2.18, 'Card', '2016-06-02', 'New')
     , (4431, 220, 80, '2016-10-01', '2016-09-28', 'Cynthia Allen', '1 Karstens Avenue', null,
        'Santo António das Areias', 'Portalegre', '7330-254', 'Portugal', 3.4, 'Cash', '2016-08-21', 'New')
     , (4432, 211, 95, '2017-02-04', '2016-03-17', 'Jonathan Hughes', '93993 Fairview Junction', null, 'Buje', null,
        '52460', 'Canada', 5.19, 'Cash', '2016-10-01', 'New')
     , (4433, 208, 67, '2017-02-11', '2016-06-01', 'Gerald Wright', '77811 Dennis Point', null, 'Hohoe', null, null,
        'United Kingdom', 3.25, 'Card', '2016-07-15', 'New')
     , (4434, 201, 53, '2016-12-25', '2017-01-07', 'Roy Anderson', '182 High Crossing Terrace', null, 'Bajiazi', null,
        null, 'China', 8.8, 'Card', '2017-02-11', 'Shipped')
     , (4435, 207, 3, '2016-05-30', '2016-04-07', 'Brenda Wright', '98 Kim Drive', null, 'Lillehammer', 'Oppland',
        '2605', 'Greece', 5.76, 'Cash', '2017-02-02', 'On Hold')
     , (4436, 204, 29, '2016-07-19', '2016-07-05', 'Philip Price', '16 Brown Plaza', null, 'Čapljina', null, null,
        'India', 9.62, 'Cash', '2016-11-05', 'On Hold')
     , (4437, 210, 80, '2016-10-13', '2016-04-24', 'Michelle Webb', '4160 Everett Point', null, 'Waepana', null, null,
        'Indonesia', 9.54, 'Cash', '2016-07-11', 'Complete')
     , (4438, 209, 6, '2016-12-31', '2017-01-27', 'Heather Fields', '10 Fairview Center', null, 'Złotniki Kujawskie',
        null, '88-180', 'Poland', 1.81, 'Cash', '2017-03-15', 'Shipped')
     , (4439, 216, 53, '2017-02-01', '2016-09-12', 'Ryan Long', '0 Gateway Avenue', null, 'Pizhanka', null, '613380',
        'Russia', 9.34, 'Cash', '2016-07-02', 'New')
     , (4440, 211, 25, '2017-02-03', '2016-10-13', 'Joyce Stewart', '61 Burrows Street', null, 'Kushelevka', null,
        '658381', 'Russia', 6.4, 'Cash', '2017-01-29', 'On Hold')
     , (4441, 215, 93, '2016-03-21', '2016-11-17', 'Walter Arnold', '97613 Pond Avenue', null, 'Looc', null, '5507',
        'Philippines', 1.09, 'Cash', '2016-10-05', 'Shipped')
     , (4442, 214, 10, '2016-05-10', '2016-05-31', 'Irene Simmons', '36 Larry Court', null, 'Rozhdestveno', null,
        '399768', 'Russia', 4.82, 'Check', '2017-01-13', 'Complete')
     , (4443, 208, 19, '2017-02-09', '2017-02-05', 'Christina Mccoy', '1482 Rockefeller Point', null, 'Rybatskoye',
        null, '196851', 'Russia', 1.62, 'Cash', '2016-09-14', 'Shipped')
     , (4444, 210, 98, '2017-02-15', '2016-05-17', 'Marie Fowler', '04 Prairie Rose Junction', null, 'Chicago',
        'Illinois', '60604', 'United States', 7.47, 'Card', '2017-02-22', 'Complete')
     , (4445, 218, 32, '2017-02-12', '2016-05-20', 'Louise Bell', '3 Charing Cross Pass', null, 'Selce', null, '1219',
        'Denmark', 4.47, 'Cash', '2016-04-01', 'New')
     , (4446, 209, 25, '2016-09-22', '2016-12-03', 'Barbara Black', '697 Oneill Drive', null, 'Shanghang', null, null,
        'China', 4.66, 'Check', '2016-11-09', 'On Hold')
     , (4447, 209, 100, '2016-08-26', '2017-01-16', 'James Holmes', '77 Marcy Court', null, 'Estreito', null,
        '65975-000', 'Brazil', 9.85, 'Check', '2016-12-04', 'On Hold')
     , (4448, 210, 72, '2016-06-25', '2016-12-07', 'Kenneth Williams', '6400 Milwaukee Hill', null, 'Wanshan', null,
        null, 'China', 3.66, 'Card', '2016-06-09', 'On Hold')
     , (4449, 213, 16, '2016-12-13', '2016-08-07', 'Joshua Jacobs', '8 Judy Park', null, 'Ágios Andréas', null, null,
        'Greece', 3.81, 'Cash', '2016-07-07', 'Complete')
     , (4450, 216, 100, '2016-12-21', '2017-02-13', 'Aaron Sanders', '1 Dakota Court', null, 'Huayllo', null, null,
        'Peru', 7.59, 'Cash', '2016-04-22', 'On Hold')
     , (4451, 211, 50, '2016-08-22', '2016-06-05', 'Eugene Scott', '03 Golden Leaf Point', null, 'Stírion', null, null,
        'Greece', 8.99, 'Card', '2017-02-25', 'New')
     , (4452, 220, 86, '2016-05-07', '2016-07-20', 'Cynthia Phillips', '820 Merchant Way', null, 'Mrongi Daja', null,
        null, 'Indonesia', 2.21, 'Check', '2016-04-27', 'On Hold')
     , (4453, 213, 58, '2016-10-30', '2016-03-22', 'Martin Reed', '14 Meadow Vale Alley', null, 'Jiangdong', null, null,
        'China', 3.58, 'Cash', '2017-02-12', 'Complete')
     , (4454, 206, 98, '2016-05-14', '2016-11-07', 'Janet Porter', '74391 Ronald Regan Park', null, 'Lamakera Dua',
        null, null, 'Indonesia', 9.86, 'Check', '2016-06-12', 'New')
     , (4455, 204, 2, '2016-03-28', '2016-04-11', 'Amanda Duncan', '047 Jenna Road', null, 'Tungawan', null, '7018',
        'Philippines', 2.04, 'Card', '2016-07-09', 'New')
     , (4456, 211, 58, '2016-08-05', '2016-11-19', 'Joseph Henderson', '14 Morningstar Pass', null, 'Kolobolon', null,
        null, 'Indonesia', 6.44, 'Check', '2016-05-24', 'New')
     , (4457, 215, 21, '2017-02-15', '2016-06-11', 'Cynthia Bishop', '066 Surrey Pass', null, 'Hưng Yên', null, null,
        'Vietnam', 1.61, 'Check', '2016-07-05', 'Shipped')
     , (4458, 211, 10, '2016-08-08', '2016-08-06', 'Craig Andrews', '7 Mariners Cove Court', null, 'Tuanchengshan',
        null, null, 'China', 8.4, 'Cash', '2016-12-15', 'New')
     , (4459, 211, 71, '2016-05-13', '2017-02-19', 'Steve Warren', '6702 Delladonna Point', null, 'Pražmo', null,
        '739 04', 'Czech Republic', 8.29, 'Card', '2016-06-29', 'New')
     , (4460, 214, 5, '2016-12-21', '2016-06-21', 'Brenda Mills', '77934 Prairieview Way', null, 'Huafeng', null, null,
        'China', 6.76, 'Cash', '2016-07-08', 'New')
     , (4461, 212, 34, '2016-04-27', '2016-07-22', 'Randy Wright', '9 Thackeray Way', null, 'Dvůr Králové nad Labem',
        null, '544 01', 'Czech Republic', 9.45, 'Card', '2016-03-20', 'Shipped')
     , (4462, 202, 47, '2016-10-31', '2016-06-30', 'Michelle Ramirez', '0152 Old Shore Road', null, 'Pulaupinang', null,
        null, 'Indonesia', 2.42, 'Card', '2016-09-05', 'New')
     , (4463, 209, 86, '2016-07-30', '2016-04-29', 'Frank Duncan', '67 Buell Terrace', null, 'Krasne', null, null,
        'Ukraine', 2.71, 'Card', '2016-06-22', 'Complete')
     , (4464, 204, 62, '2017-03-01', '2017-03-11', 'Carlos Warren', '978 Merrick Circle', null, 'Penghua', null, null,
        'China', 7.29, 'Cash', '2016-03-22', 'Shipped')
     , (4465, 202, 87, '2016-06-23', '2016-11-15', 'Tina Gardner', '0 Mcguire Terrace', null, 'Cangqian', null, null,
        'China', 2.17, 'Card', '2016-06-01', 'New')
     , (4466, 220, 31, '2016-06-04', '2016-06-08', 'Stephen Turner', '17 Leroy Plaza', null, 'Pedaringan', null, null,
        'Indonesia', 8.89, 'Check', '2016-05-09', 'Shipped')
     , (4467, 210, 35, '2016-05-21', '2016-09-26', 'Melissa Wilson', '61199 Forest Center', null, 'Krmelín', null,
        '739 24', 'Czech Republic', 2.35, 'Card', '2016-06-20', 'On Hold')
     , (4468, 216, 50, '2016-09-10', '2016-12-02', 'Billy Harper', '8940 Fisk Parkway', null, 'San Jose', 'California',
        '95113', 'United States', 3.98, 'Cash', '2016-10-04', 'Complete')
     , (4469, 207, 22, '2016-06-03', '2016-11-06', 'Carl Davis', '5 Lindbergh Street', null, 'Taling Chan', null,
        '10170', 'Thailand', 4.71, 'Card', '2017-02-03', 'New')
     , (4470, 211, 64, '2016-06-16', '2016-05-26', 'Gerald Henry', '2221 Porter Crossing', null, 'Mozdok', null,
        '363759', 'Russia', 9.57, 'Cash', '2016-10-11', 'Shipped')
     , (4471, 206, 25, '2016-07-27', '2016-08-24', 'Debra Garza', '65379 Sunnyside Trail', null, 'Jiadingzhen', null,
        null, 'China', 1.06, 'Check', '2016-06-23', 'On Hold')
     , (4472, 204, 18, '2016-08-30', '2016-10-09', 'Margaret Rodriguez', '3202 Marquette Point', null, 'Oranzherei',
        null, '416368', 'Russia', 3.35, 'Check', '2016-06-18', 'On Hold')
     , (4473, 212, 88, '2016-10-29', '2016-05-25', 'William Burke', '46 Kingsford Center', null, 'San Juan', null,
        '11301', 'Denmark', 3.85, 'Check', '2017-02-12', 'Shipped')
     , (4474, 217, 9, '2017-02-19', '2016-05-29', 'Larry Myers', '731 Packers Point', null, 'Trelleborg', 'Skåne',
        '231 68', 'Sweden', 4.46, 'Card', '2016-06-19', 'New')
     , (4475, 202, 40, '2016-11-03', '2016-04-25', 'Virginia Hall', '141 Rowland Way', null, 'Aoji-ri', null, null,
        'Denmark', 7.58, 'Check', '2016-11-13', 'Shipped')
     , (4476, 211, 16, '2017-03-07', '2016-10-14', 'Doris Berry', '60 Rusk Lane', null, 'Al Qamşīyah', null, null,
        'India', 1.8, 'Check', '2016-03-19', 'On Hold')
     , (4477, 210, 87, '2016-12-04', '2016-03-22', 'Juan Richards', '3830 Randy Parkway', null, 'Nakhon Nayok', null,
        '26120', 'Thailand', 1.22, 'Card', '2016-08-05', 'Complete')
     , (4478, 203, 34, '2017-01-28', '2016-09-27', 'Kimberly Fox', '34957 Elka Way', null, 'Santiago', null,
        '97700-000', 'Brazil', 3.99, 'Check', '2016-07-06', 'On Hold')
     , (4479, 219, 89, '2016-07-01', '2016-05-31', 'Ruby Ruiz', '90581 American Hill', null, 'Agudos', null,
        '17120-000', 'Brazil', 5.97, 'Cash', '2016-06-03', 'On Hold')
     , (4480, 203, 53, '2016-10-17', '2016-11-07', 'Ruby Robinson', '385 Carioca Plaza', null, 'Kalangan', null, null,
        'Indonesia', 8.71, 'Card', '2016-12-01', 'Complete')
     , (4481, 207, 91, '2017-02-25', '2016-03-31', 'Victor Lopez', '170 Mariners Cove Circle', null, 'Bressuire',
        'Poitou-Charentes', '79304 CEDEX', 'France', 8.59, 'Check', '2016-07-30', 'Complete')
     , (4482, 215, 58, '2017-02-15', '2016-07-25', 'Kimberly Marshall', '647 Summerview Circle', null, 'Timahankrajan',
        null, null, 'Indonesia', 3.07, 'Check', '2016-04-21', 'On Hold')
     , (4483, 207, 76, '2016-06-27', '2016-10-15', 'Pamela Matthews', '9379 Summit Trail', null, 'Brangsi', null, null,
        'Indonesia', 1.35, 'Card', '2016-05-27', 'New')
     , (4484, 210, 98, '2017-02-03', '2016-11-04', 'Randy Patterson', '6641 American Ash Point', null, 'Ivanec', null,
        '42240', 'Canada', 2.36, 'Card', '2016-10-31', 'Shipped')
     , (4485, 205, 71, '2017-01-01', '2017-02-16', 'Carolyn Garza', '281 Raven Lane', null, 'Jingyang', null, null,
        'China', 6.85, 'Check', '2016-04-27', 'Shipped')
     , (4486, 202, 20, '2016-07-24', '2016-07-06', 'Ruth Perkins', '5656 Northview Lane', null, 'Burevestnik', null,
        '607612', 'Russia', 9.29, 'Cash', '2017-03-16', 'On Hold')
     , (4487, 203, 49, '2017-02-20', '2017-01-12', 'Kelly Oliver', '249 Londonderry Pass', null,
        'Grande Rivière du Nord', null, null, 'Canada', 7.65, 'Check', '2016-12-04', 'Shipped')
     , (4488, 203, 67, '2016-11-09', '2016-07-19', 'Shirley Henry', '3045 Rowland Lane', null, 'Midlands', null, null,
        'Germany', 5.35, 'Check', '2016-06-14', 'Complete')
     , (4489, 209, 100, '2017-01-24', '2016-05-30', 'Marie Ferguson', '629 Crownhardt Junction', null, 'El Paso',
        'Texas', '88546', 'United States', 5.18, 'Check', '2016-04-20', 'Shipped')
     , (4490, 202, 87, '2016-06-27', '2016-09-05', 'Rachel Scott', '343 Schurz Road', null, 'Cabiguan', null, '1144',
        'Philippines', 1.05, 'Cash', '2016-07-24', 'Shipped')
     , (4491, 211, 93, '2017-01-16', '2016-09-29', 'Henry Fields', '26143 Del Sol Avenue', null, 'Huangduobu', null,
        null, 'China', 6.15, 'Card', '2016-06-02', 'Shipped')
     , (4492, 217, 10, '2016-12-08', '2016-10-01', 'Harold Jones', '2 Oak Avenue', null, 'Surkhakhi', null, '386147',
        'Russia', 9.96, 'Card', '2016-04-07', 'New')
     , (4493, 217, 35, '2016-05-05', '2016-05-01', 'Walter Wright', '12 Paget Road', null, 'Siluman', null, null,
        'Indonesia', 2.1, 'Cash', '2016-10-26', 'On Hold')
     , (4494, 206, 51, '2017-02-25', '2016-10-24', 'Marilyn Hayes', '4 5th Way', null, 'Punkaharju', null, '58501',
        'Finland', 3.57, 'Cash', '2016-06-22', 'New')
     , (4495, 208, 3, '2016-12-27', '2016-09-09', 'Sandra West', '0384 Bowman Center', null, 'Tagta', null, null,
        'India', 6.45, 'Cash', '2016-08-25', 'New')
     , (4496, 218, 41, '2017-01-10', '2016-12-11', 'Dennis Meyer', '4 Cambridge Alley', null, 'Cariamanga', null, null,
        'Argentina', 5.33, 'Check', '2016-09-28', 'New')
     , (4497, 216, 76, '2016-09-28', '2016-05-12', 'Frank Dean', '23227 Veith Park', null, 'Fengqiao', null, null,
        'China', 6.72, 'Cash', '2016-04-12', 'Complete')
     , (4498, 204, 3, '2016-11-11', '2016-12-01', 'Amy Palmer', '7735 Maple Wood Road', null, 'Działoszyce', null,
        '28-440', 'Poland', 3.08, 'Card', '2016-09-07', 'Shipped')
     , (4499, 211, 96, '2017-02-04', '2016-03-27', 'Emily Nelson', '3 Crownhardt Plaza', null, 'Oslob', null, '6025',
        'Philippines', 6.41, 'Card', '2016-09-25', 'On Hold')
     , (4500, 204, 7, '2016-04-29', '2017-01-20', 'Randy Hanson', '687 Drewry Place', null, 'Barberena', null, '06002',
        'Japan', 2.51, 'Card', '2016-12-12', 'Complete')
     , (4501, 215, 92, '2017-02-27', '2016-09-26', 'Raymond Banks', '826 Mendota Pass', null, 'Chicago', 'Illinois',
        '60681', 'United States', 3.34, 'Card', '2016-10-30', 'Complete')
     , (4502, 220, 24, '2016-10-01', '2016-09-26', 'Kimberly Robertson', '2643 Becker Trail', null, 'Columbus',
        'United Kingdom', '31904', 'United States', 3.07, 'Check', '2016-04-27', 'Complete')
     , (4503, 215, 52, '2017-02-25', '2016-08-08', 'Marilyn Miller', '1 Tennessee Park', null, 'Spokane', 'Washington',
        '99252', 'United States', 5.34, 'Check', '2016-08-16', 'On Hold')
     , (4504, 220, 35, '2017-01-27', '2016-09-08', 'Marie Carpenter', '4575 Fair Oaks Hill', null, 'Richmond',
        'Virginia', '23293', 'United States', 7.01, 'Cash', '2016-04-06', 'Shipped')
     , (4505, 203, 10, '2016-06-24', '2017-02-22', 'Nicholas Wells', '823 Duke Center', null, 'Irvine', 'California',
        '92710', 'United States', 1.4, 'Check', '2016-06-17', 'On Hold')
     , (4506, 207, 26, '2016-12-26', '2017-03-14', 'John Dean', '06 Spenser Place', null, 'Charleston',
        'South Carolina', '29403', 'United States', 1.31, 'Cash', '2016-10-25', 'Shipped')
     , (4507, 216, 28, '2016-08-22', '2016-12-13', 'Diana Spencer', '26 Ridgeway Plaza', null, 'Ogden', 'Utah', '84403',
        'United States', 9.42, 'Cash', '2016-04-13', 'Shipped')
     , (4508, 213, 90, '2016-08-31', '2017-01-13', 'Wanda Bowman', '862 Iowa Avenue', null, 'Kansas City', 'Kansas',
        '66160', 'United States', 7.1, 'Cash', '2016-10-19', 'Complete')
     , (4509, 204, 93, '2016-07-07', '2016-05-31', 'Andrew Garrett', '27066 Gina Road', null, 'El Paso', 'Texas',
        '88558', 'United States', 6.88, 'Check', '2016-04-23', 'Complete')
     , (4510, 202, 56, '2017-02-06', '2016-10-29', 'Juan Webb', '6233 South Junction', null, 'Lafayette', 'Louisiana',
        '70505', 'United States', 1.07, 'Cash', '2016-05-20', 'New')
     , (4511, 219, 54, '2016-11-08', '2016-06-17', 'William Gardner', '5 Meadow Ridge Terrace', null, 'Tacoma',
        'Washington', '98447', 'United States', 4.46, 'Check', '2016-05-25', 'Complete')
     , (4512, 215, 4, '2016-09-09', '2016-08-21', 'Fred Fernandez', '15 Ludington Junction', null, 'San Rafael',
        'California', '94913', 'United States', 4.3, 'Cash', '2016-09-02', 'New')
     , (4513, 206, 54, '2016-10-28', '2016-06-30', 'Ruth Ellis', '41196 Rieder Avenue', null, 'Baltimore', 'Maryland',
        '21211', 'United States', 8.39, 'Card', '2016-05-29', 'Complete')
     , (4514, 215, 73, '2017-02-26', '2016-09-17', 'David Ferguson', '5813 Brown Parkway', null, 'Shawnee Mission',
        'Kansas', '66286', 'United States', 2.71, 'Card', '2016-04-18', 'Shipped')
     , (4515, 216, 23, '2016-11-08', '2016-06-27', 'Susan Freeman', '0 Bashford Parkway', null, 'Tucson', 'Arizona',
        '85720', 'United States', 5.5, 'Check', '2017-02-01', 'Shipped')
     , (4516, 212, 9, '2016-04-30', '2016-12-31', 'Alan Hunt', '193 Declaration Plaza', null, 'Louisville', 'Kentucky',
        '40256', 'United States', 9.74, 'Cash', '2017-01-20', 'On Hold')
     , (4517, 202, 46, '2017-02-01', '2016-07-22', 'Phillip Romero', '1860 Thompson Crossing', null, 'Biloxi',
        'Mississippi', '39534', 'United States', 3.02, 'Card', '2016-11-04', 'Complete')
     , (4518, 203, 75, '2016-09-07', '2016-11-14', 'George Diaz', '6 Mcguire Center', null, 'Mesa', 'Arizona', '85210',
        'United States', 7.84, 'Check', '2016-06-21', 'Shipped')
     , (4519, 217, 68, '2016-10-07', '2016-08-15', 'Virginia King', '7405 High Crossing Alley', null, 'Sioux City',
        'Iowa', '51105', 'United States', 4.03, 'Check', '2016-05-09', 'Complete')
     , (4520, 216, 6, '2017-02-18', '2017-02-17', 'Brenda Ruiz', '224 Badeau Street', null, 'Corpus Christi', 'Texas',
        '78426', 'United States', 9.11, 'Check', '2016-11-13', 'New')
     , (4521, 201, 84, '2016-09-17', '2016-06-15', 'Debra Brown', '94 Morningstar Center', null, 'San Francisco',
        'California', '94177', 'United States', 6.59, 'Check', '2017-03-10', 'Shipped')
     , (4522, 205, 89, '2016-10-22', '2017-03-13', 'Emily Henry', '79 Manufacturers Center', null, 'Los Angeles',
        'California', '90020', 'United States', 4.11, 'Cash', '2016-10-27', 'Complete')
     , (4523, 211, 67, '2016-04-17', '2017-02-12', 'Aaron Peterson', '504 Schlimgen Terrace', null, 'Bethesda',
        'Maryland', '20892', 'United States', 5.42, 'Card', '2016-08-25', 'Shipped')
     , (4524, 215, 83, '2016-08-22', '2016-07-31', 'Janice Burke', '3 Mcbride Lane', null, 'Washington',
        'District of Columbia', '20073', 'United States', 3.76, 'Card', '2016-08-09', 'Shipped')
     , (4525, 217, 100, '2016-03-31', '2016-12-09', 'Debra Kelley', '18155 Northview Plaza', null, 'Detroit',
        'Michigan', '48267', 'United States', 2.26, 'Cash', '2016-12-29', 'On Hold')
     , (4526, 214, 32, '2016-11-24', '2016-03-28', 'Donald Sims', '86 Michigan Avenue', null, 'Brooklyn', 'New York',
        '11231', 'United States', 5.05, 'Check', '2016-08-07', 'Shipped')
     , (4527, 205, 100, '2016-05-13', '2016-06-17', 'Daniel Mason', '4 Hanover Road', null, 'Reno', 'Nevada', '89595',
        'United States', 4.81, 'Check', '2016-10-22', 'Shipped')
     , (4528, 201, 32, '2016-11-15', '2016-11-16', 'Howard Knight', '5 Weeping Birch Alley', null, 'Jacksonville',
        'Florida', '32225', 'United States', 5.99, 'Check', '2016-11-07', 'New')
     , (4529, 213, 99, '2016-12-02', '2016-07-09', 'Virginia Hughes', '629 Manufacturers Point', null, 'Syracuse',
        'New York', '13224', 'United States', 5.6, 'Card', '2016-12-02', 'Complete')
     , (4530, 219, 18, '2016-12-07', '2017-02-07', 'Carl Graham', '90 Heffernan Pass', null, 'Saint Petersburg',
        'Florida', '33737', 'United States', 9.35, 'Check', '2016-10-18', 'Complete')
     , (4531, 201, 57, '2016-12-26', '2016-12-29', 'Joan Murray', '38 Bellgrove Crossing', null, 'Tacoma', 'Washington',
        '98447', 'United States', 6.69, 'Card', '2016-12-05', 'On Hold')
     , (4532, 202, 58, '2016-04-02', '2016-07-01', 'Robert Williams', '09407 Northfield Circle', null, 'Cedar Rapids',
        'Iowa', '52410', 'United States', 6.56, 'Card', '2016-04-16', 'On Hold')
     , (4533, 218, 36, '2017-02-07', '2016-05-05', 'Ryan Black', '57199 Hoffman Place', null, 'Jacksonville', 'Florida',
        '32204', 'United States', 8.54, 'Check', '2017-01-24', 'Shipped')
     , (4534, 208, 92, '2016-07-09', '2016-06-20', 'Brenda Hunter', '16179 Ludington Court', null, 'Birmingham',
        'Alabama', '35263', 'United States', 9.82, 'Cash', '2016-09-30', 'New')
     , (4535, 214, 70, '2016-08-04', '2016-06-29', 'Anne Warren', '08161 Barnett Parkway', null, 'Van Nuys',
        'California', '91411', 'United States', 7.04, 'Cash', '2017-02-24', 'Complete')
     , (4536, 213, 99, '2017-01-11', '2017-01-21', 'Betty Snyder', '9 Badeau Court', null, 'Davenport', 'Iowa', '52804',
        'United States', 8.72, 'Card', '2016-09-03', 'Shipped')
     , (4537, 217, 76, '2016-07-31', '2017-02-13', 'Edward Wilson', '1031 Esch Drive', null, 'Fresno', 'California',
        '93750', 'United States', 1.64, 'Check', '2016-04-21', 'On Hold')
     , (4538, 210, 60, '2016-06-22', '2016-04-10', 'Terry Butler', '124 Hoepker Pass', null, 'San Antonio', 'Texas',
        '78255', 'United States', 2.35, 'Check', '2017-01-31', 'Complete')
     , (4539, 220, 5, '2016-11-12', '2016-04-25', 'Emily Hawkins', '990 Quincy Drive', null, 'Richmond', 'Virginia',
        '23289', 'United States', 4.36, 'Card', '2016-09-17', 'Complete')
     , (4540, 213, 42, '2017-02-28', '2017-02-11', 'Cynthia Rose', '8881 Packers Trail', null, 'Berkeley', 'California',
        '94712', 'United States', 6.09, 'Check', '2016-04-14', 'New')
     , (4541, 204, 27, '2016-09-30', '2017-01-28', 'Lisa Turner', '83 Graedel Terrace', null, 'Oakland', 'California',
        '94611', 'United States', 9.61, 'Card', '2016-05-07', 'Shipped')
     , (4542, 219, 26, '2016-07-13', '2016-03-23', 'Jason Price', '475 Meadow Valley Point', null, 'Annapolis',
        'Maryland', '21405', 'United States', 2.93, 'Check', '2016-06-10', 'New')
     , (4543, 202, 63, '2016-07-29', '2016-05-20', 'Joan Hayes', '7 Upham Center', null, 'Temple', 'Texas', '76505',
        'United States', 7.39, 'Card', '2016-09-20', 'Complete')
     , (4544, 212, 97, '2016-10-31', '2017-01-16', 'Paula Torres', '443 Debs Terrace', null, 'Racine', 'Wisconsin',
        '53405', 'United States', 3.93, 'Card', '2016-07-07', 'Shipped')
     , (4545, 201, 33, '2017-03-08', '2016-08-21', 'Theresa Watkins', '85395 Rusk Center', null, 'Jackson',
        'Mississippi', '39210', 'United States', 5.32, 'Card', '2016-11-19', 'Complete')
     , (4546, 211, 68, '2016-05-25', '2016-07-17', 'Clarence Nguyen', '155 Northport Road', null, 'Greensboro',
        'North Carolina', '27455', 'United States', 7.06, 'Cash', '2016-08-24', 'Shipped')
     , (4547, 203, 73, '2016-05-03', '2016-10-23', 'Jean Mason', '03 Eagle Crest Lane', null, 'Colorado Springs',
        'Colorado', '80935', 'United States', 4.2, 'Cash', '2016-04-07', 'New')
     , (4548, 217, 2, '2016-05-20', '2016-08-07', 'Nicole Brown', '364 Debra Lane', null, 'Washington',
        'District of Columbia', '20046', 'United States', 7.97, 'Cash', '2016-04-30', 'New')
     , (4549, 220, 89, '2016-04-11', '2016-12-11', 'Carol Chapman', '756 Muir Point', null, 'Washington',
        'District of Columbia', '20397', 'United States', 2.21, 'Card', '2017-02-05', 'Shipped')
     , (4550, 211, 13, '2016-04-16', '2016-08-03', 'Roy George', '8 Anhalt Terrace', null, 'Indianapolis', 'Indiana',
        '46207', 'United States', 4.5, 'Check', '2017-03-06', 'New')
     , (4551, 219, 37, '2016-04-14', '2017-03-01', 'Heather Bishop', '0901 Tennessee Street', null, 'Kingsport',
        'Tennessee', '37665', 'United States', 1.92, 'Card', '2017-01-02', 'Shipped')
     , (4552, 218, 94, '2017-03-05', '2016-06-01', 'Wayne Mason', '90645 Carberry Drive', null, 'Madison', 'Wisconsin',
        '53716', 'United States', 6.96, 'Card', '2016-12-31', 'Complete')
     , (4553, 212, 37, '2016-10-16', '2016-10-13', 'Gloria Elliott', '100 Granby Junction', null, 'Miami', 'Florida',
        '33153', 'United States', 9.25, 'Cash', '2016-06-09', 'Shipped')
     , (4554, 217, 4, '2016-06-05', '2016-07-26', 'Timothy Hayes', '6001 Elgar Circle', null, 'Pensacola', 'Florida',
        '32575', 'United States', 6.5, 'Cash', '2016-03-30', 'Complete')
     , (4555, 207, 49, '2016-08-19', '2016-08-15', 'Judith Baker', '3436 Briar Crest Park', null, 'Newark',
        'New Jersey', '07188', 'United States', 2.33, 'Check', '2016-09-17', 'Complete')
     , (4556, 217, 17, '2016-11-18', '2016-12-10', 'Roy Russell', '6401 Graedel Court', null, 'Alexandria', 'Virginia',
        '22301', 'United States', 3.24, 'Check', '2016-04-08', 'Complete')
     , (4557, 216, 35, '2016-09-11', '2016-05-07', 'Jacqueline Davis', '864 Cherokee Lane', null, 'Columbus', 'Ohio',
        '43226', 'United States', 4.7, 'Card', '2016-08-06', 'Shipped')
     , (4558, 211, 20, '2016-10-06', '2016-07-15', 'Eugene Castillo', '03090 Northland Circle', null, 'Salt Lake City',
        'Utah', '84199', 'United States', 9.36, 'Card', '2016-10-06', 'Complete')
     , (4559, 216, 13, '2017-01-13', '2016-03-28', 'Janice Mills', '522 Holmberg Alley', null, 'Scottsdale', 'Arizona',
        '85271', 'United States', 7.31, 'Cash', '2016-05-15', 'On Hold')
     , (4560, 211, 77, '2016-08-24', '2017-03-13', 'Ruby White', '0070 Corben Way', null, 'Naples', 'Florida', '34114',
        'United States', 3.71, 'Check', '2016-07-17', 'On Hold')
     , (4561, 219, 55, '2016-08-13', '2016-11-19', 'Frank Jackson', '25 Rigney Point', null, 'Washington',
        'District of Columbia', '20420', 'United States', 1.94, 'Cash', '2016-06-12', 'Shipped')
     , (4562, 207, 96, '2016-10-12', '2016-12-04', 'Pamela Peterson', '830 Loftsgordon Junction', null, 'Houston',
        'Texas', '77281', 'United States', 1.45, 'Check', '2017-03-06', 'New')
     , (4563, 204, 70, '2016-07-23', '2017-02-06', 'Martha Frazier', '3 Gerald Lane', null, 'Scottsdale', 'Arizona',
        '85260', 'United States', 2.74, 'Cash', '2017-01-19', 'New')
     , (4564, 204, 59, '2017-02-26', '2016-10-23', 'Kenneth Hawkins', '27305 Maple Crossing', null, 'San Diego',
        'California', '92145', 'United States', 9.41, 'Cash', '2017-02-09', 'On Hold')
     , (4565, 203, 66, '2016-08-06', '2017-02-03', 'Barbara Collins', '8 Norway Maple Junction', null, 'Fort Worth',
        'Texas', '76198', 'United States', 1.08, 'Card', '2016-06-24', 'New')
     , (4566, 217, 83, '2016-09-14', '2016-03-29', 'Gary Ellis', '97 Nobel Avenue', null, 'Alexandria', 'Louisiana',
        '71307', 'United States', 5.05, 'Card', '2016-06-13', 'Shipped')
     , (4567, 214, 63, '2017-03-04', '2016-11-05', 'Douglas Hughes', '98309 Mccormick Park', null, 'Kansas City',
        'Kansas', '66160', 'United States', 1.4, 'Card', '2017-02-13', 'Shipped')
     , (4568, 208, 12, '2016-10-31', '2017-02-27', 'Harold Flores', '1 Merchant Lane', null, 'Duluth', 'United Kingdom',
        '30096', 'United States', 4.84, 'Check', '2016-04-30', 'On Hold')
     , (4569, 201, 96, '2016-08-20', '2016-10-03', 'Marie Nguyen', '084 Stuart Hill', null, 'Arlington', 'Texas',
        '76004', 'United States', 5.95, 'Cash', '2016-04-25', 'On Hold')
     , (4570, 203, 1, '2016-10-13', '2016-03-21', 'Judy Fowler', '7541 Golf Course Way', null, 'Kansas City',
        'Missouri', '64109', 'United States', 8.02, 'Check', '2016-05-05', 'New')
     , (4571, 219, 49, '2016-11-04', '2016-09-02', 'Howard Rogers', '5 Scott Hill', null, 'Brooklyn', 'New York',
        '11215', 'United States', 5.21, 'Cash', '2016-10-28', 'Complete')
     , (4572, 215, 5, '2016-03-24', '2016-08-31', 'Stephanie Martinez', '0022 Reinke Trail', null, 'Baton Rouge',
        'Louisiana', '70894', 'United States', 7.74, 'Card', '2016-08-14', 'On Hold')
     , (4573, 206, 61, '2016-08-31', '2016-07-10', 'Jacqueline Lane', '780 Elka Place', null, 'Cleveland', 'Ohio',
        '44105', 'United States', 9.12, 'Check', '2016-11-30', 'On Hold')
     , (4574, 220, 65, '2016-06-26', '2016-06-25', 'Betty Harrison', '23089 Kensington Junction', null, 'Greensboro',
        'North Carolina', '27404', 'United States', 5.63, 'Check', '2016-03-30', 'Complete')
     , (4575, 212, 81, '2016-04-28', '2016-10-19', 'Robin Bradley', '7895 Weeping Birch Plaza', null, 'Waterbury',
        'Connecticut', '06721', 'United States', 7.34, 'Cash', '2017-01-25', 'On Hold')
     , (4576, 216, 13, '2017-02-24', '2016-07-18', 'Ralph Bailey', '4019 Harper Park', null, 'Sacramento', 'California',
        '94291', 'United States', 6.77, 'Cash', '2017-02-02', 'New')
     , (4577, 203, 43, '2016-09-24', '2016-11-18', 'Melissa Ross', '775 Lyons Road', null, 'Bridgeport', 'Connecticut',
        '06606', 'United States', 1.64, 'Check', '2016-07-23', 'Shipped')
     , (4578, 212, 53, '2016-07-05', '2016-06-19', 'Joan Russell', '0 Kings Terrace', null, 'Bloomington', 'Illinois',
        '61709', 'United States', 4.66, 'Card', '2016-04-09', 'New')
     , (4579, 214, 17, '2016-10-01', '2016-10-18', 'Benjamin George', '40131 Ronald Regan Road', null, 'Washington',
        'District of Columbia', '20525', 'United States', 8.04, 'Check', '2016-06-16', 'Complete')
     , (4580, 207, 69, '2016-04-19', '2017-02-09', 'Katherine Stone', '37483 Melrose Parkway', null, 'Fresno',
        'California', '93794', 'United States', 6.7, 'Check', '2017-02-08', 'Complete')
     , (4581, 218, 28, '2017-03-04', '2016-11-25', 'Ernest Cruz', '872 Nancy Street', null, 'Pompano Beach', 'Florida',
        '33069', 'United States', 5.81, 'Cash', '2016-04-21', 'On Hold')
     , (4582, 217, 32, '2017-03-16', '2016-06-08', 'Joshua Edwards', '72309 Elmside Point', null, 'San Francisco',
        'California', '94110', 'United States', 2.49, 'Cash', '2016-04-01', 'On Hold')
     , (4583, 219, 83, '2017-01-24', '2016-07-25', 'Justin Mills', '88350 Wayridge Hill', null, 'Charleston',
        'West Virginia', '25326', 'United States', 6.03, 'Card', '2016-10-07', 'New')
     , (4584, 208, 45, '2016-10-18', '2016-05-13', 'Kathleen Gibson', '25 Carpenter Lane', null, 'Reno', 'Nevada',
        '89505', 'United States', 5.41, 'Check', '2016-08-21', 'Shipped')
     , (4585, 216, 71, '2016-09-19', '2016-10-15', 'Ruby Bennett', '1 Muir Pass', null, 'Las Vegas', 'Nevada', '89135',
        'United States', 2.5, 'Cash', '2016-11-29', 'On Hold')
     , (4586, 214, 48, '2016-08-07', '2016-08-12', 'Richard Robinson', '1125 Melvin Terrace', null, 'Bethesda',
        'Maryland', '20816', 'United States', 4.02, 'Card', '2017-01-09', 'Complete')
     , (4587, 212, 62, '2016-12-17', '2017-01-23', 'Debra Sanchez', '534 Stoughton Lane', null, 'Johnstown',
        'Pennsylvania', '15906', 'United States', 8.78, 'Cash', '2016-08-07', 'Shipped')
     , (4588, 216, 30, '2016-10-24', '2016-12-21', 'Willie Dean', '680 Northview Circle', null, 'Huntington',
        'West Virginia', '25775', 'United States', 8.43, 'Card', '2017-03-12', 'New')
     , (4589, 210, 10, '2017-01-01', '2016-09-22', 'Christina Kelley', '8706 Sundown Street', null, 'Peoria',
        'Illinois', '61635', 'United States', 4.24, 'Cash', '2017-02-08', 'On Hold')
     , (4590, 205, 6, '2016-11-29', '2017-02-23', 'Russell Montgomery', '977 Packers Drive', null, 'Charlotte',
        'North Carolina', '28247', 'United States', 2.87, 'Cash', '2016-05-30', 'Complete')
     , (4591, 206, 15, '2016-03-28', '2017-02-23', 'Edward Cunningham', '283 Bultman Way', null, 'Jacksonville',
        'Florida', '32277', 'United States', 6.55, 'Check', '2017-03-10', 'Shipped')
     , (4592, 209, 82, '2016-12-20', '2016-09-07', 'Michael Chavez', '00 Oak Avenue', null, 'Young America',
        'Minnesota', '55551', 'United States', 8.22, 'Check', '2016-04-19', 'On Hold')
     , (4593, 204, 24, '2017-03-13', '2016-08-30', 'David White', '506 Nevada Circle', null, 'Portland', 'Maine',
        '04109', 'United States', 1.11, 'Card', '2017-01-13', 'On Hold')
     , (4594, 206, 27, '2016-09-13', '2017-03-12', 'Cheryl Vasquez', '9070 Di Loreto Court', null, 'Van Nuys',
        'California', '91499', 'United States', 7.42, 'Card', '2017-02-25', 'On Hold')
     , (4595, 211, 94, '2016-07-03', '2016-05-08', 'Charles Garrett', '1337 Hooker Trail', null, 'Honolulu', 'Hawaii',
        '96810', 'United States', 9.57, 'Check', '2016-10-04', 'Shipped')
     , (4596, 216, 56, '2016-07-08', '2017-02-28', 'Michelle Butler', '1 Magdeline Lane', null, 'Orlando', 'Florida',
        '32813', 'United States', 7.05, 'Check', '2016-07-12', 'New')
     , (4597, 217, 26, '2016-09-24', '2016-10-05', 'Howard Reyes', '3677 Donald Alley', null, 'Carol Stream',
        'Illinois', '60351', 'United States', 7.62, 'Cash', '2017-02-08', 'Complete')
     , (4598, 212, 76, '2016-04-13', '2016-08-10', 'Eugene Kelly', '838 Becker Plaza', null, 'Laredo', 'Texas', '78044',
        'United States', 4.9, 'Check', '2016-10-23', 'New')
     , (4599, 208, 29, '2016-04-16', '2016-05-15', 'Jimmy Mcdonald', '0 Dayton Place', null, 'Rochester', 'New York',
        '14646', 'United States', 1.56, 'Check', '2017-01-14', 'Complete')
     , (4600, 208, 2, '2016-04-26', '2016-04-06', 'Stephen Jacobs', '7131 Scoville Terrace', null, 'Phoenix', 'Arizona',
        '85020', 'United States', 4.52, 'Cash', '2017-01-22', 'On Hold');


/* Order details */
insert into order_items (order_id, book_id, quantity, unit_price, discount, order_item_status, date_allocated)
values (4001, 608, 1, 97.34, 8.73, 'Allocated', '2017-01-15')
     , (4001, 611, 2, 58.46, 4.36, 'No Stock', '2016-09-21')
     , (4001, 616, 2, 58.46, 4.36, 'No Stock', '2016-09-21')
     , (4001, 613, 2, 58.46, 4.36, 'No Stock', '2016-09-21')
     , (4001, 615, 2, 58.46, 4.36, 'No Stock', '2016-09-21')
     , (4002, 604, 3, 88.97, 2.86, 'On Order', '2016-12-15')
     , (4002, 610, 4, 37.19, 8.65, 'Allocated', '2016-10-12')
     , (4002, 615, 4, 37.19, 8.65, 'Allocated', '2016-10-12')
     , (4003, 609, 8, 92.87, 4.01, 'No Stock', '2016-06-15')
     , (4003, 612, 7, 87.15, 3.54, 'No Stock', '2017-02-09')
     , (4004, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4004, 620, 2, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4004, 611, 4, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4004, 612, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4005, 618, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4005, 619, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4005, 620, 2, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4006, 617, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4006, 618, 2, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4006, 607, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4007, 617, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4007, 610, 2, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4007, 612, 5, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4008, 612, 1, 57.2, 8.94, 'Allocated', '2017-01-13')
     , (4008, 615, 3, 57.2, 8.94, 'Allocated', '2017-01-13')
     , (4008, 611, 1, 57.2, 8.94, 'Allocated', '2017-01-13')
     , (4009, 605, 6, 62.16, 5.68, 'No Stock', '2017-02-13')
     , (4009, 610, 6, 19.31, 5.0, 'No Stock', '2016-09-16')
     , (4009, 615, 9, 51.21, 4.48, 'Allocated', '2016-10-18')
     , (4010, 601, 1, 32.18, 9.41, 'On Order', '2016-03-17')
     , (4010, 602, 1, 31.35, 7.18, 'No Stock', '2016-12-30')
     , (4010, 603, 10, 24.24, 2.76, 'Allocated', '2016-07-05')
     , (4010, 610, 6, 9.09, 3.02, 'On Order', '2016-07-17')
     , (4011, 604, 10, 58.25, 9.3, 'No Stock', '2016-04-04')
     , (4011, 606, 5, 73.34, 1.76, 'Allocated', '2016-06-30')
     , (4011, 608, 3, 95.07, 4.6, 'On Order', '2016-06-04')
     , (4011, 615, 9, 20.84, 3.93, 'Allocated', '2016-06-10')
     , (4012, 604, 5, 19.82, 9.97, 'No Stock', '2016-09-21')
     , (4012, 601, 3, 19.82, 9.97, 'No Stock', '2016-09-21')
     , (4012, 610, 3, 19.82, 9.97, 'No Stock', '2016-09-21')
     , (4013, 614, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4013, 604, 2, 19.82, 9.97, 'No Stock', '2016-09-21')
     , (4013, 606, 5, 19.82, 9.97, 'No Stock', '2016-09-21')
     , (4014, 601, 3, 37.57, 4.99, 'Allocated', '2016-08-21')
     , (4015, 611, 8, 95.27, 6.62, 'Allocated', '2017-03-13')
     , (4015, 612, 2, 89.63, 4.14, 'Allocated', '2016-04-07')
     , (4015, 615, 8, 69.03, 1.11, 'On Order', '2016-08-15')
     , (4016, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4016, 611, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4016, 612, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4017, 605, 6, 75.88, 2.1, 'On Order', '2017-02-15')
     , (4017, 610, 4, 26.43, 7.18, 'On Order', '2016-04-30')
     , (4017, 619, 6, 77.91, 9.26, 'No Stock', '2016-04-02')
     , (4018, 615, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4019, 615, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4020, 614, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4021, 604, 3, 20.14, 8.54, 'No Stock', '2016-06-26')
     , (4022, 614, 7, 41.61, 4.62, 'On Order', '2016-09-09')
     , (4022, 619, 1, 10.45, 2.56, 'On Order', '2016-10-18')
     , (4023, 607, 6, 7.68, 5.59, 'On Order', '2016-11-15')
     , (4023, 611, 7, 89.4, 1.71, 'No Stock', '2016-04-03')
     , (4024, 613, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4024, 615, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4024, 608, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4024, 609, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4025, 612, 6, 81.24, 3.52, 'Allocated', '2016-04-25')
     , (4025, 614, 4, 14.07, 2.58, 'On Order', '2016-09-11')
     , (4026, 617, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4026, 618, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4027, 611, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4027, 612, 3, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4027, 613, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4028, 605, 5, 95.04, 7.82, 'On Order', '2016-07-24')
     , (4028, 615, 8, 74.56, 1.78, 'Allocated', '2016-12-09')
     , (4029, 604, 1, 11.06, 5.37, 'On Order', '2016-11-26')
     , (4029, 603, 1, 11.06, 5.37, 'On Order', '2016-11-26')
     , (4029, 607, 1, 11.06, 5.37, 'On Order', '2016-11-26')
     , (4030, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4030, 620, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4030, 619, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4031, 605, 7, 75.42, 2.92, 'No Stock', '2017-02-12')
     , (4031, 608, 7, 75.42, 2.92, 'No Stock', '2017-02-12')
     , (4031, 609, 7, 75.42, 2.92, 'No Stock', '2017-02-12')
     , (4031, 615, 7, 75.42, 2.92, 'No Stock', '2017-02-12')
     , (4032, 616, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4032, 612, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4032, 611, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4032, 619, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4033, 615, 4, 45.55, 6.19, 'Allocated', '2016-05-09')
     , (4033, 609, 3, 45.55, 6.19, 'Allocated', '2016-05-09')
     , (4033, 620, 1, 45.55, 6.19, 'Allocated', '2016-05-09')
     , (4034, 614, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4034, 620, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4034, 609, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4035, 613, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4035, 614, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4035, 619, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4036, 604, 1, 46.63, 4.25, 'No Stock', '2016-05-04')
     , (4036, 605, 6, 66.75, 9.97, 'Allocated', '2017-02-25')
     , (4037, 615, 2, 44.76, 7.22, 'On Order', '2017-03-01')
     , (4037, 612, 2, 44.76, 7.22, 'On Order', '2017-03-01')
     , (4038, 602, 2, 13.25, 7.66, 'On Order', '2016-07-13')
     , (4038, 620, 3, 13.25, 7.66, 'On Order', '2016-07-13')
     , (4039, 609, 1, 99.68, 6.09, 'No Stock', '2016-07-24')
     , (4039, 619, 3, 99.68, 6.09, 'No Stock', '2016-07-24')
     , (4039, 620, 1, 99.68, 6.09, 'No Stock', '2016-07-24')
     , (4040, 612, 2, 79.64, 6.72, 'Allocated', '2016-04-24')
     , (4040, 620, 2, 79.64, 6.72, 'Allocated', '2016-04-24')
     , (4041, 615, 9, 42.79, 8.92, 'No Stock', '2016-03-31')
     , (4041, 612, 2, 42.79, 8.92, 'No Stock', '2016-03-31')
     , (4041, 620, 1, 42.79, 8.92, 'No Stock', '2016-03-31')
     , (4042, 617, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4042, 613, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4042, 620, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4043, 611, 7, 87.95, 8.57, 'No Stock', '2016-06-18')
     , (4043, 619, 3, 87.95, 8.57, 'No Stock', '2016-06-18')
     , (4043, 620, 1, 87.95, 8.57, 'No Stock', '2016-06-18')
     , (4044, 602, 8, 47.3, 3.26, 'On Order', '2016-11-05')
     , (4044, 612, 3, 79.42, 6.56, 'On Order', '2017-02-11')
     , (4045, 603, 3, 31.01, 7.2, 'No Stock', '2016-11-11')
     , (4045, 604, 10, 43.54, 6.8, 'Allocated', '2016-11-13')
     , (4045, 608, 7, 15.2, 3.58, 'Allocated', '2017-01-18')
     , (4046, 611, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4047, 619, 2, 81.11, 8.77, 'No Stock', '2016-06-17')
     , (4047, 620, 8, 1.54, 6.85, 'No Stock', '2016-05-05')
     , (4048, 605, 7, 13.52, 2.44, 'On Order', '2016-07-06')
     , (4049, 603, 7, 40.99, 5.77, 'Allocated', '2017-02-22')
     , (4049, 609, 10, 90.45, 2.75, 'Allocated', '2017-01-26')
     , (4049, 612, 10, 24.28, 9.85, 'No Stock', '2016-10-01')
     , (4050, 606, 4, 27.84, 1.49, 'No Stock', '2016-12-18')
     , (4050, 607, 2, 72.72, 3.08, 'On Order', '2016-04-24')
     , (4050, 612, 2, 76.85, 5.15, 'No Stock', '2017-02-25')
     , (4051, 603, 1, 57.6, 1.77, 'Allocated', '2016-07-02')
     , (4052, 605, 9, 50.74, 6.47, 'No Stock', '2016-05-22')
     , (4053, 616, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4054, 601, 10, 55.48, 9.19, 'On Order', '2016-07-12')
     , (4055, 606, 10, 57.17, 3.06, 'No Stock', '2016-11-20')
     , (4056, 616, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4057, 609, 1, 79.3, 9.42, 'On Order', '2016-10-01')
     , (4057, 610, 5, 41.21, 5.55, 'No Stock', '2016-07-20')
     , (4057, 618, 3, 68.99, 6.42, 'On Order', '2016-08-19')
     , (4058, 604, 6, 36.78, 6.96, 'Allocated', '2016-05-20')
     , (4058, 619, 6, 79.01, 4.3, 'Allocated', '2016-06-19')
     , (4059, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4060, 603, 10, 40.38, 2.1, 'On Order', '2017-02-05')
     , (4060, 604, 9, 41.98, 1.46, 'Allocated', '2017-01-17')
     , (4061, 605, 1, 41.12, 2.51, 'On Order', '2016-09-05')
     , (4061, 602, 1, 41.12, 2.51, 'On Order', '2016-09-05')
     , (4061, 603, 1, 41.12, 2.51, 'On Order', '2016-09-05')
     , (4062, 604, 1, 71.77, 4.91, 'No Stock', '2016-11-20')
     , (4062, 605, 2, 41.12, 2.51, 'On Order', '2016-09-05')
     , (4062, 607, 1, 41.12, 2.51, 'On Order', '2016-09-05')
     , (4063, 608, 1, 62.85, 4.62, 'Allocated', '2016-03-25')
     , (4063, 605, 4, 41.12, 2.51, 'On Order', '2016-09-05')
     , (4063, 607, 1, 41.12, 2.51, 'On Order', '2016-09-05')
     , (4064, 615, 1, 68.27, 6.79, 'No Stock', '2016-07-06')
     , (4064, 602, 2, 41.12, 2.51, 'On Order', '2016-09-05')
     , (4064, 603, 5, 41.12, 2.51, 'On Order', '2016-09-05')
     , (4064, 605, 1, 41.12, 2.51, 'On Order', '2016-09-05')
     , (4065, 610, 5, 99.76, 1.78, 'Allocated', '2016-09-23')
     , (4066, 605, 1, 41.12, 2.51, 'On Order', '2016-09-05')
     , (4066, 604, 9, 2.63, 7.42, 'Allocated', '2016-08-12')
     , (4066, 615, 7, 25.14, 7.22, 'No Stock', '2016-03-27')
     , (4067, 618, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4068, 602, 4, 12.67, 5.17, 'Allocated', '2016-08-30')
     , (4068, 603, 1, 87.81, 1.02, 'On Order', '2016-10-12')
     , (4069, 620, 7, 89.85, 3.49, 'Allocated', '2017-02-22')
     , (4070, 615, 5, 94.08, 4.09, 'On Order', '2017-01-31')
     , (4071, 616, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4072, 601, 3, 89.95, 9.61, 'No Stock', '2016-11-25')
     , (4072, 612, 5, 34.51, 5.99, 'No Stock', '2016-05-25')
     , (4073, 613, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4074, 606, 10, 98.2, 3.63, 'On Order', '2016-04-30')
     , (4075, 605, 8, 69.36, 9.16, 'On Order', '2016-07-19')
     , (4075, 606, 1, 3.95, 8.66, 'On Order', '2016-04-09')
     , (4076, 614, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4077, 602, 10, 90.58, 5.92, 'No Stock', '2016-06-23')
     , (4077, 609, 1, 8.25, 3.74, 'No Stock', '2016-12-07')
     , (4077, 615, 9, 86.2, 4.5, 'Allocated', '2017-03-10')
     , (4078, 614, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4078, 612, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4078, 618, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4079, 615, 7, 1.95, 1.76, 'On Order', '2017-03-04')
     , (4079, 613, 2, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4079, 614, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4080, 608, 5, 26.84, 9.03, 'On Order', '2016-11-13')
     , (4080, 609, 3, 41.76, 4.08, 'Allocated', '2016-09-10')
     , (4081, 604, 9, 5.49, 8.45, 'On Order', '2016-10-21')
     , (4082, 616, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4083, 602, 1, 44.85, 5.16, 'No Stock', '2016-09-16')
     , (4084, 604, 4, 58.27, 4.09, 'Allocated', '2016-08-12')
     , (4085, 605, 8, 93.54, 7.49, 'On Order', '2016-11-24')
     , (4086, 615, 2, 94.02, 1.63, 'No Stock', '2016-09-01')
     , (4087, 601, 2, 79.39, 3.86, 'No Stock', '2016-07-13')
     , (4088, 615, 3, 14.03, 3.74, 'Allocated', '2016-11-15')
     , (4089, 616, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4090, 611, 4, 46.11, 1.53, 'No Stock', '2016-07-25')
     , (4091, 613, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4092, 602, 5, 42.68, 7.92, 'On Order', '2016-09-09')
     , (4093, 615, 8, 75.27, 5.92, 'No Stock', '2016-07-09')
     , (4094, 605, 7, 91.05, 4.52, 'On Order', '2017-02-21')
     , (4095, 602, 6, 58.5, 9.62, 'On Order', '2017-02-26')
     , (4095, 604, 3, 80.13, 4.11, 'No Stock', '2016-12-01')
     , (4095, 608, 1, 23.96, 5.54, 'No Stock', '2016-03-27')
     , (4096, 601, 4, 9.84, 5.33, 'No Stock', '2016-04-18')
     , (4097, 605, 4, 45.03, 5.61, 'On Order', '2016-05-13')
     , (4097, 606, 3, 41.39, 3.59, 'On Order', '2016-11-29')
     , (4098, 607, 8, 11.86, 2.74, 'No Stock', '2016-11-23')
     , (4099, 606, 2, 54.09, 5.84, 'On Order', '2016-10-08')
     , (4100, 608, 3, 6.62, 1.25, 'Allocated', '2016-11-16')
     , (4101, 617, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4102, 608, 1, 2.54, 9.62, 'On Order', '2016-10-01')
     , (4102, 609, 9, 92.56, 5.98, 'On Order', '2016-10-14')
     , (4102, 610, 10, 26.81, 5.9, 'On Order', '2016-08-20')
     , (4103, 606, 6, 71.32, 9.88, 'No Stock', '2016-09-10')
     , (4103, 608, 1, 73.91, 9.79, 'No Stock', '2016-12-26')
     , (4104, 603, 9, 33.85, 4.08, 'Allocated', '2017-03-02')
     , (4105, 601, 5, 49.17, 1.99, 'On Order', '2016-11-11')
     , (4105, 606, 9, 93.8, 4.48, 'Allocated', '2017-01-06')
     , (4106, 614, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4107, 603, 2, 24.95, 3.71, 'On Order', '2016-07-20')
     , (4107, 604, 5, 43.75, 1.39, 'No Stock', '2017-01-03')
     , (4107, 608, 1, 49.09, 8.72, 'Allocated', '2016-12-19')
     , (4107, 616, 8, 26.78, 1.21, 'On Order', '2016-09-23')
     , (4108, 604, 8, 36.89, 3.04, 'On Order', '2017-01-01')
     , (4108, 619, 1, 6.43, 6.66, 'Allocated', '2016-05-03')
     , (4109, 604, 9, 89.19, 9.43, 'No Stock', '2016-10-21')
     , (4109, 609, 2, 3.71, 9.12, 'No Stock', '2016-10-23')
     , (4110, 605, 3, 61.65, 7.86, 'On Order', '2016-08-05')
     , (4110, 606, 2, 63.62, 7.4, 'Allocated', '2016-06-07')
     , (4111, 615, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4111, 612, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4111, 613, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4112, 607, 5, 63.7, 9.44, 'On Order', '2017-01-01')
     , (4112, 610, 1, 22.54, 8.3, 'On Order', '2016-04-09')
     , (4113, 604, 6, 86.01, 4.4, 'Allocated', '2017-01-05')
     , (4113, 611, 5, 39.64, 4.58, 'Allocated', '2017-02-26')
     , (4113, 615, 3, 22.49, 3.61, 'Allocated', '2016-08-24')
     , (4113, 619, 6, 7.6, 6.63, 'On Order', '2016-05-01')
     , (4114, 610, 6, 3.77, 4.79, 'Allocated', '2017-01-18')
     , (4114, 608, 2, 3.77, 4.79, 'Allocated', '2017-01-18')
     , (4114, 609, 3, 3.77, 4.79, 'Allocated', '2017-01-18')
     , (4115, 616, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4115, 620, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4116, 610, 5, 54.21, 9.53, 'On Order', '2016-05-11')
     , (4116, 620, 3, 54.21, 9.53, 'On Order', '2016-05-11')
     , (4116, 615, 1, 54.21, 9.53, 'On Order', '2016-05-11')
     , (4117, 603, 7, 91.81, 4.35, 'On Order', '2016-04-18')
     , (4117, 610, 9, 79.15, 6.8, 'Allocated', '2017-02-09')
     , (4118, 611, 8, 1.55, 8.73, 'On Order', '2016-08-18')
     , (4118, 615, 3, 1.55, 8.73, 'On Order', '2016-08-18')
     , (4118, 612, 1, 1.55, 8.73, 'On Order', '2016-08-18')
     , (4119, 611, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4119, 615, 8, 1.55, 8.73, 'On Order', '2016-08-18')
     , (4119, 612, 4, 1.55, 8.73, 'On Order', '2016-08-18')
     , (4120, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4120, 612, 2, 1.55, 8.73, 'On Order', '2016-08-18')
     , (4120, 611, 8, 1.55, 8.73, 'On Order', '2016-08-18')
     , (4121, 602, 3, 7.09, 6.48, 'No Stock', '2016-06-03')
     , (4121, 612, 2, 1.55, 8.73, 'On Order', '2016-08-18')
     , (4121, 611, 1, 1.55, 8.73, 'On Order', '2016-08-18')
     , (4122, 606, 5, 44.99, 1.66, 'No Stock', '2016-05-08')
     , (4122, 611, 2, 1.55, 8.73, 'On Order', '2016-08-18')
     , (4122, 612, 6, 1.55, 8.73, 'On Order', '2016-08-18')
     , (4123, 607, 10, 4.78, 1.32, 'Allocated', '2016-12-28')
     , (4124, 604, 1, 18.79, 6.75, 'On Order', '2017-01-05')
     , (4125, 605, 9, 59.37, 1.61, 'On Order', '2016-07-24')
     , (4125, 608, 1, 72.49, 2.72, 'On Order', '2016-08-22')
     , (4126, 610, 10, 13.83, 1.15, 'On Order', '2016-09-29')
     , (4126, 615, 10, 71.77, 9.08, 'No Stock', '2017-02-24')
     , (4127, 616, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4128, 605, 6, 94.61, 7.16, 'No Stock', '2017-02-09')
     , (4128, 616, 3, 4.67, 2.72, 'On Order', '2016-04-06')
     , (4129, 610, 5, 73.89, 8.17, 'On Order', '2016-04-30')
     , (4130, 608, 6, 47.42, 8.39, 'No Stock', '2017-02-27')
     , (4131, 602, 5, 28.62, 6.07, 'No Stock', '2016-03-21')
     , (4132, 602, 7, 38.86, 3.58, 'Allocated', '2016-06-21')
     , (4132, 604, 4, 89.39, 2.36, 'No Stock', '2016-12-20')
     , (4132, 605, 5, 29.97, 9.78, 'No Stock', '2016-08-03')
     , (4133, 611, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4133, 613, 2, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4133, 615, 4, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4134, 606, 1, 73.57, 3.21, 'Allocated', '2016-04-07')
     , (4134, 608, 1, 65.61, 8.68, 'On Order', '2017-01-14')
     , (4135, 603, 2, 7.24, 2.61, 'Allocated', '2017-01-02')
     , (4135, 607, 6, 15.99, 6.23, 'No Stock', '2016-12-16')
     , (4135, 609, 6, 26.55, 2.9, 'On Order', '2016-11-25')
     , (4135, 612, 8, 17.99, 9.59, 'No Stock', '2016-03-25')
     , (4136, 606, 10, 16.82, 8.15, 'On Order', '2016-06-22')
     , (4137, 605, 2, 39.96, 6.08, 'On Order', '2016-05-22')
     , (4138, 620, 6, 4.6, 3.68, 'Allocated', '2016-09-17')
     , (4139, 601, 4, 87.74, 7.37, 'No Stock', '2016-11-25')
     , (4140, 603, 10, 90.31, 6.8, 'On Order', '2016-05-23')
     , (4140, 615, 8, 82.86, 2.49, 'On Order', '2016-12-24')
     , (4141, 609, 7, 20.28, 1.51, 'Allocated', '2017-02-10')
     , (4142, 608, 7, 55.47, 8.32, 'No Stock', '2016-07-07')
     , (4142, 619, 5, 75.63, 1.64, 'Allocated', '2016-08-02')
     , (4143, 606, 3, 99.61, 4.9, 'No Stock', '2016-10-25')
     , (4144, 604, 6, 80.75, 3.9, 'Allocated', '2016-09-09')
     , (4145, 603, 3, 57.97, 8.04, 'On Order', '2016-06-17')
     , (4146, 611, 8, 69.7, 6.14, 'On Order', '2016-04-15')
     , (4147, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4148, 602, 4, 67.89, 1.73, 'Allocated', '2016-03-26')
     , (4149, 614, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4150, 615, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4151, 617, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4151, 618, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4152, 608, 10, 97.82, 9.97, 'No Stock', '2016-07-11')
     , (4152, 620, 10, 97.82, 9.97, 'No Stock', '2016-07-11')
     , (4153, 615, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4153, 618, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4153, 601, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4153, 613, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4154, 614, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4154, 604, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4155, 606, 7, 42.62, 2.57, 'No Stock', '2017-02-11')
     , (4155, 607, 2, 83.04, 5.25, 'On Order', '2016-09-01')
     , (4155, 610, 6, 90.56, 6.31, 'On Order', '2016-10-18')
     , (4156, 615, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4156, 616, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4156, 601, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4157, 603, 9, 93.09, 5.35, 'Allocated', '2016-08-03')
     , (4157, 607, 6, 40.05, 3.9, 'On Order', '2017-01-13')
     , (4158, 612, 1, 17.5, 6.29, 'Allocated', '2016-04-14')
     , (4158, 611, 1, 17.5, 6.29, 'Allocated', '2016-04-14')
     , (4159, 616, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4159, 612, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4160, 610, 8, 42.67, 5.88, 'No Stock', '2017-01-04')
     , (4160, 620, 10, 87.78, 4.28, 'Allocated', '2016-11-20')
     , (4161, 616, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4161, 611, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4162, 613, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4162, 620, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4163, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4163, 612, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4163, 611, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4164, 607, 6, 80.56, 4.32, 'On Order', '2016-08-17')
     , (4164, 608, 6, 80.56, 4.32, 'On Order', '2016-08-17')
     , (4164, 617, 6, 80.56, 4.32, 'On Order', '2016-08-17')
     , (4165, 604, 8, 72.67, 7.56, 'On Order', '2016-08-09')
     , (4165, 603, 8, 72.67, 7.56, 'On Order', '2016-08-09')
     , (4165, 614, 8, 72.67, 7.56, 'On Order', '2016-08-09')
     , (4166, 601, 3, 34.36, 9.92, 'No Stock', '2016-09-01')
     , (4166, 602, 10, 33.99, 5.76, 'Allocated', '2016-05-26')
     , (4167, 603, 5, 58.2, 1.14, 'Allocated', '2016-06-20')
     , (4167, 608, 1, 20.01, 6.24, 'No Stock', '2017-01-05')
     , (4168, 601, 1, 59.45, 7.44, 'On Order', '2016-09-06')
     , (4168, 605, 1, 59.45, 7.44, 'On Order', '2016-09-06')
     , (4169, 604, 2, 93.43, 2.26, 'No Stock', '2017-01-16')
     , (4169, 609, 2, 93.43, 2.26, 'No Stock', '2017-01-16')
     , (4169, 607, 2, 93.43, 2.26, 'No Stock', '2017-01-16')
     , (4170, 607, 10, 68.27, 9.02, 'No Stock', '2017-02-11')
     , (4170, 620, 10, 68.27, 9.02, 'No Stock', '2017-02-11')
     , (4171, 610, 10, 49.38, 3.71, 'Allocated', '2016-04-25')
     , (4171, 601, 10, 49.38, 3.71, 'Allocated', '2016-04-25')
     , (4171, 611, 10, 49.38, 3.71, 'Allocated', '2016-04-25')
     , (4171, 613, 10, 49.38, 3.71, 'Allocated', '2016-04-25')
     , (4171, 615, 10, 49.38, 3.71, 'Allocated', '2016-04-25')
     , (4172, 606, 6, 88.26, 2.95, 'No Stock', '2016-04-11')
     , (4172, 609, 7, 60.97, 1.12, 'Allocated', '2016-10-14')
     , (4173, 601, 10, 11.22, 9.03, 'On Order', '2017-01-26')
     , (4173, 603, 10, 11.22, 9.03, 'On Order', '2017-01-26')
     , (4173, 605, 10, 11.22, 9.03, 'On Order', '2017-01-26')
     , (4174, 607, 8, 53.95, 6.31, 'No Stock', '2016-04-30')
     , (4174, 612, 2, 13.56, 7.15, 'No Stock', '2016-07-08')
     , (4175, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4175, 617, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4175, 620, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4176, 615, 2, 70.24, 1.09, 'Allocated', '2017-01-21')
     , (4176, 616, 2, 70.24, 1.09, 'Allocated', '2017-01-21')
     , (4177, 601, 2, 17.86, 2.99, 'Allocated', '2016-05-07')
     , (4177, 604, 8, 18.39, 6.73, 'On Order', '2016-04-05')
     , (4178, 605, 9, 23.59, 8.82, 'Allocated', '2016-09-11')
     , (4178, 607, 9, 62.59, 7.88, 'No Stock', '2016-04-18')
     , (4179, 614, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4180, 602, 7, 48.19, 6.05, 'Allocated', '2016-11-30')
     , (4180, 603, 1, 48.19, 6.05, 'Allocated', '2016-11-30')
     , (4181, 602, 2, 64.2, 4.74, 'Allocated', '2016-08-16')
     , (4181, 603, 3, 41.45, 2.49, 'Allocated', '2016-04-18')
     , (4181, 604, 5, 86.42, 6.42, 'No Stock', '2016-05-03')
     , (4182, 611, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4183, 615, 1, 68.34, 8.16, 'On Order', '2016-12-22')
     , (4184, 601, 2, 95.18, 2.74, 'Allocated', '2016-09-16')
     , (4184, 603, 9, 99.41, 9.44, 'No Stock', '2016-07-01')
     , (4184, 604, 1, 29.52, 3.48, 'Allocated', '2016-04-02')
     , (4185, 602, 2, 22.84, 5.5, 'On Order', '2016-10-20')
     , (4185, 611, 10, 34.57, 4.27, 'Allocated', '2017-02-05')
     , (4185, 612, 4, 85.32, 5.03, 'Allocated', '2017-03-14')
     , (4185, 619, 9, 64.97, 1.57, 'No Stock', '2016-10-19')
     , (4186, 605, 2, 80.08, 7.63, 'On Order', '2017-01-31')
     , (4187, 602, 9, 87.92, 7.74, 'On Order', '2016-11-13')
     , (4187, 616, 3, 73.39, 6.52, 'On Order', '2016-09-15')
     , (4188, 604, 8, 30.36, 1.97, 'No Stock', '2016-06-05')
     , (4188, 605, 5, 70.95, 6.11, 'On Order', '2016-03-31')
     , (4188, 611, 3, 23.18, 8.76, 'On Order', '2016-03-30')
     , (4189, 608, 4, 52.23, 3.08, 'No Stock', '2016-04-12')
     , (4190, 602, 10, 17.3, 4.18, 'No Stock', '2016-03-29')
     , (4190, 615, 6, 34.29, 9.45, 'Allocated', '2016-11-01')
     , (4191, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4192, 602, 4, 90.29, 5.09, 'Allocated', '2017-02-14')
     , (4192, 605, 8, 1.03, 1.28, 'On Order', '2017-02-14')
     , (4192, 615, 1, 11.61, 7.49, 'No Stock', '2016-08-11')
     , (4193, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4194, 618, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4195, 617, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4196, 616, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4197, 608, 10, 60.36, 3.99, 'On Order', '2016-10-30')
     , (4198, 606, 1, 58.71, 2.32, 'No Stock', '2016-06-26')
     , (4199, 602, 8, 12.59, 9.45, 'Allocated', '2016-04-16')
     , (4199, 603, 7, 5.5, 2.26, 'No Stock', '2016-11-28')
     , (4200, 605, 10, 92.81, 1.0, 'No Stock', '2017-03-07')
     , (4201, 606, 3, 46.48, 5.94, 'Allocated', '2016-12-15')
     , (4201, 608, 2, 97.29, 5.87, 'No Stock', '2016-09-12')
     , (4202, 609, 4, 56.7, 2.07, 'No Stock', '2017-03-11')
     , (4202, 608, 4, 56.7, 2.07, 'No Stock', '2017-03-11')
     , (4203, 610, 2, 29.12, 6.46, 'No Stock', '2016-10-27')
     , (4203, 609, 4, 56.7, 2.07, 'No Stock', '2017-03-11')
     , (4204, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4204, 609, 4, 56.7, 2.07, 'No Stock', '2017-03-11')
     , (4205, 610, 4, 78.23, 5.95, 'No Stock', '2016-06-21')
     , (4205, 609, 4, 56.7, 2.07, 'No Stock', '2017-03-11')
     , (4206, 603, 2, 40.49, 6.94, 'On Order', '2017-02-23')
     , (4206, 619, 6, 80.19, 3.28, 'No Stock', '2017-01-21')
     , (4207, 604, 9, 84.48, 7.01, 'No Stock', '2016-08-17')
     , (4207, 605, 9, 41.79, 1.55, 'On Order', '2016-06-27')
     , (4207, 610, 5, 12.3, 9.51, 'On Order', '2016-05-17')
     , (4208, 603, 7, 37.26, 3.68, 'Allocated', '2016-03-30')
     , (4208, 605, 5, 82.65, 2.76, 'On Order', '2016-12-11')
     , (4208, 607, 1, 84.88, 8.67, 'No Stock', '2016-04-28')
     , (4208, 609, 1, 88.01, 1.98, 'Allocated', '2016-10-04')
     , (4208, 610, 6, 88.85, 4.2, 'No Stock', '2016-04-19')
     , (4209, 606, 6, 46.31, 8.98, 'Allocated', '2016-04-20')
     , (4210, 603, 2, 92.12, 8.78, 'No Stock', '2016-12-11')
     , (4210, 609, 7, 70.37, 6.89, 'Allocated', '2016-06-23')
     , (4211, 614, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4212, 613, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4213, 616, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4214, 608, 3, 37.43, 5.18, 'Allocated', '2016-05-15')
     , (4214, 610, 9, 35.48, 7.16, 'On Order', '2017-02-13')
     , (4214, 611, 7, 84.99, 8.17, 'No Stock', '2016-07-08')
     , (4215, 610, 5, 4.35, 2.65, 'Allocated', '2016-07-24')
     , (4216, 606, 3, 79.91, 8.92, 'Allocated', '2016-05-02')
     , (4216, 608, 8, 45.75, 3.7, 'Allocated', '2017-02-24')
     , (4216, 615, 1, 55.11, 8.94, 'No Stock', '2016-05-06')
     , (4217, 605, 5, 40.67, 3.31, 'On Order', '2016-11-09')
     , (4217, 610, 5, 20.0, 8.58, 'On Order', '2016-07-27')
     , (4218, 615, 7, 34.14, 8.03, 'Allocated', '2016-11-12')
     , (4218, 619, 9, 62.61, 5.74, 'On Order', '2016-11-08')
     , (4219, 604, 9, 46.24, 2.42, 'No Stock', '2016-10-31')
     , (4219, 613, 7, 26.63, 3.9, 'No Stock', '2016-12-04')
     , (4219, 619, 1, 98.58, 7.38, 'No Stock', '2016-08-06')
     , (4220, 604, 5, 66.78, 9.28, 'No Stock', '2016-10-09')
     , (4220, 609, 6, 62.82, 9.71, 'No Stock', '2016-04-06')
     , (4221, 602, 8, 8.44, 1.85, 'Allocated', '2016-11-25')
     , (4222, 601, 10, 84.14, 2.59, 'No Stock', '2016-06-25')
     , (4222, 604, 9, 39.15, 8.12, 'No Stock', '2016-09-27')
     , (4223, 602, 2, 74.35, 9.94, 'Allocated', '2016-04-18')
     , (4223, 611, 4, 58.85, 6.75, 'No Stock', '2017-03-04')
     , (4224, 618, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4225, 605, 7, 88.08, 8.69, 'On Order', '2016-11-13')
     , (4226, 606, 1, 84.22, 3.54, 'On Order', '2017-01-19')
     , (4226, 608, 4, 97.1, 4.73, 'On Order', '2016-04-25')
     , (4227, 606, 9, 74.37, 1.85, 'On Order', '2016-12-19')
     , (4227, 607, 9, 74.37, 1.85, 'On Order', '2016-12-19')
     , (4228, 616, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4228, 618, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4228, 610, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4229, 615, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4229, 618, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4230, 614, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4230, 618, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4230, 619, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4231, 611, 6, 36.05, 2.56, 'On Order', '2017-02-12')
     , (4231, 618, 6, 36.05, 2.56, 'On Order', '2017-02-12')
     , (4232, 615, 8, 16.99, 7.26, 'No Stock', '2016-11-28')
     , (4232, 618, 8, 16.99, 7.26, 'No Stock', '2016-11-28')
     , (4233, 608, 6, 70.71, 1.75, 'Allocated', '2016-09-29')
     , (4233, 610, 6, 70.71, 1.75, 'Allocated', '2016-09-29')
     , (4233, 618, 6, 70.71, 1.75, 'Allocated', '2016-09-29')
     , (4234, 604, 5, 15.26, 9.54, 'No Stock', '2016-04-06')
     , (4234, 619, 5, 15.26, 9.54, 'No Stock', '2016-04-06')
     , (4235, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4235, 619, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4236, 607, 8, 46.97, 4.9, 'Allocated', '2017-02-16')
     , (4236, 617, 8, 46.97, 4.9, 'Allocated', '2017-02-16')
     , (4236, 620, 8, 46.97, 4.9, 'Allocated', '2017-02-16')
     , (4237, 602, 1, 27.79, 8.84, 'No Stock', '2016-11-07')
     , (4237, 620, 1, 27.79, 8.84, 'No Stock', '2016-11-07')
     , (4238, 602, 3, 32.5, 2.63, 'No Stock', '2016-04-09')
     , (4238, 608, 8, 88.3, 7.59, 'On Order', '2016-08-18')
     , (4239, 606, 7, 99.65, 2.31, 'Allocated', '2017-03-04')
     , (4239, 616, 7, 99.65, 2.31, 'Allocated', '2017-03-04')
     , (4240, 606, 10, 43.66, 2.48, 'No Stock', '2017-02-05')
     , (4240, 609, 2, 56.95, 2.11, 'No Stock', '2016-11-15')
     , (4241, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4241, 618, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4241, 620, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4242, 605, 6, 52.37, 8.56, 'No Stock', '2016-06-10')
     , (4242, 606, 6, 52.37, 8.56, 'No Stock', '2016-06-10')
     , (4242, 607, 6, 52.37, 8.56, 'No Stock', '2016-06-10')
     , (4243, 604, 2, 6.33, 1.16, 'No Stock', '2016-04-09')
     , (4243, 614, 2, 6.33, 1.16, 'No Stock', '2016-04-09')
     , (4243, 610, 2, 6.33, 1.16, 'No Stock', '2016-04-09')
     , (4244, 609, 4, 67.62, 7.49, 'On Order', '2016-09-03')
     , (4244, 619, 4, 67.62, 7.49, 'On Order', '2016-09-03')
     , (4244, 620, 4, 67.62, 7.49, 'On Order', '2016-09-03')
     , (4245, 608, 1, 32.47, 9.9, 'Allocated', '2017-03-14')
     , (4245, 618, 1, 32.47, 9.9, 'Allocated', '2017-03-14')
     , (4245, 620, 1, 32.47, 9.9, 'Allocated', '2017-03-14')
     , (4246, 603, 10, 53.94, 3.85, 'No Stock', '2016-06-04')
     , (4246, 606, 7, 6.16, 9.37, 'No Stock', '2016-07-05')
     , (4246, 607, 3, 27.34, 1.97, 'Allocated', '2016-11-15')
     , (4246, 611, 4, 73.06, 1.26, 'No Stock', '2017-02-28')
     , (4247, 601, 4, 66.41, 4.54, 'On Order', '2017-02-26')
     , (4247, 605, 2, 61.24, 5.9, 'Allocated', '2016-12-15')
     , (4248, 615, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4248, 620, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4249, 615, 2, 74.52, 3.88, 'On Order', '2016-06-09')
     , (4249, 620, 2, 74.52, 3.88, 'On Order', '2016-06-09')
     , (4249, 609, 2, 74.52, 3.88, 'On Order', '2016-06-09')
     , (4250, 606, 7, 63.89, 3.39, 'On Order', '2016-12-31')
     , (4250, 612, 8, 75.06, 4.19, 'Allocated', '2016-06-26')
     , (4251, 602, 1, 1.75, 1.73, 'No Stock', '2016-12-07')
     , (4251, 604, 8, 43.98, 1.58, 'Allocated', '2016-07-28')
     , (4252, 606, 4, 94.24, 1.31, 'No Stock', '2017-03-14')
     , (4252, 619, 10, 41.46, 4.18, 'No Stock', '2017-03-03')
     , (4252, 620, 3, 29.91, 4.91, 'On Order', '2016-12-28')
     , (4253, 616, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4253, 610, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4254, 610, 3, 5.01, 9.93, 'On Order', '2017-02-03')
     , (4254, 620, 2, 5.01, 9.93, 'On Order', '2017-02-03')
     , (4254, 612, 3, 5.01, 9.93, 'On Order', '2017-02-03')
     , (4255, 610, 7, 45.49, 8.0, 'Allocated', '2016-08-01')
     , (4255, 611, 7, 45.49, 8.0, 'Allocated', '2016-08-01')
     , (4256, 604, 9, 6.74, 1.84, 'No Stock', '2016-06-13')
     , (4256, 612, 4, 42.02, 2.86, 'Allocated', '2016-09-19')
     , (4256, 620, 2, 31.71, 4.97, 'Allocated', '2016-10-02')
     , (4257, 617, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4257, 610, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4257, 611, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4258, 605, 7, 22.45, 8.41, 'On Order', '2016-06-02')
     , (4258, 615, 3, 69.12, 3.65, 'Allocated', '2017-02-27')
     , (4258, 619, 4, 62.32, 2.23, 'Allocated', '2017-02-20')
     , (4259, 616, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4260, 603, 1, 27.68, 1.99, 'Allocated', '2016-09-20')
     , (4260, 604, 3, 59.65, 3.05, 'No Stock', '2016-12-31')
     , (4261, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4262, 602, 4, 51.73, 3.06, 'Allocated', '2017-01-17')
     , (4263, 612, 4, 18.46, 7.86, 'Allocated', '2016-08-12')
     , (4263, 615, 4, 18.46, 7.86, 'Allocated', '2016-08-12')
     , (4263, 616, 4, 18.46, 7.86, 'Allocated', '2016-08-12')
     , (4264, 604, 8, 82.02, 9.19, 'Allocated', '2016-11-28')
     , (4264, 614, 8, 82.02, 9.19, 'Allocated', '2016-11-28')
     , (4265, 618, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4265, 620, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4266, 601, 2, 66.57, 6.27, 'Allocated', '2016-09-19')
     , (4266, 602, 2, 66.57, 6.27, 'Allocated', '2016-09-19')
     , (4267, 601, 4, 44.78, 6.86, 'No Stock', '2016-09-27')
     , (4267, 610, 4, 19.08, 6.41, 'No Stock', '2016-12-24')
     , (4268, 611, 1, 24.72, 8.14, 'Allocated', '2016-06-08')
     , (4268, 612, 1, 24.72, 8.14, 'Allocated', '2016-06-08')
     , (4269, 616, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4269, 617, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4269, 618, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4270, 615, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4270, 612, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4270, 620, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4271, 603, 2, 80.47, 4.81, 'Allocated', '2016-05-25')
     , (4271, 604, 8, 38.65, 4.02, 'No Stock', '2016-05-09')
     , (4272, 610, 7, 66.28, 2.85, 'No Stock', '2016-09-17')
     , (4273, 612, 10, 85.38, 8.44, 'No Stock', '2016-12-19')
     , (4274, 613, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4275, 610, 8, 1.12, 8.65, 'Allocated', '2016-10-28')
     , (4275, 615, 1, 24.01, 5.55, 'No Stock', '2016-12-30')
     , (4276, 603, 3, 44.76, 7.28, 'No Stock', '2016-12-28')
     , (4277, 610, 9, 40.01, 8.62, 'No Stock', '2016-11-10')
     , (4278, 603, 6, 32.0, 1.23, 'Allocated', '2016-12-23')
     , (4278, 608, 4, 38.01, 9.45, 'Allocated', '2016-10-05')
     , (4278, 609, 5, 31.99, 5.41, 'No Stock', '2016-10-23')
     , (4279, 613, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4280, 606, 5, 7.52, 2.76, 'Allocated', '2016-05-27')
     , (4280, 609, 4, 37.09, 4.44, 'On Order', '2016-08-10')
     , (4281, 610, 9, 37.07, 8.7, 'On Order', '2016-12-28')
     , (4281, 611, 2, 37.07, 8.7, 'On Order', '2016-12-28')
     , (4281, 612, 1, 37.07, 8.7, 'On Order', '2016-12-28')
     , (4282, 601, 1, 19.14, 3.98, 'On Order', '2016-11-09')
     , (4282, 606, 3, 88.94, 6.79, 'On Order', '2016-09-29')
     , (4282, 609, 6, 25.35, 5.22, 'Allocated', '2016-10-05')
     , (4283, 601, 1, 14.78, 3.31, 'On Order', '2016-10-07')
     , (4284, 606, 5, 32.57, 7.22, 'On Order', '2016-08-24')
     , (4285, 604, 5, 47.88, 3.77, 'No Stock', '2016-12-09')
     , (4285, 615, 8, 9.28, 2.13, 'Allocated', '2016-03-27')
     , (4286, 620, 5, 63.24, 7.62, 'Allocated', '2016-12-06')
     , (4287, 602, 6, 2.9, 9.5, 'On Order', '2016-10-06')
     , (4287, 605, 5, 7.63, 2.78, 'Allocated', '2016-08-22')
     , (4287, 611, 1, 8.98, 3.39, 'Allocated', '2016-07-18')
     , (4287, 614, 3, 34.4, 7.12, 'On Order', '2017-03-04')
     , (4288, 604, 6, 57.67, 3.25, 'Allocated', '2016-05-18')
     , (4289, 601, 7, 19.32, 7.31, 'On Order', '2017-01-21')
     , (4289, 615, 10, 89.16, 2.08, 'No Stock', '2016-06-03')
     , (4290, 614, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4291, 601, 1, 68.5, 2.58, 'Allocated', '2016-11-05')
     , (4291, 603, 5, 11.27, 5.56, 'Allocated', '2016-06-10')
     , (4291, 606, 1, 76.82, 3.31, 'Allocated', '2016-09-27')
     , (4292, 608, 10, 27.45, 4.8, 'On Order', '2016-05-12')
     , (4292, 610, 9, 16.78, 5.96, 'No Stock', '2016-05-05')
     , (4293, 612, 4, 69.21, 2.07, 'Allocated', '2016-08-23')
     , (4294, 619, 4, 81.5, 9.13, 'Allocated', '2017-01-20')
     , (4295, 616, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4296, 613, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4297, 604, 4, 19.21, 1.7, 'Allocated', '2016-08-20')
     , (4297, 606, 4, 71.24, 5.74, 'No Stock', '2016-10-11')
     , (4298, 613, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4299, 603, 8, 81.7, 5.69, 'Allocated', '2016-07-06')
     , (4300, 601, 5, 35.51, 8.38, 'On Order', '2016-12-23')
     , (4300, 607, 5, 46.94, 6.82, 'No Stock', '2016-07-29')
     , (4301, 605, 6, 99.32, 1.22, 'Allocated', '2016-09-02')
     , (4301, 620, 7, 96.67, 6.9, 'Allocated', '2016-11-24')
     , (4302, 617, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4303, 605, 8, 31.92, 5.62, 'On Order', '2016-04-09')
     , (4304, 615, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4305, 606, 1, 2.53, 1.15, 'On Order', '2016-12-03')
     , (4305, 609, 6, 76.41, 7.87, 'Allocated', '2016-07-05')
     , (4305, 612, 3, 31.58, 5.53, 'On Order', '2016-10-01')
     , (4306, 615, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4307, 601, 7, 36.63, 3.9, 'On Order', '2016-09-16')
     , (4307, 606, 10, 56.47, 8.96, 'No Stock', '2017-02-25')
     , (4308, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4309, 606, 6, 84.25, 2.28, 'On Order', '2016-04-07')
     , (4310, 605, 7, 15.88, 2.48, 'Allocated', '2017-02-17')
     , (4311, 603, 2, 67.26, 6.18, 'No Stock', '2016-05-06')
     , (4312, 619, 4, 87.5, 6.57, 'Allocated', '2017-03-14')
     , (4313, 602, 3, 87.01, 4.45, 'On Order', '2016-08-30')
     , (4313, 610, 7, 54.92, 8.87, 'No Stock', '2017-01-20')
     , (4314, 602, 9, 49.19, 2.67, 'Allocated', '2016-07-24')
     , (4314, 607, 10, 32.19, 8.12, 'On Order', '2016-11-23')
     , (4315, 602, 7, 9.25, 3.78, 'On Order', '2017-01-04')
     , (4316, 613, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4317, 616, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4318, 609, 5, 29.17, 3.35, 'No Stock', '2016-11-28')
     , (4318, 610, 4, 41.75, 3.7, 'On Order', '2016-09-09')
     , (4318, 620, 5, 81.63, 1.49, 'On Order', '2016-04-16')
     , (4319, 614, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4320, 613, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4321, 616, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4322, 603, 2, 21.09, 9.37, 'No Stock', '2016-11-29')
     , (4323, 608, 8, 24.05, 9.49, 'On Order', '2016-08-12')
     , (4324, 607, 7, 83.23, 1.48, 'On Order', '2016-07-10')
     , (4325, 608, 10, 35.28, 1.8, 'Allocated', '2016-09-01')
     , (4326, 602, 8, 69.18, 4.43, 'No Stock', '2016-07-31')
     , (4326, 610, 2, 24.44, 8.1, 'No Stock', '2016-03-29')
     , (4327, 608, 3, 22.57, 4.64, 'Allocated', '2016-03-23')
     , (4328, 604, 1, 55.53, 3.16, 'On Order', '2016-12-14')
     , (4328, 605, 2, 38.78, 6.97, 'Allocated', '2017-03-04')
     , (4328, 607, 5, 28.94, 3.59, 'Allocated', '2016-08-01')
     , (4329, 603, 6, 65.93, 2.86, 'On Order', '2016-10-25')
     , (4330, 615, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4331, 602, 5, 37.37, 6.39, 'No Stock', '2016-03-19')
     , (4332, 606, 5, 93.96, 3.31, 'No Stock', '2016-08-09')
     , (4332, 610, 5, 3.77, 6.74, 'Allocated', '2016-06-23')
     , (4333, 608, 7, 14.29, 3.95, 'On Order', '2016-06-16')
     , (4334, 614, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4335, 609, 6, 63.15, 9.3, 'Allocated', '2016-08-31')
     , (4336, 613, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4337, 610, 1, 52.98, 5.68, 'Allocated', '2016-03-19')
     , (4338, 610, 1, 83.94, 3.56, 'Allocated', '2016-11-03')
     , (4339, 604, 10, 78.06, 5.32, 'No Stock', '2016-11-19')
     , (4340, 616, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4341, 609, 6, 52.04, 7.63, 'No Stock', '2016-11-25')
     , (4341, 615, 1, 9.44, 8.66, 'No Stock', '2016-09-06')
     , (4342, 615, 6, 67.41, 8.5, 'Allocated', '2016-08-28')
     , (4343, 615, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4344, 610, 10, 61.53, 5.36, 'On Order', '2016-04-30')
     , (4345, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4346, 616, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4347, 616, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4348, 608, 1, 96.42, 4.57, 'On Order', '2016-05-14')
     , (4348, 610, 3, 38.0, 5.74, 'On Order', '2016-05-30')
     , (4348, 611, 6, 38.59, 6.7, 'On Order', '2016-08-16')
     , (4349, 613, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4350, 602, 8, 81.72, 7.57, 'Allocated', '2016-08-18')
     , (4350, 604, 6, 95.31, 9.43, 'On Order', '2016-12-29')
     , (4350, 608, 9, 43.57, 6.54, 'No Stock', '2016-08-24')
     , (4351, 602, 1, 37.63, 3.31, 'No Stock', '2016-08-26')
     , (4351, 607, 9, 83.22, 2.44, 'No Stock', '2016-04-11')
     , (4352, 602, 3, 13.09, 3.98, 'No Stock', '2016-10-03')
     , (4352, 603, 9, 88.58, 4.87, 'On Order', '2017-03-05')
     , (4352, 614, 4, 47.62, 5.05, 'Allocated', '2016-05-30')
     , (4353, 612, 9, 28.8, 1.77, 'Allocated', '2016-03-28')
     , (4354, 618, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4355, 607, 4, 20.25, 3.18, 'No Stock', '2016-04-27')
     , (4355, 608, 9, 73.3, 5.95, 'Allocated', '2016-12-08')
     , (4355, 609, 7, 26.16, 6.88, 'Allocated', '2016-12-09')
     , (4356, 614, 8, 93.97, 2.88, 'No Stock', '2016-06-14')
     , (4357, 605, 6, 24.39, 5.53, 'No Stock', '2016-07-31')
     , (4357, 612, 4, 71.28, 1.94, 'No Stock', '2016-07-08')
     , (4358, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4359, 617, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4360, 616, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4361, 601, 6, 45.27, 1.05, 'Allocated', '2016-03-29')
     , (4361, 609, 10, 39.75, 1.28, 'On Order', '2016-07-15')
     , (4362, 603, 4, 42.92, 5.17, 'No Stock', '2016-09-24')
     , (4363, 616, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4364, 602, 8, 90.01, 4.2, 'On Order', '2017-02-09')
     , (4365, 601, 2, 92.96, 3.73, 'Allocated', '2016-06-10')
     , (4365, 603, 7, 86.67, 9.6, 'On Order', '2016-07-31')
     , (4366, 604, 6, 52.01, 2.02, 'No Stock', '2016-09-23')
     , (4366, 605, 9, 88.21, 3.68, 'On Order', '2016-08-10')
     , (4366, 609, 8, 80.78, 3.99, 'No Stock', '2016-05-07')
     , (4367, 616, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4368, 604, 4, 53.46, 4.56, 'No Stock', '2016-09-07')
     , (4369, 612, 2, 8.5, 3.86, 'Allocated', '2017-01-20')
     , (4370, 603, 9, 46.22, 8.2, 'On Order', '2016-09-02')
     , (4370, 604, 10, 10.38, 2.29, 'Allocated', '2016-06-03')
     , (4371, 610, 10, 23.33, 4.07, 'On Order', '2016-08-25')
     , (4372, 616, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4373, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4374, 604, 3, 29.51, 2.34, 'No Stock', '2017-03-07')
     , (4375, 618, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4376, 608, 10, 5.55, 3.21, 'No Stock', '2016-09-14')
     , (4377, 602, 9, 91.62, 8.57, 'On Order', '2016-08-26')
     , (4378, 603, 8, 74.83, 5.38, 'On Order', '2016-04-11')
     , (4379, 605, 9, 53.7, 5.65, 'On Order', '2016-10-29')
     , (4380, 618, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4381, 619, 1, 35.54, 3.78, 'Allocated', '2016-07-27')
     , (4382, 602, 8, 33.64, 7.95, 'Allocated', '2016-11-05')
     , (4382, 606, 4, 68.17, 6.06, 'On Order', '2017-01-22')
     , (4383, 613, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4384, 615, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4385, 609, 1, 18.13, 8.94, 'On Order', '2016-03-25')
     , (4386, 613, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4387, 602, 8, 86.06, 9.74, 'Allocated', '2016-12-01')
     , (4387, 606, 8, 87.31, 7.53, 'No Stock', '2016-06-12')
     , (4387, 610, 3, 47.55, 5.2, 'Allocated', '2016-10-06')
     , (4388, 602, 4, 5.86, 3.52, 'On Order', '2016-05-09')
     , (4388, 603, 8, 24.25, 6.18, 'Allocated', '2016-09-22')
     , (4388, 606, 6, 29.46, 2.93, 'Allocated', '2016-09-11')
     , (4388, 619, 1, 36.76, 7.37, 'No Stock', '2016-12-29')
     , (4389, 602, 1, 94.23, 9.35, 'Allocated', '2016-06-13')
     , (4389, 603, 2, 40.15, 8.39, 'No Stock', '2016-08-09')
     , (4390, 609, 4, 7.02, 5.61, 'On Order', '2016-11-29')
     , (4391, 607, 1, 48.41, 8.97, 'On Order', '2016-07-10')
     , (4392, 603, 8, 74.91, 8.23, 'No Stock', '2016-04-07')
     , (4393, 611, 4, 55.83, 4.56, 'Allocated', '2016-04-13')
     , (4394, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4395, 610, 7, 82.73, 5.09, 'No Stock', '2016-09-27')
     , (4395, 617, 6, 26.05, 6.29, 'On Order', '2016-07-24')
     , (4396, 605, 9, 66.19, 1.32, 'No Stock', '2017-02-05')
     , (4396, 619, 4, 3.15, 1.04, 'On Order', '2016-07-08')
     , (4397, 619, 9, 78.52, 7.64, 'No Stock', '2016-08-19')
     , (4398, 618, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4399, 610, 7, 85.03, 4.71, 'No Stock', '2016-05-04')
     , (4400, 612, 9, 36.85, 6.54, 'On Order', '2016-10-31')
     , (4400, 620, 2, 15.9, 5.62, 'On Order', '2016-06-18')
     , (4401, 602, 1, 91.01, 4.13, 'No Stock', '2016-09-27')
     , (4401, 604, 10, 98.7, 5.27, 'Allocated', '2016-06-03')
     , (4402, 616, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4403, 614, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4404, 616, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4405, 604, 3, 46.99, 9.31, 'No Stock', '2016-09-08')
     , (4405, 610, 10, 4.94, 1.68, 'On Order', '2016-11-15')
     , (4406, 602, 7, 25.84, 7.67, 'On Order', '2016-10-28')
     , (4406, 606, 2, 96.43, 5.64, 'No Stock', '2016-11-14')
     , (4406, 607, 10, 14.91, 3.88, 'No Stock', '2016-06-18')
     , (4407, 606, 9, 20.82, 6.82, 'No Stock', '2016-10-08')
     , (4407, 608, 4, 29.19, 7.26, 'No Stock', '2016-12-15')
     , (4408, 605, 4, 12.83, 9.29, 'No Stock', '2016-11-20')
     , (4408, 615, 4, 89.77, 2.7, 'No Stock', '2017-03-07')
     , (4408, 619, 3, 36.44, 8.86, 'No Stock', '2016-12-17')
     , (4409, 602, 2, 36.96, 9.73, 'Allocated', '2016-08-19')
     , (4409, 611, 7, 94.98, 4.11, 'On Order', '2016-05-17')
     , (4410, 603, 7, 13.79, 5.05, 'No Stock', '2016-09-28')
     , (4410, 604, 10, 70.24, 4.07, 'No Stock', '2016-10-27')
     , (4410, 607, 6, 26.39, 7.8, 'No Stock', '2016-03-21')
     , (4411, 602, 7, 3.47, 3.86, 'No Stock', '2017-03-14')
     , (4411, 611, 3, 10.43, 3.67, 'On Order', '2016-12-27')
     , (4412, 605, 10, 26.07, 6.78, 'Allocated', '2017-02-16')
     , (4412, 607, 7, 76.81, 5.67, 'No Stock', '2016-11-26')
     , (4412, 610, 3, 98.77, 3.34, 'On Order', '2016-09-29')
     , (4413, 617, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4414, 606, 5, 26.01, 4.54, 'On Order', '2016-03-23')
     , (4415, 605, 5, 74.86, 1.68, 'No Stock', '2016-09-18')
     , (4416, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4417, 601, 6, 66.38, 5.22, 'No Stock', '2016-07-07')
     , (4417, 604, 7, 96.99, 4.89, 'No Stock', '2016-09-30')
     , (4418, 609, 8, 59.88, 5.52, 'Allocated', '2016-09-03')
     , (4419, 604, 4, 54.04, 4.95, 'On Order', '2017-01-05')
     , (4420, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4421, 605, 2, 96.34, 1.7, 'On Order', '2016-06-10')
     , (4422, 615, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4423, 602, 3, 25.88, 5.34, 'Allocated', '2016-04-19')
     , (4423, 605, 5, 4.06, 2.22, 'On Order', '2016-06-21')
     , (4423, 608, 9, 20.4, 4.26, 'On Order', '2016-08-17')
     , (4424, 605, 8, 44.66, 4.23, 'Allocated', '2016-11-06')
     , (4425, 607, 7, 18.91, 6.75, 'On Order', '2016-11-28')
     , (4425, 608, 4, 60.11, 4.46, 'No Stock', '2017-02-15')
     , (4426, 606, 8, 44.98, 6.5, 'On Order', '2016-11-13')
     , (4426, 607, 4, 78.46, 2.91, 'Allocated', '2017-01-26')
     , (4427, 604, 2, 61.91, 3.08, 'On Order', '2016-09-01')
     , (4427, 607, 10, 53.82, 8.17, 'No Stock', '2016-11-09')
     , (4428, 603, 2, 81.15, 5.94, 'Allocated', '2016-12-01')
     , (4428, 605, 9, 48.38, 5.26, 'On Order', '2016-07-08')
     , (4429, 606, 10, 28.8, 2.75, 'Allocated', '2017-03-03')
     , (4430, 616, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4431, 616, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4432, 603, 9, 52.12, 4.42, 'No Stock', '2016-09-03')
     , (4433, 601, 4, 34.09, 9.94, 'No Stock', '2016-04-18')
     , (4433, 605, 1, 65.04, 7.32, 'On Order', '2016-04-04')
     , (4434, 601, 2, 61.28, 1.15, 'On Order', '2016-03-18')
     , (4434, 605, 2, 61.28, 1.15, 'On Order', '2016-03-18')
     , (4434, 607, 2, 61.28, 1.15, 'On Order', '2016-03-18')
     , (4435, 610, 10, 9.19, 7.18, 'On Order', '2016-12-08')
     , (4435, 612, 10, 9.19, 7.18, 'On Order', '2016-12-08')
     , (4435, 614, 10, 9.19, 7.18, 'On Order', '2016-12-08')
     , (4436, 616, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4436, 618, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4436, 620, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4437, 601, 7, 56.48, 9.07, 'Allocated', '2016-05-05')
     , (4437, 602, 1, 98.71, 8.08, 'On Order', '2017-03-16')
     , (4437, 609, 7, 12.69, 5.56, 'On Order', '2016-12-16')
     , (4438, 604, 1, 97.24, 5.43, 'Allocated', '2016-10-22')
     , (4438, 605, 1, 97.24, 5.43, 'Allocated', '2016-10-22')
     , (4438, 606, 1, 97.24, 5.43, 'Allocated', '2016-10-22')
     , (4439, 615, 5, 11.46, 3.07, 'Allocated', '2016-06-10')
     , (4439, 618, 1, 97.24, 5.43, 'Allocated', '2016-10-22')
     , (4439, 620, 1, 97.24, 5.43, 'Allocated', '2016-10-22')
     , (4440, 603, 9, 66.05, 8.7, 'No Stock', '2016-11-08')
     , (4440, 616, 1, 97.24, 5.43, 'Allocated', '2016-10-22')
     , (4440, 620, 1, 97.24, 5.43, 'Allocated', '2016-10-22')
     , (4441, 602, 4, 79.49, 2.54, 'Allocated', '2017-02-19')
     , (4441, 609, 4, 88.86, 9.63, 'Allocated', '2016-06-06')
     , (4442, 608, 1, 55.66, 2.52, 'Allocated', '2016-09-08')
     , (4443, 616, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4444, 602, 4, 52.6, 9.83, 'On Order', '2017-01-18')
     , (4444, 605, 8, 81.63, 9.58, 'On Order', '2017-01-27')
     , (4445, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4445, 601, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4445, 607, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4446, 602, 3, 76.28, 1.52, 'On Order', '2017-02-17')
     , (4446, 606, 5, 18.52, 2.13, 'On Order', '2016-06-28')
     , (4447, 609, 9, 54.61, 4.47, 'Allocated', '2016-07-08')
     , (4447, 608, 9, 54.61, 4.47, 'Allocated', '2016-07-08')
     , (4447, 607, 9, 54.61, 4.47, 'Allocated', '2016-07-08')
     , (4448, 605, 2, 69.71, 2.05, 'No Stock', '2016-09-17')
     , (4448, 606, 2, 69.71, 2.05, 'No Stock', '2016-09-17')
     , (4448, 607, 2, 69.71, 2.05, 'No Stock', '2016-09-17')
     , (4449, 618, 6, 35.62, 5.23, 'On Order', '2016-04-15')
     , (4449, 619, 10, 86.97, 4.63, 'No Stock', '2016-09-29')
     , (4450, 619, 8, 26.14, 4.87, 'On Order', '2016-12-09')
     , (4450, 620, 8, 26.14, 4.87, 'On Order', '2016-12-09')
     , (4450, 601, 8, 26.14, 4.87, 'On Order', '2016-12-09')
     , (4451, 604, 3, 47.48, 1.4, 'Allocated', '2016-09-12')
     , (4452, 615, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4453, 606, 2, 4.03, 8.07, 'On Order', '2016-12-10')
     , (4454, 619, 7, 55.92, 9.0, 'On Order', '2016-10-07')
     , (4455, 602, 10, 50.3, 9.33, 'On Order', '2017-01-11')
     , (4455, 603, 1, 7.68, 7.77, 'Allocated', '2016-12-09')
     , (4455, 605, 1, 98.23, 3.73, 'Allocated', '2016-07-07')
     , (4456, 607, 8, 54.83, 9.57, 'No Stock', '2016-08-16')
     , (4456, 612, 7, 97.34, 1.24, 'Allocated', '2016-05-13')
     , (4457, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4458, 615, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4459, 617, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4460, 602, 8, 37.95, 8.36, 'No Stock', '2017-01-03')
     , (4461, 620, 6, 73.77, 2.02, 'Allocated', '2016-03-27')
     , (4462, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4463, 615, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4464, 606, 1, 31.6, 1.18, 'On Order', '2016-09-05')
     , (4465, 615, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4466, 620, 10, 37.79, 1.76, 'Allocated', '2016-12-14')
     , (4467, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4468, 610, 3, 80.77, 6.87, 'Allocated', '2016-12-30')
     , (4469, 602, 3, 19.99, 5.21, 'No Stock', '2016-08-11')
     , (4469, 612, 3, 73.21, 4.85, 'On Order', '2017-02-19')
     , (4470, 607, 4, 7.7, 5.78, 'No Stock', '2016-04-22')
     , (4471, 617, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4472, 616, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4473, 609, 2, 97.6, 1.84, 'Allocated', '2016-05-12')
     , (4474, 611, 7, 12.5, 6.31, 'Allocated', '2016-04-18')
     , (4475, 603, 2, 44.42, 7.21, 'No Stock', '2017-03-10')
     , (4476, 603, 4, 43.47, 5.63, 'No Stock', '2016-09-17')
     , (4477, 603, 4, 24.99, 4.46, 'No Stock', '2016-09-10')
     , (4478, 606, 1, 29.13, 4.59, 'On Order', '2017-03-04')
     , (4478, 619, 4, 58.05, 2.9, 'Allocated', '2017-01-26')
     , (4479, 603, 10, 93.2, 7.79, 'On Order', '2016-03-21')
     , (4479, 609, 4, 70.36, 9.01, 'Allocated', '2017-02-03')
     , (4479, 610, 6, 49.48, 6.79, 'Allocated', '2017-03-01')
     , (4480, 608, 9, 11.03, 6.26, 'On Order', '2016-12-10')
     , (4481, 616, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4482, 603, 10, 28.92, 8.1, 'No Stock', '2016-05-27')
     , (4482, 607, 6, 90.11, 5.74, 'On Order', '2016-04-29')
     , (4482, 610, 4, 7.12, 2.89, 'On Order', '2017-01-12')
     , (4482, 611, 1, 12.48, 8.56, 'No Stock', '2016-08-16')
     , (4482, 614, 10, 55.93, 1.63, 'On Order', '2016-07-09')
     , (4482, 618, 1, 33.9, 2.46, 'Allocated', '2016-07-11')
     , (4483, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4484, 616, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4485, 605, 7, 99.92, 1.31, 'No Stock', '2016-05-11')
     , (4486, 615, 7, 4.39, 3.61, 'Allocated', '2016-06-24')
     , (4487, 602, 9, 69.78, 7.96, 'No Stock', '2016-12-29')
     , (4487, 607, 5, 24.92, 8.97, 'On Order', '2016-08-15')
     , (4487, 615, 4, 72.16, 8.97, 'On Order', '2016-07-28')
     , (4488, 601, 9, 64.29, 1.52, 'On Order', '2016-03-30')
     , (4488, 609, 10, 66.79, 5.3, 'On Order', '2016-07-11')
     , (4489, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4490, 615, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4491, 602, 3, 16.8, 5.22, 'On Order', '2016-09-16')
     , (4492, 607, 4, 99.59, 2.45, 'On Order', '2017-03-04')
     , (4493, 615, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4494, 615, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4495, 607, 7, 86.05, 5.4, 'Allocated', '2016-10-03')
     , (4496, 603, 10, 55.12, 3.71, 'Allocated', '2016-07-06')
     , (4497, 607, 7, 27.3, 4.26, 'Allocated', '2017-01-29')
     , (4498, 604, 10, 89.58, 1.25, 'Allocated', '2016-03-19')
     , (4498, 610, 10, 69.32, 2.48, 'No Stock', '2016-06-24')
     , (4499, 601, 4, 56.58, 6.73, 'No Stock', '2017-02-21')
     , (4499, 602, 4, 56.58, 6.73, 'No Stock', '2017-02-21')
     , (4499, 603, 4, 56.58, 6.73, 'No Stock', '2017-02-21')
     , (4500, 616, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4500, 620, 10, 54.41, 7.02, 'No Stock', '2016-11-30')
     , (4500, 619, 10, 54.41, 7.02, 'No Stock', '2016-11-30')
     , (4501, 620, 10, 54.41, 7.02, 'No Stock', '2016-11-30')
     , (4501, 619, 10, 54.41, 7.02, 'No Stock', '2016-11-30')
     , (4501, 618, 10, 54.41, 7.02, 'No Stock', '2016-11-30')
     , (4502, 603, 2, 27.21, 1.12, 'No Stock', '2016-07-27')
     , (4502, 605, 9, 39.93, 3.2, 'On Order', '2016-11-21')
     , (4503, 615, 6, 85.1, 8.26, 'No Stock', '2016-05-03')
     , (4503, 611, 6, 85.1, 8.26, 'No Stock', '2016-05-03')
     , (4503, 612, 6, 85.1, 8.26, 'No Stock', '2016-05-03')
     , (4504, 615, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4504, 618, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4504, 619, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4505, 612, 3, 10.99, 1.62, 'Allocated', '2016-09-04')
     , (4505, 609, 3, 10.99, 1.62, 'Allocated', '2016-09-04')
     , (4505, 601, 3, 10.99, 1.62, 'Allocated', '2016-09-04')
     , (4506, 602, 7, 88.03, 1.0, 'On Order', '2016-09-23')
     , (4506, 603, 9, 66.78, 1.18, 'Allocated', '2017-02-03')
     , (4506, 606, 10, 85.37, 2.21, 'Allocated', '2016-10-03')
     , (4506, 609, 9, 84.3, 4.06, 'Allocated', '2016-12-08')
     , (4507, 617, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4508, 611, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4509, 611, 2, 99.24, 8.51, 'Allocated', '2016-08-12')
     , (4509, 612, 8, 2.41, 3.81, 'On Order', '2016-08-30')
     , (4510, 614, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4511, 610, 3, 73.48, 8.4, 'Allocated', '2016-12-06')
     , (4511, 611, 4, 7.29, 6.91, 'Allocated', '2016-12-23')
     , (4511, 616, 5, 26.16, 6.26, 'On Order', '2016-12-09')
     , (4512, 614, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4513, 614, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4514, 605, 6, 86.17, 7.08, 'No Stock', '2017-01-25')
     , (4514, 610, 6, 71.51, 6.3, 'No Stock', '2017-01-23')
     , (4515, 617, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4516, 618, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4517, 604, 10, 55.76, 7.34, 'Allocated', '2016-10-23')
     , (4517, 619, 2, 1.09, 7.07, 'Allocated', '2016-08-19')
     , (4518, 615, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4519, 609, 9, 61.39, 7.83, 'On Order', '2016-07-01')
     , (4520, 619, 9, 72.61, 9.55, 'No Stock', '2016-10-08')
     , (4521, 610, 10, 19.38, 3.54, 'Allocated', '2016-12-08')
     , (4521, 615, 8, 54.35, 7.77, 'No Stock', '2017-01-31')
     , (4522, 602, 9, 68.98, 6.79, 'No Stock', '2016-11-28')
     , (4523, 606, 9, 79.86, 1.63, 'No Stock', '2016-05-25')
     , (4524, 602, 9, 91.58, 3.46, 'On Order', '2017-03-12')
     , (4525, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4526, 603, 9, 56.56, 7.64, 'On Order', '2016-10-14')
     , (4526, 604, 4, 80.67, 2.83, 'No Stock', '2016-07-29')
     , (4526, 610, 5, 88.8, 2.86, 'On Order', '2017-02-25')
     , (4527, 616, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4528, 605, 4, 73.64, 8.81, 'Allocated', '2017-01-26')
     , (4528, 609, 4, 64.56, 4.09, 'On Order', '2016-10-03')
     , (4529, 616, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4530, 602, 9, 70.97, 4.73, 'On Order', '2016-12-07')
     , (4531, 606, 10, 26.53, 2.83, 'No Stock', '2016-03-25')
     , (4531, 615, 5, 79.05, 6.82, 'Allocated', '2016-08-04')
     , (4531, 619, 4, 36.14, 7.09, 'No Stock', '2016-03-26')
     , (4532, 605, 5, 6.28, 9.94, 'No Stock', '2017-03-13')
     , (4532, 610, 8, 17.25, 3.68, 'Allocated', '2016-05-28')
     , (4533, 615, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4534, 606, 8, 60.95, 9.33, 'Allocated', '2016-07-15')
     , (4534, 607, 10, 49.84, 8.32, 'No Stock', '2016-04-24')
     , (4535, 610, 6, 17.67, 1.81, 'On Order', '2017-03-01')
     , (4535, 619, 3, 88.0, 3.12, 'Allocated', '2016-07-11')
     , (4536, 615, 5, 88.08, 4.93, 'Allocated', '2016-12-04')
     , (4537, 611, 2, 14.77, 4.04, 'No Stock', '2016-03-25')
     , (4538, 603, 6, 3.51, 4.54, 'Allocated', '2016-04-21')
     , (4539, 603, 7, 6.58, 4.8, 'Allocated', '2016-05-14')
     , (4540, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4540, 617, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4540, 618, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4541, 603, 5, 37.47, 2.89, 'On Order', '2016-04-07')
     , (4541, 607, 4, 35.17, 5.44, 'No Stock', '2017-01-07')
     , (4541, 615, 2, 83.62, 4.01, 'Allocated', '2016-11-22')
     , (4542, 605, 10, 92.43, 3.27, 'On Order', '2017-01-23')
     , (4542, 601, 10, 92.43, 3.27, 'On Order', '2017-01-23')
     , (4542, 603, 10, 92.43, 3.27, 'On Order', '2017-01-23')
     , (4543, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4543, 617, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4543, 619, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4544, 611, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4544, 610, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4544, 609, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4545, 617, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4545, 604, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4545, 606, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4546, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4546, 606, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4546, 608, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4547, 606, 4, 81.81, 9.44, 'No Stock', '2016-05-14')
     , (4547, 602, 4, 81.81, 9.44, 'No Stock', '2016-05-14')
     , (4547, 603, 4, 81.81, 9.44, 'No Stock', '2016-05-14')
     , (4548, 614, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4548, 611, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4548, 615, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4549, 605, 9, 24.12, 7.26, 'No Stock', '2016-08-22')
     , (4549, 606, 7, 6.19, 4.68, 'Allocated', '2016-09-02')
     , (4550, 609, 8, 49.04, 7.62, 'On Order', '2016-06-10')
     , (4550, 610, 10, 92.51, 4.84, 'No Stock', '2017-02-24')
     , (4551, 601, 3, 85.1, 2.45, 'Allocated', '2016-07-08')
     , (4551, 602, 3, 69.43, 1.31, 'No Stock', '2017-03-15')
     , (4551, 610, 1, 19.38, 8.43, 'No Stock', '2016-11-09')
     , (4552, 601, 2, 91.69, 8.12, 'On Order', '2016-06-03')
     , (4552, 613, 3, 41.15, 6.38, 'No Stock', '2016-04-11')
     , (4553, 603, 1, 5.22, 8.43, 'On Order', '2016-10-28')
     , (4554, 616, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4555, 607, 6, 77.16, 3.07, 'No Stock', '2016-04-29')
     , (4555, 612, 9, 81.31, 9.81, 'On Order', '2017-01-24')
     , (4556, 615, 10, 65.81, 7.25, 'Allocated', '2016-11-07')
     , (4557, 603, 1, 5.01, 4.57, 'No Stock', '2016-09-05')
     , (4557, 606, 3, 29.35, 8.67, 'On Order', '2016-09-14')
     , (4558, 601, 3, 29.62, 7.16, 'No Stock', '2016-11-06')
     , (4559, 620, 2, 87.83, 7.93, 'On Order', '2016-11-09')
     , (4560, 610, 7, 9.51, 8.01, 'On Order', '2016-08-22')
     , (4561, 615, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4562, 610, 9, 15.1, 6.8, 'Allocated', '2016-08-27')
     , (4562, 611, 3, 71.09, 1.26, 'No Stock', '2016-07-12')
     , (4563, 618, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4564, 602, 2, 6.68, 6.29, 'Allocated', '2016-03-19')
     , (4565, 603, 7, 81.01, 2.82, 'Allocated', '2017-03-06')
     , (4565, 606, 8, 99.68, 6.28, 'No Stock', '2016-04-27')
     , (4566, 614, 7, 57.79, 4.48, 'No Stock', '2016-11-02')
     , (4567, 604, 7, 94.42, 5.46, 'No Stock', '2016-05-18')
     , (4567, 605, 1, 61.75, 1.31, 'Allocated', '2016-04-14')
     , (4567, 608, 10, 25.99, 4.85, 'On Order', '2016-05-01')
     , (4567, 620, 9, 62.17, 4.66, 'Allocated', '2016-06-11')
     , (4568, 606, 8, 66.92, 1.1, 'Allocated', '2016-10-02')
     , (4568, 607, 10, 95.6, 9.17, 'On Order', '2016-05-04')
     , (4568, 608, 6, 81.57, 6.24, 'No Stock', '2017-01-24')
     , (4569, 601, 10, 96.56, 6.33, 'Allocated', '2016-07-22')
     , (4570, 610, 6, 98.15, 2.57, 'No Stock', '2016-06-28')
     , (4571, 604, 8, 5.15, 2.51, 'No Stock', '2016-07-11')
     , (4572, 603, 2, 59.21, 2.46, 'Allocated', '2016-11-18')
     , (4573, 615, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4574, 615, 3, 14.81, 9.61, 'On Order', '2016-05-04')
     , (4575, 608, 10, 79.25, 7.08, 'On Order', '2016-11-19')
     , (4575, 611, 10, 79.25, 7.08, 'On Order', '2016-11-19')
     , (4575, 615, 10, 79.25, 7.08, 'On Order', '2016-11-19')
     , (4576, 607, 7, 31.78, 2.05, 'On Order', '2016-03-17')
     , (4576, 608, 7, 31.78, 2.05, 'On Order', '2016-03-17')
     , (4576, 610, 7, 31.78, 2.05, 'On Order', '2016-03-17')
     , (4577, 604, 5, 92.54, 6.26, 'On Order', '2016-04-22')
     , (4577, 603, 5, 92.54, 6.26, 'On Order', '2016-04-22')
     , (4577, 601, 5, 92.54, 6.26, 'On Order', '2016-04-22')
     , (4578, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4578, 602, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4578, 603, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4579, 615, 10, 70.19, 5.85, 'No Stock', '2016-09-11')
     , (4579, 616, 10, 70.19, 5.85, 'No Stock', '2016-09-11')
     , (4579, 620, 10, 70.19, 5.85, 'No Stock', '2016-09-11')
     , (4580, 601, 1, 15.44, 3.76, 'No Stock', '2016-04-08')
     , (4580, 603, 1, 15.44, 3.76, 'No Stock', '2016-04-08')
     , (4580, 605, 1, 15.44, 3.76, 'No Stock', '2016-04-08')
     , (4580, 609, 1, 15.44, 3.76, 'No Stock', '2016-04-08')
     , (4581, 607, 8, 42.4, 9.73, 'On Order', '2016-06-04')
     , (4581, 610, 9, 79.73, 3.87, 'On Order', '2016-04-20')
     , (4581, 611, 5, 78.01, 3.65, 'On Order', '2016-03-17')
     , (4581, 616, 5, 50.56, 5.24, 'No Stock', '2016-07-06')
     , (4582, 609, 7, 65.99, 9.4, 'No Stock', '2016-05-22')
     , (4582, 607, 7, 65.99, 9.4, 'No Stock', '2016-05-22')
     , (4582, 606, 7, 65.99, 9.4, 'No Stock', '2016-05-22')
     , (4583, 604, 9, 19.92, 6.51, 'Allocated', '2016-04-13')
     , (4583, 610, 1, 19.4, 8.3, 'On Order', '2016-12-08')
     , (4584, 617, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4584, 620, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4584, 613, 1, 10.00, 1.00, 'No Stock', '2016-12-14')
     , (4585, 602, 2, 90.57, 2.52, 'Allocated', '2016-05-22')
     , (4585, 610, 10, 44.26, 3.84, 'On Order', '2016-12-27')
     , (4586, 604, 2, 56.61, 9.64, 'Allocated', '2017-02-23')
     , (4586, 612, 7, 24.24, 7.68, 'On Order', '2016-04-04')
     , (4587, 615, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4587, 611, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4587, 612, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4588, 616, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4588, 601, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4588, 602, 1, 10.00, 1.00, 'Allocated', '2016-12-14')
     , (4589, 601, 5, 52.25, 4.47, 'Allocated', '2016-07-02')
     , (4589, 603, 9, 72.27, 4.97, 'On Order', '2016-04-03')
     , (4590, 610, 3, 46.2, 6.71, 'Allocated', '2016-12-16')
     , (4590, 615, 5, 52.0, 5.26, 'On Order', '2016-06-01')
     , (4591, 601, 1, 96.52, 2.39, 'No Stock', '2017-01-16')
     , (4591, 605, 8, 19.56, 9.68, 'On Order', '2016-09-15')
     , (4592, 609, 10, 30.76, 3.2, 'No Stock', '2016-05-02')
     , (4592, 619, 1, 48.47, 6.13, 'On Order', '2016-07-19')
     , (4593, 617, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4593, 619, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4593, 620, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4594, 616, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4594, 617, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4594, 618, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4594, 620, 1, 10.00, 1.00, 'On Order', '2016-12-14')
     , (4595, 605, 1, 50.28, 8.15, 'Allocated', '2017-02-19')
     , (4595, 601, 1, 50.28, 8.15, 'Allocated', '2017-02-19')
     , (4595, 602, 1, 50.28, 8.15, 'Allocated', '2017-02-19')
     , (4596, 605, 6, 95.17, 7.53, 'On Order', '2016-09-11')
     , (4596, 609, 10, 82.11, 4.38, 'No Stock', '2016-11-17')
     , (4597, 608, 9, 96.25, 4.8, 'No Stock', '2016-07-02')
     , (4597, 605, 9, 96.25, 4.8, 'No Stock', '2016-07-02')
     , (4597, 601, 9, 96.25, 4.8, 'No Stock', '2016-07-02')
     , (4598, 603, 5, 69.02, 6.1, 'No Stock', '2016-12-23')
     , (4598, 608, 5, 69.02, 6.1, 'No Stock', '2016-12-23')
     , (4598, 610, 5, 69.02, 6.1, 'No Stock', '2016-12-23')
     , (4599, 603, 9, 40.91, 6.68, 'On Order', '2016-12-27')
     , (4599, 607, 9, 40.91, 6.68, 'On Order', '2016-12-27')
     , (4599, 609, 9, 40.91, 6.68, 'On Order', '2016-12-27')
     , (4600, 611, 5, 22.93, 8.87, 'Allocated', '2016-06-16')
     , (4600, 615, 5, 22.93, 8.87, 'Allocated', '2016-06-16')
     , (4600, 612, 5, 22.93, 8.87, 'Allocated', '2016-06-16');

insert into configuration(ID,NAME,TYPE_,VALUE_,ISACTIVE,APPLICATION_NAME) values(9999,'AppName','String','Url',1,'EnesApp');
insert into configuration(ID,NAME,TYPE_,VALUE_,ISACTIVE,APPLICATION_NAME) values(10000,'TimeOut','Integer','61',1,'EnesApp');
insert into configuration(ID,NAME,TYPE_,VALUE_,ISACTIVE,APPLICATION_NAME) values(10001,'Count','Double','100000',1,'SampleApp');
insert into configuration(ID,NAME,TYPE_,VALUE_,ISACTIVE,APPLICATION_NAME) values(10002,'IsChanged','Boolean','false',1,'EnesApp');
