
use tumblr_db;

create table User (
    user_id int primary key auto_increment,
    
    username varchar(100) not null,
    passwordhash varchar(255) not null,
    email varchar(100) not null,
    join_date datetime not null
);

create table Message (
    message_id int primary key auto_increment,
    
    user_id int not null,
    recipient_id int not null,
    content text not null,
    message_date datetime not null,
    
    foreign key (user_id) references User(user_id),
    foreign key (recipient_id) references User(user_id)
);

create table Blog (
    blog_id int primary key auto_increment,
    
    blogger_id int not null,
    title varchar(100) not null,
    blog_description text not null,
    creation_date datetime not null,
    
    foreign key (blogger_id) references User(user_id)
);

create table Post (
    post_id int primary key auto_increment,
    
    poster_id int not null,
    blog_id int,
    title varchar(150),
    content text not null,
    likes int default 0,
    favorites int default 0,
    post_date datetime not null,
    parent_id int,
    
	foreign key (poster_id) references User(user_id),
    foreign key (blog_id) references Blog(blog_id),
    foreign key (parent_id) references Post(post_id)
);

create table Note (
    note_id int primary key auto_increment,
    post_id int not null,
    poster_id int not null,
    content text not null,
    likes int default 0,
    note_date datetime not null,
    
    foreign key (post_id) REFERENCES Post(post_id),
	foreign key (poster_id) REFERENCES User(user_id)
);

create table Tag (
    tag_id int primary key auto_increment,
    content varchar(255) not null
);

create table Post_Tag (
    post_id int not null,
    tag_id int not null,
    
    primary key (post_id, tag_id),
    
    foreign key (post_id) references Post(post_id),
    foreign key (tag_id) references Tag(tag_id)
);

create table Mutuals (
    mutual_id int not null,
    user_id int not null,
    date_added datetime not null,
    
    primary key (mutual_id, user_id),
    
    foreign key (mutual_id) references User(user_id),
	foreign key (user_id) references User(user_id)
);

-- Handling those cool liked/favorited pages
create table Post_Liked (
    post_id int not null,
    user_id int not null,
    date_liked datetime not null,
    
    primary key (post_id, user_id),
    
    foreign key (post_id) references Post(post_id),
    foreign key (user_id) references User(user_id)
);

create table Post_Favorited (
    post_id int not null,
    user_id int not null,
    date_favorited datetime not null,
    
    primary key (post_id, user_id),
    
    foreign key (post_id) references Post(post_id),
    foreign key (user_id) references User(user_id)
);
