accessing
content
	
	| content |
	content := self lines first content copyFrom: (self level + 2) to: (self lines first content size).
	content := content copyWithout: Character cr.
	^ content