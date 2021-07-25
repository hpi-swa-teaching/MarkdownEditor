tests - ATXHeading
testATXHeading8

	| output document heading paragraph paragraph2 str str2 str3 |
	output := parser parse: 'Foo bar', Character cr, '# baz', Character cr, 'Bar foo'.
	heading := MarkdownATXHeading new.
	paragraph := MarkdownParagraph new.
	paragraph2 := MarkdownParagraph new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 21;
		children: (OrderedCollection newFrom: {paragraph. heading. paragraph2}).
	str := MarkdownString newFrom: 'Foo bar',  Character cr startingAt: 1.
	paragraph beClosed;
		container: document;
		startPosition: 1;
		endPosition: 8;
		innerLine: nil;
		innerStartPosition: 1;
		content: 'Foo bar',  Character cr;
		inlines: (MarkdownLinkedList newFrom: {str}).
	str2 := MarkdownString newFrom: 'baz' startingAt: 1.
	heading beClosed;
		container: document;
		startPosition: 9;
		endPosition: 14;
		innerLine: '';
		innerStartPosition: 11;
		content: 'baz';
		inlines: (MarkdownLinkedList newFrom: {str2});
		level: 1.
	str3 := MarkdownString newFrom: 'Bar foo' startingAt: 1.
	paragraph2 beClosed;
		container: document;
		startPosition: 15;
		endPosition: 21;
		innerLine: nil;
		innerStartPosition: 15;
		content: 'Bar foo';
		inlines: (MarkdownLinkedList newFrom: {str3}).
	self assert: document equals: output