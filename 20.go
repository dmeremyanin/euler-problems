package main

import (
  "fmt"
  "math/big"
  "strconv"
  "strings"
)

func sumDigits(num *big.Int) int {
  sum := 0
  for _, str := range strings.Split(num.String(), "") {
    dig, _ := strconv.Atoi(str)
    sum += dig
  }
  return sum
}

func main() {
  res := new(big.Int).MulRange(1, 100)
  sum := sumDigits(res)

  fmt.Println(sum)
}
