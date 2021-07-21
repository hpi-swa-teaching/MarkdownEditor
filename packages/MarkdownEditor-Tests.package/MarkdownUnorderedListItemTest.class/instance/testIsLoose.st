tests - creation
testIsLoose

	| list |
	list := (MarkdownList new) isLoose: false.
	self assert: false equals: list isLoose