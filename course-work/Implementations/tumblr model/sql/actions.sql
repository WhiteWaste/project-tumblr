use tumblr_db;
/* PROCEDURES: */
delimiter //
create procedure GetPostsByYear(in inputYear int)
begin
    select * from Post
    where year(post_date) = inputYear;
end
// delimiter

delimiter // 
create procedure GetUsersByYear(in inputYear int) 
begin 
	select * from User 
    where year(join_date) = inputYear; 
end 
// delimiter

/* FUNCS: */

delimiter // 
create function IsRepost(post_id int)
returns boolean
deterministic
begin
    declare isRepost boolean;

    select if(parent_id is not null, true, false) into isRepost
    from Post
    where post_id = post_id;

    return isRepost;
end
// delimiter

/* triggers: */
delimiter // 
create trigger OnLikePostTrigger
after insert on Post_Liked
for each row
begin
    update Post
    set likes = likes + 1
    where post_id = new.post_id;
end
// delimiter

delimiter // 
create trigger OnFavoritePostTrigger
after insert on Post_Favorited
for each row
begin
    update Post
    set favorite = favorite + 1
    where post_id = new.post_id;
end
// delimiter

delimiter // 
create trigger beforePostInsertTrigger
before insert on Post
for each row
begin
    if new.post_id = new.parent_id THEN
        signal sqlstate '45000' /* cool addition by the chat */
        set message_text = 'No reposting self here';
    end if;

    if new.parent_id is not null and exists (
        select 1 from Post 
        where post_id = new.parent_id and parent_id = new.post_id
    ) then
        signal sqlstate '45000'
        set message_text = 'repost cant go backwards mate';
    end if;
end

/*drop trigger beforeUserInsertTrigger;
delimiter // 
create trigger beforeUserInsertTrigger
before insert on User
for each row
begin
    update User
    set join_date = current_date
    where user_id = new.user_id;
end
// delimiter;*/

