helper
show: anImage On: aModel

	| newText oldText |
	newText := ((String value: 1) asText 
		addAttribute: (self createTextAnchorWith: anImage maxExtent: aModel textMorph extent);
		yourself).
	oldText := aModel textMorph text.
	
	aModel textMorph setText: (TextUtil insert: newText into: oldText afterPosition: self position + self text size - 1).
	
	^ aModel textMorph text