tests - lineAdding
testContinue

	| heading state |
	state := (MarkdownParsingState new) 
		currentLine: 'test';
		charPos: 0;
		yourself.
	heading := MarkdownATXHeading new.
	
	self assert: #failedMatch equals: (heading continue: state).
	self assert: '' equals: heading content