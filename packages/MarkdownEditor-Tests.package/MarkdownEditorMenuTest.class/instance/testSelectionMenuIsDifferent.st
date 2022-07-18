tests - menu
testSelectionMenuIsDifferent

	| normalMenu singleSelectionMenu |
	normalMenu := editor yellowButtonMenu: MenuMorph new.
	editor markdownText: 'Hello World'.
	editor pluggableTextMorph selectAll.
	singleSelectionMenu := editor yellowButtonMenu: MenuMorph new.
	
	self assert: [(self itemsIn: normalMenu items equal: singleSelectionMenu items) not]
	
