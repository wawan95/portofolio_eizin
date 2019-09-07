<?php

$lang = '<?php if ( ! defined(\'BASEPATH\')) exit(\'No direct script access allowed\');';

$lang .= PHP_EOL . '
$lang[\''.$module_name_lower.'_manage\']			= \'Daftar '.$module_name.'\';
$lang[\''.$module_name_lower.'_edit\']				= \'Edit\';
$lang[\''.$module_name_lower.'_true\']				= \'True\';
$lang[\''.$module_name_lower.'_false\']				= \'False\';
$lang[\''.$module_name_lower.'_create\']			= \'Buat\';
$lang[\''.$module_name_lower.'_list\']				= \'List\';
$lang[\''.$module_name_lower.'_new\']				= \'Baru\';
$lang[\''.$module_name_lower.'_edit_text\']			= \'Edit this to suit your needs\';
$lang[\''.$module_name_lower.'_no_records\']		= \'There aren\\\'t any '.$module_name_lower.' in the system.\';
$lang[\''.$module_name_lower.'_create_new\']		= \'Buat Baru '.$module_name.'.\';
$lang[\''.$module_name_lower.'_create_success\']	= \''.$module_name.' berhasil dibuat.\';
$lang[\''.$module_name_lower.'_create_failure\']	= \'Ada kesalahan dalam membuat '.$module_name_lower.': \';
$lang[\''.$module_name_lower.'_create_new_button\']	= \'Buat Baru '.$module_name.'\';
$lang[\''.$module_name_lower.'_invalid_id\']		= \'Invalid '.$module_name.' ID.\';
$lang[\''.$module_name_lower.'_edit_success\']		= \''.$module_name.' berhasil disimpan.\';
$lang[\''.$module_name_lower.'_edit_failure\']		= \'Ada masalah dalam menyimpan '.$module_name_lower.': \';
$lang[\''.$module_name_lower.'_delete_success\']	= \'record(s) berhasil dihapus.\';
$lang[\''.$module_name_lower.'_delete_failure\']	= \'Tidak dapat menghapus record: \';
$lang[\''.$module_name_lower.'_delete_error\']		= \'Anda tidak memilih records untuk dihapus.\';
$lang[\''.$module_name_lower.'_actions\']			= \'Actions\';
$lang[\''.$module_name_lower.'_cancel\']			= \'Batal\';
$lang[\''.$module_name_lower.'_delete_record\']		= \'Hapus '.$module_name.' ini\';
$lang[\''.$module_name_lower.'_delete_confirm\']	= \'Anda yakin hapus '.$module_name_lower.' ini?\';
$lang[\''.$module_name_lower.'_edit_heading\']		= \'Edit '.$module_name.'\';

// Create/Edit Buttons
$lang[\''.$module_name_lower.'_action_edit\']		= \'Simpan '.$module_name.'\';
$lang[\''.$module_name_lower.'_action_create\']		= \'Buat '.$module_name.'\';

// Activities
$lang[\''.$module_name_lower.'_act_create_record\']	= \'Created record with ID\';
$lang[\''.$module_name_lower.'_act_edit_record\']	= \'Updated record with ID\';
$lang[\''.$module_name_lower.'_act_delete_record\']	= \'Deleted record with ID\';

// Column Headings
$lang[\''.$module_name_lower.'_column_created\']	= \'Created\';
$lang[\''.$module_name_lower.'_column_deleted\']	= \'Deleted\';
$lang[\''.$module_name_lower.'_column_modified\']	= \'Modified\';
';

echo $lang;