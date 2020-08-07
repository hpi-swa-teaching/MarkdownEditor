export
croppedContent
	
	| content |
	content := self content copyFrom: 1 to: (self content size).
	^ content asText