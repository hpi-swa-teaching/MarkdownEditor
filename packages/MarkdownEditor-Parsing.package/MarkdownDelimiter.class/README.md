A MarkdownDelimiter represents a delimiter during the inline parsing phases.

Instance Variables
	count:		<SmallInteger>
	inlineIndex:		<SmallInteger>
	originalOpenerAndCloser:		<Boolean>
	potentialCloser:		<Boolean>
	potentialOpener:		<Boolean>
	startPosition:		<SmallInteger>
	type:		<Character>
	valid:		<Boolean>

count
	- indicates the number of delimiters, e.g. one * for italic or two * for bold

inlineIndex
	- xxxxx

originalOpenerAndCloser
	- is a boolean indicating whether a delimiter is an original opening delimiter and an original closing delimiter

potentialCloser
	- is a boolean indicating whether a delimiter is an potential closing delimiter

potentialOpener
	- is a boolean indicating whether a delimiter is an potential opening delimiter

startPosition
	- is the start position in the Markdown text

type
	- is the type of the delimiter like *, _ or ~

valid
	- is a boolean value that indicates whether a delimiter is valid or invalid, e.g. the delimiter is invalid if the devisible by three rule applies
