helper
show: anImage On: aModel

	| newText oldText |
	newText := ((String value: 1) asText 
		addAttribute: (self createTextAnchorWith: anImage maxExtent: aModel pluggableTextMorph extent);
		yourself).
	oldText := aModel pluggableTextMorph text.
	
	aModel pluggableTextMorph
		setText: (MarkdownTextUtil insert: newText into: oldText afterPosition: self position + self text size - 1).
	^ aModel textMorph text