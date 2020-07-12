accessing
sortedInlineElements

	^ self inlineElements sort: [:elem1 :elem2 | elem1 startPosition <= elem2 startPosition]