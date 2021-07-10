tests - menu
testYellowButtonMenuExists

	| textMorph normalItems selectionItems normalMenu selectionMenu|
	textMorph := window submorphs
				detect: [:each | each isKindOf: PluggableTextMorphPlus]
				ifNone: [self error: 'No yellowButtonMenu found.'].
	normalMenu := textMorph getMenu: false.
	normalItems := editor yellowButtonMenuItems reject: [:each| each isSymbol].
	self assert: normalItems size equals: normalMenu items size.
	
	editor markdownText: 'Hello World'.
	textMorph selectAll.
	selectionMenu := textMorph getMenu: false.
	selectionItems := editor yellowButtonMenuItemsSelection reject: [:each| each isSymbol].
	self assert: selectionItems size equals: selectionMenu items size.
	
	self assert: [(selectionItems literalEqual: normalItems) not]
	
	
	