package main

import (
	"log"
	"net/http"
)

func main() {
	mux := http.NewServeMux()

	// serves the flutter frontend
	mux.Handle(
		"/ProjectViewer/",
		http.StripPrefix("/ProjectViewer/", http.FileServer(http.Dir("../../project_viewer/build/web"))),
	)

	// by default any request is redirected to the flutter frontend
	mux.Handle("/", http.RedirectHandler("/ProjectViewer/", http.StatusMovedPermanently))

	log.Println("Starting server on Port 3000")
	log.Fatal(http.ListenAndServe(":3000", mux))
}
