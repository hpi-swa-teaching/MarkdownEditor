tests - positioning
testInnerPositions

	| parsingTree testDict |
	parsingTree := self parser parse: '>hallo
	
>   test
        
> 

>  multiline 
> second line
> # heading
 lazy line'.

	testDict := Dictionary newFrom: {#children -> 
			{Dictionary newFrom: {#innerStartPosition -> 2.#innerEndPosition -> 6}.
			Dictionary newFrom: {#innerStartPosition -> 13.#innerEndPosition -> 16}.
			Dictionary newFrom: {#innerStartPosition -> 25.#innerEndPosition -> 24}.
			Dictionary newFrom: {#innerStartPosition -> 35.#innerEndPosition -> 81}}}.
			
	self testParsingTree: parsingTree with: testDict