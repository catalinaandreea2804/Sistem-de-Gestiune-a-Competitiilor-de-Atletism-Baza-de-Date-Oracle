insert into Concurenti values(51, 'Popescu Ana', 1.54, to_date('11-08-2008', 'DD-MM-YYYY'), 'Feminin', 45.25);
insert into Concurenti values(52, 'Ionescu Andrei', 1.86, to_date('10-07-2002', 'DD-MM-YYYY'), 'Masculin', 99.80);
insert into Concurenti values(53, 'Oprea Cosmin', 1.77, to_date('31-01-2010', 'DD-MM-YYYY'), 'Masculin', 66.4);
insert into Concurenti values(54, 'Georgescu Marian', 1.74, to_date('21-08-2014', 'DD-MM-YYYY'), 'Masculin', 62.25);
insert into Concurenti values(55, 'Ionescu Alina', 1.33, to_date('22-02-2017', 'DD-MM-YYYY'), 'Feminin', 30.2);
insert into Concurenti values(56, 'Marinescu Ion', 1.94, to_date('11-06-2001', 'DD-MM-YYYY'), 'Masculin', 110.25);
insert into Concurenti values(57, 'Marin Mihai', 1.84, to_date('17-09-2004', 'DD-MM-YYYY'), 'Masculin', 79.80);
insert into Concurenti values(58, 'Ion Maria', 1.47, to_date('31-01-2014', 'DD-MM-YYYY'), 'Feminim', 55.4);
insert into Concurenti values(59, 'Horia Florin', 1.74, to_date('25-04-1999', 'DD-MM-YYYY'), 'Masculin', 89.25);
insert into Concurenti values(60, 'Matei Monica', 1.55, to_date('27-03-2004', 'DD-MM-YYYY'), 'Feminin', 77.2);



insert into Concursuri values(121, 'Olimpiada de Atletism Faza Judeteana', to_date('25-02-2023', 'DD-MM-YYYY'), 20.5, 1000);
insert into Concursuri values(122, 'Campionatul de Atletism al Municipiului', to_date('10-03-2024', 'DD-MM-YYYY'), 11.0, 800);
insert into Concursuri values(123, 'Cupa Atletismului Faza Nationala', to_date('25-03-2021', 'DD-MM-YYYY'), 20.25, 1000);
insert into Concursuri values(124, 'Marea Competitie de Atletism', to_date('05-04-2025', 'DD-MM-YYYY'), 18.5, 950);
insert into Concursuri values(125, 'Cupa Tinerelor Talente la Atletism', to_date('12-04-2023', 'DD-MM-YYYY'), 20.0, 900);
insert into Concursuri values(126, 'Trofeul Atletismului Romanesc', to_date('18-05-2023', 'DD-MM-YYYY'), 21.0, 1200);
insert into Concursuri values(127, 'Cupa Judeteana de Atletism', to_date('25-05-2023', 'DD-MM-YYYY'), 19.7, 850);
insert into Concursuri values(128, 'Campionatul National de Atletism pentru Seniori', to_date('10-06-2023', 'DD-MM-YYYY'), 20.5, 1100);
insert into Concursuri values(129, 'Trofeul Orasului la Atletism', to_date('20-06-2023', 'DD-MM-YYYY'), 18.9, 800);
insert into Concursuri values(131, 'Marea Finala Nationala de Atletism', to_date('30-08-2023', 'DD-MM-YYYY'), 19.8, 950);




insert into Locatii values(800, 'Stadionul Cluj Arena', 'Strada Stadionului nr.2', 234567, 'Cluj-Napoca', 15000);
insert into Locatii values(850, 'Stadionul Olimpia', 'Bulevardul Lalelelor nr.4', 345678, 'Bucuresti', 12000);
insert into Locatii values(900, 'Stadionul Gheorgheni', 'Aleea Sportului nr.5', 456789, 'Gheorgheni', 8000);
insert into Locatii values(950, 'Stadionul Tineretului', 'Strada Muncii nr.3', 567890, 'Ploiesti', 9500);
insert into Locatii values(1000, 'Stadionul Braila', 'Strada Florilor nr.1', 123456, 'Braila', 10000); 
insert into Locatii values(1050, 'Stadionul Botosani', 'Strada Trandafirilor nr.6', 789012, 'Botosani', 9000);
insert into Locatii values(1100, 'Stadionul Muncitoresc', 'Strada Victoriei nr.7', 890123, 'Pitesti', 10500);
insert into Locatii values(1150, 'Complexul Sportiv Constanța', 'Strada Delfinului nr.2', 901234, 'Constanta', 13000);
insert into Locatii values(1200, 'Stadionul Craiova', 'Calea Bucuresti nr.10', 112233, 'Craiova', 14000);
insert into Locatii values(1250, 'Stadionul Iasi Arena', 'Strada Stadionului nr.9', 223344, 'Iasi', 9500);


