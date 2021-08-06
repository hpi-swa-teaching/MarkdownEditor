A MarkdownParsingState represents all the instance variables needed for the parsing algorithm.
It gets initialized by a MarkdownParser object and then handed out to the subclass objects of MarkdownBlock to let them manipulate the required instance variable for the parsing algorithm

Instance Variables
    allBlocksClosed:       			<Boolean>
    charPos:        						<Number>
    container:        					<MarkdownBlock>
    currentLine:        				<String>
    document:       					<MarkdownDocument>
    lastMatchedContainer: 	<MarkdownBlock>
    newBlock:        					<MarkdownBlock>
    oldTip:        							<MarkdownBlock>
    tip:        								<MarkdownBlock>

allBlocksClosed
    - are there still open blocks left

charPos
    - position of the first character in currentLine (used for setting start an end positions)

container
    - the last open block in the tree

currentLine
    - the remaining part of the currently parsed line

document
    - the root of the parsing tree

lastMatchedContainer
    - the last matched block

newBlock
    - helper variable to transfer a newly created block

oldTip
    - tip of the last iteration

tip
    - last added block