accessing
totalLength

	| lengthOfChildren |
	lengthOfChildren := 0.
	self children do: [:child | lengthOfChildren := lengthOfChildren +  child totalLength].
	^ lengthOfChildren