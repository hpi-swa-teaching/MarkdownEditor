handle emphasis
decideEmphasisTypeFrom: anOpeningDelimiter and: aClosingDelimiter

	^ (self emphasisTypes
		select: [:emphasis |
				emphasis 
					matchesWith: anOpeningDelimiter 
					and: aClosingDelimiter]) keys first