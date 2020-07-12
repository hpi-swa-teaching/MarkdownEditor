as yet unclassified
testCreateSortedInlines

	| block inlineElements bold cursive |
	
	block := (MarkdownLine newFrom: '*Important and **very important***') asMarkdownBlock.
	inlineElements := block sortedInlineElements.
	
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
	
	self assert: inlineElements = ({bold . cursive} asOrderedCollection sort: [:elem1 :elem2 | elem1 startPosition <= elem2 startPosition])