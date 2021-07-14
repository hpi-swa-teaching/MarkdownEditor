tests - menu
testYellowButtonMenuSelectionExists

	| menu |
	editor markdownText: 'Hello World'.
	editor textMorph selectAll.
	menu := editor yellowButtonMenu: MenuMorph new.
	self assert: (menu isKindOf: MenuMorph).
	self assert: (menu items size > 0).