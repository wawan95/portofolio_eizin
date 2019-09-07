<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
    //// additional /tambahan
	function formatTanggalPanjang($tanggal) {
		$aBulan = array(1=> "Januari", "Februari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "September", "Oktober", "November", "Desember");
		list($thn,$bln,$tgl)=explode("-",$tanggal);
		$bln = (($bln >0 ) && ($bln < 10))? substr($bln,1,1): $bln ;
		return $tgl." ".$aBulan[$bln]." ".$thn;
	}
	function formatTanggalPendek($tanggal) {
		$aBulan = array(1=> "Jan", "Feb", "Mar", "Apr", "Mei", "Jun", "Jul", "Agst", "Sept", "Okt", "Nov", "Des");
		list($thn,$bln,$tgl)=explode("-",$tanggal);
		$bln = (($bln >0 ) && ($bln < 10))? substr($bln,1,1): $bln ;
		return $tgl." ".$aBulan[$bln]." ".$thn;
	}
	function formatTanggalAngka($tanggal) {
		list($thn,$bln,$tgl)=explode("-",$tanggal);
		return $tgl."-".$bln."-".$thn;
	}
	if ( ! function_exists('get_namaUser')){
		function get_namaUser($user_id){
		   //get main CodeIgniter object
		   $ci =& get_instance();
		   
		   //load databse library
		   $ci->load->database();
		   
		   //get data from database
		   $query = $ci->db->get_where('users',array('id'=>$user_id))->result();
		   
		   /*if($query->num_rows() > 0){
			   $result = $query->row_array();
			   return $result;
		   }else{
			   return false;
		   }*/
		   return $query[0]->display_name;
		}
	}
	if ( ! function_exists('get_namaSkpd')){
		function get_namaSkpd($skpd_id){
		   //get main CodeIgniter object
		   $ci =& get_instance();
		   
		   //load databse library
		   $ci->load->database();
		   
		   //get data from database
		   $query = $ci->db->get_where('ms_skpd',array('id'=>$skpd_id))->result();
		   
		   /*if($query->num_rows() > 0){
			   $result = $query->row_array();
			   return $result;
		   }else{
			   return false;
		   }*/
		   return $query[0]->nama_skpd;
		}
	}
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

