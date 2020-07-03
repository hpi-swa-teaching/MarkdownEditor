tests - cleaning
testLinks

	| link |
	
	inlineTextStyler 
		inlineElements: {MarkdownItalic from: 1 to: 2} asOrderedCollection;
		clean.
	
	link := MarkdownLink new.
	link content: 'Hier geht es lang'.	
	inlineTextStyler links: OrderedCollection new.
	inlineTextStyler links add: link.
	
	self assert: (inlineTextStyler links at: 1) = link