/**
 * Bundle JS File
 *
 * @package     HostGate
 * @author      NiftyTheme
 * @copyright   Copyright (c) NiftyTheme Limited 2017-2023
 * @version     1.0.0
 * @link        https://themeforest.net/user/niftytheme/
**/

// :: snippet to set the gap value

// Get all elements with the attributes "data-gap-x" or "data-gap-y"
let elements = document.querySelectorAll('[data-gap-x], [data-gap-y]');

// Loop through each element
elements.forEach(element => {
  // Get the value of the "data-gap-x" and "data-gap-y" attributes
  let gapXValue = element.getAttribute('data-gap-x');
  let gapYValue = element.getAttribute('data-gap-y');

  // Check if the element has only the "data-gap-x" attribute
  if (gapXValue && !gapYValue) {
    // Set the CSS "gap" property using the value of "data-gap-x"
    element.style.columnGap = gapXValue;
  }

  // Check if the element has only the "data-gap-y" attribute
  if (gapYValue && !gapXValue) {
    // Set the CSS "gap" property using the value of "data-gap-y"
    element.style.rowGap = gapYValue;
  }

  // Check if the element has both the "data-gap-x" and "data-gap-y" attributes
  if (gapXValue && gapYValue) {
    // Set the CSS "gap" property using the values of "data-gap-x" and "data-gap-y"
    element.style.columnGap = gapXValue;
    element.style.rowGap = gapYValue;
  }
});
/* --------------------------------------------------------------------- */

(function ($) {

  // :: Open and close (#theme-navbar-links)
  $('#open-links-btn').on('click', function () { $('#theme-navbar-links').addClass('open-links'); });
  $('#close-links-btn').on('click', function () { $('#theme-navbar-links').removeClass('open-links'); });
  // --------------------------------------------------------------

  // :: Remove action for (a) that have (.th-dropdown-menu) and (.mega-menu)
  $('#theme-navbar .link.has-dropdown-menu > a').on('click', function (e) { e.preventDefault(); });
  $('#theme-navbar .link.has-mega-menu > a').on('click', function (e) { e.preventDefault(); });
  // --------------------------------------------------------------

  // :: Show and hide (.dropdown-menu)
  $('#theme-navbar .link.has-dropdown-menu > a').on('click', function () {
    $(this).parent().siblings().removeClass('open-dropdown-menu');
    $(this).parent().toggleClass('open-dropdown-menu');
  });

  // :: Hide (.th-dropdown-menu) when clicking outside
  $(document).mouseup(function (e) {
    const dropdownMenu = $("#theme-navbar .link.has-dropdown-menu");
    if (!dropdownMenu.is(e.target) && dropdownMenu.has(e.target).length === 0) { dropdownMenu.removeClass('open-dropdown-menu'); }
  });
  // --------------------------------------------------------------

  // :: Open (.user-dropdown-menu)
  $('#user-menu-btn > img').on('click', function () { $('#user-menu-btn').toggleClass('open') });
  $(document).mouseup(function (e) {
    const userMenu = $("#user-menu-btn");
    if (!userMenu.is(e.target) && userMenu.has(e.target).length === 0) { userMenu.removeClass('open'); }
  });
  // --------------------------------------------------------------

  // :: Footer
  $('.theme-footer .list-title').on('click', function () {
    $(this).parent().toggleClass('open-list');
  });
  /* --------------------------------------------------------------------- */

}(jQuery));