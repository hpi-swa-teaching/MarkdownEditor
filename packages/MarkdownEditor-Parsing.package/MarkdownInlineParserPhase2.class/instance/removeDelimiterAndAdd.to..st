clean up
removeDelimiterAndAdd: anInlineElement to: aList

	(anInlineElement count = 0)
		ifFalse: [aList add: anInlineElement asMarkdownString].
	self delimiters remove: anInlineElement ifAbsent: []