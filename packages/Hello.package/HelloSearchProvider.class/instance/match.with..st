as yet unclassified
match: searchString with: resultNameString

	"^ resultNameString includesSubstring: searchString caseSensitive: false"

	| index search score totalScore |
	search := 1.
	index := 1.
	totalScore := 0.
	score := 5.
	
	self flag: #todo. " handle scoring of subseqs that appear multiple times "
	[index <= resultNameString size and: [search <= searchString size]] whileTrue: [
		(resultNameString at: index) asLowercase = (searchString at: search) asLowercase
			ifTrue: [
				search := search + 1.
				totalScore := totalScore + score.
				score := 6].
		score := score - 1.
		index := index + 1].

	^ search - 1 ~= searchString size ifTrue: [0] ifFalse: [totalScore]