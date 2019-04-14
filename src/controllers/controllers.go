package controllers

import (
	"net/http"

	u "../utils"
)

var GetAllData = func(w http.ResponseWriter, r *http.Request) {
	data := "this is our data"
	resp := u.Message(true, "success")
	resp["data"] = data
	u.Respond(w, resp)
}
