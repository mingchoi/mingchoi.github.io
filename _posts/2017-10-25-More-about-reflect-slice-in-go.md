---
layout: post
title: More about reflect slice in go
---

```
func myFun(model interface{}){
  // Get type
  m := reflect.Indirect(reflect.ValueOf(model))
  type := m.Type()
  
  // Get Child type, create and append
  if t.Kind() == reflect.Slice{
    childType := t.Elem()
    newChild = reflect.ValueOf(reflect.New(reflect.TypeOf(childType)).Interface()).Elem()
    newChild.Field(i).SetInt(0)
    m.Set(reflect.Append(m, newChild))
  }
}
```
