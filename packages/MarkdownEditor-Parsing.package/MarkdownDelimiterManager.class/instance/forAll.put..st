handle delimiter
forAll: anInlineContainerClass put: aSymbol

	| aSymbolSet |
	aSymbolSet := Set new.
	anInlineContainerClass = MarkdownEmphasis2
		ifTrue: [self emphasisTypes values do: [:aEmphasisType | aSymbolSet := aSymbolSet union: aEmphasisType delimiterTypes]].
	anInlineContainerClass = MarkdownReference
		ifTrue: [self referenceTypes values do: [:aReferenceTypes | aSymbolSet := aSymbolSet union: aReferenceTypes delimiterTypes]].
	aSymbolSet do: [:aDelimiterType | self delimiterTypeProcessing at: aDelimiterType put: aSymbol]