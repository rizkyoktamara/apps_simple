package main

import (
	"fmt"
	"net/http"
)

func helloHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintln(w, "Hello from Golang API")
}

func main() {
	http.HandleFunc("/hello", helloHandler)
	fmt.Println("Server running at :8081")
	http.ListenAndServe(":8081", nil)
}
