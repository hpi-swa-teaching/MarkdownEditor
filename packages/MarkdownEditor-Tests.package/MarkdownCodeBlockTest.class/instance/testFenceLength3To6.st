tests
testFenceLength3To6

	(Dictionary newFrom: 
		{'```'->3. '```smalltalk'->3.
		'````'->4. '````smalltalk'->4.
		'`````'->5. '`````smalltalk'->5.
		'``````'->6. '``````smalltalk'->6}) 
			keysAndValuesDo: [:openingString :expectedLength | | line codeBlock |
				line := MarkdownLine newFrom: openingString.
				codeBlock := MarkdownCodeBlock newFrom: line.
				self assert: expectedLength equals: codeBlock openingFenceLength]
	