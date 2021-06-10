as yet unclassified
closeOpenBlocks: aString startingAt: aMarkdownBlock

    (aMarkdownBlock isKindOf: MarkdownLeafBlock)
        ifTrue: [self mayClose: aMarkdownBlock with: aString. ^self].
    aMarkdownBlock children do: [:child | 
        child isOpen ifTrue: [self mayClose: aMarkdownBlock with: aString].
        self closeOpenBlocks: aString startingAt: child]