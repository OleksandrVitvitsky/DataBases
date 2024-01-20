use
vav;
show
tables ;

#
знайти всі машини старші за 2000 р.
select * from cars where year >= 2000;
#
знайти всі машини молодші 2015 р.
select * from cars where year < 2015;
#
знайти всі машини 2008, 2009, 2010 років
select *
from cars
where year >= 2008 and year <= 2010;
#
знайти всі машини не з цих років 2008, 2009, 2010
select *
from cars
where year <2008 or year >2010;
#
знайти всі машини де year==price
select *
from cars
where year = price;
#
знайти всі машини bmw старші за 2014 р.
select * from cars where model = 'bmw' and year > 2014;
#
знайти всі машини audi молодші 2014 р.
select * from cars where model = 'audi' and year < 2014;
#
знайти перші 5 машин
select *
from cars limit 5;
#
знайти останні 5 машин
select*
from cars
order by id desc limit 5;
#
знайти середнє арифметичне цін машини KIA
select model, avg(price) as avgPrice
from cars
where model = 'KIA';
#
знайти середнє арифметичне цін для кожної марки машин окремо
select model, avg(price) as avgPrice
from cars
group by model # підрахувати кількість кожної марки
select model, count(model) as countModel
from cars
group by model # знайти марку машин кількість яких найбільше
select model, count(model) as countModel
from cars
group by model
order by countModel desc limit 1
#
# знайти марку машини в назві яких друга та передостання буква "a"
select *
from cars
where (model like '_a%' and model like '%a_');
#
знайти всі машини назва моделі яких більше за 8 символів
select *
from cars
where length(model) > 8