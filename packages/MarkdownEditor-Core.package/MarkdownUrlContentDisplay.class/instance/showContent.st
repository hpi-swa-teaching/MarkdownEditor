contentLoading
showContent

	[^ {self loadImage}] 
	on: Error 
	do: [[^ {self loadText}]
		on: Error
		do: [^ {self loadBasis}]]