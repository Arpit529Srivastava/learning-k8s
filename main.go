package main

import (
	"net/http"
	"log"
)

func main() {
	fs := http.FileServer(http.Dir("frontend"))
	http.Handle("/", fs)
	log.Println("Server is running on http://localhost:8000")
	err := http.ListenAndServe(":8000", nil)
	if err != nil {
		log.Fatalf("Error starting server: %v", err)
	}
}
