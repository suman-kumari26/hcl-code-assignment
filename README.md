# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

Project set up steps:

* Ruby version
```
2.5.1
```

* System dependencies

```
bundle install
```

* Database creation
```
bundle exec rake db:create db:migrate
```

* Seed Data from CSV
```
bundle exec rake import:csv_data
```

* Run the Project
```
rails s
```


* Curl Requests for Api:

```
Index:  curl -v  https://suman-hcl-demo.herokuapp.com/v1/questions
Show: curl -v https://suman-hcl-demo.herokuapp.com/v1/questions/:id
Destroy: curl -X DELETE  https://suman-hcl-demo.herokuapp.com/v1/questions/:id
Create: curl -X POST https://suman-hcl-demo.herokuapp.com/v1/questions -d '{ "question": { "description": "xxx", "role_id": 1, "mapping_id": 4 } }' -H "Content-Type: application/json"
Update: curl -X PATCH https://suman-hcl-demo.herokuapp.com/v1/questions/:id -d '{ "question": { "description": "xxx", "mapping_id": 5 } }' -H "Content-Type: application/json"
```
