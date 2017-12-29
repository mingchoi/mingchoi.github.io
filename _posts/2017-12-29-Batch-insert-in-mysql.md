---
layout: post
title: Batch insert in mysql
---

First, convert your data to a .csv file.
Then, use `LOAD DATA INFILE` to import your data.

```
LOAD DATA INFILE 'data.csv'
    INTO TABLE tbl_name
    FIELDS TERMINATED BY ','
    ENCLOSED BY '\"'
    LINES TERMINATED BY '\r\n'
    IGNORE 1 LINES
    (col1, col2, col3...)
```
(Remember to skip the primary key)
