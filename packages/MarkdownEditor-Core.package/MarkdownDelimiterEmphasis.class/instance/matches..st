testing
matches: aMarkdownDelimiterEmphasis

	"See GFM example #420 and #421: https://github.github.com/gfm/#example-420"
	 ^ (self isOpenerAndCloser or: [aMarkdownDelimiterEmphasis isOpenerAndCloser])
			==> [((self length + aMarkdownDelimiterEmphasis length) isDivisibleBy: 3) 
				==> [(self length isDivisibleBy: 3) 
					and: [aMarkdownDelimiterEmphasis length isDivisibleBy: 3]]]

	