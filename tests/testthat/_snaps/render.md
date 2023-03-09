# as.tags.lorem() makes htmltools tags

    Code
      htmltools::div(p3)
    Output
      <div>
        <p>Elit tellus lacus.</p>
        <p>Adipiscing sociis porta.</p>
        <p>Elit euismod!</p>
      </div>

---

    Code
      htmltools::tags$ul(as.tags(p3, htmltools::tags$li))
    Output
      <ul>
        <li>Elit tellus lacus.</li>
        <li>Adipiscing sociis porta.</li>
        <li>Elit euismod!</li>
      </ul>

