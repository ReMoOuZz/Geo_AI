import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["slide", "counter"]
  static values = { total: Number }

  connect() {
    this.currentIndex = 0
    this.updateCounter()
  }

  next() {
    if (this.currentIndex < this.totalValue - 1) {
      this.currentIndex++
      this.updateSlides()
    }
  }

  previous() {
    if (this.currentIndex > 0) {
      this.currentIndex--
      this.updateSlides()
    }
  }

  updateSlides() {
    this.slideTargets.forEach((slide, index) => {
      slide.classList.toggle('active', index === this.currentIndex)
    })
    this.updateCounter()
  }

  updateCounter() {
    if (this.hasCounterTarget) {
      this.counterTarget.textContent = `${this.currentIndex + 1} / ${this.totalValue}`
    }
  }
}