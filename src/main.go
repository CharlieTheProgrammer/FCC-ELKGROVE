package main

import (
	"fmt"
	"net/http"
	"os"

	// "github.com/user/myProject/src/controllers"
	"./controllers"

	"github.com/gorilla/mux"
)

// Main function
func main() {

	router := mux.NewRouter()

	router.HandleFunc("/data", controllers.GetAllData).Methods("GET")

	//environment variable
	port := os.Getenv("PORT")
	if port == "" {
		port = "8080" //localhost
	}

	fmt.Println(port)

	//Launch the app
	err := http.ListenAndServe(":"+port, router)
	if err != nil {
		fmt.Print(err)
	}
}
