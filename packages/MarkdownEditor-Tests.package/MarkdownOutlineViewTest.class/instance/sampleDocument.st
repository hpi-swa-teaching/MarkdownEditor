as yet unclassified
sampleDocument

	| paragraph document |
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
	document children add: paragraph.
	^ document