---
presentation:
  # presentation theme
  # === available themes ===
  # "beige.css"
  # "black.css"
  # "blood.css"
  # "league.css"
  # "moon.css"
  # "night.css"
  # "serif.css"
  # "simple.css"
  # "sky.css"
  # "solarized.css"
  # "white.css"
  # "none.css"
  theme: black.css
---

<!-- slide -->

# Rails Meetup 2021

Hoelzle AG
Gregor Wassmann

<!-- slide -->


![bg](https://assets.hoelzle.ch/image/upload/ar_16:9,c_lfill,dpr_2.0,f_auto,g_custom:face,w_450/iStock-1069742886)

<!-- slide -->

![bg](https://assets.hoelzle.ch/image/upload/ar_16:9,c_lfill,dpr_2.0,f_auto,w_450/iStock-1030386752)

<!-- slide -->

![bg](https://assets.hoelzle.ch/image/upload/c_limit,dpr_auto,f_auto,q_auto:eco,w_1200/v1585066206/Depositphotos_43697107_original)

<!-- slide -->

Please find slides and source code on
[github.com/hoelzle/rails-meetup-2021](https://github.com/hoelzle/rails-meetup-2021)

<!-- slide -->

# Modular Monolith

Bonus: Best of Rails _and_ JavaScript


<!-- slide -->

![bg](shopify-momo.png)

<!-- slide -->

# Entropy

<!-- slide -->


```dot {engine=circo}
digraph g1 {
  bgcolor = transparent

  node [
    fontname=helvetica,
    fontsize=30,
    shape=circle,
    color=white,
    fontcolor=white
  ];

  edge [
    arrowhead=none,
    color=transparent,
  ];

  1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 7 -> 8 -> 9 -> 1;
}
```

<!-- slide -->

```dot {engine=circo}
digraph g1 {
  bgcolor = transparent

  node [
    fontname=helvetica,
    fontsize=30,
    shape=circle,
    color=white,
    fontcolor=white
  ];

  edge [
    arrowhead=none,
    color=white,
  ];

    1 -> 2
    1 -> 3
    1 -> 4
    1 -> 5
    1 -> 6
    1 -> 7
    1 -> 8
    1 -> 9

    2 -> 3
    2 -> 4
    2 -> 5
    2 -> 6
    2 -> 7
    2 -> 8
    2 -> 9

    3 -> 4
    3 -> 5
    3 -> 6
    3 -> 7
    3 -> 8
    3 -> 9

    4 -> 5
    4 -> 6
    4 -> 7
    4 -> 8
    4 -> 9

    5 -> 6
    5 -> 7
    5 -> 8
    5 -> 9

    6 -> 7
    6 -> 8
    6 -> 9

    7 -> 8
    7 -> 9

    8 -> 9
}
```

<!-- slide -->

```dot {engine=circo}
digraph g1 {
  bgcolor = transparent

  node [
    fontname=helvetica,
    fontsize=30,
    shape=circle,
    color=white,
    fontcolor=white
  ];

  edge [
    arrowhead=none,
    color=white,
  ];

  1 -> 2 -> 3 -> 1

  4 -> 5 -> 6 -> 4

  7 -> 8 -> 9 -> 7
}
```

<!-- slide -->

# Complexity

- Same number of nodes
- Edges: $ \frac{n(n - 1)}{2}$
  - Monolith: $36$
  - Modular Monolith: $3 \times 3 = 9$

<!-- slide -->

# Complexity

## $ 36 / 9 = 4\times$

<!-- slide -->

https://shopify.engineering/deconstructing-monolith-designing-software-maximizes-developer-productivity

<!-- slide -->

# Rails Engine

<!-- slide -->

![bg](rails7-importmaps.png)

<!-- slide -->

# JavaScript and Rails

<!-- slide -->

![bg](rails7.png)

<!-- slide -->

https://world.hey.com/dhh/rails-7-will-have-three-great-answers-to-javascript-in-2021-8d68191b

<!-- slide -->

### Three choices for JS

```dot
digraph G {
	rankdir = LR
	bgcolor = transparent
  // color = white
  // fontcolor=white
  // fontname=helvetica

  node [
    fontname=helvetica,
    fontsize=30,
    shape=circle,
    color=white,
    fontcolor=white
  ];

  edge [
    arrowhead=none,
    color=white,
  ];

	1 -> 2 -> 3
}
```

1. import maps
2. jsbundling-rails
3. Rails API with separate SPA

<!-- slide -->

### The 4th choice

Simple. Obvious. Best of both worlds?

```dot
digraph G {
	rankdir = LR
	bgcolor = transparent
  // color = white
  // fontcolor=white
  // fontname=helvetica

  node [
    fontname=helvetica,
    fontsize=30,
    shape=circle,
    color=white,
    fontcolor=white,
    border=3
  ];

  edge [
    arrowhead=none,
    color=white
  ];

	1
  2
  3

  node [color=yellow, fontcolor=yellow]
  1 -> 2 -> 4 -> 3
}
```


<!-- slide -->

# TODO

- [ ] Core engine
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

# Why API?

1. Separation of concerns
1. Multiple clients
1. Offline clients
1. Technological independence / decoupling
1. Standards such as JsonAPI
1. Every developer knows what it is
1. Minimal attack surface
1. Future proof (Jamstack and what not)