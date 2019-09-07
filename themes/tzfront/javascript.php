<!--
<script type="text/javascript" src="<?=Template::theme_url('js/jquery-1.11.0.min.js'); ?>"></script>
-->
<!--CKEDITOR-->
<script type="text/javascript" src="<?=Template::theme_url('js/ckeditor/ckeditor.js'); ?>"></script>
<script type="text/javascript" src="<?=Template::theme_url('js/ckeditor/adapters/jquery.js'); ?>"></script>
<!--CKEDITOR-->

<!--chosen-->
<script type="text/javascript" src="<?=Template::theme_url('plugins/chosen/chosen.jquery.min.js'); ?>"></script>
<link rel="stylesheet" href="<?=Template::theme_url('plugins/chosen/chosen.min.css'); ?>" />
<!--CKEDITOR-->

<!--<script type="text/javascript" src="<?=Template::theme_url('js/bootstrap-icons.js'); ?>"></script>-->
<!--<script type="text/javascript" src="<?/*=Template::theme_url('js/bootstrap.min.js'); */?>"></script>-->
<script type="text/javascript" src="<?=Template::theme_url('js/bootbox.min.js'); ?>"></script>
<script type="text/javascript" src="<?=Template::theme_url('plugins/select2/select2.min.js'); ?>"></script>
<link rel="stylesheet" href="<?=Template::theme_url('plugins/select2/select2.css'); ?>" />
<script type="text/javascript" src="<?=Template::theme_url('plugins/mask/jquery.maskedinput.js'); ?>"></script>


<!--CHART-->
<script type="text/javascript" src="<?=Template::theme_url('js/highcharts.min.js'); ?>"></script>
<script type="text/javascript" src="<?=Template::theme_url('js/exporting.js'); ?>"></script>
<!--CHART-->

        
<!--    NOTIFYBAR-->
<link rel="stylesheet" href="<?=Template::theme_url('css/jquery.notifyBar.css'); ?>" />
<script type="text/javascript" src="<?=Template::theme_url('js/jquery.notifyBar.js'); ?>"></script>
<!--    NOTIFYBAR-->


<!--    DATAPICKER  -->
<link rel="stylesheet" href="<?=Template::theme_url('css/datepicker.css'); ?>" />
<script type="text/javascript" src="<?=Template::theme_url('js/bootstrap-datepicker.js'); ?>"></script>
<!--    DATAPICKER  -->
    
<!--    number  -->
<script type="text/javascript" src="<?=Template::theme_url('js/number/jquery.number.min.js'); ?>"></script>
<!--    number  -->
    
<!--    TABLE FIX  -->    
<link rel="stylesheet" href="<?=Template::theme_url('css/tablefix/tableFixHeader.css'); ?>" />
<script type="text/javascript" src="<?=Template::theme_url('js/tablefix/tableFixHeader.js'); ?>"></script>
<!--    TABLE FIX  -->    
    
<!--    VALIDATION-->
<link rel="stylesheet" href="<?=Template::theme_url('css/validation/validationEngine.jquery.css'); ?>" />
<script type="text/javascript" src="<?=Template::theme_url('js/tablefix/tableFixHeader.js'); ?>"></script>
<script type="text/javascript" src="<?=Template::theme_url('js/validation/jquery.validationEngine.js'); ?>"></script>
<script type="text/javascript" src="<?=Template::theme_url('js/validation/jquery.validationEngine-id.js'); ?>"></script>
<!--    VALIDATION-->
    
<!--    AUTOCOMPLETE  -->
<link rel="stylesheet" href="<?=Template::theme_url('css/autocomplete/jquery.autocomplete.css'); ?>" />
<script type="text/javascript" src="<?=Template::theme_url('js/autocomplete/jquery.autocomplete.min.js'); ?>"></script>
<!--    AUTOCOMPLETE -->

<!--    TABS  -->
<script type="text/javascript" src="<?=Template::theme_url('js/bootstrap-tab.min.js'); ?>"></script>
<!--    TABS  -->
    