insert into Inscrieri values(1, 51, 121); 
insert into Inscrieri values(2, 51, 122); 
insert into Inscrieri values(3, 51, 123); 
insert into Inscrieri values(4, 52, 124); 
insert into Inscrieri values(5, 52, 125); 
insert into Inscrieri values(6, 52, 126); 
insert into Inscrieri values(7, 53, 127); 
insert into Inscrieri values(8, 53, 128);
insert into Inscrieri values(9, 54, 129); 
insert into Inscrieri values(10, 55, 131);
insert into Inscrieri values(11, 56, 121); 
insert into Inscrieri values(12, 56, 124);
insert into Inscrieri values(13, 57, 123); 
insert into Inscrieri values(14, 57, 126); 


insert into Tipuri_probe values(101, 'Sprint');
insert into Tipuri_probe values(102, 'Saritura in Lungime');
insert into Tipuri_probe values(103, 'Saritura in Inaltime');
insert into Tipuri_probe values(104, 'Saritura cu Prajina');
insert into Tipuri_probe values(105, 'Aruncarea Greutatii');
insert into Tipuri_probe values(106, 'Aruncarea Discului');
insert into Tipuri_probe values(107, '100m Garduri');
insert into Tipuri_probe values(108, '50m Garduri');
insert into Tipuri_probe values(109, 'Stafeta');
insert into Tipuri_probe values(110, 'Ciclism');


insert into Probe values(1, 101, 14, 18);  
insert into Probe values(2, 101, 19, 30); 
insert into Probe values(3, 102, 10, 15);  
insert into Probe values(4, 102, 35, 99);  
insert into Probe values(5, 103, 16, 28);  
insert into Probe values(5, 104, 18, 30);  
insert into Probe values(6, 105, 16, 25);  
insert into Probe values(7, 106, 31, 40); 
insert into Probe values(8, 107, 14, 18); 
insert into Probe values(9, 107, 19, 30);
insert into Probe values(10, 108, 19, 30);
insert into Probe values(11, 109, 6, 12); 
insert into Probe values(12, 110, 18, 35); 
insert into Probe values(13, 110, 36, 50); 



insert into Probele_concursului values(1, 121, 1);  
insert into Probele_concursului values(2, 121, 3);  
insert into Probele_concursului values(3, 121, 5); 
insert into Probele_concursului values(4, 122, 2);  
insert into Probele_concursului values(5, 122, 7);  
insert into Probele_concursului values(6, 122, 9); 
insert into Probele_concursului values(7, 123, 8);  
insert into Probele_concursului values(8, 123, 10);
insert into Probele_concursului values(9, 122, 4);  
insert into Probele_concursului values(10, 122, 6);  



insert into Rezultate_concurs values(9001, 1, 1, 12.5, 'Locul 1'); 
insert into Rezultate_concurs values(9002, 2, 3, 1.75, 'Locul 2'); 
insert into Rezultate_concurs values(9003, 3, 5, 14.2, 'Locul 3');  
insert into Rezultate_concurs values(9004, 4, 2, 6.2, 'Locul 1');  
insert into Rezultate_concurs values(9005, 5, 7, 13.3, 'Locul 2');  
insert into Rezultate_concurs values(9006, 6, 9, 9.8, 'Locul 1');   
insert into Rezultate_concurs values(9007, 7, 8, 12.1, 'Locul 2'); 
insert into Rezultate_concurs values(9008, 8, 10, 120.5, 'Locul 3');  
insert into Rezultate_concurs values(9009, 9, 3, 1.80, 'Locul 1'); 
insert into Rezultate_concurs values(9010, 10, 5, 15.0, 'Locul 2');  
