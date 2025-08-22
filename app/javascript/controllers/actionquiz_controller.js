import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="actionquiz"
export default class extends Controller {
  static values = {
    total: Number,
    messagesnumber: Number,
  }

  static targets = ["label", "form"]

  connect() {
    // console.log(this.labelTarget)
    console.log(this.formTarget.action)
  }

  changeText() {
    if (this.messagesnumberValue === this.totalValue) {
      this.element.textContent = "Terminer le quiz"
      console.log(this.messagesnumberValue, this.totalValue)
    }
  }
}
