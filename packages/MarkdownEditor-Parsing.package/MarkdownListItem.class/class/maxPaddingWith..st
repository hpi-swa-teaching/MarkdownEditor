regex matcher
maxPaddingWith: aMarkdownBlock  
	
	| maxPadding |
	maxPadding := '3'.
	aMarkdownBlock class = MarkdownList ifTrue: [maxPadding := ''].
	^maxPadding