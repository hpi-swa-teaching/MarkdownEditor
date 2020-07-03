as yet unclassified
convertList: aList withTag: aTag

	 | html lastLevel itemAsHtml|	
	 lastLevel := 0.
	 html := ''.
	 aList lines do: [:line | 
		| item |
		item := aList makeNewListItemFrom: line.
		item styler: aList styler.
		itemAsHtml := self convertInlines: item.
		[lastLevel < item level] whileTrue: [
			lastLevel := lastLevel + 1.
			html := html, '<', aTag, '>', Character cr].
		[lastLevel > item level] whileTrue: [
			lastLevel := lastLevel - 1.
			html := html, '</', aTag, '>', Character cr.].
		html := html, '<li>',itemAsHtml, '</li>', Character cr.].
	 [lastLevel > 0] whileTrue: [
		lastLevel := lastLevel - 1.
		html := html, '</', aTag, '>', Character cr].
	 ^ html