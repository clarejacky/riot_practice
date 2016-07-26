<app>
  <todo></todo>

  <script>
    let currentPage = null;

    function goTo(path) {
      if (currentPage) {
        currentPage.unmount(true);
      }
      const routes = [
        {path: goal, route: goal, nav: true}
      ]
      currentPage = riot.mount(path)
    }

    riot.route(goTo);
    riot.route.exec(goTo);
  </script>
</app>
