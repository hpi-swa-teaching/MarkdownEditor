tests - menu
testSelectionMenuIsDifferent

	| normalMenu singleSelectionMenu |
	normalMenu := editor yellowButtonMenu: MenuMorph new.
	editor markdownText: 'Hello World'.
	editor textMorph selectAll.
	singleSelectionMenu := editor yellowButtonMenu: MenuMorph new.
	
	self assert: [(normalMenu items literalEqual: singleSelectionMenu items) not]
	
