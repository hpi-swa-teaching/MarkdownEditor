as yet unclassified
asText

	 | text |	
	 text := '' asText.
	 self lines do: [:line | 
		| item |
		item := MarkdownUnorderedListItem newFrom: line.
		item styler: self styler.
		text append: item asText].
		 ^ text
