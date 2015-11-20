package main

import (
	"net/http"
  "fmt"
)

var 	Template        = `
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>DevOps Lviv Meetup</title>
		<link rel="stylesheet" href="/static/style.css" type="text/css"/>
		<style type="text/css"></style>
	</head>
	<body>
		<b>Hello DevOps Meetup #5</b>
		<br>
	</body>
</html>
`

func main() {
	http.HandleFunc("/", hello_world)
  err := http.ListenAndServe(":8080", nil) // set listen port
  if err != nil {
      fmt.Println("ListenAndServe: ", err)
  }
}

func hello_world(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, Template)
}
