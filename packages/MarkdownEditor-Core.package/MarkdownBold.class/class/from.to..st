as yet unclassified
from: startPosition to: endPosition

	^ self new
		textAttribute: TextEmphasis bold;
		setFrom: startPosition to: endPosition;
		yourself