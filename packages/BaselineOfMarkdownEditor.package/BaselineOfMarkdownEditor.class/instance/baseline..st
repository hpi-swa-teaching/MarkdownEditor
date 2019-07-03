baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'MarkdownEditor-Utilities';
				package: 'MarkdownEditor-Core';
				package: 'MarkdownEditor-Tests' with: [spec requires: #('MarkdownEditor-Core' 'MarkdownEditor-Utilities')];
				yourself.
			spec
				group: 'default' with: #('MarkdownEditor-Core' 'MarkdownEditor-Utilities');
				group: 'tests' with: #('MarkdownEditor-Tests')];
				yourself