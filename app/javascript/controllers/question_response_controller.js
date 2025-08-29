import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="question-response"
export default class extends Controller {
  static targets = ["timer", "answer", "question", "timerContainer"]
  static values = { duration: Number }

  connect() {
    this.form = this.element.querySelector('form')
    this.answerShown = false
    this.submitted = false
    this.autoSubmitting = false
    this.remaining = this.durationValue || 10
    this.renderTimer()
    this.startTimer()

    this.answerTarget.classList.add("result_container_hidden")
    this.questionTarget.classList.remove("quiz-container-hidden")
    this.timerContainerTarget.classList.remove("quiz-toolbar-hidden")

    console.log("[question-response] connect", this.element)
  }
  disconnect() {
     this.stopTimer()
    console.log("[question-response] disconnect", this.element)
  }

  startTimer() {
    this.interval = setInterval(() => {
      this.remaining -= 1
      this.renderTimer()

      if (this.remaining <= 0) {
        this.stopTimer()
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
    if (!this.hasTimerTarget) return
    const s = Math.max(this.remaining, 0)
    const m = Math.floor(s / 60)
    const ss = String(s % 60).padStart(2, "0")
    this.timerTarget.textContent = `${m}:${ss}`
  }

  onSubmit(event) {
    if (this.autoSubmitting) return
    event.preventDefault()
    this.stopTimer()
    this.showAnswerAndSubmitLater()
  }

  showAnswerAndSubmitLater() {
    if (this.answerShown || this.submitted) return

    if (this.hasAnswerTarget) {
      this.questionTarget.classList.add("quiz-container-hidden")
      this.answerTarget.classList.remove("result_container_hidden")
      this.timerContainerTarget.classList.add("quiz-toolbar-hidden")
      this.answerShown = true
      setTimeout(() => this.submitNow(), 5000);
    }
  }

  submitNow() {
    if (this.submitted) return
    this.submitted = true
    this.autoSubmitting = true
    this.form.requestSubmit()
  }
}
