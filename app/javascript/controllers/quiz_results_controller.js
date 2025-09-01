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

      if(percentage >= 100) {
        this.trophyTarget.innerHTML = '<i class="fa-solid fa-gem" style="color: #41D8CB; font-size: 5rem"></i>'
        this.messageTarget.textContent = "Tu es un géographe hors pair. Essaie de maintenir ce niveau en jouant en mode difficile"
      } else if (percentage >= 80) {
        this.trophyTarget.innerHTML = '<i class="fa-solid fa-medal" style="color: #E6BE1B; font-size: 5rem"></i>'
        this.messageTarget.textContent = "Tu maîtrises la géographie. Nous te recommandons de jouer à GeoBattle en mode difficile"
      } else if (percentage >= 60) {
        this.trophyTarget.innerHTML = '<i class="fa-solid fa-medal" style="color: #616161ff font-size: 5rem"></i>'
        this.messageTarget.textContent = "Tu n'es plus un débutant, tu peux commencer à jouer à GeoBattle en mode intermédiaire"
      } else if (percentage >= 40) {
        this.trophyTarget.innerHTML = '<i class="fa-solid fa-medal" style="color: #CE8946; font-size: 5rem"></i>'
        this.messageTarget.textContent = "Il te faut davantage d'entraînement en mode débutant sur GeoBattle !"
      } else {
        this.trophyTarget.innerHTML = '<i class="fa-solid fa-poop" style="color: #614e1a; font-size: 5rem"></i>'
        this.messageTarget.textContent = "Il te manque un peu de connaissances en géographie, tout n'est pas perdu, il faut t'entrainer !"
      }
  }
}
