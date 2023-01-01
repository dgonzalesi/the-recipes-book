import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  open () {
    alert('open')
  }

  close () {
    alert('close')
  }
}
