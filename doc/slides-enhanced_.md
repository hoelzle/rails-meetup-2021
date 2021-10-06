---
presentation:
    theme: black.css
---  
  
  
<!-- slide -->
  
  
#  Rails Meetup 2021
  
  
Hoelzle AG
Gregor Wassmann
<small>MSc ETH</small>
  
<!-- slide -->
  
  
![bg](https://assets.hoelzle.ch/image/upload/ar_16:9,c_lfill,dpr_2.0,f_auto,g_custom:face,w_450/iStock-1069742886 )
  
<!-- slide -->
  
  
![bg](https://assets.hoelzle.ch/image/upload/ar_16:9,c_lfill,dpr_2.0,f_auto,w_450/iStock-1030386752 )
  
<!-- slide -->
  
  
![bg](https://assets.hoelzle.ch/image/upload/c_limit,dpr_auto,f_auto,q_auto:eco,w_1200/v1585066206/Depositphotos_43697107_original )
  
<!-- slide -->
  
  
Please find slides and source code on
[github.com/hoelzle/rails-meetup-2021](https://github.com/hoelzle/rails-meetup-2021 )
  
<!-- slide -->
  
  
#  Modular Monolith
  
  
Bonus: Best of Rails _and_ JavaScript
  
  
<!-- slide -->
  
  
![bg](shopify-momo.png )
  
<!-- slide -->
  
  
#  Entropy
  
  
<!-- slide -->
  
  
![bg](pragprog.jpg )
  
<!-- slide -->
  
  
> While software development is immune from almost all physical laws, the inexorable increase in entropy hits us hard. Entropy is a term from physics that refers to the amount of “disorder” in a system.
  
— David Thomas, Andrew Hunt.
The Pragmatic Programmer.
  
<!-- slide -->
  
  
##  Entropy always increases
  
  
Second law of thermodynamics.
  
<!-- slide -->
  
  
Thought experiment
  
<!-- slide -->
  
  
  

![](../assets/cbbff21367488948de0781037595cc780.png?0.13641214113455602)  
  
<!-- slide -->
  
  

![](../assets/cbbff21367488948de0781037595cc781.png?0.5218365315115507)  
  
<!-- slide -->
  
  

![](../assets/cbbff21367488948de0781037595cc782.png?0.7134259328835602)  
  
<!-- slide -->
  
  
#  Complexity
  
  
- Same number of nodes
- Edges: <img src="https://latex.codecogs.com/gif.latex?&#x5C;frac{n(n%20-%201)}{2}"/>
  - Monolith: <img src="https://latex.codecogs.com/gif.latex?36"/>
  - Modular Monolith: <img src="https://latex.codecogs.com/gif.latex?3%20&#x5C;times%203%20=%209"/>
  
<!-- slide -->
  
  
#  Complexity
  
  
##  <img src="https://latex.codecogs.com/gif.latex?36%20&#x2F;%209%20=%204&#x5C;times"/>
  
  
<!-- slide -->
  
  
You’re in good company.
  
<!-- slide -->
  
  
https://shopify.engineering/deconstructing-monolith-designing-software-maximizes-developer-productivity
  
  
<!-- slide -->
  
  
https://medium.com/@dan_manges/the-modular-monolith-rails-architecture-fb1023826fc4
  
<!-- slide -->
  
  
#  Rails Engine
  
  
<!-- slide -->
  
  
  
```
 rails plugin new ./engines/core --full
 rails plugin new ./engines/api --mountable
```
  
  
  
<!-- slide -->
  
  
`spec/dummy` is your friend
  
<!-- slide -->
  
  
```
rails app:railties:install:migrations
```
  
<!-- slide -->
  
  
**don’t do this**
  
<!-- slide -->
  
  
```ruby
# Source: https://tanzu.vmware.com/content/blog/leave-your-migrations-in-your-rails-engines
initializer :append_migrations do |app|
  unless app.root.to_s.match root.to_s
    config.paths['db/migrate'].expanded.each do |path|
      app.config.paths['db/migrate'] << path
    end
  end
end
```
  
<!-- slide -->
  
  
#  Webpacker
  
  
<!-- slide -->
  
  
Ask @coorasse
  
<!-- slide -->
  
  
![bg](rails7-importmaps.png )
  
<!-- slide -->
  
  
#  JavaScript and Rails
  
  
<!-- slide -->
  
  
![bg](rails7.png )
  
<!-- slide -->
  
  
https://world.hey.com/dhh/rails-7-will-have-three-great-answers-to-javascript-in-2021-8d68191b
  
<!-- slide -->
  
  
###  Three choices for JS
  
  

![](../assets/cbbff21367488948de0781037595cc783.png?0.5294120604265924)  
  
1. import maps
2. jsbundling-rails
3. Rails API with separate SPA
  
<!-- slide -->
  
  
###  The 4th choice
  
  
Simple. Obvious. Best of both worlds?
  

![](../assets/cbbff21367488948de0781037595cc784.png?0.6397821894719575)  
  
<!-- slide -->
  
  
- 1 repo
- 1 CI
- 1 deployment (Heroku)
- different stacks
- `clients/crm`
- `public/crm ➔ ../../clients/crm/dist`
  
<!-- slide -->
  
  
Works with Rails 0.5
  
<!-- slide -->
  
  
RSpec and FactoryBot.
End-to-end testing.
  
<!-- slide -->
  
  

![](../assets/cbbff21367488948de0781037595cc785.png?0.09508608385193429)  
  
  
<!-- slide -->
  
  

![](../assets/cbbff21367488948de0781037595cc786.png?0.16831925368592837)  
  
<!-- slide -->
  
  
#  Momo
  
  
Modular Monolith
  
<!-- slide -->
  
  
![bg](api.png )
  
<!-- slide -->
  
  
![bg](shop.png )
  
<!-- slide -->
  
  
![bg](crm.png )
  
<!-- slide -->
  
  
There is no right or wrong.
Be pragmatic.
  
<!-- slide -->
  
  
Questions?
  
<!-- slide -->
  
  
Thanks
  
<!-- slide -->
  
#  TODO
  
  
- [x] Core engine
- [ ] API engine
- [ ] JS / Svelte client
- [ ] Administrate
- [ ] Shop
- [ ] Device
- [ ] Github pages
- [ ] Omniauth
- [ ] Standardrb
- [ ] RSpec
- [ ] CI
- [ ] Ruby 3 / Rails 7
- [ ] Hotwire
- [ ] Importmaps
- [ ] Spyke
- [ ] ActionCable
- [ ] Docker
- [ ] install:migrations **NOT**
  
  
<!-- slide -->
  
  
#  Why API?
  
  
1. Separation of concerns
1. Different kinds of clients
1. Offline / native clients
1. Technological independence / decoupling
1. Standards such as JsonAPI
1. Every developer knows what it is
1. Minimal attack surface
1. Future proof (Jamstack and what not)
  