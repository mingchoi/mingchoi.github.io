---
layout: post
title: Defer in gin middleware
---

To make the middleware call a function after the response, all you need is `defer`

Example:
```
func main(){
  r := gin.Default()
  r.Use(middlewareA())
  r.Use(middlewareB())
  r.GET("/", myCtrl)
  r.Run()
}
func middlewareA() gin.HandlerFunc {
  return func(c *gin.Context){
    fmt.Println("Middleware A called")
    defer fmt.Println("Middleware A deferred call")
    c.Next()
  }
}
...
```
    
Result:
```
Middleware A called
Middleware B called
HTML Response Done
Middleware B deferred call
Middleware A deferred call
```
