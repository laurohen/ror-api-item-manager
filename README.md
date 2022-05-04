# ror-api-item-manager
Item manager using ruby + postgres

### To start testing the project need to use Postgres

### Usage

#### Run `postgres-server`

    docker run -d --name postgres-server postgres -e POSTFRES_USER=admin POSTGRES_PASSWORD=123123 -p 5432:5432


### How to run whole project?

  Step 1
  
#### with bundle
```sh
bundle install 
```

  Step 2
  
#### with rake
```sh
rake db:create
```

  Step 3
  
#### with rails
```sh
rails s -p 3001
```

#### Testing?

- I got my aggregator api running on `localhost:3001`.

---
