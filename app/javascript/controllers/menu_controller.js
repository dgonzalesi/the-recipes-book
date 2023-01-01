import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = [ "buttons", "menuOpen" ]

  connect () {
    const width = window.innerWidth
    const element = this.menuOpenTarget
    const buttons = this.buttonsTarget
    if (width > 600) {
        element.style.display = "none"
    } else {
        buttons.style.display = "none"
    }
  }

  open () {
    const element = this.buttonsTarget
    console.log(element.classList.toggle('my_display'))
  }

  close () {
    alert('close')
  }
}
