db.cacheDeDoisdocumentos.find().forEach(function(obj)
{
  var tamanhoDoDocumento = Object.bsonsize(obj);
  print(obj.nome+' - tamanho: '+tamanhoDoDocumento+' bytes');
})
