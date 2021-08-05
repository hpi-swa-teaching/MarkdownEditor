A MarkdownDelimiter represents a delimiter during the inline parsing phases.

Instance Variables
	count:							<SmallInteger>
	inlineIndex:						<SmallInteger>
	originalOpenerAndCloser:		<Boolean>
	potentialCloser:					<Boolean>
	potentialOpener:				<Boolean>
	startPosition:					<SmallInteger>
	type:							<Character>
	valid:							<Boolean>

count
	- number of delimiter symbols

inlineIndex
	- temporarily valid index of delimiter in list of all inline elements

originalOpenerAndCloser
	- expresses if a delimiter is originally designed to be open and close an emphasis. 
	It is determined by the delimiter itself and should not be set from outside.

potentialCloser
	- expresses if a delimiter is able to close an emphasis span.

potentialOpener
	- expresses if a delimiter is able to open an emphasis span.

startPosition
	- absolute start position within the text.

type
	- determines what emphasis it belongs to, current types are: $~, $*, $_

valid
	- creating a delimiter with new will generate an invalid delimiter, 
	if you want a valid delimiter you should use newFrom:.
