create table workshops (
    id serial primary key,
    conference text unique not null,
    city text not null,
    given_at date not null,
    created_at timestamptz default now()
);

insert into workshops (conference, city, given_at) values 
    ('Volcamp', 'Clermont-Ferrand', '2023-10-12'),
    ('Devfest', 'Nantes', '2023-10-19'),
    ('Touraine Tech', 'Tours', '2024-02-09');
