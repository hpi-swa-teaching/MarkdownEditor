tests - delimiters
testCleanDelimiters

    | del1 del2 |
    del1 := MarkdownDelimiter newFrom: 't**t'.
    del2 := MarkdownDelimiter newFrom: 't~~t'.
    
    secondPhase delimiters: LinkedList new.
    secondPhase delimiters 
	add: del1;
	add: del2.
    
    secondPhase cleanDelimiters.
    
    self assert: LinkedList new equals: secondPhase delimiters