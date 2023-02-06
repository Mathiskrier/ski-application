import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="resort-list"

export default class extends Controller {
  static targets= ["spotList"]
  connect() {
    console.log("hello from resort_list_controller.js")
  }
  //data-action=click->resort-list#show
  //data-resort-list-target="link"
  show() {
    console.log("connected with button!")
    this.spotListTarget.classList.toggle("hidden")
  }
}
