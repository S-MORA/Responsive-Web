$( document ).ready(function() {
let urlParams = new URLSearchParams(window.location.search);
let url = urlParams.get('pokemon');

// changes colors & imgs to appropriate pokemon
$("body").addClass(url)
$(".poke-name").text(url)

console.log(`what up ${url}`)

// changes symbols in stats div
if (url == "charmander") {
  $("#symbol").attr("src","images/fire-symbol.png")
}
else if (url == "squirtle") {
  $("#symbol").attr("src","images/water-symbol.png")
}
else {
  $("#symbol").attr("src","images/regular-symbol.png")
}
// gets data for all pokemon pages from pokemon api

 $.get(`https://pokeapi.co/api/v2/pokemon/${url}/`, function (myResponse) {
   // hp stat
    $("#hp").text(myResponse.stats[5].base_stat)
   // defense stat
    $("#defense").text(myResponse.stats[3].base_stat)
    // attack stat
    $("#attack").text( myResponse.stats[4].base_stat)
  let i = 0;
  let txt = myResponse.abilities[0].ability.name
  let txt2 = myResponse.abilities[1].ability.name
  function typeWriter() {
    if (i < txt.length) {
      $("#ability1").html($("#ability1").html() + txt.charAt(i));
      $("#ability2").html($("#ability2").html() + txt2.charAt(i));
      i++;
      setTimeout(typeWriter, 80);
    }
  }
  typeWriter();
  });

});
