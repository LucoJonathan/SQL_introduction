create table ARTICLE (
	ID INT(9) Not null auto_increment primary Key,
    REF INT(6) Not null,
    DESIGNATION VARCHAR(255) Not null,
    PRIX DECIMAL(7,2) Not null,
    ID_FOU INT(4) Not null
);

create table FOURNISSEUR(
	ID INT(4) Not null auto_increment primary Key,
    NOM VARCHAR(255) not null
);

create table BON(
	ID int(8) not null auto_increment primary key,
    NUMERO int(8) not null,
    DATE_CMDE datetime not null,
    DELAI INT(3) not null,
    ID_FOU INT(4) not null
);

create table compo (
	ID int(8) not null auto_increment primary key,
	QTE int(4) not null,
    ID_ART int not null,
    ID_BON int not null,
    foreign key (ID_ART) references ARTICLE(ID),
    foreign key (ID_BON) references BON(ID)
);
 
alter table article add constraint ID_FOU foreign key (ID_FOU) references fournisseur (ID);
alter table bon add constraint ID_FOU_BON foreign key (ID_FOU) references fournisseur (ID);

Insert into fournisseur (ID,NOM) values (1,'Française d''Imports');
Insert into fournisseur (ID,NOM) values (2,'FDM SA');
Insert into fournisseur (ID,NOM) values (3,'Dubois & Fils');

Insert into article (ID,REF,DESIGNATION,PRIX,ID_FOU) values (1,11,'Perceuse P1',74.99,1);
Insert into article (ID,REF,DESIGNATION,PRIX,ID_FOU) values (2,22,'Boulon laiton 4 x 40 mm (sachet de 10)',2.25,2);
Insert into article (ID,REF,DESIGNATION,PRIX,ID_FOU) values (3,33,'Boulon laiton 5 x 40 mm (sachet de 10)',4.45,2);
Insert into article (ID,REF,DESIGNATION,PRIX,ID_FOU) values (4,44,'Boulon laiton 5 x 40 mm (sachet de 10)',4.40,3);
Insert into article (ID,REF,DESIGNATION,PRIX,ID_FOU) values (5,55,'Meuleuse 125mm',37.85,1);
Insert into article (ID,REF,DESIGNATION,PRIX,ID_FOU) values (6,66,'Boulon acier zingué 4 x 40mm (sachet de 10)',1.8,3);
Insert into article (ID,REF,DESIGNATION,PRIX,ID_FOU) values (7,77,'Perceuse à colonne',185.25,1);
Insert into article (ID,REF,DESIGNATION,PRIX,ID_FOU) values (8,88,'Coffret mêches à bois',12.25,3);
Insert into article (ID,REF,DESIGNATION,PRIX,ID_FOU) values (9,99,'Coffret mêches plates',6.25,2);
Insert into article (ID,REF,DESIGNATION,PRIX,ID_FOU) values (10,100,'Fraises d’encastrement ',8.14,2);

Insert into bon (ID,numero,date_cmde,delai,ID_FOU) values (1,128,'2024-04-25 17:09:30',3,1);
Insert into bon (ID,numero,date_cmde,delai,ID_FOU) values (2,321,'2024-04-25 17:09:30',3,1);
Insert into bon (ID,numero,date_cmde,delai,ID_FOU) values (3,482,'2024-04-25 17:09:30',3,1);


Insert into compo (ID,qte,id_art,id_bon) values (1,3,1,1);
Insert into compo (ID,qte,id_art,id_bon) values (2,4,5,2);
Insert into compo (ID,qte,id_art,id_bon) values (3,1,7,3);

select * from bon;