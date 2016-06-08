Basic framework for starting a Sinatra app

To set up the database, run:
`psql -d postgres -f scripts/create_db.sql`

To run migrations - add to `db/migrations` directory and then run:
`sequel -m db/migrations postgres://user:password@localhost/framework_development`

Use the naming convention `001_what_you_are_doing.rb` and increase by 1 for new migrations.

Start the server with:
`thin -R config.ru start -p 3001`

TODO
* Set up tests

