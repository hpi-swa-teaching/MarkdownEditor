tests
testInstanceCreation

	| para str |
	str := '**Is there a train** in the depot?'.
	para := MarkdownParagraph newWith: str.
	self assert: para content equals: str
	