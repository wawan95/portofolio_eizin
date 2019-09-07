<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
/*
	Copyright (c) 2011 Lonnie Ezell

	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in
	all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
	THE SOFTWARE.
*/

$lang['us_account_deleted']			= 'Sayangnya akun Anda telah dihapus. Akun Anda belum dibersihkan <strong>mungkin</strong> masih bisa dikembalikan. Hubungi Administrator  %s.';

$lang['us_bad_email_pass']			= 'Kesalahan email atau password.';
$lang['us_must_login']				= 'Anda harus masuk untuk melihat halaman ini.';
$lang['us_no_permission']			= 'Anda tidak memiliki ijin untuk mengakses halaman ini.';
$lang['us_fields_required']         = '%s dan Password harus diisi.';

$lang['us_access_logs']				= 'Access Logs';
$lang['us_logged_in_on']			= '<b>%s</b> login pada %s';
$lang['us_no_access_message']		= '<p>Selamat!</p><p>Semua pengguna Anda memiliki ingatan yang baik!</p>';
$lang['us_log_create']				= 'membuat %s baru';
$lang['us_log_edit']				= 'modifikasi pengguna';
$lang['us_log_delete']				= 'hapus pengguna';
$lang['us_log_logged']				= 'login dari';
$lang['us_log_logged_out']			= 'log out dari';
$lang['us_log_reset']				= 'reset password mereka.';
$lang['us_log_register']			= 'terdaftar akun baru.';
$lang['us_log_edit_profile']		= 'meng<i>update</i> profile mereka';


$lang['us_purge_del_confirm']		= 'Anda yakin ingin membersihkan akun(s) - (tidak akan kembali)?';
$lang['us_action_purged']			= 'Pengguna dibersihkan permanen.';
$lang['us_action_deleted']			= 'Pengguna telah berhasil dihapus.';
$lang['us_action_not_deleted']		= 'Kami tidak dapat menghapus: ';
$lang['us_delete_account']			= 'Hapus Akun';
$lang['us_delete_account_note']		= '<h3>Hapus Akun ini</h3><p>Menghapus akun ini akan mencabut semua hak mereka pada situs ini.</p>';
$lang['us_delete_account_confirm']	= 'Anda yakin ingin menghapus akun(s)?';

$lang['us_restore_account']			= 'Mengembalikan Akun';
$lang['us_restore_account_note']	= '<h3>Kembalikan Akun ini</h3><p>batal hapus Akun pengguna \'s .</p>';
$lang['us_restore_account_confirm']	= 'Kembalikan akun pengguna ini?';

$lang['us_role']					= 'Role';
$lang['us_role_lower']				= 'role';
$lang['us_no_users']				= 'Pengguna tidak ditemukan.';
$lang['us_create_user']				= 'Buat User baru';
$lang['us_create_user_note']		= '<h3>Membuat user baru</h3><p>Membuat account baru untuk pengguna lain dalam lingkaran Anda.</p>';
$lang['us_edit_user']				= 'Edit User';
$lang['us_restore_note']			= 'Kembalikan dan mengijinkan pengguna mengakses situs lagi.';
$lang['us_unban_note']				= 'batal-Ban (larangan) pengguna mengakses situs.';
$lang['us_account_status']			= 'Status Akun';

$lang['us_failed_login_attempts']	= 'Upaya Login Gagal';
$lang['us_failed_logins_note']		= '<p>Selamat!</p><p>Semua pengguna Anda memiliki ingatan yang baik!</p>';

$lang['us_banned_admin_note']		= 'Pengguna ini telah dilarang dari situs ini.';
$lang['us_banned_msg']				= 'Akun ini tidak memiliki ijin untuk masuk situs ini.';

$lang['us_first_name']				= 'Nama Depan';
$lang['us_last_name']				= 'Nama Belakang';
$lang['us_address']					= 'Alamat';
$lang['us_street_1']				= 'Jalan 1';
$lang['us_street_2']				= 'Jalan 2';
$lang['us_city']					= 'Kota';
$lang['us_state']					= 'Kenegaraan';
$lang['us_no_states']				= 'There are no states/provences/counties/regions for this country. Create them in the address config file';
$lang['us_no_countries']			= 'Unable to find any countries. Create them in the address config file.';
$lang['us_country']					= 'Negara';
$lang['us_zipcode']					= 'Kodepos';

