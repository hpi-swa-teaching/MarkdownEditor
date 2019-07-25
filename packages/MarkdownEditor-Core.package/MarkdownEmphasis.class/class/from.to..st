instance creation
from: startPosition to: endPosition

	^ self new
		textAttribute: TextEmphasis italic;
		setFrom: startPosition to: endPosition;
		yourself