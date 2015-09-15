(function (global) {
  function timer(el) {
    var count = 0;
    var d = new Date(0,0,0,0,0,0);
    d.setTime(count);

    function pad(num, size) {
      var s = num+"";
      while (s.length < size) {
        s = "0" + s;
      }
      return s;
    }

    function down(t) {
      count += 1000;
      d.setTime(count);
      document.getElementById(el).innerHTML =  pad(d.getMinutes(), 2) + ":" + pad(d.getSeconds(), 2)
    }

    var inter = setInterval(down,1000);

    return {
      stop: function () {
        clearInterval(inter);
      }
    }

  }

  global.timer = timer;
}(this))
