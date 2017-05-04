as yet unclassified
action: anActionString label: aLabelString do: anActionBlock score: aScoreNumber

	^ self new
		action: anActionString;
		label: aLabelString;
		activate: anActionBlock;
		score: aScoreNumber;
		createLabel;
		yourself