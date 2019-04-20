package controllers

import (
	"net/http"

	u "github.com/user/myProject/src/utils"
)

var GetAllData = func(w http.ResponseWriter, r *http.Request) {
	data := "this is our data"
	resp := u.Message(true, "success")
	resp["data"] = data
	u.Respond(w, resp)
}
