tests - menu
testSelectionMenuIsDifferent

	| normalMenu selectionMenu |
	normalMenu := editor yellowButtonMenu: MenuMorph new.
	editor markdownText: 'Hello World'.
	editor textMorph selectAll.
	selectionMenu := editor yellowButtonMenu: MenuMorph new.
	self assert: [(normalMenu items literalEqual: selectionMenu items) not]