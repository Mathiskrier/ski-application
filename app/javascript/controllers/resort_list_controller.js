import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="resort-list"

export default class extends Controller {
  connect() {
    console.log("hello from resort_list_controller.js")
  }
  //data-action=click->resort-list#show
  show() {
    console.log("connected with button!")
  }
}
