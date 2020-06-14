as yet unclassified
convertUnorderedList: anUnorderedList

	 | html lastLevel itemAsHtml|	
	 lastLevel := 0.
	 html := '' asText.
	 anUnorderedList lines do: [:line | 
		| item |
		item := MarkdownUnorderedListItem newFrom: line.
		item styler: anUnorderedList styler.
		itemAsHtml := self convertInlines: item contentAsText.
		[lastLevel < item level] whileTrue: [
			lastLevel := lastLevel + 1.
			html append:  '<ul>', Character cr].
		[lastLevel > item level] whileTrue: [
			lastLevel := lastLevel - 1.
			html append: '</ul>', Character cr.].
		html append: '<li>',itemAsHtml, '</li>', Character cr.].
	 [lastLevel > 0] whileTrue: [
		lastLevel := lastLevel - 1.
		html append: '</ul>', Character cr].
	 ^ html