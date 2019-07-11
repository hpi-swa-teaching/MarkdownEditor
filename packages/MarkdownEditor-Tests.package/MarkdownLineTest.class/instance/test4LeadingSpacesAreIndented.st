tests - indentation
test4LeadingSpacesAreIndented

	| line | 
	line := MarkdownLine newFrom: '    4 spaces'.
	self assert: line isIndented