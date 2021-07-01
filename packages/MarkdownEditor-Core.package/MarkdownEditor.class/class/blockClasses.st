accessing
blockClasses

	| classes |
	"classes := OrderedCollection new.
	MarkdownBlock2 subclassesDo: [:subclass | 
		subclass subclasses isEmpty
			ifTrue: [classes add: subclass]
			ifFalse: [classes addAll: subclass subclasses]]."
	classes := {MarkdownBlockquote2. MarkdownList2. MarkdownATXHeading2. MarkdownFencedCodeBlock2. MarkdownParagraph2. MarkdownThematicBreak2} asOrderedCollection.
	^  classes