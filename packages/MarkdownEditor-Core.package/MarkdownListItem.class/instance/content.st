accessing
content
	
	| content |
	content := self line content copyFrom: (self level + 2) to: (self line content size).
	content := content copyWithout: Character cr.
	^ content