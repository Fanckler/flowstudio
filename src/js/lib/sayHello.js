function sayHello() {
  if (navigator.userAgent.toLowerCase().indexOf('chrome') > -1) {
    var args = ['\n %c Made with ❤️ by Rivercode %c http://www.riverco.de/ %c %c 🐳 \n\n', 'border: 1px solid #000;color: #000; background: #fff001; padding:5px 0;', 'color: #fff; background: #1c1c1c; padding:5px 0;border: 1px solid #000;', 'background: #fff; padding:5px 0;', 'color: #b0976d; background: #fff; padding:5px 0;'];
    window.console.log.apply(console, args);

    var sss = ['%c asdasdasd', 'padding: 10px;background: red; border: 1px solid yellow;color: #000;'];
    window.console.log.apply(console, sss);
  } else if (window.console) {
    window.console.log('Made with love ❤️ Riverco.de - http://www.riverco.de/  ❤️');
  }
}
module.exports = sayHello;
