tests - indentation
test0To3LeadingSpacesAreNotIndented

	{'0 spaces'. ' 1 space'. '  2 spaces'. '   3 spaces'} do: [:string | | line | 
		line := MarkdownLine newFrom: string.
		self deny: line isIndented]