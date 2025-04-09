# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Flashcard App

A Ruby on Rails flashcard app that helps users create, tag, and organize study cards by topic and deck.

### Entity Relationship Diagram (ERD)

![Flashcard App ERD](docs/erd.svg)

#### Mermaid ERD
```mermaid
erDiagram
  USER ||--o{ CARD : has_many
  CUSTOM_TAG ||--o{ CARD_CUSTOM_TAG : has_many_through
  CARD }o--o{ CARD_CUSTOM_TAG : has_many_through
  CARD }o--o{ CARD_DECK : has_many_through
  USER ||--o{ DECK : has_many
  DECK }o--o{ DECK_SUBTOPIC : has_many_through
  SUBTOPIC ||--o{ DECK_SUBTOPIC : has_many_through
  SUBTOPIC }|--|| TOPIC : belongs_to
  DECK ||--o{ CARD_DECK : has_many_through
  ```

### Planned Migrations

1. `bundle exec rails generate model User username:string password_digest:string`
2. `bundle exec rails generate model Card term:string definition:string user_id:integer`
3. `bundle exec rails generate model CustomTag keyword:string`
4. `bundle exec rails generate model CardCustomTag card_id:integer custom_tag_id:integer`
5. `bundle exec rails generate model Deck name:string user_id:integer`
6. `bundle exec rails generate model CardDeck deck_id:integer card_id:integer`
7. `bundle exec rails generate model Topic name:string`
8. `bundle exec rails generate model Subtopic name:string topic_id:integer`
9. `bundle exec rails generate model DeckSubtopic deck_id:integer subtopic_id:integer`