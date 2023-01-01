import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  connect () {
    const width = window.innerWidth
    console.log(' Hellow Stimulus', this.element, width)
  }

  open () {
    alert('open')
  }

  close () {
    alert('close')
  }
}
