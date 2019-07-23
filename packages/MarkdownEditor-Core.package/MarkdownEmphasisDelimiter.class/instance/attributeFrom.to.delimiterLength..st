attributes
attributeFrom: aStartPosition to: anEndPosition delimiterLength: aLength
	
	aLength = 1
		ifTrue: [^ MarkdownEmphasis from: aStartPosition to: anEndPosition]
		ifFalse: [^ MarkdownEmphasis strongFrom: aStartPosition to: anEndPosition]