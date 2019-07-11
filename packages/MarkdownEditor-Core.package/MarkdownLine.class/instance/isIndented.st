testing
isIndented

	| contentWithExpandedTabs |
	contentWithExpandedTabs := self content
		copyReplaceAll: Character tab asString
		with: self fourSpaces.
	^ contentWithExpandedTabs beginsWith: self fourSpaces