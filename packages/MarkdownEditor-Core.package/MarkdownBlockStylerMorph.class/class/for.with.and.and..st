creating
for: aClassLabel with: canChangeFontSize and: canChangeFontColor and: aClassCategory

	^ self new
		classLabel: aClassLabel;
		classCategory: aClassCategory;
		initializeWith: canChangeFontSize and: canChangeFontColor;
		addLabelMorph;
		yourself