converting
asText

	 | text |	
	 text := '' asText.
	 self lines do: [:line | 
		| item |
		item := self makeNewListItemFrom: line.
		item styler: self styler.
		text append: item asText].
		 ^ text
