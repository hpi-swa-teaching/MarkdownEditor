helper
configureSampleDocument

	| paragraph document |
	paragraph := MarkdownParagraph new
		startPosition: 1;
		endPosition: 5;
		yourself.
	document := MarkdownDocument new
		startPosition: 1;
		endPosition: 10;
		yourself.
	document children add: paragraph.
	^ document