creating
for: aClassLabel with: canChangeFontSize and: canChangeFontColor and: aClassCategory

	^ self new
		classCategory: aClassCategory;
		initializeWith: canChangeFontSize and: canChangeFontColor and: aClassLabel;
		yourself