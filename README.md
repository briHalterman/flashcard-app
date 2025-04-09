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