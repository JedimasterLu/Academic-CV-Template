#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with()

#caption(
  "My Name",
  "+86 xxxxxxxxxxx",
  "xxxxxx",
  "name@sjtu.edu.cn",
  "https://mywebsite.github.io",
  "800 Dongchuan Road, Minghang District, Shanghai"
)

= Education

#capcontent_block(
  [Bachelor of Engineering in Material Science and Engineering],
  [Shanghai Jiao Tong University],
  [Undergraduate program],
  [Sep 2021 – Expected Jun 2025],
  [
    - GPA: ...
    - Relevant Courses: ...
  ]
)

= Selected Publications

#bullet_block()[
  - xxx
  - xxx
]

#text(size: 0.9*fontsize)[
  #h(1em) Note: \* corresponding author, $dagger$ equal contribution
]

= Research and Project Experience

#capcontent_block(
  [My CV template],
  [Shanghai Jiao Tong University],
  [A CV template for graduate application],
  [Sep 2023 – Present],
  [
    - Description of the research project.
    - Key contributions and findings.
  ]
)

= Relevant Work Experience

#capcontent_block(
  [Internship],
  [Zhejiang, China],
  [xxx Co., Ltd.],
  [Sep 2024],
  [
    Description of the internship role.
  ]
)

= Awards

#tritable_block((
  ("National Scholarship", "Ministry of Education", "2022"),
  ("Merit Scholarship", "University Committee", "2021"), 
  ("Excellence Award", "Academic Department", "2020")
))

= Extracurricular Activities

#capcontent_block(
  [Debating],
  [SJTU],
  [Core member of the college debate team],
  [Sep 2021 – Present],
  [
    Description of the extracurricular activity.
  ]
)

= Technical Skills

#dualtable_block((
  ("Programming", "Python, C++, MATLAB, SQL"),
  ("Softwares", "AutoCAD, SolidWorks, OriginLab, ChemOffice"),
  ("Characterization", "SEM, TEM, XRD, FTIR"),
  ("Language Proficiency", "English (TOEFL ; GRE ), Mandarin (Native speaker)")
))

= Soft Skills

#dualtable_block((
  ("Leadership", "Led a team of 5 in a project"),
  ("Communication", "Effective verbal and written communication skills"),
  ("Problem Solving", "Analytical thinking and problem-solving abilities")
))

  