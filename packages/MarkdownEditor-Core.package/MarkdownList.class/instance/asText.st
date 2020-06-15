converting
asText

	 | text |	
	 text := '' asText.
	 self lines do: [:line | 
		| item |
		item := self makeNewListItemFrom: line.
		(line isCurrentLine and: line containsOnlyWhitespaces) ifTrue: ["the item needs to update it's content which has then to be updated in the view"].
		item styler: self styler.
		text append: item asText].
		 ^ text
