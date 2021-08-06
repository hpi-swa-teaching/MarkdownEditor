instance creation
createNew: aParsingState
	
	| listData |
	(self checkBlankAfterParagraph: aParsingState)
		ifTrue: [^ #failedMatch].
	(listData := self parseWithState: aParsingState)
		ifNil: [^ #failedMatch].
	(aParsingState container class = MarkdownParagraph and: [(listData at: #remains) = ''])
		ifTrue: [^ #failedMatch].
	"a list item that follows a Paragraph may only begin with a 1" 
	(aParsingState container class = MarkdownParagraph and: (listData at: #isOrdered))
		==> ((listData at: #start) = 1)
			ifFalse: [^ #failedMatch].
	aParsingState newBlock: 
		((self newFrom: listData)
			startPosition: aParsingState charPos;
			innerLine: (listData at: #remains);
			yourself).
	^ #matchedContainer