tests
testCreateMarkdownHtmlExportView
	
	| exportView pluggableTextMorphs |

	exportView := MarkdownHtmlExportView openWith: '<!DOCTYPE html><html>Some HTML</html>'.
	pluggableTextMorphs := exportView submorphs select: [:morph | morph isKindOf: PluggableTextMorph].
	exportView abandon.
	
	self assert: pluggableTextMorphs size = 1.
	self assert: pluggableTextMorphs first text = '<!DOCTYPE html><html>Some HTML</html>'.
	