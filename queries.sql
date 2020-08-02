-- Dish
select count(d.name),
       count(d.description),
       count(d.menus_appeared),
       count(d.times_appeared),
       count(d.first_appeared),
       count(d.last_appeared),
       count(d.lowest_price),
       count(d.highest_price)
from Dish as d;
select count(*) from Dish as d where d.menus_appeared == 0;
select count(*) from Dish as d where d.menus_appeared == 0 and d.times_appeared > 0;
select count(*) from Dish as d where d.times_appeared == 0;
select count(*) from Dish as d where d.times_appeared == 0 and (d.first_appeared > 0 or d.last_appeared > 0);
select count(*) from Dish as d where d.last_appeared < d.first_appeared;
select count(*) from Dish as d where d.highest_price < d.lowest_price;
select count(*) from Dish as d where d.lowest_price < 0 or d.highest_price < 0;
select count(*) from Dish as d where d.first_appeared == 0;
select d.first_appeared from Dish as d where d.first_appeared > 0 and d.first_appeared < 1850;
select d.last_appeared from Dish as d where d.last_appeared > 2020;
select count(*) from Dish as d where d.last_appeared == 0;
select d.first_appeared, d.last_appeared from Dish as d where (d.first_appeared == 0 and d.last_appeared != 0) or (d.first_appeared != 0 and d.last_appeared == 0);
select count(*) from Dish as d where d.id not in (select mi.dish_id from MenuItem as mi);

-- Menu
select count(m.name),
       count(m.sponsor),
       count(m.event),
       count(m.venue),
       count(m.place),
       count(m.physical_description),
       count(m.physical_description_type),
       count(m.physical_description_emblem),
       count(m.physical_description_folded),
       count(m.physical_description_lamindated),
       count(m.physical_description_color),
       count(m.physical_description_us),
       count(m.column_structure),
       count(m.has_illustration),
       count(m.physical_size),
       count(m.occasion),
       count(m.notes),
       count(m.call_number),
       count(m.keywords),
       count(m.language),
       count(m.date),
       count(m.location),
       count(m.location_type),
       count(m.currency),
       count(m.currency_symbol),
       count(m.status),
       count(m.page_count),
       count(m.dish_count)
from Menu as m;
select count(*) from Menu as m where m.name is not null and m.event is null;
select count(*) from Menu as m where m.name is null and m.event is null;
select count(*) from Menu as m where m.name is null and m.event is not null;
select m.* from Menu as m where m.status not in ('complete', 'under review');
select m.* from Menu as m where m.date not between '1850-01-01' and date('now');
select m.* from Menu as m where m.dish_count == 0;
select m.* from Menu as m where m.dish_count > 1000;
select m.* from Menu as m where m.page_count == 0;
select m.* from Menu as m where m.page_count > 50;
select m.* from Menu as m where m.id not in (select mp.menu_id from MenuPage as mp);

-- MenuItem
select
    count(mi.price),
    count(mi.high_price),
    count(mi.created_at),
    count(mi.updated_at),
    count(mi.xpos),
    count(mi.ypos)
from MenuItem as mi;
select count(*) from MenuItem as mi where mi.created_at > mi.updated_at;
select count(*) from MenuItem as mi where mi.price < 0;
select count(*) from MenuItem as mi where mi.price > mi.high_price and mi.high_price is not null;
select mi.* from MenuItem as mi where mi.created_at not between '1850-01-01' and date('now');
select mi.* from MenuItem as mi where mi.updated_at not between '1850-01-01' and date('now');
select count(*) from MenuItem as mi where mi.xpos < 0;
select count(*) from MenuItem as mi where mi.ypos < 0;
select * from MenuItem as mi inner join MenuPage mp on mi.menu_page_id = mp.id where mi.xpos > mp.full_width;
select * from MenuItem as mi inner join MenuPage mp on mi.menu_page_id = mp.id where mi.ypos > mp.full_height;

-- MenuPage
select count(mp.page_number),
       count(mp.image_id),
       count(mp.full_height),
       count(mp.full_width),
       count(mp.uuid)
from MenuPage as mp;
select count(*) from MenuPage as mp where mp.page_number < 0;
select m.page_count, mp.page_number from MenuPage as mp inner join Menu as m on mp.menu_id = m.id where mp.page_number > m.page_count;
select count(*) from MenuPage as mp where mp.full_height < 0;
select count(*) from MenuPage as mp where mp.full_width < 0;
select count(*) from MenuPage as mp where mp.id not in (select mi.menu_page_id from MenuItem as mi);
