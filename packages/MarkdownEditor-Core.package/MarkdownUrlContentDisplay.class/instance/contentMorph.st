contentLoading
contentMorph

	[^{self loadImage}] 
	on: Error 
	do: [^{self loadText}]