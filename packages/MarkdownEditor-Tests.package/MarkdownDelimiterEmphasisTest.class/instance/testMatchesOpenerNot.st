tests - matching
testMatchesOpenerNot

	| opener openerAndCloser |
	opener := MarkdownEmphasisDelimiter new
				leftFlanking: true;
				content: '*';
				yourself.
	openerAndCloser := MarkdownEmphasisDelimiter new
				leftFlanking: true;
				rightFlanking: true;
				content: '**';
				yourself.	
	self deny: (openerAndCloser matches: opener)
				
		
	