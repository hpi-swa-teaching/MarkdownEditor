as yet unclassified
itemAsText: aMarkdownLine

	 | item |	
	
	item := MarkdownUnorderedListItem newFrom: aMarkdownLine.
	item styler: self styler.
	^ item asText
