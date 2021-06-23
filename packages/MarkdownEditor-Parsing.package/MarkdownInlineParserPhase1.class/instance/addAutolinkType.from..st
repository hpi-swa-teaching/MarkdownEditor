add to inline elements
addAutolinkType: aSymbol from: aRawString

	| autolink |
	autolink := MarkdownAutolink newFrom: aSymbol and: aRawString.
	self inlineElements add: autolink.
	self previousChar: $>