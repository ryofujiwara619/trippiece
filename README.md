# DB設計

## Users table

| Column               | Type      | Option                                   |
|:---------------------|:----------|:----------------------------------------:|
| id                   | integer   | primary_key                              |
| name                 | string    | index:true, null:false, unique:true      |
| email                | string    | implemented by devise Gem                |
| password             | string    | implemented by devise Gem                |

### Association
has_many :comments  
has_many :projects, through: :participants  
has_many :participants  


## Projects table

| Column               | Type      | Option                                   |
|:---------------------|:--------- |:----------------------------------------:|
| id                   | integer   | primary_key                              |
| title                | text      | null:false, unique:true                  |
| date                 | datetime  | null:false                               |
| destination          | string    | null:false                               |
| activity             | string    |                                          |
| introduction         | text      | null:false                               |
| detail               | text      |                                          |
| image                | string    |                                          |
| price                | integer   |                                          |
| apply_deadline       | datetime  |                                          |
| capacity             | integer   |                                          |
| minimum_participants | integer   |                                          |

### Association
has_many :users, through: :participants  
has_many :participants  
has_many :comments  


## Participants table

| Column               | Type      | Option                                   |
|:---------------------|:----------|:----------------------------------------:|
| id                   | integer   | primary_key                              |
| user_id              | reference | index:true, null:false, foreign_key:true |
| project_id           | reference | index:true, null:false, foreign_key:true |

### Association
belongs_to :user  
belongs_to :project  


## Comments table

| Column               | Type      | Option                                   |
|:---------------------|:----------|:----------------------------------------:|
| id                   | integer   | primary_key                              |
| text                 | text      | null:false                               |
| user_id              | reference | index:true, null:false, foreign_key:true |
| project_id           | reference | index:true, null:false, foreign_key:true |

### Association
belongs_to :user  
belongs_to :project  
