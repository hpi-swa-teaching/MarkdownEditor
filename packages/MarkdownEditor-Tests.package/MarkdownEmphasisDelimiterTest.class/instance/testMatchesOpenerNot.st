tests - matching
testMatchesOpenerNot

	"Opener does not match the openerAndCloser because their length in sum is divisible by 3 and their individual length is not."
	| opener openerAndCloser |
	opener := MarkdownItalicBoldDelimiter new
				isLeftFlanking: true;
				isRightFlanking: false;
				content: '*';
				yourself.
	openerAndCloser := MarkdownItalicBoldDelimiter new
				isLeftFlanking: true;
				isRightFlanking: true;
				content: '**';
				yourself.
				
	self deny: (openerAndCloser matches: opener)
				
		
	