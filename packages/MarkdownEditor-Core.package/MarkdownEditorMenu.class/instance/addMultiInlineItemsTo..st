yellowButtonMenu
addMultiInlineItemsTo: aMenu

	^ aMenu 
		add: 'fenced codeblock' action: [self applyFencedCodeBlock];
		yourself