// Brunch automatically concatenates all files in your
// watched paths. Those paths can be configured at
// config.paths.watched in "brunch-config.js".
//
// However, those files will only be executed if
// explicitly imported. The only exception are files
// in vendor, which are never wrapped in imports and
// therefore are always executed.

// Import dependencies
//
// If you no longer want to use a dependency, remember
// to also remove its path from "config.paths.watched".
import "phoenix_html"

// Import local files
//
// Local files can be imported directly using relative
// paths "./socket" or full ones "web/static/js/socket".

// import socket from "./socket"


// Import TinyMCE javascripts from node_modules
import "tinymce/tinymce"
import "tinymce/themes/modern/theme"

// Each plugin needs to be imported before they can be initialized
// in the `plugins` property of tinymce.init()
import 'tinymce/plugins/paste/plugin'
import 'tinymce/plugins/link/plugin'
import 'tinymce/plugins/autoresize/plugin'
import 'tinymce/plugins/image/plugin'

let path = document.location.pathname

// Initialize TinyMCE, but only if the user is creating or editing a wiki post
if (path.indexOf("posts/new") != -1 || (path.indexOf("posts") != -1 && path.indexOf("edit") != -1)) {
	tinymce.baseURL = "/css" //tell tinyMCE where it can find the css files
	
	// Initialize
	tinymce.init({
	  selector: '#editor',
	  skin_url: "/tinymce", //set the path to the skin files relative to the baseURL
	  plugins: ['paste', 'link', 'autoresize', 'image']
	})
}