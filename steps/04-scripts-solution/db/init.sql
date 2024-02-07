create table workshop (
    id serial primary key,
    conference text unique not null,
    city text not null,
    created_at timestamptz default now()
);

insert into workshop (conference, city) values 
    ('Volcamp', 'Clermont-Ferrand'),
    ('Devfest', 'Nantes'),
    ('Touraine Tech', 'Tours');
