tests - delimiters
testCleanDelimiters

	| del1 del2 |
 	del1 := MarkdownDelimiter newFromPadded: 't**t'.
	del2 := MarkdownDelimiter newFromPadded: 't~~t'.
	secondPhase delimiters: MarkdownLinkedList new.
	secondPhase delimiters 
		add: del1;
		add: del2.
	secondPhase cleanDelimiters.
	
	self assert: MarkdownLinkedList new equals: secondPhase delimiters