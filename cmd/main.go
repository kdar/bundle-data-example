package main

import (
	"fmt"
	"github.com/kdar/bundle-data-example"
)

func main() {
	data1, data2 := example.GetData()
	fmt.Println(string(data1), string(data2))
}
