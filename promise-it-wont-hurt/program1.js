var time = new Promise(resolve => setTimeout(resolve, 300));

time.then(function() {
    console.log("TIMED OUT!")
})