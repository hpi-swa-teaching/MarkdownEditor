tests - menu
testSelectionMenuIsDifferent2

	| singleSelectionMenu multiSelectionMenu |

	editor markdownText: 'first line', Character cr, 'second line'.
	editor textMorph selectionInterval: (1 to: 10).
	singleSelectionMenu := editor yellowButtonMenu: MenuMorph new.
	editor textMorph selectAll.
	multiSelectionMenu := editor yellowButtonMenu: MenuMorph new.
	
	self assert: [(self itemsIn: multiSelectionMenu items equal: singleSelectionMenu items) not]
	
