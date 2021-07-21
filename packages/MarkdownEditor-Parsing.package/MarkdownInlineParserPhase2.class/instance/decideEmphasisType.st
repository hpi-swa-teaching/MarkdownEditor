helper
decideEmphasisType

	^ ((MarkdownEmphasis subclasses)
		select: [:emphasis | emphasis 
					matchesWith: self currentOpener 
					and: self currentCloser]) first