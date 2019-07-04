testing
isIndented

	| expandedTabsContent |
	expandedTabsContent := self content
		copyReplaceAll: Character tab asString
		with: self fourSpaces.
	^ expandedTabsContent beginsWith: self fourSpaces