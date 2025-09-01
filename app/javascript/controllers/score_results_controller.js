import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["trophy", "message", "scoreText", "correctCount", "incorrectCount", "totalCount", "advice"]
  static values = {
    percentage: Number,
    correct: Number,
    total: Number
  }

connect() {
  console.log("score connecté")
    const percentage = this.percentageValue
    const correct = this.correctValue
    const incorrect = this.totalValue - correct
    const total = this.totalValue

    if(percentage == 100) {
      this.trophyTarget.innerHTML = '<i class="fa-solid fa-gem" style="color: #74C0FC;"></i>'
      this.messageTarget.textContent = "Parfait !"
      this.adviceTarget.textContent = "Tu a satteint la perfection"
    } else if(percentage >= 80) {
      this.trophyTarget.innerHTML = '<i class="fa-solid fa-medal" style="color: #FFD43B;"></i>'
      this.messageTarget.textContent = "Excellent"
      this.adviceTarget.textContent = "Whaou ! Trophé d'Or ! encore un petite effort pour le diamant !"
    } else if(percentage >= 70) {
      this.trophyTarget.innerHTML = '<i class="fa-solid fa-medal" style="color: #757575ff;"></i>'
      this.messageTarget.textContent = "Pas mal du tout !"
      this.adviceTarget.textContent = "Bon travail ! Continue tes efforts"
    } else if(percentage >= 30) {
      this.trophyTarget.innerHTML = '<i class="fa-solid fa-medal" style="color: #9a7f1fff;"></i>'
      this.messageTarget.textContent = "Encore un peu de travail !"
      this.adviceTarget.textContent = "C'est un début, ne te relache pas !"
    } else {
      this.trophyTarget.innerHTML = '<i class="fa-solid fa-poo" style="color: #513c1f;"></i>'
      this.messageTarget.textContent = "T'es serieux ?!"
      this.adviceTarget.textContent = "Tu a satteint la perfection de l'ignorance !"
    }
    this.animateCounters(correct, incorrect, total)
  }
  animateCounters(correct, incorrect, total) {
    this.animateNumber(this.correctCountTarget, correct)
    this.animateNumber(this.incorrectCountTarget, incorrect)
    this.animateNumber(this.totalCountTarget, total)
  }

  animateNumber(element, target) {
    let current = 0
    const increment = target / 30

    const timer = setInterval(() => {
      current += increment
      if (current >= target) {
        element.textContent = target
        clearInterval(timer)
      } else {
        element.textContent = Math.round(current)
      }
    },30)
  }
}

