add to inline elements
addAutolinkType: aSymbol from: aPath

	| autolink |
	autolink := MarkdownAutolink newWith: aSymbol and: aPath.
	self inlineElements add: autolink.
	self previousChar: $>