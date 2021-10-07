Class {
	#name : #CTLinkedListTest,
	#superclass : #TestCase,
	#traits : 'TContainerTests',
	#classTraits : 'TContainerTests classTrait',
	#category : #'Containers-Tests'
}

{ #category : #initialization }
CTLinkedListTest >> setUp [

	super setUp.
	container := CTLinkedList new.
]
