as yet unclassified
mayBeginWith: aMarkdownLine

	^ aMarkdownLine asString matchesRegex: '( |\t)*>.+(\r)?'