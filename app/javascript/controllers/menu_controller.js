import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = [ "buttons", "menuOpen", "menuClose" ]

  connect () {
    let width = window.innerWidth
    const open = this.menuOpenTarget
    const buttons = this.buttonsTarget
    const closeBtn = this.menuCloseTarget
    if (width > 600) {
        open.style.display = "none"
    } else {
        buttons.style.display = "none"
    }
    addEventListener("resize", () => {
        width = window.innerWidth
        if (width > 600) {
            open.style.display = "none"
            buttons.style.display = "flex"
            closeBtn.style.display = "none"
        } else {
            buttons.style.display = "none"
            open.style.display = "inline"
        }
    } )
  }

  open () {
    const open = this.menuOpenTarget
    const closeBtn = this.menuCloseTarget
    const buttons = this.buttonsTarget
    closeBtn.style.display = "inline"
    open.style.display = "none"
    buttons.style.display = "inline"
  }

  close () {
    const open = this.menuOpenTarget
    const closeBtn = this.menuCloseTarget
    const buttons = this.buttonsTarget
    buttons.style.display = "none"
    closeBtn.style.display = "none"
    open.style.display = "inline"
  }
}
