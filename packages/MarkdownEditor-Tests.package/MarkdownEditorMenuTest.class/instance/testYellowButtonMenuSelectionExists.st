tests - menu
testYellowButtonMenuSelectionExists

	| menu |
	editor markdownText: 'Hello World'.
	editor pluggableTextMorph selectAll.
	menu := editor yellowButtonMenu: MenuMorph new.
	
	self assert: (menu isKindOf: MenuMorph).
	self assert: (menu items size > 0)