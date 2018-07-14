# Medium::Scrapper

Bienvenido, esta gema es una forma facil de sacar los datos basicos de MEDIUM (Nombre del usuario, posts y link del perfil )

## Instalación

```ruby
gem 'medium-scrap'
```

Ejecutar:

    $ bundle

O instálalo tú mismo como:

    $ gem install medium-scrap

## Usabilidad

Pues el uso de esta gema es muy facil.

```ruby
Medium::Scrapper.get(username, type)
```

username = El nombre de usuario de tu cuenta de Medium
type = 
    ["name" => "Nombre del usuario",
    "posts" => "Publicaciones de Medium",
    "url" => "Link del perfil"]

```ruby
Medium::Scrapper.get("vitualizz","name") # ====> "vitualizz"
Medium::Scrapper.get("vitualizz","posts") # ====> "Array de posts"
Medium::Scrapper.get("vitualizz","url") # ====> "https://medium.com/@vitualizz"
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Medium::Scrapper project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/medium-scrapper/blob/master/CODE_OF_CONDUCT.md).
