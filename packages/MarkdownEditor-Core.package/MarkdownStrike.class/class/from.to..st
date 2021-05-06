instance creation
from: startPosition to: endPosition

	^ self new
		textAttribute: TextEmphasis struckOut;
		setFrom: startPosition to: endPosition;
		yourself