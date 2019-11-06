var mymodule = require('./make_it_modular_module')

mymodule(process.argv[2], process.argv[3], function (err, list) {
  if (err) {
    return console.log('Error occured: ', err)
  }
  list.forEach(function(elem) {
    console.log(elem)
  })
});
