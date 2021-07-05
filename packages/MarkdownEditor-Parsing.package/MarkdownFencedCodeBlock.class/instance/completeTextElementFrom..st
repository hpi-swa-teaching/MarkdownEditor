styling
completeTextElementFrom: aText

	^ (Text new: self indention), (self openingFence, self info) asText, aText