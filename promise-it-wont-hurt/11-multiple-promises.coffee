// function all(func, func2) {
//   return new Promise (function (resolve, reject) {
//     return resolve([func(), func2()])
//   })
// }

function all(promise1, promise2) {
  var result = []
  return new Promise(function(resolve, reject) {
    return promise1.then(function(response) {
  
      result.push(response)
      return promise2.then(function(response) {

        result.push(response)
        resolve(result)
      })
    })
  })

}


all(getPromise1(), getPromise2())
.then(function(response) {
  console.log(response)
})


// getPromise1().then(console.log)
//

// function all(promise1, promise2) {
//   var counter = 0
//   var results = []
//
//   return new Promise(function (resolve, reject) {
//     promise1.then(function (result) {
//       console.log('inside promise1')
//       results.push(result)
//       counter++
//     })
//
//     promise2.then(function (result) {
//       console.log('inside promise2')
//       results.push(result)
//       counter++
//     })
//
//     while (true) {
//       if (counter === 2) {
//         console.log('here');
//         resolve(results)
//         break
//       }
//     }
//   })
// }