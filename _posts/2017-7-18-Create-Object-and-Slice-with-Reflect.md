---
layout: post
title: Create Object and Slice with Reflect
---

```
func AnySlice(objType reflect.Type) {
  // create slice
  objArr := reflect.MakeSlice(reflect.SliceOf(objType), 0, 1)
  
  // create object
  obj := reflect.ValueOf(reflect.New(objType).Interface()).Elem()
  obj.Field(0).SetString("Ming")
  obj.FieldByName("Age").SetInt(18)
  
  // append to slice
  objArr.Set(reflect.Append(objArr, obj))
  ```
