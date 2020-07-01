creating
makeNewListItemFrom: aMarkdownLine

	^ MarkdownOrderedListItem newFrom: aMarkdownLine with: self styleSettings