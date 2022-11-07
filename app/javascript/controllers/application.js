import { Application } from "@hotwired/stimulus"
import { cable } from "@hotwired/turbo-rails"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application
window.cable = cable

export { application }
