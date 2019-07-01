baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'MarkdownEditor-Core';
				package: 'MarkdownEditor-Tests' with: [spec requires: #('MarkdownEditor-Core')];
				yourself.
			spec
				group: 'default' with: #('MarkdownEditor-Core');
				group: 'tests' with: #('MarkdownEditor-Tests')];
				yourself