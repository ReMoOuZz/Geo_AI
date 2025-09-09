import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="question-response"
export default class extends Controller {
  static targets = ["timer", "answer", "question", "timerContainer", "progressBar", "correctAnswer", "skip", "questionNumer"]
  static values = { duration: Number }

  connect() {
    this.form = this.element.querySelector('form')
    this.answerShown = false
    this.submitted = false
    this.autoSubmitting = false
    this.total = this.durationValue || 15
    this.remaining = this.total
    this.renderTimer()
    this.startTimer()
    this.progressBarTarget.style.setProperty('--duration', `${this.total}s`);
    this.answerTarget.classList.add("result_container_hidden")
    this.timerContainerTarget.classList.remove("quiz-toolbar-hidden")
    this.updateProgressA11y(0)
  }
  disconnect() {
     this.stopTimer()
  }

  startTimer() {
    this.stopTimer()
    this.interval = setInterval(() => {
      this.remaining -= 1
      this.renderTimer()

      if (this.remaining <= 0) {
        this.remaining = 0
        this.stopTimer()
        this.answerTarget.insertAdjacentHTML("afterbegin", `<div class="answer-false">Temps écoulé !</div>`)
        this.showAnswerAndSubmitLater()
      }
    }, 1000);
  }

    stopTimer() {
    if (this.interval) {
      clearInterval(this.interval)
      this.interval = null
    }
  }

  renderTimer() {
    if (this.hasTimerTarget) {
    const s = Math.max(this.remaining, 0)
    const m = Math.floor(s / 60)
    const ss = String(s % 60).padStart(2, "0")
    this.timerTarget.textContent = `${m}:${ss}`
  }

    if (this.hasProgressBarTarget) {
      const pct = Math.max(0, Math.min(100, (this.remaining / this.total) * 100))
      this.progressBarTarget.style.width = pct + "%"
      this.updateProgressA11y(pct)
    }
  }

  updateProgressA11y(pct) {
    const progressEl = this.progressBarTarget?.parentElement
    if (progressEl && progressEl.getAttribute("role") === "progressbar") {
      progressEl.setAttribute("aria-valuenow", Math.round(pct))
    }
  }

  onSubmit(event) {
    if (this.autoSubmitting) return
    event.preventDefault()
    this.stopTimer()
    const rigthAnswer = this.correctAnswerTarget.innerText.trim()
    const data = new FormData(document.querySelector("form"))
    const rawData = data.get('user_answer[content]')
    if (rawData != null) {
      const userAnswer = data.get('user_answer[content]').trim()
      let result = ""
      if (userAnswer === rigthAnswer){
        result = "Bonne réponse ! Bravo ! "
      } else {
        result = "C'est faux !"
      }
      this.answerTarget.insertAdjacentHTML("afterbegin", `<div class="answer-${(userAnswer === rigthAnswer)}">${result}</div>`)
    } else {
      this.answerTarget.insertAdjacentHTML("afterbegin", `<div class="answer-false">Vous n'avez pas choisi de réponse</div>`)
    }
    this.showAnswerAndSubmitLater()
  }

  showAnswerAndSubmitLater() {
    if (this.answerShown || this.submitted) return

    if (this.hasAnswerTarget) {
      this.questionTarget.classList.add("quiz-container-hidden")
      this.answerTarget.classList.remove("result_container_hidden")
      this.timerContainerTarget.classList.add("quiz-toolbar-hidden")
      this.answerShown = true
      setTimeout(() => this.submitNow(), 7500);
    }
  }

  skip(event) {
    event.preventDefault()
    this.stopTimer()
    this.answerShown = true
    this.submitNow()
  }

  submitNow() {
    if (this.submitted) return
    this.form = this.element.querySelector('form')
    this.submitted = true
    this.autoSubmitting = true
    this.form.requestSubmit()
  }
}
