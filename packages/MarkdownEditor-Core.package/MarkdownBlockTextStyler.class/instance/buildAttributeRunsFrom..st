styling
buildAttributeRunsFrom: aCollectionOfMarkdownBlocks

	| text|
	text := aCollectionOfMarkdownBlocks
		inject: Text new
		into: [:accumulatedText :block | 
			accumulatedText, block asText].
	(self needToUpdate: aCollectionOfMarkdownBlocks) ifTrue: [
		view model changeEditorTextTo: text].
	^ text runs