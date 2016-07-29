<nav-bar>

  <a each={ links } href="/{ url }" class={ selected: parent.selectedId === url }>
  { name }
  </a>

<script>
  let self = this

  self.data = [
    { id: '', name: "T", url: "" , tag: "today"},
    { id: '1', name: "M", url: "month", tag: "this-month"},
    { id: '2', name: "Y", url: "year" , tag: "this-year"}
  ]
  self.page = self.data[0]

  riot.route(function(id) {
    let currentTag = self.data.filter(function(r) { return r.id == id })
    riot.mount(currentTag.tag)
  });
</script>
</nav-bar>
