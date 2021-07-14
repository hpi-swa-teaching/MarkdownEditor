tests - menu
testSelectionMenuIsDifferent

	| normalMenu singleSelectionMenu multiSelectionMenu |
	normalMenu := editor yellowButtonMenu: MenuMorph new.
	editor markdownText: 'Hello World'.
	editor textMorph selectAll.
	singleSelectionMenu := editor yellowButtonMenu: MenuMorph new.
	self assert: [(normalMenu items literalEqual: singleSelectionMenu items) not].
	
	editor markdownText: 'first line', Character cr, 'second line'.
	editor textMorph selectAll.
	multiSelectionMenu := editor yellowButtonMenu: MenuMorph new.
	self assert: [(multiSelectionMenu items literalEqual: singleSelectionMenu items) not]
	
