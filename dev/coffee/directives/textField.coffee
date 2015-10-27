app.directive 'textField', ->
	{
		restrict: 'C'
		
		link: (scope, el, attrs) ->
			focusClass = 'focus'
			
			el.on 'click', ->
				el.find('input').focus()
		
			el.on 'focus', 'input', ->
				el.addClass focusClass
		
			el.on 'blur', 'input', ->
				el.removeClass focusClass
	}