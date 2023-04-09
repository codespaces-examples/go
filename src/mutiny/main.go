// A basic example of using the mutiny package to output a basic greeting.
package main

import (
	"fmt"
)

func main() {
	fmt.Println("Hello, bruh!!!")
	countBackwards()
}

// Count backwards from 10 and output the result
func countBackwards() {
	for i := 10; i > 0; i-- {
		fmt.Println(i)
	}
}
