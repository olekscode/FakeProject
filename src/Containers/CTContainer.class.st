Class {
	#name : #CTContainer,
	#superclass : #Object,
	#category : #Containers
}

{ #category : #adding }
CTContainer >> at: aNumber [

	self subclassResponsibility
]

{ #category : #adding }
CTContainer >> insert: anObject [

	self subclassResponsibility
]

{ #category : #adding }
CTContainer >> insertAll: aCollection [

	aCollection do: [ :each | self insert: each ]
]

{ #category : #adding }
CTContainer >> isEmpty [

	^ self size = 0
]

{ #category : #adding }
CTContainer >> remove: anObject [

	self subclassResponsibility
]

{ #category : #adding }
CTContainer >> size [

	self subclassResponsibility
]
