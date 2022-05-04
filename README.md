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

- CREATE ITEM

 ```sh
POST => localhost:3001/api/items
```

```sh
    {
        "title": "string",
        "description": "string",
        "archived": bool,
        "readed": bool,
        "executed": bool,
        "status": int,
    }
```

- EDIT ITEM

 ```sh
PUT => localhost:3001/api/items/:id
```

```sh
    {
        "title": "string",
        "description": "string",
        "archived": bool,
        "readed": bool,
        "executed": bool,
        "status": int,
    }
```

- LIST ITEM

 ```sh
GET => localhost:3001/api/items/:id
```

- LIST ITEMS

 ```sh
GET => localhost:3001/api/items
```

- DELETE ITEM

 ```sh
DELETE => localhost:3001/api/items/:id
```

- LIST ITEMS PAGINATION

 ```sh
GET => localhost:3001/api/items?page=:value&per_page_item=:value
```

- LIST ITEMS FOR STATUS

 ```sh
GET => localhost:3001/api/items/listforstatus/:status
```
