// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!


#let project(title: "",course: "", author: (), body) = {
  // Save heading and body font families in variables.
  let body-font = ("Minion Pro","fangsong")
  let sans-font = ("Calibri","simhei")
  let theme-color = rgb("#004080")
  // Set the document's basic properties.
  set document(author: author.name, title: title)
  set page(
    margin: (left: 15mm, right: 15mm, top: 12mm, bottom: 12mm),
  )

  show heading.where(
    level: 1
  ): it => block(above: 1.05em, below: 0.8em)[
    #set align(left)
    #set text(11pt, weight: "bold", style: "italic", fill: theme-color, font: "Lato")
    #it
    #v(-0.9em)
    #line(length: 100%, stroke: (paint: theme-color, thickness: 0.5pt))
  ]

  show math.equation: set text(font: "Cambria Math", size: 11pt)

  set list(tight: true, spacing: auto, body-indent: 0.5em)
  show list: set block(spacing: 0.8em)
  show enum: set block(spacing: 0.8em)

  // Main body.
  set par(justify: true, leading: 0.5em, spacing: 0.5em)
  set text(font: sans-font, size: 11pt)
  [#body]
}