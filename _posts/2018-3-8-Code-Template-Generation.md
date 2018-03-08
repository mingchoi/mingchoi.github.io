---
layout: post
title: Code Template Generation
---

[https://play.golang.org/p/cyM-wLmJBNA](https://play.golang.org/p/cyM-wLmJBNA)
```
package main

import (
	"fmt"
)

var template = "This is a template with %s, with multiple %s. %s\n"

var replace []string = []string{
	"Item1",
	"Item2",
	"Item3",
	"Item4",
	"Item5",
}

func main() {
	for i := range replace{
		fmt.Printf(template, repeatArgs(replace[i], 3)...)
	}
}

func repeatArgs(input string, times int) []interface{}{
	result := make([]interface{}, 0)
	for i:=0; i<times; i++ {
		result = append(result, input)
	}
	return result
}

```
