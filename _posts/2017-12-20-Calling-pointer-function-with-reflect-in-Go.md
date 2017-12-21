---
layout: post
title: Calling pointer function with reflect in Go
---

Example: calling sql.Scanner.Scan

```
type Telephone string

func (t *Telephone) Scan(src interface{}) error {
	str := strconv.Itoa(src.(int))
	*t = Telephone(str[:4] + "-" + str[4:])
	return nil
}

func main() {
	tel := Telephone("0000-0000")
	TelephoneType := reflect.TypeOf(tel)
	scanTel := reflect.New(TelephoneType).Elem()
  
  // Conversion failed, message: "panic: interface conversion: main.Telephone is not sql.Scanner: missing method Scan"
  // scanTel.Interface().(sql.Scanner).Scan(66666666)
  
  // Use reflect.Value.Addr() to obtain a pointer value representing the address of scanTel
  scanTel.Addr().Interface().(sql.Scanner).Scan(66666666)
  fmt.Print(scanTel) // 6666-6666
}
```
