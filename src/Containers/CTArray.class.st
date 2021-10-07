Class {
	#name : #CTArray,
	#superclass : #CTContainer,
	#instVars : [
		'contents'
	],
	#category : #Containers
}

{ #category : #converting }
CTArray >> asArray [ 

	^ contents asArray
]

{ #category : #adding }
CTArray >> at: aNumber [

	^ contents at: aNumber
]

{ #category : #initialization }
CTArray >> initialize [
	super initialize.
	contents := OrderedCollection new.
]

{ #category : #adding }
CTArray >> insert: anObject [

	contents add: anObject
]

{ #category : #adding }
CTArray >> remove: anObject [

	contents remove: anObject
]

{ #category : #accessing }
CTArray >> size [ 
	^ contents size
]
