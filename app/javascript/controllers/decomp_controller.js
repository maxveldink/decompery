import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    decompId: String,
    userId: String
  }

  connect() {
    this.addParticipant()

    document.addEventListener('visibilitychange', () => {
      if (document.visibilityState == 'hidden') {
        this.removeParticipant()
      } else {
        this.addParticipant()
      }
    })
  }

  disconnect() {
    document.removeEventListener('visibilitychange')
  }

  get csrfToken() {
    const element = document.head.querySelector(`meta[name="csrf-token"]`)
    return element.getAttribute("content")
  }

  addParticipant() {
    fetch(`${this.decompIdValue}/participations`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': this.csrfToken
      },
      body: JSON.stringify({ user_id: this.userIdValue })
    }).then((response) => response.json()).then((data) => {
      this.participationId = data.participation_id
    })
  }

  removeParticipant() {
    fetch(`${this.decompIdValue}/participations/${this.participationId}`, {
      method: 'DELETE',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': this.csrfToken
      },
      body: JSON.stringify({ user_id: this.userIdValue }),
      keepalive: true
    })
  }
}
