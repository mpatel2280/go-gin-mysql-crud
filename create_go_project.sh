#!/bin/bash

# Usage: ./create_go_project.sh <project_name>

# if [ $# -eq 0 ]; then
#     echo "Usage: $0 <project_name>"
#     exit 1
# fi

# PROJECT="$1"

# mkdir -p $PROJECT/app/controllers
# mkdir -p $PROJECT/app/models
# mkdir -p $PROJECT/app/repositories
# mkdir -p $PROJECT/app/routes
# mkdir -p $PROJECT/config

# touch $PROJECT/app/controllers/user_controller.go
# touch $PROJECT/app/models/user_model.go
# touch $PROJECT/app/repositories/user_repository.go
# touch $PROJECT/app/routes/router.go
# touch $PROJECT/app/main.go
# touch $PROJECT/config/database.go
# touch $PROJECT/Dockerfile
# touch $PROJECT/docker-compose.yml
# touch $PROJECT/go.mod
# touch $PROJECT/go.sum

# echo "Project structure created for $PROJECT."

# Script generates project structure in the current folder.
# Usage: Run inside the target project directory.

mkdir -p app/controllers
mkdir -p app/models
mkdir -p app/repositories
mkdir -p app/routes
mkdir -p config

touch app/controllers/user_controller.go
touch app/models/user_model.go
touch app/repositories/user_repository.go
touch app/routes/router.go
touch app/main.go
touch config/database.go
touch Dockerfile
touch docker-compose.yml
touch go.mod
touch go.sum

echo "Project structure created in $(pwd)"


