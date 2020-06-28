as yet unclassified
openWith: aHtmlString

	^ self new 
		initializeWithLabel: 'Markdown Editor - HTML Export';
		initializeContentWith: aHtmlString; 
		openInWorld;
		yourself