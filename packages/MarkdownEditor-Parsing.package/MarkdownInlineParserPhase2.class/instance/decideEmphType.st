helper
decideEmphType

	^ ((MarkdownEmphasis2 subclasses)
		select: [:emphasis |
				emphasis 
					matchesWith: self currentOpener 
					and: self currentCloser]) first