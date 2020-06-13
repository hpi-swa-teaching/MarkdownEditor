as yet unclassified
content
	
	| content |
	content := self line content copyFrom: (self level + 2) to: (self line content size - 1).
	^ content