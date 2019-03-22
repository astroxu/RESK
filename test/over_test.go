package test

import (
	"fmt"
	_ "github.com/go-sql-driver/mysql"
	"github.com/segmentio/ksuid"
	"github.com/shopspring/decimal"
	"testing"
)

//基准测试代码，Benchmark开头，第一个字母B大写
//testing.B
func BenchmarkUpdateForLock(b *testing.B) {
	g := GoodsSigned{}
	g.EnvelopeNo = ksuid.New().String()
	g.RemainQuantity = 100000
	g.RemainAmount = decimal.NewFromFloat(100000)
	_, err := db.Insert(g)
	if err != nil {
		fmt.Println(err)
		return
	}

	for i := 0; i < b.N; i++ {
		UpdateForLock(g.Goods)
	}
}

//基准测试:无符号类型+直接更新
func BenchmarkUpdateForUnsigned(b *testing.B) {
	g := GoodsUnsigned{}
	g.EnvelopeNo = ksuid.New().String()
	g.RemainQuantity = 100000
	g.RemainAmount = decimal.NewFromFloat(100000)
	_, err := db.Insert(g)
	if err != nil {
		fmt.Println(err)
		return
	}

	for i := 0; i < b.N; i++ {
		UpdateForUnsigned(g.Goods)
	}
}
