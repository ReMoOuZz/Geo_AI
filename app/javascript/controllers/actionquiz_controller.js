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
        }
        this.element.scrollIntoView({behavior: "smooth", block: "center"})
        this.inputTarget.focus();
      }, 50);
    }

    enterValidation(event) {
      if (event.key === "Enter") {
        event.preventDefault();
        this.formTarget.requestSubmit();
      }
    }
  }