$lang['us_user_management']			= 'User Management';
$lang['us_email_in_use']			= 'alamat %s  sudah digunakan. Gunakan yang lain.';

$lang['us_edit_profile']			= 'Edit Profile';
$lang['us_edit_note']				= 'Masukkan detail Anda dan klik Simpan.';

$lang['us_reset_password']			= 'Reset Password';
$lang['us_reset_note']				= 'Masukkan email Anda dan akan kami kirim password sementara kepada Anda.';
$lang['us_send_password']			= 'Kirim Password';

$lang['us_login']					= 'Silahkan login';
$lang['us_remember_note']			= 'Ingatkan Saya';
$lang['us_sign_up']					= 'Membuat Akun';
$lang['us_forgot_your_password']	= 'Lupa Password Anda?';
$lang['us_let_me_in']				= 'Masuk';

$lang['us_password_mins']			= 'Minimal 8 karakter.';
$lang['us_register']				= 'Daftar';
$lang['us_already_registered']		= 'Sudah terdaftar?';

$lang['us_action_save']				= 'Simpan User';
$lang['us_unauthorized']			= 'Tidak diijinkan. Maaf Anda tidak memiliki izin untuk mengelola role "%s" .';
$lang['us_empty_id']				= 'Tidak ada userid diseiakan. Anda harus memberikan userid untuk melakukan tindakan ini.';
$lang['us_self_delete']				= 'Tidak diijinkan. Maaf, Anda tidak bisa menghapus akun Anda.';

$lang['us_filter_first_letter']		= 'Username diawali dengan: ';
$lang['us_account_details']			= 'Detail Akun';
$lang['us_last_login']				= 'Terakhir Login';


$lang['us_account_created_success'] = 'Akun Anda telah dibuat. Silahkan login.';

$lang['us_invalid_user_id']         = 'User id salah.';
$lang['us_invalid_email']           = 'Tidak bisa menemukan email tersebut pada daftar kami.';

$lang['us_reset_password_note']     = 'Masukkan password baru Anda untuk mereset password Anda.';
$lang['us_reset_invalid_email']     = 'That did not appear to be a valid password reset request.';
$lang['us_reset_pass_subject']      = 'Password Sementara Anda';
$lang['us_reset_pass_message']      = 'Silahkan cek email Anda untuk petunjuk untuk mereset password Anda.';
$lang['us_reset_pass_error']        = 'Tidak dapat mengirim email: ';

$lang['us_set_password']			= 'Simpan Password Baru';
$lang['us_reset_password_success']  = 'Silahkan login menggunakan password baru Anda.';
$lang['us_reset_password_error']    = 'Terdapat kesalahan saat mereset password: %s';


$lang['us_profile_updated_success'] = 'Profil berhasil diperbarui.';
$lang['us_profile_updated_error']   = 'Terdapat masalah dalam update profil Anda ';

$lang['us_register_disabled']       = 'Pendaftaran akun baru tidak diizinkan.';


$lang['us_user_created_success']    = 'User berhasil dibuat.';
$lang['us_user_update_success']     = 'User berhasil diperbarui.';

$lang['us_user_restored_success']   = 'User berhasil dikembalikan.';
$lang['us_user_restored_error']     = 'Gagal mengembalikan user: ';


