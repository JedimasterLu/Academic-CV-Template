#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "My Name",
  course: "",
  author: (name: "My Name", email: "name@outlook.com", stuNum: "521000000000"),
)

#let theme-color = rgb("#004080")

#let quartag(title, place, note, time) = {
  block(spacing: 0.8em)[
  #grid(
    columns: (auto, 1fr),
    column-gutter: 1em,
    row-gutter: 0.5em,
    [#align(left)[* #title *]],[#align(right)[_ #place _]],
    [#align(left)[_ #note _]],[#align(right)[_ #time _]]
  )]
}

#let quartag1(title, place, note, time) = {
  block(spacing: 0.8em)[
  #grid(
    columns: (auto, 1fr),
    column-gutter: 1em,
    row-gutter: 0.5em,
    [#align(left)[* #title *]],[#align(right)[_ #time _]],
    [#align(left)[_ #note _]],[#align(right)[_ #place _]]
  )]
}

#align(right)[
  #block(above: 0em, below: 1em, width: 100%-1em)[
    #grid(
      columns: (auto, 1fr),
      column-gutter: 4em,
      [#align(left)[#text(size: 40pt, weight: "bold", font: "Lato",style: "italic", fill: theme-color)[My Name]]],
      [#align(right)[
        #set text(size: 11pt, weight: "regular", font: "Calibri",style: "normal")
        #grid(
          columns: (1fr),
          row-gutter: 0.2em,
          [#align(left)[
            #grid(
              columns: (auto,1fr),
              row-gutter: 0.2em,
              column-gutter: 2.5em,
              [#box(image("phone.svg",height: 1em),baseline: 2pt) +86 xxxxxxxxxxx],
              [#box(image("wechat.svg",height: 1em),baseline: 2pt) xxxxxx],
              [#box(image("email-outline.svg",height: 1em),baseline: 2pt) #link("name@sjtu.edu.cn")],
              [#box(image("website.svg",height: 1em),baseline: 2pt) #link("https://mywebsite.github.io")[Personal Website]]
            )]],
          [#align(left)[#box(image("map-marker.svg",height: 1em),baseline: 2pt) 800 Dongchuan Road, Minghang District, Shanghai]]
        )]
      ]
    )
  ]
]

= Education

#align(right)[
  #block(spacing: 1.2em, width: 100%-1em)[
  #quartag1([Bachelor of Engineering in Material Science and Engineering], [Shanghai Jiao Tong University],[Undergraduate program],[Sep 2021 – Expected Jun 2025])
  #align(left)[
    - Student of _Hsu Tzuyao_ Honor Class in School of Material Science and Engineering (SMSE)
    - GPA: ...
    - Relevant Courses: ...
  ]
  ]
]


= Selected Publications

#align(right)[
  #block(spacing: 1.2em, width: 100%-1em)[
    #align(left)[
      - xxx
    ]
  ]
]

= Research and Project Experience

#align(right)[

  #block(spacing: 1.2em, width: 100%-1em)[
  
  #quartag1([My CV template], [Shanghai], [A CV template for graduate application], [Jun 2023 – Present])

  #align(left)[
    - Description of the project.
  ]]
]

= Relevant Work Experience

#align(right)[
  #block(spacing: 1.2em, width: 100%-1em)[
  #quartag1([Internship], [Zhejiang, China],[xxx Co., Ltd.],[Sep 2024])
  #align(left)[
    Description
  ]
  ]
]

= Awards

#align(right)[
  #block(spacing: 1.2em, width: 100%-1em)[
    #align(left)[
      #grid(
        columns: (auto,auto,1fr),
        row-gutter: 0.8em,
        column-gutter: 2em,
        [*Scholarship*],[Awarded by Administrative Committee],[#align(right)[2022]],
      )
    ]
  ]
]

= Extracurricular Activities

#align(right)[
  #block(spacing: 1.2em, width: 100%-1em)[
  #quartag1([Debating], [SJTU],[Core member of the college debate team],[Sep 2021 – Present])
  #align(left)[
    Description
  ]]
]

= Technical Skills

#align(right)[
  #block(spacing: 1.2em, width: 100%-1em)[
    #align(left)[
      #grid(
        columns: (auto,1fr),
        row-gutter: 0.8em,
        column-gutter: 1em,
        [*Programming*],[Proficiency in ...],
        [*Softwares*],[Familiar with ...],
        [*Characterization*],[Familiar with ...],
        [*Language Proficiency*],[English (TOEFL ; GRE ), Mandarin (Native speaker).]
      )
    ]
  ]
]

= Soft Skills

#align(right)[
  #block(spacing: 1.2em, width: 100%-1em)[
    #align(left)[
      #grid(
        columns: (auto,1fr),
        row-gutter: 0.8em,
        column-gutter: 2em,
        [*Volunteering*],[Description]
      )
    ]
  ]
]

  