function attachTitle(string) {
  return 'DR. ' + string
}
var promise = new Promise(function(resolve,reject) {
  resolve('MANHATTAN')
})
.then(attachTitle)
.then(console.log)