baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'VB-Regex' with: [
					spec repository: 'http://www.squeaksource.com/Regex'];
				package: 'MarkdownEditor-Utilities';
				package: 'MarkdownEditor-Core' with: [
					spec requires: #('MarkdownEditor-Utilities').
					(#('Squeak5.0') includes: Smalltalk version)
						ifTrue: [spec requires: #('VB-Regex')]];
				package: 'MarkdownEditor-Tests' with: [spec requires: #('MarkdownEditor-Core' 'MarkdownEditor-Utilities')];
				yourself.
			spec
				group: 'default' with: #('MarkdownEditor-Core' 'MarkdownEditor-Utilities');
				group: 'tests' with: #('MarkdownEditor-Tests')];
				yourself