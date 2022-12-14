(select F1.X, F1.Y from FUNCTIONS F1, FUNCTIONS F2
where F1.X = F2.Y and F1.Y = F2.X and F1.X< F1.Y
order by F1.X, F1.Y 
)
union all

(select F3.X,F3.Y from FUNCTIONS F3
where F3.X = F3.Y 
group by F3.X
having count(F3.X) > 1
)

order by X, Y
;
