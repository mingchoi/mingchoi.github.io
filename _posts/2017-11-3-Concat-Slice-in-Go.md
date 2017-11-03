---
layout: post
title: Concat Slice in Go
---

To concat two slice you can
```
s1 := []int{1, 2}  // [1, 2]
s2 := []int{3, 4}  // [3, 4]

for i := range s2 {
  s1 = append(s1, s2[i])  // [1, 2, 3, 4]
}
```
or

```
s1 := []int{1, 2}  // [1, 2]
s2 := []int{3, 4}  // [3, 4]

concat := append(s1, s2...)  // [1, 2, 3, 4]
```
