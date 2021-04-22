create table shop(
s_name varchar2 (25 char) primary key,
s_price number (10) not null,
s_img varchar2 (30 char) not null,
s_info varchar2 (30 char) not null,
s_category varchar2 (10 char) not null,
s_con varchar2 (10 char) not null
);

insert into SHOP values ('������ �˴ϴ�', 500000000, 'intro.png', 'personinfo.jpg', 'person', 'HjC');
insert into SHOP values ('��-���� �ڷγ�19 ���', 80000000, 'vaccine.png', 'vaccineInfo.png', 'life', 'VaccineC');
insert into SHOP values ('Ŀ�� ��-��', 90000000, 'shoes.jpg', 'shoesInfo.png', 'etc', 'ShoesC');
insert into SHOP values ('�ſ�-�Ϳ��� �����', 300000000, 'catIntro.jpg', 'CatInfo.png', 'etc', 'CatC');


drop table SHOP cascade constraint purge;

select * from SHOP;

