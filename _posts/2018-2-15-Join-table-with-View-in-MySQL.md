---
layout: post
title: Join table with View in MySQL
---

```
CREATE VIEW CharacterWithAccount
AS
SELECT a.id aid,
  c.id cid,
  c.name name,
  a.country country,
  s.name servername
FROM character c
  INNER JOIN account a
    ON c.accountid = a.id
  INNER JOIN server s
    ON a.serverid = s.id
```
