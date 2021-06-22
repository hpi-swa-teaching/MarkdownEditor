handle delimiter
getAllDelimiters

	| aDelimiterSet |
	aDelimiterSet := Set new.
	self emphasisTypes values 
		do: [:aEmphasisType | aDelimiterSet := aDelimiterSet union: aEmphasisType delimiterTypes]