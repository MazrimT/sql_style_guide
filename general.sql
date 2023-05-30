with cte1 as (                                         
    select                                              -- whole select statement inside CTE is indented 1 step
         t3.c1                                          -- never use "select *" always have columns specified
        ,t3.c2                                          -- write out alias on all columns
    from table3 t3                                      -- alias all tables
)                                                       -- each CTE is has its closing parenthesis on it's own row
,cte2 as (                                              -- from the second CTE start with comma and then name, this makes it easier when testing/bugfixing to comment out
    select
         t4.c1          as order_id                     -- if naming columns with "as" keep them as much as possible in a straight line
        ,t4.c2          as order_date
    from table4 t4
)                                          
select distinct                                         -- select on it's own row, if distinct is used it goes on the same row as select
     t1.c1                                              -- each column on it's own row
    ,t1.c2
    ,case                                               -- case on its own row
        when t1.c3 = 1                                  -- "when" indented 1 step from case
            then 1                                      -- "then" indented 1 step from when
        when t1.c1 = 1
        and t2.c1 = 2                                   -- if multiple values are checked each "and" should be on its own row.
            then 2                  
        else 2                                          -- "else" has same indentation as "when"
     end                as c3                           -- "end" on it's own row with the alias for the column
from table1 t1                                          -- "from" on same indentation as select
left join table2 t2                                     -- joins on same indentation as from
    on t1.c1 = t2.c1                                    -- "on" on new row, indented 1 step
    and t1.c2 = t2.c2                                   -- if using multiple values to join each should be it's own row
join (                                                  -- when using subqueries, join + parenthesis on one row
    select                                              -- whole select statement indented 1 step
         t5.c1
        ,t5.c2
    from table5 t5
    union all                                           -- union / union all on same indentation as select
    select
         t5.c1
        ,t5.c2
    from table6 t6
) sq1                                                  
    on sq1.c1 = t1.c1
