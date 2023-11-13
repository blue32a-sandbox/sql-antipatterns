SELECT SUM( b.hours * a.hourly_rate ) AS project_rate
FROM Bugs AS b
  INNER JOIN Accounts AS a ON b.assigned_to = a.account_id;
