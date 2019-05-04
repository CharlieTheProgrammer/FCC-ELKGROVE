package main

import (
	"fmt"
	"net/http"
	"os"

	// "github.com/user/myProject/src/controllers"
	"./controllers"
	"github.com/gocql/gocql"
	"github.com/gorilla/mux"
)

// Main function
func main() {

	// connect to the cluster
	cluster := gocql.NewCluster("192.168.99.100")
	cluster.Keyspace = "system_distributed"
	cluster.Consistency = gocql.Quorum
	session, _ := cluster.CreateSession()
	defer session.Close()

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
