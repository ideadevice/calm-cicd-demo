package handlers

import (
	"html/template"
	"net/http"

	"github.com/ideadevice/calm-cicd-demo/libhttp"
	"github.com/ideadevice/calm-cicd-demo/version"
)

func GetHome(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "text/html")

	tmpl, err := template.ParseFiles("templates/dashboard.html.tmpl", "templates/home.html.tmpl")
	if err != nil {
		libhttp.HandleErrorJson(w, err)
		return
	}
	v := version.ReadVersion()
	tmpl.Execute(w, v)
}
