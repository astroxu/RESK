package main

import (
	"fmt"
	"xcg.com/resk/infra/algo"
)

func main() {
	fmt.Print(algo.AfterShuffle(int64(10), int64(1000)))
}
