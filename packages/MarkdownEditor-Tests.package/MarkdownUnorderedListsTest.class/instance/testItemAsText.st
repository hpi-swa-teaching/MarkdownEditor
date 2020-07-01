test - extandable
testItemAsText

	 | line list |

	line := MarkdownLine newFrom: '- abc'.
	list := MarkdownUnorderedList new.
	self assert: (list itemAsText: line) = '- abc'