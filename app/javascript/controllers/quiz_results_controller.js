import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="quiz-results"
export default class extends Controller {
  static targets = ["scoreDisplay", "trophy", "message", "percentage"]
  static values = {
    score: Number,
    total: Number
  }

  connect() {
    console.log("Quiz resultats connecté")
    console.log("Score:", this.scoreValue, "Total:", this.totalValue)

      const score = this.scoreValue
      console.log("Score:", score)
      const total = this.totalValue
      console.log("Total:", total)
      const percentage = Math.round((score / total) * 100)
      console.log("percentage:", percentage)

      if(percentage >= 80) {
        this.trophyTarget.innerHTML = '<i class="fa-solid fa-trophy" style="color: #FFD43B;"></i>'
        this.messageTarget.textContent = "Excellent ! tu  maîtrise la géographie !"
      } else if (percentage >= 60) {
        this.trophyTarget.innerHTML = '<i class="fa-solid fa-medal" style="color: #c0c0c0;"></i>'
        this.messageTarget.textContent = "Bien joué ! Continue comme ça !"
      } else {
        this.trophyTarget.innerHTML = '<i class="fa-solid fa-medal" style="color: #614e1a;"></i>'
        this.messageTarget.textContent = "Pas mal ! Un peu de révision et ce sera parfait !"
        
      }
  }
}