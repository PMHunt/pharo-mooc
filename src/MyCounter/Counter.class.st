"
I count stuff

I can be incremented and decremented and I know what the count is
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter class >> startingAt: anInteger [
	^ self new count: anInteger.
]

{ #category : #accessing }
Counter >> count [ 
	^ count
]

{ #category : #accessing }
Counter >> count: arg [ 
	count := arg.
]

{ #category : #API }
Counter >> decrement [ 
	count := count - 1
]

{ #category : #API }
Counter >> increment [ 
	count := count + 1
]

{ #category : #initialization }
Counter >> initialize [
	count := 0
]
