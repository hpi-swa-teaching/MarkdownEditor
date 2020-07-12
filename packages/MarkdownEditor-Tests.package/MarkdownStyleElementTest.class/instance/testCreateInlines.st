as yet unclassified
testCreateInlines

	| block inlineElements bold cursive |
	
	block := (MarkdownLine newFrom: '*Important and **very important***') asMarkdownBlock.
	inlineElements := block inlineElements.
	
	bold := MarkdownBold new.
	bold content: 'very important'.
	bold setFrom: 16 to: 33.
	bold textAttribute: TextEmphasis bold.
	bold colorAttribute: TextColor black.
	cursive := MarkdownItalic new.
	cursive content: 'Important and **very important**'.
	cursive setFrom: 1 to: 34.
	cursive textAttribute: TextEmphasis italic.
	cursive colorAttribute: TextColor black.
	
	self assert: inlineElements = {bold . cursive} asOrderedCollection