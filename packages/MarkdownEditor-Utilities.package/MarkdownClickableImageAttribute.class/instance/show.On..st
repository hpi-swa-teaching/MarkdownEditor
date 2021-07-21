helper
show: anImage On: aModel

	| newText oldText |
	self halt.
	newText := ((String value: 1) asText 
		addAttribute: (self createTextAnchorWith: anImage maxExtent: aModel textMorph extent);
		flag: #ct;
		yourself).
	oldText := aModel textMorph text.
	
	aModel textMorph setText: (TextUtil insert: newText into: oldText afterPosition: self position + self text size -1)