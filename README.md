# Unofficial TreeTracker Database Container

## 1. Requirements

- git
- docker
- node

## 2. Installation

- clone this repo: `git clone https://github.com/a-marquez/unofficial-treetracker-database`
- clone the api repo for db configurations `git clone https://github.com/Greenstand/treetracker-api`
- cd into this repo and start multi-container in detached mode `docker compose up -d`
- cd into api repo edit database references:
	- `.env` should contain `DATABASE_URL="postgresql://treetracker:treetracker@localhost:5432/treetracker_db?false"`
	- change host/port to localhost/5432 in `database/database.json`
	- run migrations: `npx db-migrate up --env dev --sql-file -migrations-dir=database/migrations --config=database/database.json`
	- seed?

## 3. Usage

- to run: `docker compose up -d`
- to shutdown: `docker compose down` 
- to enter psql: `docker exec -ti treetracker-db-db-1 psql -U treetracker -d treetracker_db`
