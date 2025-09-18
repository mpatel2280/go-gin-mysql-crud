package main

import (
	"github.com/mpatel2280/go-gin-mysql-crud/app/models"
	"github.com/mpatel2280/go-gin-mysql-crud/config"

	"github.com/gin-gonic/gin"
)

func main() {
	db, err := config.ConnectDB()
	if err != nil {
		panic("Failed to connect to database!")
	}
	db.AutoMigrate(&models.User{})

	r := gin.Default()
	// Attach CRUD routes here
	r.Run() // default :8080
}
