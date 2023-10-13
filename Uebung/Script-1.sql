USE SQLInfo;

create table cellar (bin smallint not null, wine VARCHAR(20), producer VARCHAR(25), jahr smallint, bottles smallint, ready smallint, comments VARCHAR(30));

insert into cellar values (2, 'Chardonnay', 'Buena Vista', 83, 1, 85, '');
insert into cellar values (3, 'Chardonnay', 'LouisMartini', 81, 5, 84, '');
insert into cellar values (6, 'Chardonnay', 'Chappellet', 82, 4, 85, 'Thanksgiving');
insert into cellar values (11, 'Jo.Riesling', 'Jekel', 84, 10, 86, '');
insert into cellar values (12, 'Jo.Riesling', 'Buena Vista', 82, 1, 83, 'Late Harvest');
insert into cellar values (16, 'Jo.Riesling', 'Sattui', 82, 1, 83, 'very dry');
insert into cellar values (21, 'Fume Blanc', 'Ch.St.Jean', 79, 4, 83, 'Napa Valley');
insert into cellar values (22, 'Fume Blanc', 'Robt.Mondavi', 78, 2, 82, '');
insert into cellar values (25, 'Wh.Burgundy', 'Mirassou', 80, 6, 82, '');
insert into cellar values (30, 'Gewürztraminer', 'Buena Vista', 80, 3, 82, '');
insert into cellar values (43, 'Cab.Sauvignon', 'Robt.Mondavi', 77, 12, 87, '');
insert into cellar values (50, 'Pinot Noir', 'Mirassou', 77, 3, 85, 'Harvest');
insert into cellar values (51, 'Pinot Noir', 'Ch.St.Jean', 78, 2, 86, '');
insert into cellar values (64, 'Zinfandel', 'Mirassou', 77, 9, 86, 'Anniversary');
insert into cellar values (72, 'Gamay', 'Robt.Mondavi', 78, 2, 83, '');

SELECT * FROM cellar;