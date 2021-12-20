package controllers

import (
	"bytes"
	"encoding/json"

	// "fmt"
	"io/ioutil"
	"log"
	"net/http"

	beego "github.com/beego/beego/v2/server/web"
)

type MainController struct {
	beego.Controller
}
type Word struct {
	Message string
	Desc    string
}

func (c *MainController) Get() {
	c.TplName = "index.tpl"
}

func (c *MainController) Post() {
	firstName := c.GetString("inputFirstName")
	lastName := c.GetString("inputLastName")
	email := c.GetString("inputEmail")
	phone := c.GetString("inputPhone")
	pass := c.GetString("inputPassword")
	dob := c.GetString("inputDate")

	//Encode the data
	postBody, _ := json.Marshal(map[string]string{
		"FirstName": firstName,
		"LastName":  lastName,
		"Email":     email,
		"Phone":     phone,
		"Password":  pass,
		"DoB":       dob,
	})
	responseBody := bytes.NewBuffer(postBody)
	//Leverage Go's HTTP Post function to make request
	resp, err := http.Post("http://localhost:8080/v1/user", "application/json", responseBody)
	//Handle Error
	if err != nil {
		log.Printf("An Error Occured %v", err)
	}
	defer resp.Body.Close()
	//Read the response body
	body, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		log.Fatalln(err)
	}
	sb := string(body)

	var word Word
	json.Unmarshal([]byte(sb), &word)
	var str = "Message: " + word.Message
	c.Data["Desc"] = str
	c.TplName = "index.tpl"
}
