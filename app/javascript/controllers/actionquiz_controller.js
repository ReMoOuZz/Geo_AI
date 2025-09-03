import { Controller } from '@hotwired/stimulus';
// Connects to data-controller="actionquiz"
export default class extends Controller {

  static values = {
    total: Number,
    messagesnumber: Number,
  };

  static targets = ['replace', 'form', 'input'];

    connect() {
      setTimeout(() => {
        if (this.messagesnumberValue > this.totalValue) {
          this.formTarget.classList.add('d-none');
          this.replaceTarget.classList.remove('d-none');
          this.hideLastQuestion()
          console.log("fin du game")
          this.scrollToElement(this.replaceTarget)
        }
        this.inputTarget.focus();
      }, 50);
    }

    enterValidation(event) {
      if (event.key === "Enter") {
        event.preventDefault();
        this.formTarget.requestSubmit();
      }
    }

    scrollToElement(el) {
      el.scrollIntoView({ behavior: "smooth", block: "center" });
    }

    hideLastQuestion(){
      const questions = document.querySelectorAll(".question")
      console.log("coucou")
      questions[questions.length - 1].classList.add("d-none")
    }
  }