/* Activations */
$lang['us_status']					= 'Status';
$lang['us_inactive_users']			= 'User non aktif';
$lang['us_activate']				= 'Aktifasi';
$lang['us_user_activate_note']		= 'Masukkan kode aktivasi Anda untuk mengkonfirmasi alamat e-mail Anda dan mengaktifkan keanggotaan Anda.';
$lang['us_activate_note']			= 'Aktifkan pengguna dan memungkinkan mereka akses ke situs';
$lang['us_deactivate_note']			= 'Nonaktifkan pengguna untuk mencegah akses ke situs';
$lang['us_activate_enter']			= 'Masukkan kode aktivasi Anda untuk melanjutkan.';
$lang['us_activate_code']			= 'Kode Aktifasi';
$lang['us_activate_request']		= 'Meminta yang baru';
$lang['us_activate_resend']			= 'Kirim kembali Kode Aktifasi';
$lang['us_activate_resend_note']	= 'Masukkan email Anda dan kami akan mengirim lagi kode aktifasi kepada Anda.';
$lang['us_confirm_activate_code']	= 'Konfirmasi Kode Aktivasi';
$lang['us_activate_code_send']		= 'Kirim Kode Aktifasi';
$lang['bf_action_activate']			= 'Mengaktifkan';
$lang['bf_action_deactivate']		= 'Menonaktifkan';
$lang['us_account_activated']		= 'Aktifasi Akun User.';
$lang['us_account_deactivated']		= 'Penonaktifan Akun User.';
$lang['us_account_activated_admin']	= 'Aktifasi Akun Administrative.';
$lang['us_account_deactivated_admin']	= 'Penonaktifan Akun Administrative.';
$lang['us_active']					= 'Aktif';
$lang['us_inactive']				= 'Nonaktif';
//email subjects
$lang['us_email_subj_activate']		= 'Aktifkan member Anda';
$lang['us_email_subj_pending']		= 'Pendaftaran Lengkap.Menunggu Aktifasi.';
$lang['us_email_thank_you']			= 'Terima Kasih telah mendaftar! ';
// Activation Statuses
$lang['us_registration_fail'] 		= 'Pendaftaran tidak berhasil. ';
$lang['us_check_activate_email'] 	= 'Silahkan cek email untuk intruksi guna mengaktifkan akun Anda.';
$lang['us_admin_approval_pending']  = 'Akun Anda menunggu persetujuan admin. Anda akan menerima pemberitahuan email jika account Anda diaktifkan.';
$lang['us_account_not_active'] 		= 'Akun Anda belum aktif silahkan mengaktifkan account Anda dengan memasukkan kode.';
$lang['us_account_active'] 			= 'Selamat. Akun Anda sekarang aktif!.';
$lang['us_account_active_login'] 	= 'Akun Anda aktif dan Anda dapat login.';
$lang['us_account_reg_complete'] 	= 'Pendaftaran [SITE_TITLE] lengkap!';
$lang['us_active_status_changed'] 	= 'Status pengguna telah berhasil berubah.';
$lang['us_active_email_sent'] 		= 'Aktifasi email telah terkirim.';
// Activation Errors
$lang['us_err_no_id'] 				= 'Tidak ada User ID yang diterima.';
$lang['us_err_status_error'] 		= 'Status users tidak berubah: ';
$lang['us_err_no_email'] 			= 'Gagal mengirim email: ';
$lang['us_err_activate_fail'] 		= 'Member Anda tidak dapat diaktifkan pada saat ini karena alasan berikut: ';
$lang['us_err_activate_code'] 		= 'Silakan periksa kode Anda dan coba lagi atau hubungi administrator situs untuk bantuan.';
$lang['us_err_no_matching_code'] 	= 'Tidak ditemukan kode aktivasi yang cocok dalam sistem.';
$lang['us_err_no_matching_id'] 		= 'Tidak ditemukan user id yang cocok dalam sistem.';
$lang['us_err_user_is_active'] 		= 'User sudah aktif.';
$lang['us_err_user_is_inactive'] 	= 'User sudah nonaktif.';

/* Password strength/match */
$lang['us_pass_strength']			= 'Sangat Kuat';
$lang['us_pass_match']				= 'Perbandingan';
$lang['us_passwords_no_match']		= 'Tidak cocok!';
$lang['us_passwords_match']			= 'Cocok!';
$lang['us_pass_weak']				= 'Lemah';
$lang['us_pass_good']				= 'Baik';
$lang['us_pass_strong']				= 'Kuat';

$lang['us_tab_all']					= 'Semua User';
$lang['us_tab_inactive']			= 'Nonaktif';
$lang['us_tab_banned']				= 'Dilarang';
$lang['us_tab_deleted']				= 'Dihapus';
$lang['us_tab_roles']				= 'Dengan Role';

$lang['us_forced_password_reset_note']	= 'Karena alasan keamanan, Anda harus memilih password baru untuk akun Anda.';

$lang['us_back_to']					= 'Kembali ke ';
$lang['us_no_account']              = 'Tidak punya Akun?';
$lang['us_force_password_reset']    = 'Paksa reset password pada login berikutnya.';