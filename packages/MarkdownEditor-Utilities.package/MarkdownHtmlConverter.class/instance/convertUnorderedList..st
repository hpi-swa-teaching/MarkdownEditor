as yet unclassified
convertUnorderedList: anUnorderedList

	 | html lastLevel |	
	 lastLevel := 0.
	 html := '' asText.
	 anUnorderedList lines do: [:line | 
		| item |
		item := MarkdownUnorderedListItem newFrom: line.
		[lastLevel < item level] whileTrue: [
			lastLevel := lastLevel + 1.
			html append:  '<ul>', Character cr].
		[lastLevel > item level] whileTrue: [
			lastLevel := lastLevel - 1.
			html append: '</ul>', Character cr.].
		html append: '<li>',item content, '</li>', Character cr.].
	 ^ html

	"	^ '<ul>', anUnorderedList content, '</ul>', Character cr"