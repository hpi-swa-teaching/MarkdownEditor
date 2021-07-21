accessing
blockClasses

	| classes |
	"classes := OrderedCollection new.
	MarkdownBlock2 subclassesDo: [:subclass | 
		subclass subclasses isEmpty
			ifTrue: [classes add: subclass]
			ifFalse: [classes addAll: subclass subclasses]]."
	classes := {MarkdownBlockquote. MarkdownList. MarkdownATXHeading. MarkdownFencedCodeBlock. MarkdownParagraph. MarkdownThematicBreak} asOrderedCollection.
	^  classes