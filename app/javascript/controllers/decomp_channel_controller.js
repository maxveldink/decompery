import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    id: String,
    userId: String
  }

  async connect() {
    this.subscription = await window.cable.subscribeTo(this.channel)
  }

  disconnect() {
    if (this.subscription) this.subscription.unsubscribe()
  }

  get channel() {
    const channel = "DecompChannel"
    const id = this.idValue
    const userId = this.userIdValue
    return { channel, id, user_id: userId }
  }
}
