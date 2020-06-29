testing
mayBeginWith: aMarkdownLine

 	^ aMarkdownLine asString matchesRegex: '\t*([0-9]+\.) (.)*\r?'