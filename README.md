# **`IntDesk-backend`**

# Setup and Start

```
git clone repo
docker-compose up
```

# Docker Commands
 
- **Build** `Dockerfile` 
  
    `docker build .`

- **Start Django project** using `django` service defined inside docker-compose
  
    `docker-compose run django django-admin startproject intdesk_api .`

- Run `docker-compose`
  
    `docker-compose up`

- To **build image** after making changes 

    `docker-compose up --build`

- **Migrate** database 

    `docker-compose run django python manage.py migrate`

- Crete **superuser** 

    `docker-compose run django python manage.py createsuperuser`
