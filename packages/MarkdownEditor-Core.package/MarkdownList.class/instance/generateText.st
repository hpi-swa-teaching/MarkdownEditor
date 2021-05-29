converting
generateText

	 | text |	
	 text := '' asText.
	 self updateItems.
	 self items do: [:item | 
		text append: item asText].
		 ^ text

