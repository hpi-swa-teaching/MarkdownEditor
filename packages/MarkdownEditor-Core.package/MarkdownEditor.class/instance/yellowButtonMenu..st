yellowButtonMenu
yellowButtonMenu: aMenu

	self textSelected
		ifTrue: [^ aMenu addList: self yellowButtonMenuItemsSelection; yourself]
		ifFalse:[^ aMenu addList: self yellowButtonMenuItems; yourself]