matching
thematicBreakRegExMatcher

	^ RxMatcher forString: '\s{0,3}((\*\s*)(\*\s*)(\*\s*)+|(_\s*)(_\s*)(_\s*)+|(-\s*)(-\s*)(-\s*)+)$'