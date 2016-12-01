DROP TABLE `users`;

CREATE TABLE `users` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `city` varchar(255),
  `email` varchar(255) default NULL,
  `phone` varchar(100) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `users` (`name`,`city`,`email`,`phone`) VALUES ("Ferdinand George","Gosnells","vulputate@consectetueradipiscing.com","(02419) 0640078"),("Ishmael Rivers","Nanterre","Nulla.facilisi@est.edu","(0104) 11804234"),("Flynn Kennedy","Camaragibe","vulputate.risus@scelerisquesed.org","(02992) 5918502"),("Chaim Barnes","Provo","nec@Donec.net","(02985) 4472136"),("Ivor Stephens","Robechies","Lorem@quamdignissim.edu","(0709) 06000921"),("Herrod Hendricks","Abohar","id.risus@lacinia.org","(0100) 60000942"),("Uriel Caldwell","Martelange","tortor.Integer@ut.net","(032515) 594511"),("Harlan Massey","Erchie","nulla.at@accumsanconvallisante.edu","(046) 45650083"),("Zachery Farmer","De Klinge","nonummy@scelerisquesedsapien.org","(0351) 21715225"),("Aristotle Hoffman","Saint-L�onard","et.netus.et@magnis.ca","(018) 74413019");
INSERT INTO `users` (`name`,`city`,`email`,`phone`) VALUES ("Stone Martinez","Quirihue","urna@ornarelectusante.com","(0216) 57761371"),("Chandler Combs","Armidale","non.ante.bibendum@interdumSed.edu","(045) 99215457"),("Armand Weber","Purranque","risus.Donec@egetdictum.edu","(048) 94592239"),("Walker Richmond","Bossut-Gottechain","lobortis@risusNulla.edu","(030787) 474814"),("Coby Ferguson","Kaneohe","egestas.Aliquam.nec@iaculis.ca","(035631) 578216"),("Ferris Fry","Torgnon","nascetur.ridiculus.mus@mollis.edu","(01020) 3902656"),("Stone Sawyer","Gerpinnes","amet.nulla.Donec@sodalespurus.net","(07070) 8942996"),("Darius Moreno","Anzegem","enim.Nunc.ut@auctor.ca","(007) 66351032"),("Derek Clayton","Cappelle sul Tavo","mauris.eu@necante.com","(077) 25724832"),("Leo Rivers","Chepstow","nulla.ante@vitaenibhDonec.ca","(06357) 6141295");
INSERT INTO `users` (`name`,`city`,`email`,`phone`) VALUES ("Fitzgerald Cain","Farciennes","adipiscing@inmolestietortor.co.uk","(07203) 4167047"),("Gil Atkins","Koningshooikt","leo.in@anunc.edu","(034594) 383411"),("Dylan Jacobs","Kędzierzyn-Koźle","Curabitur.vel@idantedictum.net","(0400) 24103372"),("Jamal Chavez","Thame","non@blanditatnisi.ca","(031110) 481258"),("Donovan Stein","Zolder","non.hendrerit.id@suscipitest.ca","(019) 41862502"),("Amal Matthews","Lake Cowichan","vitae.sodales@nequenonquam.ca","(02855) 4777571"),("Jesse Rodgers","Bhavnagar","augue.Sed.molestie@dolornonummy.edu","(0137) 52877404"),("Ronan Houston","Zweibrücken","Quisque@lobortismauris.net","(02031) 4032144"),("Samuel Beach","Ponte nelle Alpi","et@rutrumlorem.edu","(033884) 088360"),("Andrew Wilcox","Deurne","eget.ipsum.Suspendisse@molestiearcuSed.net","(096) 67707857");
INSERT INTO `users` (`name`,`city`,`email`,`phone`) VALUES ("Ali Benton","Borghetto di Vara","varius@eleifendvitaeerat.ca","(0544) 20112745"),("Kermit Cardenas","Laarne","consequat@sedlibero.com","(0136) 34274987"),("Barry Kerr","Rosenheim","ornare.lectus@Donecfringilla.org","(0360) 64239558"),("Oren Burns","Rossignol","posuere.at.velit@vitaerisusDuis.com","(0390) 57272594"),("Lev Dejesus","Frutillar","ornare.libero@Donecegestas.net","(038577) 936420"),("Hayden Thompson","Minderhout","Sed@quisurnaNunc.ca","(034790) 880371"),("Hall Conrad","Prince George","mollis.vitae.posuere@estcongue.com","(00190) 8058219"),("Silas Rush","Burntisland","magna@nibhPhasellus.edu","(0375) 96115514"),("Elliott Orr","Las Vegas","purus.mauris@quis.ca","(010) 34426829"),("Cody Haynes","Huppaye","sit@NulladignissimMaecenas.edu","(023) 25092072");
INSERT INTO `users` (`name`,`city`,`email`,`phone`) VALUES ("Clarke Gill","St. Pölten","eu.augue.porttitor@sapienimperdietornare.co.uk","(033236) 372241"),("Elijah Schroeder","Edam","sit@feliseget.net","(07732) 5978305"),("Colt Buck","Cinisi","lorem.tristique@odio.net","(037681) 231797"),("Eagan Slater","Châtellerault","lorem.eu@Naminterdumenim.org","(0724) 65125821"),("Amal Blackwell","Goes","tristique@metus.com","(0569) 63221272"),("Kennan Chapman","Meerle","ullamcorper.viverra@eu.ca","(013) 38895364"),("Tucker Hopper","Bienne-lez-Happart","gravida.molestie@massaSuspendisse.com","(0778) 65917217"),("Scott Davenport","Arquata del Tronto","convallis.convallis@tristiquenequevenenatis.co.uk","(0478) 41078636"),("Xavier Patton","HŽvillers","ultricies.dignissim.lacus@Nullatincidunt.net","(020) 20036925"),("Knox Woods","Leernes","mollis.dui.in@elitpellentesquea.com","(034606) 937268");
INSERT INTO `users` (`name`,`city`,`email`,`phone`) VALUES ("Conan Greene","Newmarket","at.sem@loremegetmollis.co.uk","(0794) 42217537"),("Wyatt Koch","Windsor","dignissim.lacus.Aliquam@Suspendissealiquetmolestie.ca","(032368) 788489"),("Nolan Luna","Hall in Tirol","magna.Duis@ami.ca","(01645) 2342595"),("Wylie Calderon","Santa Vittoria in Matenano","Phasellus@vehiculaet.com","(04185) 3151919"),("Jack Simmons","Nashik","libero.Proin@tinciduntpede.com","(036416) 429840"),("Hu Bartlett","Manisa","dignissim.lacus@elit.net","(066) 67098037"),("Lucius Blair","Lacombe","Integer.urna@magna.edu","(028) 63340020"),("Amos Shepherd","Clackmannan","Nulla@Integer.com","(033) 49335250"),("Lionel Martinez","Fort Simpson","elit@sitametultricies.ca","(007) 57285433"),("Garth Leonard","Reno","dignissim.Maecenas@odiovelest.com","(077) 75482478");
INSERT INTO `users` (`name`,`city`,`email`,`phone`) VALUES ("Wallace Hart","Den Helder","nec.tempus@consectetueradipiscingelit.co.uk","(02860) 1548119"),("Justin Rice","Corroy-le-Ch‰teau","Maecenas@eratVivamus.org","(036960) 660692"),("Roth Albert","Poederlee","tellus.imperdiet@magnaPhasellusdolor.co.uk","(0128) 57464112"),("Chester Boyd","San Massimo","sociis.natoque.penatibus@quamquisdiam.edu","(088) 37605622"),("Samson Pratt","Bandırma","ipsum@vitaesemper.ca","(0479) 90554284"),("Eric King","Duffel","amet.ante@nascetur.com","(01288) 7642609"),("Patrick Noel","Somma Lombardo","facilisis@consequatdolor.ca","(03773) 3999907"),("Scott Clay","Forchtenstein","aliquet.Proin.velit@montesnasceturridiculus.ca","(0683) 18221350"),("Benjamin Cash","Cropalati","Vestibulum@feugiattelluslorem.edu","(06552) 3293610"),("Ivor Baldwin","Adria","Maecenas.libero@Cras.com","(06281) 4680239");
INSERT INTO `users` (`name`,`city`,`email`,`phone`) VALUES ("Lance Goff","Ponte San Nicolò","dolor@Duisgravida.org","(04178) 8556802"),("Amery Gibbs","Zaria","nunc.ac.mattis@ut.co.uk","(03708) 4566217"),("Channing Gillespie","Sellano","in@auguescelerisquemollis.com","(032798) 342517"),("Darius Petty","Dollard-des-Ormeaux","sit.amet@consequatpurus.edu","(074) 99811521"),("Paki Pruitt","Wekweti","Nunc@pharetraQuisque.com","(0867) 57619775"),("Odysseus Miranda","Moen","semper@idmollis.ca","(02942) 8965154"),("Axel Buchanan","Gurgaon","in.aliquet.lobortis@neceleifend.co.uk","(080) 80458199"),("Addison Newton","La Roche-sur-Yon","eget@Nulla.net","(04552) 0229156"),("Flynn Baldwin","Richmond","non.massa@magnaaneque.ca","(07066) 3799636"),("Vernon Figueroa","Etalle","rhoncus.Nullam@adlitoratorquent.edu","(03805) 3889607");
INSERT INTO `users` (`name`,`city`,`email`,`phone`) VALUES ("Orlando Moses","Bonnyrigg","lobortis.tellus@enimnislelementum.ca","(033904) 329862"),("Kuame Garcia","Wansin","pellentesque.eget.dictum@idmagna.com","(047) 91656564"),("Coby Bell","Cardedu","Pellentesque@MaurisnullaInteger.edu","(033) 28089055"),("William Jacobs","Bornival","ornare.tortor.at@loremipsum.co.uk","(030013) 246753"),("Quinn Levy","Putignano","Phasellus@Class.net","(0034) 82096841"),("Luke Frederick","Lutsel K'e","tellus.lorem@euismodmauriseu.ca","(02535) 4734713"),("Seth Mays","Oamaru","per.conubia.nostra@nonsollicitudin.com","(039705) 474329"),("Clinton Solomon","Lichtaart","sit.amet.luctus@vulputate.co.uk","(0010) 90213964"),("Justin Lynn","Melazzo","fermentum.fermentum@elit.com","(039060) 494228"),("Cruz Navarro","Wolvertem","turpis@risusInmi.com","(087) 89818690");
INSERT INTO `users` (`name`,`city`,`email`,`phone`) VALUES ("Kermit Madden","Caen","nec.urna.suscipit@ipsumCurabiturconsequat.org","(06831) 7913373"),("Ferdinand Moody","Duluth","leo.Vivamus@Curabiturvel.org","(06948) 0914468"),("Oliver Lowery","Guardia Perticara","Pellentesque@auctorodio.net","(034735) 069982"),("Jason Garrison","Lüneburg","arcu.Aliquam@laciniaorciconsectetuer.edu","(09005) 6858340"),("Troy Chase","Colombes","risus@eratin.com","(00302) 1459248"),("Abel Riddle","Biarritz","lectus.convallis.est@egestas.co.uk","(039509) 583006"),("Gareth Robertson","Amritsar","quis.pede@mauris.edu","(038201) 440058"),("Isaiah Rivas","Timon","feugiat@orcilobortis.edu","(04566) 9695127"),("Hiram Saunders","MabomprŽ","augue.scelerisque@dapibusid.ca","(037794) 138314"),("Louis Douglas","Río Claro","Etiam.laoreet.libero@dolorsitamet.edu","(034241) 092262");

