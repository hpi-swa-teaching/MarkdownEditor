baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
				Preferences disable: #showDeprecationWarnings.	
				spec baseline: 'SwaLint' with: [
	                        spec
	                                repository: 'github://hpi-swa-teaching/SwaLint:release/packages'];
			
				"MarkdownEditor setup"
				package: 'MarkdownEditor-Utilities';
				package: 'MarkdownEditor-Parsing';
				package: 'MarkdownEditor-Core' with: [
					spec requires: #('MarkdownEditor-Utilities' 'MarkdownEditor-Parsing')];
				package: 'MarkdownEditor-Tests' with: [
					spec requires: #('MarkdownEditor-Core' 'MarkdownEditor-Utilities' 'SwaLint')].
				
			spec
				group: 'default' with: #('MarkdownEditor-Core' 'MarkdownEditor-Utilities' 'MarkdownEditor-Parsing');
				group: 'tests' with: #('MarkdownEditor-Tests')].