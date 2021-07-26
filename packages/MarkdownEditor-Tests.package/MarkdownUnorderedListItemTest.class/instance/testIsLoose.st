tests - creation
testIsLoose

	| list |
	list := (MarkdownList new) beNotLoose.
	self assert: false equals: list isLoose