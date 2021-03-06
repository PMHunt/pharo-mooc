"
Class: I represent blog posts
Responsibility: I am a factory for blog postscript 
Collaboration: the posts I manufacture make up a blog 

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	category:		<Object>
	date:		<Object>
	text:		<Object>
	title:		<Object>
	visible:		<Object>


    Implementation Points
"
Class {
	#name : #TBPost,
	#superclass : #Object,
	#instVars : [
		'title',
		'text',
		'date',
		'category',
		'visible'
	],
	#category : #TinyBlog
}

{ #category : #'instance creation' }
TBPost class >> title: aTitle text: aText [
	^ self new 
		title: aTitle;
		text: aText;
		yourself 
]

{ #category : #'instance creation' }
TBPost class >> title: aTitle text: aText category: aCategory [
	^ (self title: aTitle text: aText)
		category: aCategory;
		yourself
]

{ #category : #'instance creation' }
TBPost class >> unclassifiedTag [
	^ 'Unclassifed'
]

{ #category : #actions }
TBPost >> beVisible [
	self visible: true
]

{ #category : #accessing }
TBPost >> category [
	^ category
]

{ #category : #accessing }
TBPost >> category: anObject [
	category := anObject
]

{ #category : #accessing }
TBPost >> date [
	^ date
]

{ #category : #accessing }
TBPost >> date: anObject [
	date := anObject
]

{ #category : #initialization }
TBPost >> initialize [
	super initialize.
	self category: (self class unclassifiedTag).
	self date: Date today.
	self notVisible
]

{ #category : #actions }
TBPost >> notVisible [
	self visible: false
]

{ #category : #accessing }
TBPost >> text [
	^ text
]

{ #category : #accessing }
TBPost >> text: anObject [
	text := anObject
]

{ #category : #accessing }
TBPost >> title [
	^ title
]

{ #category : #accessing }
TBPost >> title: anObject [
	title := anObject
]

{ #category : #accessing }
TBPost >> visible [
	^ visible
]

{ #category : #accessing }
TBPost >> visible: anObject [
	visible := anObject
]
