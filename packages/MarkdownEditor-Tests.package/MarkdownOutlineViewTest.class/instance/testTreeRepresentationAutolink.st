tests
testTreeRepresentationAutolink

	| autolink |
	autolink := MarkdownAutolink newWith: #beEmail and: 'squeak@hpi.de'.
	
	self assert: {'E-Mail'. 'squeak@hpi.de'} equals: autolink treeRepresentation.
	autolink := MarkdownAutolink newWith: #beNotEmail and: 'https://www.hpi.de'.
	
	self assert: {'Link'. 'https://www.hpi.de'} equals: autolink treeRepresentation