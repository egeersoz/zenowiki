let path = window.location.pathname
let ckeditor = ""

if (path.indexOf("posts/new") != -1 || (path.indexOf("posts") != -1 && path.indexOf("edit") != -1)) {
	let ckeditor = CKEDITOR.replace( 'editor', {
	    skin: 'moono-dark,/js/ckeditor/skins/moono-dark/',
	    contentsCss: '/css/ckeditor.css' 
	} )
}

export default ckeditor