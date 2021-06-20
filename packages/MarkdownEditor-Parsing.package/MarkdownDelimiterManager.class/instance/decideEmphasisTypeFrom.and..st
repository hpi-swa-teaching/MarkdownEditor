as yet unclassified
decideEmphasisTypeFrom: anOpeningDelimiter and: aClosingDelimiter

	^ (self emphasisTypes 
			select: [:emph |
				emph matchesWith: anOpeningDelimiter 
				and: aClosingDelimiter]) keys first