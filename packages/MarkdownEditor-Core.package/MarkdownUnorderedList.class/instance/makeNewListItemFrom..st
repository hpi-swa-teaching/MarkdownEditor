creating
makeNewListItemFrom: aMarkdownLine

	^ MarkdownUnorderedListItem newFrom: aMarkdownLine with: self styleSettings