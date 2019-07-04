tests - indentation
test0To3LeadingSpacesWithTabAreIndented

	{'', Character tab, '1 tab'.
		' ', Character tab, '1 space, 1 tab'.
		'  ', Character tab, '2 spaces, 1 tab'.
		'   ', Character tab, '3 spaces, 1 tab'} do: [:string | | line | 
		line := MarkdownLine newFrom: string.
		self assert: line isIndented]