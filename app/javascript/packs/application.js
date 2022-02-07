// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

const Trix = require("trix")
require("@rails/actiontext")
Trix.config.blockAttributes.heading1.tagName = "h3";

import Sortable from 'sortablejs'

/* You may have a few 'require' lines above this already */

require('@popperjs/core')

import 'bootstrap'

// Import the specific modules you may need (Modal, Alert, etc)
import { Tooltip, Popover } from "bootstrap"

// The stylesheet location we created earlier

import '../stylesheets/application';

document.addEventListener('turbolinks:load', () => {

  var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
  var tooltipList = tooltipTriggerList.map(function(tooltipTriggerEl) {
      return new Tooltip(tooltipTriggerEl)
  })

  var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
  var popoverList = popoverTriggerList.map(function(popoverTriggerEl) {
      return new Popover(popoverTriggerEl)
  })



    document.addEventListener('click', () => {
      let element = event.target.closest('.paragraph-content')
      if (!element) return;
  
      element.classList.add('d-none')
      element.nextElementSibling.classList.remove('d-none')
    })
  
    document.addEventListener('click', () => {
      if (!event.target.matches('.cancel')) return;
      event.preventDefault();
  
      let element = event.target.closest('.paragraph-form')
  
      element.classList.add('d-none')
      element.previousElementSibling.classList.remove('d-none')
    })

    let element = document.getElementById('elements')
    Sortable.create(elements, { animation: 150})

  })
  
import "controllers"

