helper
copyAttributesFrom: aModelText from: aStartPosition to: anEndPosition with: noSkipping

	| indexInModelTextRuns absoluteIndex |
	indexInModelTextRuns := 1.	
	(self textRunsFrom: aStartPosition to: anEndPosition)
		doWithIndex: [:stylingAttributes :index|
			absoluteIndex := index + aStartPosition - 1.
			(noSkipping or: [self isCharNotSkippableAt: absoluteIndex])
				ifTrue: [self copyAttributeFrom: aModelText 
							at: indexInModelTextRuns 
							to: absoluteIndex.
					indexInModelTextRuns := indexInModelTextRuns + 1]]