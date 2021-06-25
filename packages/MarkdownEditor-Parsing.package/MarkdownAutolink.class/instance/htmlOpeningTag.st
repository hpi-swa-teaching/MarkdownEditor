as yet unclassified
htmlOpeningTag
	
	| emailPrefix |
	emailPrefix := ''.
	self isEmail ifTrue: [emailPrefix := 'mailto:'].
	^ '<a href="', emailPrefix, self path, '">'