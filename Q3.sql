select S.ID,S.Name,P.Name Prod, P.[Value] from Stock S
inner join Product P on S.ID = P.StockID


 --select S.[Name], (Select max(P.[Value]) from Product P where P.StockID = S.ID) StockValue  from Stock S

 
 SELECT S.[Name] Stock, S.[Name] Product,S.Value
  FROM (select ROW_NUMBER() OVER (PARTITION BY S.ID ORDER BY P.[Value] DESC) rank, S.ID,S.Name,P.Name Prod, P.[Value] from Stock S
inner join Product P on S.ID = P.StockID) S
 WHERE S.rank = 1 