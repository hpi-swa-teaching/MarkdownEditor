tests - menu
testSelectionMenuIsDifferent2

	| singleSelectionMenu multiSelectionMenu |

	editor markdownText: 'first line', Character cr, 'second line'.
	editor textMorph selectAll.
	singleSelectionMenu := editor yellowButtonMenu: MenuMorph new.
	multiSelectionMenu := editor yellowButtonMenu: MenuMorph new.
	
	self assert: [(multiSelectionMenu items literalEqual: singleSelectionMenu items) not]
	
