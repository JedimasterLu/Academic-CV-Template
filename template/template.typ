// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!

#let theme-color = rgb("#004080")
#let wide = 1.2em
#let middle = 0.8em
#let narrow = 0.5em
#let fontsize = 11pt

#let project(body) = {
  // Save heading and body font families in variables.
  let body-font = ("Minion Pro","fangsong")
  let sans-font = ("Calibri","simhei")
  // Set the page margin.
  set page(
    margin: (left: 15mm, right: 15mm, top: 12mm, bottom: 12mm),
  )
  // Set the heading.
  show heading.where(
    level: 1
  ): it => block(above: wide, below: middle)[
    #set align(left)
    #set text(fontsize, weight: "bold", style: "italic", fill: theme-color, font: "Lato")
    #it
    #v(-0.9em)
    #line(length: 100%, stroke: (paint: theme-color, thickness: 0.5pt))
  ]

  show math.equation: set text(font: "Cambria Math", size: fontsize)

  set list(tight: true, spacing: auto, body-indent: narrow)
  show list: set block(spacing: middle)
  show enum: set block(spacing: middle)

  // Main body.
  set par(justify: true, leading: narrow, spacing: narrow)
  set text(font: sans-font, size: fontsize)
  [#body]
}

#let quartag(title, place, note, time) = {
  block(spacing: middle)[
  #grid(
    columns: (auto, 1fr),
    column-gutter: 1em,
    row-gutter: narrow,
    [#align(left)[* #title *]],[#align(right)[_ #time _]],
    [#align(left)[_ #note _]],[#align(right)[_ #place _]]
  )]
}

#let caption(name, phone, wechat, email, website, address) = {
  align(right)[
    #block(above: 0em, below: 0em, width: 100%-1em)[
      #grid(
        columns: (auto, 1fr),
        column-gutter: 5em,
        [#align(left)[#text(size: 40pt, weight: "bold", font: "Lato",style: "italic", fill: theme-color)[#name]]],
        [#align(right)[
          #set text(size: fontsize, weight: "regular", font: "Calibri",style: "normal")
          #grid(
            columns: (1fr),
            row-gutter: 0.2em,
            [#align(left)[
              #grid(
                columns: (auto,1fr),
                row-gutter: 0.2em,
                column-gutter: 2.5em,
                [#box(image("assets/phone.svg",height: 1em),baseline: 2pt) #phone],
                [#box(image("assets/wechat.svg",height: 1em),baseline: 2pt) #wechat],
                [#box(image("assets/email-outline.svg",height: 1em),baseline: 2pt) #link(email)],
                [#box(image("assets/website.svg",height: 1em),baseline: 2pt) #link(website)[Personal Website]]
              )]],
            [#align(left)[#box(image("assets/map-marker.svg",height: 1em),baseline: 2pt) #address]]
          )
        ]]
      )
    ]
  ]
}

#let capcontent_block(title, place, note, time, content) = {
  align(right)[
    #block(spacing: wide, width: 100%-1em)[
      #quartag(title, place, note, time)
      #align(left)[#content]
    ]
  ]
}

#let bullet_block(content) = {
  align(right)[
    #block(spacing: wide, width: 100%-1em)[#align(left)[#content]]
  ]
}

#let tritable_block(data) = {
  align(right)[
    #block(spacing: wide, width: 100%-1em)[
      #align(left)[
        #grid(
          columns: (auto, auto, 1fr),
          row-gutter: middle,
          column-gutter: 2em,
          ..for item in data {
            ([*#item.at(0)*], [#item.at(1)], [#align(right)[#item.at(2)]])
          }
        )
      ]
    ]
  ]
}

#let dualtable_block(data) = {
  align(right)[
    #block(spacing: wide, width: 100%-1em)[
      #align(left)[
        #grid(
          columns: (auto, 1fr),
          row-gutter: middle,
          column-gutter: 2em,
          ..for item in data {
            ([*#item.at(0)*], [#item.at(1)])
          }
        )
      ]
    ]
  ]
}