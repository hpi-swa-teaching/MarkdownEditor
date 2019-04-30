converting
asText

	| text |
	text := self content asText.
	self attributes do: [:attribute |
		attribute squeakTextAttributes do: [:textAttribute |
			text addAttribute: textAttribute from: attribute start to: attribute end]].
	^ text