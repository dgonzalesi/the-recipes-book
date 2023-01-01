import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  connect () {
    console.log(' Hellow Stimulus', this.element)
  }

  open () {
    alert('open')
  }

  close () {
    alert('close')
  }
}
