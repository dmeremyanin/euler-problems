package main

import (
  "fmt"
  "math"
  "math/big"
  "strconv"
  "strings"
)

func power(inum int64, pow float64) *big.Int {
  num := big.NewInt(inum)
  res := big.NewInt(1)

  for {
    tmp := math.Mod(pow, 2)

    pow = pow / 2
    pow = math.Floor(pow)

    if tmp == 1 { res.Mul(res, num) }
    if pow == 0 { break }

    num.Mul(num, num)
  }

  return res
}

func sumDigits(num *big.Int) int {
  sum := 0
  for _, str := range strings.Split(num.String(), "") {
    dig, _ := strconv.Atoi(str)
    sum += dig
  }
  return sum
}

func main() {
  res := power(2, 1000)
  sum := sumDigits(res)

  fmt.Println(sum)
}
