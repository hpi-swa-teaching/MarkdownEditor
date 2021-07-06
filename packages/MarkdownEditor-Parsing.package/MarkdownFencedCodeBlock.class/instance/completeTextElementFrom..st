styling
completeTextElementFrom: aText

	"^ (Text new: self indention), (self openingFence, self info) asText, aText
	| range text |
	text := ''.
	range := self endPosition - self startPosition + 1.
	range timesRepeat: [text := text, ' ']."
	^ aText