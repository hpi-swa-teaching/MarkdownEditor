as yet unclassified
asText

	 | text |	
	 text := '' asText.
	 self lines do: [:line | 
		text append: (self itemAsText: line)].
	 ^ text
