Class {
	#name : #MyVector,
	#superclass : #MyContainer,
	#instVars : [
		'contents'
	],
	#category : #Containers
}

{ #category : #converting }
MyVector >> asArray [ 

	^ contents asArray
]

{ #category : #adding }
MyVector >> at: aNumber [

	^ contents at: aNumber
]

{ #category : #initialization }
MyVector >> initialize [
	super initialize.
	contents := OrderedCollection new.
]

{ #category : #adding }
MyVector >> insertElement: anObject [

	contents add: anObject
]

{ #category : #testing }
MyVector >> isEmpty [

	^ self size = 0
]

{ #category : #accessing }
MyVector >> size [ 
	^ contents size
]
