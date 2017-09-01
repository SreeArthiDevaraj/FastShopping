$(function(){
	//solving the active menu
	
	switch(menu){
	
	case 'Aboutus':
		$('#aboutus').addClass('active');
		break;
	case 'Product':
		$('#Product').addClass('active');
		break;
	case 'Category':
		$('#Category').addClass('active');
		break;
	case 'Supplier':
		$('#Supplier').addClass('active');
		break;
	case 'Signup':
		$('#signup').addClass('active');
		break;
	case 'Login':
		$('#login').addClass('active');
		break;
	case 'Logout':
		$('#logout').addClass('active');
		break;
	case 'myCart':
		$('#myCart').addClass('active');
		break;
		default:
			$('#home').addClass('active');
		break;
	}
});