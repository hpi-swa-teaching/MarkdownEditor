as yet unclassified
convertUnorderedList: anUnorderedList

	 | html lastLevel itemAsHtml|	
	 lastLevel := 0.
	 html := ''.
	 anUnorderedList lines do: [:line | 
		| item |
		item := MarkdownUnorderedListItem newFrom: line.
		item styler: anUnorderedList styler.
		itemAsHtml := self convertInlines: item contentAsText.
		[lastLevel < item level] whileTrue: [
			lastLevel := lastLevel + 1.
			html := html, '<ul>', Character cr].
		[lastLevel > item level] whileTrue: [
			lastLevel := lastLevel - 1.
			html := html, '</ul>', Character cr.].
		html := html, '<li>',itemAsHtml, '</li>', Character cr.].
	 [lastLevel > 0] whileTrue: [
		lastLevel := lastLevel - 1.
		html := html, '</ul>', Character cr].
	 ^ html