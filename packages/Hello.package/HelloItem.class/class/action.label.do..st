as yet unclassified
action: anActionString label: aLabelString do: anActionBlock

	^ self new
		action: anActionString;
		label: aLabelString;
		activate: anActionBlock;
		yourself