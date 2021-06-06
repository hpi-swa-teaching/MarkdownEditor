tests - creation
testInfoString

	| testList |
	testList := {{'```squeak'. 'squeak'. 0. '```'}.
				{'~~~squeak'. 'squeak'. 0. '~~~'}.
				{'``` squeak'. 'squeak'. 0. '```'}.
				{'```squeak '. 'squeak'. 0. '```'}.
				{'```   squeak   hallo'. 'squeak'. 0. '```'}.
				{'~~~ aa ``` ~~~'. 'aa'. 0. '~~~'}}.
	self testList: testList.