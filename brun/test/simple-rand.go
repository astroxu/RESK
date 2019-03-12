package main

import (
	"fmt"
	"xcg.com/resk/infra/algo"
)

func main() {
	count, amount := int64(10), int64(100)
	for i := int64(0); i < count; i++ {
		x := algo.SimpleRand(count, amount*100)
		fmt.Print(x, ",")
	}
	fmt.Println()
}
