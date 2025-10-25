#import "@local/school-notes:0.1.0": school_notes, note_block, definition, formula

#let glossaries = (
  html: (
    short: "HTML",
    long: "Hypertext Markup Language",
    description: "A standard language for creating web pages",
    group: "Web"
  ),
  css: (
    short: "CSS",
    long: "Cascading Style Sheets",
    description: "A stylesheet language used for describing the presentation of a document",
    group: "Web"
  ),
  tps: (
    short: "TPS",
    long: "test procedure specification",
    description: "A formal document describing test steps and expected results",
    // Optional: Override automatic pluralization
    plural: "TPSes",
    longplural: "test procedure specifications"
  ),
  WWW: "World Wide Web", // concise entry with only short: long
)

#show: school_notes.with(
  title: "Mathematics 101 Notes",
  course: "Mathematics 101",
  date: "October 10, 2025",
  glossary-data: glossaries,
  // or glossary-data: yaml("glossary.yaml")
)

= Lecture 1: Introduction to Calculus

#note_block(title: "Key Concepts", content: [
  - Calculus studies change and accumulation.
  - Two main branches: differential and integral calculus.
])

= Solar System Exploration, 1950s – 1960s

- [ ] Mercury
- [x] Venus
- [x] Earth (Orbit/Moon)
- [x] Mars
- [-] Jupiter
- [/] Saturn
- [ ] Uranus
- [!] Neptune
- [?] Comet Halley
- [N] Oort Cloud

#definition(
  title: "Derivative",
  term: "der",
  content: [Measures how a function @html changes as its input changes.]
)

#definition(
  title: "Integral",
  term: "int",
  content: [Represents the total accumulation of a quantity.]
)

= Lecture 2: Limits

#note_block(title: "Limit Basics", content: [
  - A limit describes the behavior of a function as it approaches a point.
  - Notation: $lim_(x->a) f(x)$.
])

#formula(title: "Ohm", content: [
  $R = U/I$
])
