as yet unclassified
convertUnorderedList: anUnorderedList

	 | html lastLevel |	
	 lastLevel := 0.
	 html := '' asText.
	 anUnorderedList lines do: [:line | 
		| item |
		item := MarkdownUnorderedListItem newFrom: line.
		item styler: anUnorderedList styler.
		[lastLevel < item level] whileTrue: [
			lastLevel := lastLevel + 1.
			html append:  '<ul>', Character cr].
		[lastLevel > item level] whileTrue: [
			lastLevel := lastLevel - 1.
			html append: '</ul>', Character cr.].
		html append: '<li>',item contentAsText, '</li>', Character cr.
		Transcript show: item contentAsText].
	 [lastLevel > 0] whileTrue: [
		lastLevel := lastLevel - 1.
		html append: '</ul>', Character cr].
	 ^ html