<nav-bar>

  <a each={ links } href="/{ url }" class={ selected: parent.selectedId === url }>
  { name }
  </a>

<script>
  let self = this

  this.links = [
    { name: "T", url: "" , tag: "today"},
    { name: "M", url: "month", tag: "this-month"},
    { name: "Y", url: "year" , tag: "this-year"}
  ]

  let r = () => {
    riot.route.create()
    riot.mount
  }
  r(this.highlightCurrent)

  let plunkrRandomUrl = location.pathname.replace(new RegExp('/', 'g'), '')

  highlightCurrent(id) {
    // Plunker confuses routing initially
    if ( plunkrRandomUrl == id ) { id = '' }

    self.selectedId = id
    self.update()
  }
</script>
</nav-bar>
