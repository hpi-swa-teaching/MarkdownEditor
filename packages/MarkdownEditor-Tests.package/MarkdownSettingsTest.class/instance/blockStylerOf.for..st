as yet unclassified
blockStylerOf: aMarkdownOptions for: aClassLabel

	^ aMarkdownOptions blockStylerMorphs detect: [:blockStyler | blockStyler classLabel = aClassLabel]