<!--    TIMEPICKER  -->
<link rel="stylesheet" href="<?=Template::theme_url('css/timepicker/jquery.timeentry.css'); ?>" />
<script type="text/javascript" src="<?=Template::theme_url('js/timepicker/jquery.plugin.min.js'); ?>"></script>
<script type="text/javascript" src="<?=Template::theme_url('js/timepicker/jquery.timeentry.min.js'); ?>"></script>
<!--    TIMEPICKER  -->

    <script>
        CKEDITOR.disableAutoInline = true;
        $(document).ready(function(){
            /*Untuk mengatasi select2 yang tidak bekerja di modal*/
            $.fn.modal.Constructor.prototype.enforceFocus = function() {
                $('select').select2();
            }
        });
        
	function only_numeric(e){
	  if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
             // ijinkan: backspace dan delete
            (e.keyCode == 8) || (e.keyCode == 46) ||
             // ijinkan: Enter
            (e.keyCode == 13) ||
             // ijinkan: Ctrl+A
            (e.keyCode == 65 && e.ctrlKey === true) ||
             // ijinkan: home, end, left, right
            (e.keyCode >= 35 && e.keyCode <= 39)) {
          return;
                 // let it happen, don't do anything
        }
        // Ensure that it is a number and stop the keypress
        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
            e.preventDefault();
        }
	}
        
        function claravel_modal(judul,isi,elemen){
            elemen = (elemen == '')?'modal2':elemen;
            $('#' + elemen + '').modal({ keyboard: true });
            $('#' + elemen + ' .modal-title').html(judul);
            $('#' + elemen + ' .modal-body').html(isi);
            /*$('#modal2').modal({ keyboard: true });
            $('#modal2 .modal-title').html(judul);
            $('#modal2 .modal-body').html(isi);*/
        }
        
        function claravel_modal_close(elemen){
            $('#' + elemen + '').modal('hide');
            $('body').removeClass('modal-open');                    
            $('.modal-backdrop').remove();                    
        }
        
        function notif3(html){
            if (html == '1'){
                bootbox.alert('Tersimpan');
            }
            else if (html == '2'){
                $.notifyBar({ cssClass: "warning", html: "Permohonan Bantuan Melebihi Ketentuan Maksimal" });
            }
            else if (html == '3'){
                $.notifyBar({ cssClass: "info", html: "Inputan ada yang tidak valid" });
            }
			else if (html == '4'){
                $.notifyBar({ cssClass: "success", html: "Data berhasil diubah!" });
            }
            else if (html == '9'){
                $.notifyBar({ cssClass: "success", html: "Data berhasil dihapus!" });
            }
            else if (html == '66'){
                $.notifyBar({ cssClass: "warning", html: "Module Under Development" });
            }
            else if (html == '10'){
                $.notifyBar({ cssClass: "warning", html: "Jumlah belanja melebihi sisa anggaran!" });
            }
            else if (html == '11'){
                $.notifyBar({ cssClass: "warning", html: "Sisa anggaran sudah habis!" });
            }
            else {
                $.notifyBar({ cssClass: "error", html: html });
            }

        }
        
        function notif(html){
            if (html == '1'){
                $.notifyBar({ cssClass: "success", html: "Data berhasil ditambahkan!" });
            }
            else if (html == '2'){
                $.notifyBar({ cssClass: "warning", html: "Permohonan Bantuan Melebihi Ketentuan Maksimal" });
            }
            else if (html == '3'){
                $.notifyBar({ cssClass: "info", html: "Inputan ada yang tidak valid" });
            }
			else if (html == '4'){
                $.notifyBar({ cssClass: "success", html: "Data berhasil diubah!" });
            }
            else if (html == '9'){
                $.notifyBar({ cssClass: "success", html: "Data berhasil dihapus!" });
            }
            else if (html == '66'){
                $.notifyBar({ cssClass: "warning", html: "Module Under Development" });
            }
            else if (html == '10'){
                $.notifyBar({ cssClass: "warning", html: "Jumlah belanja melebihi sisa anggaran!" });
            }
            else if (html == '11'){
                $.notifyBar({ cssClass: "warning", html: "Sisa anggaran sudah habis!" });
            }
            else if (html == '12'){
                $.notifyBar({ cssClass: "warning", html: "Disposisi sudah ada!" });
            }
            else if (html == '13'){
                $.notifyBar({ cssClass: "success", html: "Tahun berhasil di set" });
            }
            else {
                $.notifyBar({ cssClass: "error", html: html });
            }

        }
        
        function cetak(html,panjang,lebar){
            var divContents = $("#dvContainer").html();
            var printWindow = window.open('', '', 'height=' + lebar + ',width=' + panjang + ',scrollbars=1');
            printWindow.document.write('<!DOCTYPE html><html><head><title>Cetak</title>');
            printWindow.document.write('<style>.fake>th{padding: 0;border-bottom: none;border-top: none;}html {overflow: -moz-scrollbars-vertical;font-family:arial;font-size:8pt;}.halaman{border: 2px #888888 solid;background-color: #000000;}h1, h2, h3, h4, h5, h6{line-height: 19px;margin:0px;}@media print {@page {size: legal landscape;margin-left: 2cm;margin-right: 2cm;margin-top: 2cm;margin-bottom: 2cm;counter-increment: page;@bottom-right {padding-right:20px;content: "Page " counter(page);}}  .page-break{ display:block; page-break-before:always; }}p{font-size:8pt;}table{width:100%;page-break-inside:auto;} th{padding-top:3px;padding-bottom:3px;} tr{ page-break-inside:avoid; page-break-after:auto;}  thead { display:table-header-group } tfoot { display:table-footer-group } table, th, td { font-family:arial;font-size:8pt;border: 1px black solid;border-collapse: collapse; }</style></head><body>');
            printWindow.document.write(html);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            printWindow.print();            
        }
        
        function cetak_legal(html,panjang,lebar){
            var divContents = $("#dvContainer").html();
            var printWindow = window.open('', '', 'height=' + lebar + ',width=' + panjang + ',scrollbars=1');
            printWindow.document.write('<!DOCTYPE html><html><head><title>Cetak</title>');
            printWindow.document.write('<style>.fake>th{padding: 0;border-bottom: none;border-top: none;}html {overflow: -moz-scrollbars-vertical;font-family:arial;font-size:8pt;}.halaman{border: 2px #888888 solid;background-color: #000000;}h1, h2, h3, h4, h5, h6{line-height: 19px;margin:0px;}@media print {@page {size: legal landscape;margin-left: 2cm;margin-right: 2cm;margin-top: 2cm;margin-bottom: 2cm;counter-increment: page;@bottom-right {padding-right:20px;content: "Page " counter(page);}}  .page-break{ display:block; page-break-before:always; }}p{font-size:8pt;}table{width:100%;page-break-inside:auto;} th{padding-top:3px;padding-bottom:3px;} tr{ page-break-inside:avoid; page-break-after:auto;}  thead { display:table-header-group } tfoot { display:table-footer-group } table, th, td { font-family:arial;font-size:8pt;border: 1px black solid;border-collapse: collapse; }</style></head><body>');
            printWindow.document.write(html);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            printWindow.print();            
        }
        
        function cetak_legal_landscape(html,panjang,lebar){
            var divContents = $("#dvContainer").html();
            var printWindow = window.open('', '', 'height=' + lebar + ',width=' + panjang + ',scrollbars=1');
            printWindow.document.write('<!DOCTYPE html><html><head><title>Cetak</title>');
            printWindow.document.write('<style>.fake>th{padding: 0;border-bottom: none;border-top: none;}html {overflow: -moz-scrollbars-vertical;font-family:arial;font-size:8pt;}.halaman{border: 2px #888888 solid;background-color: #000000;}h1, h2, h3, h4, h5, h6{line-height: 19px;margin:0px;}@media print {@page {size: legal landscape;margin-left: 2cm;margin-right: 2cm;margin-top: 2cm;margin-bottom: 2cm;counter-increment: page;@bottom-right {padding-right:20px;content: "Page " counter(page);}}  .page-break{ display:block; page-break-before:always; }}p{font-size:8pt;}table{width:100%;page-break-inside:auto;} th{padding-top:3px;padding-bottom:3px;} tr{ page-break-inside:avoid; page-break-after:auto;}  thead { display:table-header-group } tfoot { display:table-footer-group } table, th, td { font-family:arial;font-size:8pt;border: 1px black solid;border-collapse: collapse; }</style></head><body>');
            printWindow.document.write(html);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            printWindow.print();            
        }
        
        function cetak_horizontal(html,panjang,lebar){
            var divContents = $("#dvContainer").html();
            var printWindow = window.open('', '', 'height=' + lebar + ',width=' + panjang + ',scrollbars=1');
            printWindow.document.write('<!DOCTYPE html><html><head><title>Cetak</title>');
            printWindow.document.write('<style>.fake>th{padding: 0;border-bottom: none;border-top: none;}html {overflow: -moz-scrollbars-vertical;font-family:arial;font-size:8pt;}.halaman{border: 2px #888888 solid;background-color: #000000;}h1, h2, h3, h4, h5, h6{line-height: 19px;margin:0px;}@media print {@page {size: legal landscape;margin-left: 2cm;margin-right: 2cm;margin-top: 2cm;margin-bottom: 2cm;counter-increment: page;@bottom-right {padding-right:20px;content: "Page " counter(page);}}  .page-break{ display:block; page-break-before:always; }}p{font-size:8pt;}table{width:100%;page-break-inside:auto;} th{padding-top:3px;padding-bottom:3px;} tr{ page-break-inside:avoid; page-break-after:auto;}  thead { display:table-header-group } tfoot { display:table-footer-group } table, th, td { font-family:arial;font-size:8pt;border: 1px black solid;border-collapse: collapse; }</style></head><body>');
            printWindow.document.write(html);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            printWindow.print();            
        }
        function format_html(html){
            var konten;
            konten = '<!DOCTYPE html><html><head><title>Cetak</title>';
            konten += '<style>.fake>th{padding: 0;border-bottom: none;border-top: none;}html {overflow: -moz-scrollbars-vertical;font-family:arial;font-size:12pt;}.halaman{border: 2px #888888 solid;background-color: #000000;}h1, h2, h3, h4, h5, h6{line-height: 19px;margin:0px;}@media print {@page {size: legal landscape;margin-left: 2cm;margin-right: 2cm;margin-top: 2cm;margin-bottom: 2cm;counter-increment: page;@top-center {content: "Halaman " counter(page);}}   .page-break{ display:block; page-break-before:always; }}p{font-size:12pt;}table{width:100%;page-break-inside:auto;} th{padding-top:3px;padding-bottom:3px;} tr{ page-break-inside:avoid; page-break-after:auto;}  thead { display:table-header-group } tfoot { display:table-footer-group } table, th, td { font-family:arial;font-size:12pt;border: 1px black solid;border-collapse: collapse; }</style></head><body>';
            konten += html;
            konten += '</body></html>';
            return konten;
        }
        
        function cetak_excel(elemen){
            uriContent = "data:application/vnd.ms-excel," + encodeURIComponent( format_html($('#' + elemen + '').html()) );
            window.open(uriContent, 'myDocument');            
        }
        
        function cetak_word(elemen){
            uriContent = "data:application/msword," + encodeURIComponent( format_html($('#' + elemen + '').html()) );
            window.open(uriContent, 'myDocument');            
        }
        
        function loading(elemen){
            $('#' + elemen + '').html("<center><img src='<?=Template::theme_url('images/loading.gif'); ?>'></center>");
        }
		
		function only_numeric(e){
			if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
			// ijinkan: backspace dan delete
			(e.keyCode == 8) || (e.keyCode == 46) ||
             // ijinkan: Enter
            (e.keyCode == 13) ||
             // ijinkan: Ctrl+A
            (e.keyCode == 65 && e.ctrlKey === true) ||
             // ijinkan: home, end, left, right
            (e.keyCode >= 35 && e.keyCode <= 39)) {
          return;
                 // let it happen, don't do anything
        }
        // Ensure that it is a number and stop the keypress
        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
            e.preventDefault();
        }
	}
 
        

    </script>
<script>
function autoComplete(element, url, ph, dataPost){
	$(element).select2({
        placeholder: ph,
        minimumInputLength: 3,
        allowClear: true,
        width: '100%',
	    ajax: {
	      url: url,
	      dataType: 'json',
	      type:'POST',
	      data: function (term, page) {
	      	dt = {'q': term};
	        return $.extend(dt, dataPost);
	      },
	      results: function (data, page) {
	        return { results: data };
	      }
	    }
    });
}
    
    var bonfire_base = "<?=base_url()?>";
    $(document).ready(function(){
        $('#side-menu').on('click','a',function(e){
            if($(this).attr('id') != 'awal' && $(this).html() != 'Activities' && $(this).html() != 'Users'
                    && $(this).html() != 'Permissions' && $(this).html() != 'Roles' && $(this).html() != 'Settings'
                    && $(this).html() != 'Code Builder' && $(this).html() != 'Sign Out'){
                e.preventDefault();
                e.stopPropagation();

                $.ajax({
					type:'POST',
                   url : $(this).attr('href'),
                   success:function (html){
                       $('.open').removeClass('open');
                       $('#page-wrapper').html(html);
                   }
                });
            }
        });
        
        
    });
</script>