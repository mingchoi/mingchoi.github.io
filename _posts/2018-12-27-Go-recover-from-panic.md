---
layout: post
title: Go recover from panic
---

## How
Use recover() inside a defer function.

## Example
```
package main

import (
	"fmt"
	"runtime/debug"
)

func main() {
	// Catch error
	defer func() {
		if r := recover(); r != nil {
      // Show error message
			fmt.Println(r)
      // Show stack trace
			debug.PrintStack()
		}
	}()
	
	// Send out error
	panic("Error encountered")
}
```

## More
This blog post have a more detailed explanation on **Defer, Panic, and Recover**.

[https://blog.golang.org/defer-panic-and-recover](https://blog.golang.org/defer-panic-and-recover)
