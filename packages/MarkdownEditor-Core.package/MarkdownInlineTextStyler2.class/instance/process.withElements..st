parsing2
process: aMarkdownToken withElements: elements 

	^ aMarkdownToken representationClass 
		elements: elements;
		yourself