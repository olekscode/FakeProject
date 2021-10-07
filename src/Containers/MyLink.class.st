Class {
	#name : #MyLink,
	#superclass : #Object,
	#instVars : [
		'value',
		'nextLink'
	],
	#category : #Containers
}

{ #category : #accessing }
MyLink >> nextLink [

	^ nextLink
]

{ #category : #accessing }
MyLink >> nextLink: anObject [

	nextLink := anObject
]

{ #category : #accessing }
MyLink >> value [
	
	^ value
]

{ #category : #accessing }
MyLink >> value: anObject [

	value := anObject
]
