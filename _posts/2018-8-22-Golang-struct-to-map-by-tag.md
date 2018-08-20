---
layout: post
title: Golang struct to map by tag
---

[demo](https://play.golang.org/p/BbqJijYn473)


```
func struct2Map(model interface{}, tagName string) map[string]interface{} {
	m := make(map[string]interface{})
	r := reflect.ValueOf(model)
	total := r.NumField()
	for i := 0; i < total; i++ {
        	m[r.Type().Field(i).Name] = r.Field(i).Interface()
	}
	return m
}
```
