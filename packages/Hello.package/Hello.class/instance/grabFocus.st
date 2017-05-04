as yet unclassified
grabFocus

	| hand |
	hand := self activeHand.

	previousKeyboardFocus := hand keyboardFocus.
	previousMouseFocus := hand mouseFocus.

	hand
		newMouseFocus: self searchInput;
		newKeyboardFocus: self searchInput