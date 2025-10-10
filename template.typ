#import "@preview/glossy:0.8.0": *

#let school_notes(
  title: "Untitled Notes",
  course: "Course Name",
  date: "No Date",
  author: "Sibald Hulselmans",
  glossary-data: none,
  body
) = {
  // Document setup
  set document(author: author, title: title)
  set page(
    paper: "a4",
    margin: (left: 20mm, right: 20mm, top: 25mm, bottom: 25mm),
    header:  [
      #set align(center)
      #text(10pt)[#course | #date],
    ],
    footer: context [
      #set align(center)
      #counter(page).display("1")
    ]
  )
  set text(font: "New Computer Modern", size: 11pt)
  set heading(numbering: "1.")

  // Title block
  align(center)[
    #text(16pt, weight: "bold")[#title]
    #v(0.5em)
    #text(12pt)[#course - #author]
    #v(1em)
  ]

  show: init-glossary.with(glossary-data, term-links: true)

  // Content
  body

  if glossary-data != none {
    glossary(title: "Notes Glossary", sort: true)
  }
}

#let note_block(title: "Note", content: none) = {
  block(
    fill: rgb("#e6f3ff"),
    inset: 10pt,
    radius: 5pt,
    width: 100%,
    [
      *#title* \
      #content
    ]
  )
}

#let definition(title: "Definition", term: none, content: none) = {
  block(
    fill: rgb("#f0fff0"),
    inset: 10pt,
    radius: 5pt,
    width: 100%,
    [
      *Definition: #title* \
      #if term != none [#emph(term): ]#content
    ]
  )
}
