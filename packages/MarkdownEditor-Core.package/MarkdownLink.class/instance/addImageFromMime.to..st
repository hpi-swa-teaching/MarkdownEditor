clickable
addImageFromMime: mime to: aMarkdownEditor

	| content endPosition|
	[content := (Form fromBinaryStream: mime contentStream) scaledToSize: 100 asPoint]
	on: Error do: [^self].
	self halt.
	endPosition := (aMarkdownEditor textMorph text find: self text) stop.
	aMarkdownEditor textMorph setText: 
		('{1} {2} {3}' asText format: {
			aMarkdownEditor textMorph text copyFrom: 1 to: endPosition.
			(String value: 1) asText
				addAttribute: (TextAnchor new
					anchoredMorph: content asMorph;
					yourself);
				flag: #ct; "When introduced, use #textAnchorVerticalAlignment:"
				yourself.
			aMarkdownEditor textMorph text copyFrom: endPosition +1 to: aMarkdownEditor textMorph text size.})