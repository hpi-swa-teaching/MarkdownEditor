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
			{Dictionary newFrom: {#innerStartPosition -> 2}.
			Dictionary newFrom: {#innerStartPosition -> 12}.
			Dictionary newFrom: {#innerStartPosition -> 30}.
			Dictionary newFrom: {#innerStartPosition -> 34}}}.
			
	self testParsingTree: parsingTree with: testDict