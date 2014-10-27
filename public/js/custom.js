// $(function() {
//
//   var contents = $('.table-of-contents')
//
//   contents.on('scroll', function(e) {
//     if (this.scrollTop > 50) {
//       contents.addClass('fixed-content');
//     };
//   });
//
// });
//
//

var contents = document.getElementById('contents')
window.onscroll = scroll

function scroll () {
  if (window.scrollY >= 300) {
    contents.classList.add('fixed-content')
  }else {
    contents.classList.remove('fixed-content')
  };
}

