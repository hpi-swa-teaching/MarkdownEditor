parsing
parse: aString

	| styledText |
	styledText := aString asText.
	aString lineIndicesDo: [:start :endWithoutDelimiters :end | | line |
		line := aString copyFrom: start to: end.
		(MarkdownHeading matches: line)
			ifTrue: [
				(MarkdownHeading attributesFor: line) do: [:attribute |
					styledText
						addAttribute: attribute from: start to: end]]].
	^ styledText
