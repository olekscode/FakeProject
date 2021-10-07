Class {
	#name : #MyContainer,
	#superclass : #Object,
	#category : #Containers
}

{ #category : #adding }
MyContainer >> at: aNumber [

	self subclassResponsibility
]

{ #category : #adding }
MyContainer >> insert: anObject [

	self subclassResponsibility
]

{ #category : #adding }
MyContainer >> insertAll: aCollection [

	aCollection do: [ :each | self insert: each ]
]

{ #category : #adding }
MyContainer >> isEmpty [

	^ self size = 0
]

{ #category : #adding }
MyContainer >> remove: anObject [

	self subclassResponsibility
]

{ #category : #adding }
MyContainer >> size [

	self subclassResponsibility
]
