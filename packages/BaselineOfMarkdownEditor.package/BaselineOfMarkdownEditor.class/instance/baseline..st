baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'VB-Regex' with: [
					spec repository: 'http://www.squeaksource.com/Regex'].
			spec
				package: 'MarkdownEditor-Core' with: [
					(#('Squeak5.0') includes: Smalltalk version)
						ifTrue: [spec requires: #('VB-Regex')]];
				package: 'MarkdownEditor-Tests' with: [spec requires: #('MarkdownEditor-Core')];
				yourself.
			spec
				group: 'default' with: #('MarkdownEditor-Core');
				group: 'tests' with: #('MarkdownEditor-Tests')];
				yourself