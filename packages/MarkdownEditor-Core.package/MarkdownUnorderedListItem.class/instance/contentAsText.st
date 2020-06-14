as yet unclassified
contentAsText
	
	| content |
	content := self asText copyFrom: (self level + 2) to: (self asText size).
	((content at: (content size)) asCharacter = Character cr) ifTrue: [content := content copyFrom: 0 to: (content size - 1)].
	^ content