helper
copyAttributesFrom: aText from: aStartPosition to: anEndPosition

	| indexInCopyTextRuns absoluteIndex |
	indexInCopyTextRuns := 1.	
	(self textRunsFrom: aStartPosition to: anEndPosition)
		doWithIndex: [:stylingAttributes :index|
			absoluteIndex := index + aStartPosition - 1.
			(self isCharSkippableAt: absoluteIndex)
				ifFalse: [ | attributes | 
					attributes := aText attributesAt: indexInCopyTextRuns.
					indexInCopyTextRuns := indexInCopyTextRuns + 1.
					attributes 
						ifNotEmpty: [self addAttributes: attributes at: absoluteIndex]]]