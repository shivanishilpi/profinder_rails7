import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="practice"
export default class extends Controller {

  static targets = ["name"]
  connect() {
  }

  // greet(){
  //   const element = this.nameTarget.value
  //   console.log(`HEllo, ${element}!`)
  // }

  greet(){
    document.getElementById('demo').innerHTML= (`Hello, ${this.name}!`)
  }

  get name(){
    return this.nameTarget.value
  }
}
