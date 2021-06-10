new inline parsing
updateDelimiterIndexWith: startIndex to: endIndex

	self delimiters do: [:delimiter | delimiter index > startIndex
										ifTrue: [delimiter index: delimiter index  - (endIndex - startIndex)]]