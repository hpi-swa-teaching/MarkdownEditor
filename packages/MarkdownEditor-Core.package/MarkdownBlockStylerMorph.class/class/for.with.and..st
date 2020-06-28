as yet unclassified
for: aClassLabel with: canChangeFontSize and: canChangeFontColor

	^ self new
		classLabel: aClassLabel;
		initializeWith: canChangeFontSize and: canChangeFontColor;
		addLabelMorph;
		yourself