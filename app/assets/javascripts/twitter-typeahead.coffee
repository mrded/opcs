$(document).ready ->
  $("input.typeahead").typeahead
    name: "codes",
    remote: "/codes/index.json?search=%QUERY",
    limit: 10,
    template: [
      "<p><strong>{{name}}</strong> - {{description}}</p>",
    ].join(""),
    engine: Hogan

  $(".typeahead.input-sm").siblings("input.tt-hint").addClass "hint-small"
  $(".typeahead.input-lg").siblings("input.tt-hint").addClass "hint-large"
