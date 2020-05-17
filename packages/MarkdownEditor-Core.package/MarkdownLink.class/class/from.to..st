instance creation
from: startPosition to: endPosition

	^ self new
		textAttribute: TextEmphasis underlined;
		colorAttribute: TextColor blue;
		setFrom: startPosition to: endPosition;
		yourself