package main

import (
	"fmt"
)

func main() {
	fmt.Print("Welcome to Tower of Hanoi: This function shows you the moves to make to solve the game.\n")
	n := 3
	HanoiMove(n, "A", "C", "B")
}

func HanoiMove(n int, from, to, extra string) {
	// base case
	if n == 1 {
		PrintMove(n, from, to)
	} else {
		// recursive case
		HanoiMove(n-1, from, extra, to)
		PrintMove(n, from, to)
		HanoiMove(n-1, extra, to, from)
	}
}

func PrintMove(n int, from, to string) {
	fmt.Printf("Move ring %v from %v to pole %v.\n", n, from, to)
}
