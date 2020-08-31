#
# Lista collections do MongoDB em ordem decrescente
#
# fonte:  https://gist.github.com/joeyAghion/6511184
#
var nomesDasCollections = db.getCollectionNames();
var stats = [];
nomesDasCollections.forEach(function(n) {
  stats.push(db[n].stats());
});
stats = stats.sort(function(a, b) {
  return b['size'] - a['size'];
});
for (var c in stats) {
  var nome = stats[c]['ns'];
  var registros = stats[c]['size'];
  var tamanho = stats[c]['storageSize'];
  print(nome + ": " + registros + 
  	" registros (" + tamanho + " bytes)");
}