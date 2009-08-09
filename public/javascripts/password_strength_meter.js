var strength_words = ["very weak", "weak", "medium", "strong", "stronger"]

function check_password_strength(target, name) 
{
	var score = test_password($(target).value);
	var percent = (score / 50) * 100;
	$(name + '_bar').setStyle({width: percent+'%'});
	if(score < 16)
	{
	   $(name + '_bar_text').innerHTML = strength_words[0];
	}
	else if (score > 15 && score < 25)
	{
	   $(name + '_bar_text').innerHTML = strength_words[1];
	}
	else if (score > 24 && score < 35)
	{
	   $(name + '_bar_text').innerHTML = strength_words[2];
	}
	else if (score > 34 && score < 45)
	{
	   $(name + '_bar_text').innerHTML = strength_words[3];
	}
	else
	{
	   $(name + '_bar_text').innerHTML = strength_words[4];
	}

	if(score > 34) {
		$(name + '_bar').addClassName('pws_strong');
		$(name + '_bar').removeClassName('pws_medium');
		$(name + '_bar').removeClassName('pws_weak');
	} else if(score > 24 && score < 35) {
		$(name + '_bar').addClassName('pws_medium');
		$(name + '_bar').removeClassName('pws_strong');
		$(name + '_bar').removeClassName('pws_weak');
	} else {
		$(name + '_bar').addClassName('pws_weak');
		$(name + '_bar').removeClassName('pws_medium');
		$(name + '_bar').removeClassName('pws_strong');
	}
	
}

function test_password(password)
{
	var score = 0;
	
	if (password.length > 0 && password.length < 5) // length 4 or less
	{
		score = score + 3;
	}
	else if (password.length > 4 && password.length < 8) // length between 5 and 7
	{
		score = score + 6;
	}
	else if (password.length > 7 && password.length < 16) // length between 8 and 15
	{
		score = score + 12;
	}
	else if (password.length > 15) // length 16 or more
	{
		score = score + 18;
	}
	
	if (password.match(/[a-z]/)) // at least one lower case letter
	{
		score = score + 1;
	}
	
	if (password.match(/[A-Z]/)) // at least one upper case letter
	{
		score = score + 5;
	}
		
	if (password.match(/\d+/)) // at least one number
	{
		score =  score + 5;
	}
	
	if (password.match(/(.*[0-9].*[0-9].*[0-9])/)) // at least three numbers
	{
		score = score + 5;
	}
	
	if (password.match(/.[!,@,#,$,%,^,&,*,?,_,~]/))  // at least one special character
	{
		score = score + 5;
	}
	
	if (password.match(/(.*[!,@,#,$,%,^,&,*,?,_,~].*[!,@,#,$,%,^,&,*,?,_,~])/)) // at least two special characters
	{
		score = score + 5;
	}

	if (password.match(/([a-z].*[A-Z])|([A-Z].*[a-z])/)) // upper and lower case
	{
		score = score + 2;
	}

	if (password.match(/([a-zA-Z])/) && password.match(/([0-9])/)) // letters and numbers
	{
		score = score + 2;
	}

	if (password.match(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/)) // letters, numbers, and special characters
	{
		score = score + 2;
	}

	return score;
}