var fs = require('fs')

var path = process.argv[2];
var content = fs.readFile(path, 'utf-8', function(err, content) {
    if (!err) {
      console.log(content.split('\n').length - 1);
    }
  }
);
