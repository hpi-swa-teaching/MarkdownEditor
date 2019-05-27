testing
matches: aMarkdownEmphasisDelimiter

	"See GFM example #420 and #421: https://github.github.com/gfm/#example-420"
	 ^ (self isOpenerAndCloser or: [aMarkdownEmphasisDelimiter isOpenerAndCloser])
			==> [((self length + aMarkdownEmphasisDelimiter length) isDivisibleBy: 3) 
				==> [(self length isDivisibleBy: 3) 
					and: [aMarkdownEmphasisDelimiter length isDivisibleBy: 3]]]

	