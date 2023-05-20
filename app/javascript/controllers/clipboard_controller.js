import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    contentsToCopy: String
  }

  connect() {
    this.copy()
  }

  async copy() {
    await navigator.clipboard.writeText(this.contentsToCopyValue)

    const oldText = this.element.textContent;
    this.element.textContent = "🍄 Copied!"
    setTimeout(() => { this.element.textContent = oldText }, 2000)
  }
}
