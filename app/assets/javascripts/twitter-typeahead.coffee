$(document).ready ->
  $("input.typeahead").typeahead
    name: "codes"
    prefetch: "/codes/index.json"
    limit: 10
    template: [
      "<p class='code'>{{name}}</p>",
      "<p class='description'>{{description}}</p>"
    ].join("")
    engine: Hogan

  $(".typeahead.input-sm").siblings("input.tt-hint").addClass "hint-small"
  $(".typeahead.input-lg").siblings("input.tt-hint").addClass "hint-large"
