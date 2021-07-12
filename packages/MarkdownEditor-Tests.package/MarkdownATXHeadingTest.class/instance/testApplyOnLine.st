tests - lineAdding
testApplyOnLine

	| heading state |
	state := (MarkdownParsingState new) 
		currentLine: 'test';
		charPos: 0;
		yourself.
	heading := MarkdownATXHeading new.
	self assert: 1 equals: (heading continue: state).
	self assert: '' equals: heading content.