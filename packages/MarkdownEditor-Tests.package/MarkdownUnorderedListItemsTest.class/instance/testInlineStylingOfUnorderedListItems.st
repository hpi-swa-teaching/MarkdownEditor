as yet unclassified
testInlineStylingOfUnorderedListItems

	 | line styler item |
	 line := MarkdownLine newFrom: '- Item with **emphasis**' , Character cr.
	 styler := MarkdownMockTextStyler new.
	 item := MarkdownUnorderedListItem newFrom: line with: MarkdownStyleSettings default.
	 item styler: styler.
	 item asText.
	 self assert: line asString equals: styler memorizedStylingRequest string