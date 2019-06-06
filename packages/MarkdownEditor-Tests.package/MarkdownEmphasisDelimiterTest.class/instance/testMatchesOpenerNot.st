tests - matching
testMatchesOpenerNot

	"Opener does not match the openerAndCloser because their length in sum is divisible by 3 and their individual length is not."
	| opener openerAndCloser |
	opener := MarkdownEmphasisDelimiter new
				isLeftFlanking: true;
				content: '*';
				yourself.
	openerAndCloser := MarkdownEmphasisDelimiter new
				isLeftFlanking: true;
				isRightFlanking: true;
				content: '**';
				yourself.
				
	self deny: (openerAndCloser matches: opener)
				
		
	