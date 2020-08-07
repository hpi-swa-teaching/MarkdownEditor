update
updateItems
	
	self items: (self lines collect: [:line |
		| item |
		item := self makeNewListItemFrom: line.
		item styler: self styler])