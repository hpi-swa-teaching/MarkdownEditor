as yet unclassified
sampleDocument

	| paragraph document |
	paragraph := MarkdownParagraph new
		startPosition: 1;
		endPosition: 5;
		yourself.
	document := MarkdownDocument new.
	document children add: paragraph.
	^ document