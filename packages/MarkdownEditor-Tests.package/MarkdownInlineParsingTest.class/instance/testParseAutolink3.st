tests - autolinks
testParseAutolink3
	
	| output expectedOutput link |
	output := parser parseInline: '<squeak@hpi.de>' with: 1.
	link := MarkdownAutolink new.
	link autolinkPath: 'squeak@hpi.de';
		startPosition: 1;
		beEmail.
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output