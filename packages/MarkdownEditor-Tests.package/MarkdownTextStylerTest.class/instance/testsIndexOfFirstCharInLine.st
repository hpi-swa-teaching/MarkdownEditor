tests - helper
testsIndexOfFirstCharInLine

	| sampleText |
	sampleText := 'hello world', Character cr, 'this is a test', Character cr, 'have fun' asText.
	textStyler text: sampleText.

	self assert: 13 equals: (textStyler indexOfFirstCharInLineCorrespondingTo: 16).
	self assert: 28 equals: (textStyler indexOfFirstCharInLineCorrespondingTo: 30)