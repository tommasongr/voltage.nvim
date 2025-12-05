import { Controller } from "@hotwired/stimulus"
import { computePosition, offset, flip, shift, autoUpdate } from "@floating-ui/dom"

export default class extends Controller {
	static targets = ["origin", "floatable"]

	static values = {
		placement: {
			type: String,
			default: "bottom-start"
		},
		offset: {
			type: Number,
			default: 2
		},
		padding: {
			type: Number,
			default: 16
		}
	}

	connect() {
		this.cleanup = null

		if (this.hasFloatableTarget) {
			Object.assign(this.floatableTarget.style, {
				position: "fixed",
				left: "0",
				top: "0",
			})
		}
	}

	disconnect() {
		if (this.cleanup) {
			this.cleanup()
			this.cleanup = null
		}
	}

	originTargetConnected() {
		this.arrange()
	}

	floatableTargetConnected() {
		this.arrange()
	}

	arrange() {
		if (this.hasOriginTarget && this.hasFloatableTarget) {
			if (this.cleanup) {
				this.cleanup()
				this.cleanup = null
				return
			}

			this.cleanup = autoUpdate(this.originTarget, this.floatableTarget, () => {
				computePosition(this.originTarget, this.floatableTarget, {
					strategy: "fixed",
					placement: this.placementValue,
					middleware: [
						offset(this.offsetValue),
						flip(),
						shift({ padding: this.paddingValue }),
					]
				}).then(({x, y }) => {
					Object.assign(this.floatableTarget.style, {
						left: `${x}px`,
						top: `${y}px`,
					})
				})
			})
		}
	}
}
