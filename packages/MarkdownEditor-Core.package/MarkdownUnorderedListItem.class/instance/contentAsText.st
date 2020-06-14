as yet unclassified
contentAsText
	
	| content |
	content := self asText copyFrom: (self level + 2) to: (self line content size - 1).
	^ content