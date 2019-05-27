parsing
attributizeText

	self attributes do: [:attribute |
		attribute textAttributes do: [:textAttribute |
			self text 
				addAttribute: textAttribute 
				from: attribute startPosition 
				to: attribute endPosition]]