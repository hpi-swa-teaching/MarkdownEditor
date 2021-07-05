parsing
parseInlineFrom: aContainer

	"self halt."
	aContainer children do: [:aChild | | firstPhase secondPhase |
		self assert: (aChild class superclass = MarkdownContainerBlock or: [aChild class superclass = MarkdownLeafBlock]).
		aChild class superclass = MarkdownContainerBlock
			ifTrue: [self parseInlineFrom: aChild].
		aChild class superclass = MarkdownLeafBlock
			ifTrue: [firstPhase := MarkdownInlineParserPhase1 new.  
					firstPhase parse: aChild content.
					secondPhase := MarkdownInlineParserPhase2 newFrom: firstPhase.  
					aChild inlines: secondPhase parse]]