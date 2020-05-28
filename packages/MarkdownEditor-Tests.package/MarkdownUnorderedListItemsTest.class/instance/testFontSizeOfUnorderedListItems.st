as yet unclassified
testFontSizeOfUnorderedListItems

	 (Dictionary newFrom: 
	{'- L1' -> 14. '	- L2' -> 12. '		- L3' -> 10. '			- L4' -> 10}) keysAndValuesDo: [:string :expectedFontSize | 
	   | item |
	   item := MarkdownUnorderedListItem
	      newFrom: (MarkdownLine newFrom: string).
	   self assert: expectedFontSize equals: item fontSize]