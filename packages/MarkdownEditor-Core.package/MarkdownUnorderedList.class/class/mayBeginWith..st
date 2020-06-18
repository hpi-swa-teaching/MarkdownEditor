testing
mayBeginWith: aMarkdownLine
 	^ aMarkdownLine asString matchesRegex: '\t*(-|\+|\*) (.)*\r?'