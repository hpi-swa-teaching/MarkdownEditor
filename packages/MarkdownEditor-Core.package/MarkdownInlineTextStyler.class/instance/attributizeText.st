parsing
attributizeText

	self attributes do: [:attribute |
		attribute textAttributes do: [:textAttribute |
			self textToParse 
				addAttribute: textAttribute 
				from: attribute startPosition 
				to: attribute endPosition]]