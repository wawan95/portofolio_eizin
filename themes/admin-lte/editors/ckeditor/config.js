﻿/*
Copyright (c) 2003-2011, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

CKEDITOR.editorConfig = function( config )
{
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
	config.filebrowserBrowseUrl         = '/tokoagus/themes/admin/editors/kcfinder/browse.php?type=files';
	config.filebrowserImageBrowseUrl    = '/tokoagus/themes/admin/editors/kcfinder/browse.php?type=images';
	config.filebrowserFlashBrowseUrl    = '/tokoagus/themes/admin/editors/kcfinder/browse.php?type=flash';
	config.filebrowserUploadUrl         = '/tokoagus/themes/admin/editors/kcfinder/upload.php?type=files';
	config.filebrowserImageUploadUrl    = '/tokoagus/themes/admin/editors/kcfinder/upload.php?type=images';
	config.filebrowserFlashUploadUrl    = '/tokoagus/themes/admin/editors/kcfinder/upload.php?type=flash';
	config.toolbar_MyToolbar =
	[
		{ name: 'document', items : [ 'NewPage','Preview','Source' ] },
		{ name: 'clipboard', items : [ 'Cut','Copy','Paste','PasteText','PasteFromWord','-','Undo','Redo' ] },
		{ name: 'editing', items : [ 'Find','Replace','-','SelectAll','-','Scayt' ] },
		{ name: 'insert', items : [ 'Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak'
                 ,'Iframe' ] },
                '/',
		{ name: 'styles', items : [ 'Styles','Format','Font','FontSize' ] },
		{ name: 'colors', items : [ 'TextColor','BGColor' ] },
		{ name: 'basicstyles', items : [ 'Bold','Italic','Strike','-','RemoveFormat' ] },
		{ name: 'paragraph', items : [ 'JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock','NumberedList','BulletedList','-','Outdent','Indent','-','Blockquote' ] },
		{ name: 'links', items : [ 'Link','Unlink','Anchor' ] },
		{ name: 'tools', items : [ 'Maximize','-','About' ] }
	];
	config.toolbar_Image =
	[
		{ name: 'insert', items : [ 'Image' ] }
	];
};
