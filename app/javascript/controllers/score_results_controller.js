import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["trophy", "message", "scoreText", "correctCount", "incorrectCount", "difficultyIcon", "correctBar", "incorrectBar", "categoryIcon", "regionIcon"]
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

    
    if (percentage == 100) {
      this.trophyTarget.innerHTML = '<i class="fa-solid fa-gem" style="color: #74C0FC;"></i>'
      this.messageTarget.textContent = "Parfait !"
    } else if (percentage >= 80) {
      this.trophyTarget.innerHTML = '<i class="fa-solid fa-medal" style="color: #FFD43B;"></i>'
      this.messageTarget.textContent = "Excellent"
    } else if (percentage >= 70) {
      this.trophyTarget.innerHTML = '<i class="fa-solid fa-medal" style="color: #757575ff;"></i>'
      this.messageTarget.textContent = "Pas mal du tout !"
    } else if (percentage >= 30) {
      this.trophyTarget.innerHTML = '<i class="fa-solid fa-medal" style="color: #9a7f1fff;"></i>'
      this.messageTarget.textContent = "Encore un peu de travail !"
    } else {
      this.trophyTarget.innerHTML = '<i class="fa-solid fa-poo" style="color: #513c1f;"></i>'
      this.messageTarget.textContent = "T'es sérieux ?!"
    }

    
    this.animateCounters(correct, incorrect, total)
    this.animateProgressBars(correct, incorrect, total)
    this.setDifficultyIcon()
    this.setCategoryIcon()
    this.setRegionIcon()
  }

  animateCounters(correct, incorrect, total) {
    this.animateNumber(this.correctCountTarget, correct)
    this.animateNumber(this.incorrectCountTarget, incorrect)
  }

  
  animateProgressBars(correct, incorrect, total) {
    const correctPercentage = total > 0 ? (correct / total) * 100 : 0
    const incorrectPercentage = total > 0 ? (incorrect / total) * 100 : 0

  
    setTimeout(() => {
      this.animateProgressBar(this.correctBarTarget, correctPercentage)
    }, 300)

    setTimeout(() => {
      this.animateProgressBar(this.incorrectBarTarget, incorrectPercentage)
    }, 600)
  }


  animateProgressBar(element, targetPercentage) {
    let currentWidth = 0
    const increment = targetPercentage / 60 

    const timer = setInterval(() => {
      currentWidth += increment
      if (currentWidth >= targetPercentage) {
        element.style.width = targetPercentage + '%'
        clearInterval(timer)
      } else {
        element.style.width = currentWidth + '%'
      }
    }, 16) 
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
    }, 30)
  }

  setDifficultyIcon() {
    if (!this.hasDifficultyIconTarget) return

    const difficulty = this.difficultyIconTarget.dataset.difficulty
    let icon = ""

    if (difficulty === "facile") {
      icon = '<i class="fa-solid fa-leaf" style="color: #63E6BE;"></i> '
    } else if (difficulty === "intermediaire") {
      icon = '<i class="fa-solid fa-fire" style="color: #FFA500;"></i> '
    } else if (difficulty === "difficile") {
      icon = '<i class="fa-solid fa-skull" style="color: #f44336;"></i> '
    }

    this.difficultyIconTarget.innerHTML = icon + this.difficultyIconTarget.textContent
  }

  setCategoryIcon() {
    if (!this.hasCategoryIconTarget) return

    const category = this.categoryIconTarget.dataset.category
    let icon = ""

    if (category === "Régions et villes du monde") {
      icon = '<i class="fa-solid fa-city" style="color: #FFD43B;"></i> '
    } else if (category === "Géopolitique") {
      icon = '<i class="fa-solid fa-landmark" style="color: #63E6BE;"></i> '
    } else if (category === "Drapeaux") {
      icon = '<i class="fa-solid fa-flag" style="color: #63E6BE;"></i> '
    } else if (category === "cultures") {
      icon = '<i class="fa-solid fa-masks-theater" style="color: #f3c316;"></i> '
    } else if (category === "Hydrographie et reliefs") {
      icon = '<i class="fa-solid fa-globe" style="color: #63E6BE;"></i> '
    }

    this.categoryIconTarget.innerHTML = icon + this.categoryIconTarget.textContent
  }

  setRegionIcon() {
    if (!this.hasRegionIconTarget) return

    const region = this.regionIconTarget.dataset.region
    console.log("Région reçue:", region)
    console.log("Type de région:", typeof region)
    let icon = ""

    if (region === "amérique") {
      icon = '<i class="fa-solid fa-earth-americas" style="color: #1d302a;"></i> '
    } else if (region === "afrique") {
      icon = '<i class="fa-solid fa-earth-africa" style="color: #1d302a;"></i> '
    } else if (region === "asie") {
      icon = '<i class="fa-solid fa-earth-asia" style="color: #1d302a;"></i> '
    } else if (region === "europe") {
      icon = '<i class="fa-solid fa-earth-europe" style="color: #1d302a;"></i> '
    } else if (region === "océanie") {
      icon = '<i class="fa-solid fa-earth-oceania" style="color: #1d302a;"></i> '
    }
    console.log("Icône générée:", icon)
    this.regionIconTarget.innerHTML = icon + this.regionIconTarget.textContent
  }
}