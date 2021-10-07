Class {
	#name : #MyContainer,
	#superclass : #Object,
	#category : #Containers
}

{ #category : #adding }
MyContainer >> at: aNumber [

	self subclassResponsibility
]

{ #category : #enumerating }
MyContainer >> collect: aBlock [

	| newContainer |
	newContainer := self class new.

	self do: [ :each |
		newContainer insertElement: (aBlock value: each) ].
	
	^ newContainer
]

{ #category : #enumerating }
MyContainer >> do: aBlock [

	1 to: self size do: [ :i |
		aBlock value: (self at: i) ]
]

{ #category : #adding }
MyContainer >> insertAllElements: aCollection [

	aCollection do: [ :each | self insertElement: each ]
]

{ #category : #adding }
MyContainer >> insertElement: anObject [

	self subclassResponsibility
]

{ #category : #adding }
MyContainer >> isEmpty [

	self subclassResponsibility
]

{ #category : #adding }
MyContainer >> size [

	self subclassResponsibility
]
