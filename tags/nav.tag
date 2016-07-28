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
    console.log(riot.route)
    riot.route.create()
    riot.mount()
  }
  r(this.highlightCurrent)

  highlightCurrent(id) {
    self.selectedId = id
    self.update()
  }
</script>
</nav-bar>
