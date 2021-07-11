yellowButtonMenu
addHeadingMenuItemsTo: aMenu

	1 to: 6 do: [:i | aMenu add: 'level ', i action: [self applyHeadingAt: i]].
	^ aMenu