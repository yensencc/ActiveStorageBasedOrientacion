// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require_tree 
//= require jquery3
//= require bootstrap
//= require rails-social-share-button




  const shareButton = document.querySelector('.share-button');
  const shareDialog = document.querySelector('.share-dialog');
  const closeButton = document.querySelector('.close-button');

  shareButton.addEventListener('click', event => {
    if (navigator.share) { 
     navigator.share({
        title: 'WebShare API Demo',
        url: 'https://codepen.io/ayoisaiah/pen/YbNazJ'
      }).then(() => {
        console.log('Thanks for sharing!');
      })
      .catch(console.error);
      } else {
          shareDialog.classList.add('is-open');
      }
  });

  closeButton.addEventListener('click', event => {
    shareDialog.classList.remove('is-open');
  });

