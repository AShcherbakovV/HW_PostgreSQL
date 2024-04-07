create table if not exists Tags(
	id serial primary key,
	Tag_name varchar(40) not null
);

create table if not exists Musicians(
	id serial primary key,
	Musician_name varchar(40) not null
);

create table if not exists Collections(
	id serial primary key,
	collection_name varchar(80) not null,
	release_date date not null
);

create table if not exists Albums(
	id serial primary key,
	album_name varchar(80) not null,
	release_date date not null
);

create table if not exists Tracks(
	id serial primary key,
	track_name varchar(80) not null,
	duration int not null,
	album_id int not null references Albums(id)
);

create table if not exists Musician_albums(
	id serial primary key,
	musiacian_id int not null references Musicians(id),
	album_id int not null references Albums(id)
);

create table if not exists Musician_tags(
	id serial primary key,
	tag_id int not null references Tags(id),
	musiacian_id int not null references Musicians(id)
);

create table if not exists Tracks_in_collections(
	id serial primary key,
	track_id int not null references Tracks(id),
	collection_id int not null references Collections(id)
);

