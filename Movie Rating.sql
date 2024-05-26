(
    select u.name as results
    from MovieRating r join Users u on r.user_id = u.user_id 
    group by u.user_id 
    order by count(movie_id) desc,u.name asc
    limit 1
)
union all
(
    select m.title as results
    from MovieRating r join Movies m on r.movie_id = m.movie_id 
    where created_at >= '2020-02-01' && created_at < '2020-03-01'
    group by m.movie_id
    order by avg(rating) desc,m.title asc
    limit 1
)