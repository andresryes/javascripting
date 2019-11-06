const fs = require('fs')

file = process.argv[2]

bf = fs.readFileSync(file)

str = bf.toString()

console.log(str.split('\n').length-1)