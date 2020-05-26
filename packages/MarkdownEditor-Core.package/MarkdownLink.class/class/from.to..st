instance creation
from: startPosition to: endPosition

	startPosition + 1 = endPosition
	ifTrue: [^ self new
			textAttribute: TextEmphasis normal;
			colorAttribute: TextColor black;
			setFrom: startPosition to: endPosition;
			yourself]
	ifFalse: [^ self new
			textAttribute: TextEmphasis underlined;
			colorAttribute: TextColor blue;
			setFrom: startPosition to: endPosition;
			yourself]