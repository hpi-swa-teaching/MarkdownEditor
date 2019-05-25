parsing
findBlockFor: aString

	(MarkdownHeading matches: aString)
		ifTrue: [^ MarkdownHeading newFrom: aString]
		ifFalse: [self blocks ifNotEmpty: [
			self blocks last isParagraph 
				ifTrue: [self blocks last content append: aString]
				ifFalse: [^ MarkdownParagraph newFrom: aString]]]
