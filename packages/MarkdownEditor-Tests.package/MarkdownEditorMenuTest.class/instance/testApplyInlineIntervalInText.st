tests - inline styling
testApplyInlineIntervalInText

	| inside outside prefix suffix|
	prefix := '    '.
	suffix := '  '.
	outside := 'This is normal'.
	inside := 'Strikeout'.
	editor markdownText: outside, prefix, inside, suffix, outside.
	editor textMorph selectFrom: outside size + 1 to: outside size + prefix size + inside size + suffix size.
	editor markdownMenu applyInlineOnSelectionWith: '~~'.
	
	self assert: (outside, prefix, '~~', inside, '~~', suffix, outside) asText equals: editor textMorph text