# README

Ruby 2.3.0

Rails 5.0.6

All the tests in rspec

`bundle install`

`/api/heroes`                         List all the heroes

  With the fields:

    total: Total of heroes returned by the action

    data: with the list with id, name, real_name, health, armour and shield

`/api/heroes/:id`                     Show the specific hero

  With id, name, real_name_ health, armour and shield

`/api/heroes/:hero_id/abilities`      List all the abilities of a hero

  total: Total abilities number

  data: abilities list with  id, name, description and is_ultimate

`/api/abilities`                      The same as the list above but with all the heroes

`/api/abilities/:id`                  Show the ability

  With id, name, description and is_ultimate
