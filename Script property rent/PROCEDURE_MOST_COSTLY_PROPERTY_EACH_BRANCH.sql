
CREATE PROCEDURE MOST_COSTLY_PROPERTY_EACH_BRANCH
AS
SELECT b.Rent, b.Location, b.Note 
FROM RentalProperty b
INNER JOIN (
	SELECT max(a.Rent) Rent, a.BranchId
	FROM RentalProperty AS a
	GROUP BY a.BranchId
) as mxbr on mxbr.BranchId = b.BranchId and mxbr.Rent = b.Rent
GO;