---
layout: post
title: Cookie in Gin
---

```
// Set Cookie
func (c *Context) SetCookie(
    name string,   // Cookie Name: "Auth"
    value string,  // Value: "f561b193165a076d8a9970dfd4e1a34ddb54ec36"
    maxAge int,    // Second: 3600
    path string,   // URL Path: "/"
    domain string, // Domain name: "MyDomain.com"
    secure bool,   // Secure cookie: true
    httpOnly bool, // non-javascript cookie: true
)

// Get Cookie
func (c *Context) Cookie(name string) (string, error)

Example:
c.SetCookie("Auth", "f561b193165a076d8a9970dfd4e1a34ddb54ec36", 3600, "/", "MyDomain.com", true, true)
```
