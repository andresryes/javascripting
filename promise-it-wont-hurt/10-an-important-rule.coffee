var Q = require('q')
function alwaysThrows() {
  throw Error("OH NOES")
}
function iterate(integer=1) {
  console.log(integer)
  return integer+1
}
Q.fcall(iterate)
.then(iterate)
.then(iterate)
.then(iterate)
.then(iterate)
.then(alwaysThrows)
.then(iterate)
.then(iterate)
.then(iterate)
.then(iterate)
.then(iterate)

.catch(function(error) {
  console.log(error.message);
})