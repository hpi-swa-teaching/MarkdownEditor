regex matcher
maxPaddingWith: aMarkdownBlock  
	
	| maxPadding |
	maxPadding := '3'.
	aMarkdownBlock class = MarkdownList2 ifTrue: [maxPadding := ''].
	^maxPadding