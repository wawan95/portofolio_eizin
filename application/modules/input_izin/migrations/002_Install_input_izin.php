<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Migration_Install_input_izin extends Migration
{
	/**
	 * The name of the database table
	 *
	 * @var String
	 */
	private $table_name = 'input_izin';

	/**
	 * The table's fields
	 *
	 * @var Array
	 */
	private $fields = array(
		'id' => array(
			'type' => 'INT',
			'constraint' => 11,
			'auto_increment' => TRUE,
		),
		'izin_nama' => array(
			'type' => 'VARCHAR',
			'constraint' => 50,
			'null' => FALSE,
		),
		'izin_divisi' => array(
			'type' => 'VARCHAR',
			'constraint' => 50,
			'null' => FALSE,
		),
		'input_izin_jenis' => array(
			'type' => 'VARCHAR',
			'constraint' => 40,
			'null' => FALSE,
		),
		'tgl_m' => array(
			'type' => 'DATE',
			'null' => FALSE,
			'default' => '0000-00-00',
		),
		'tgl_s' => array(
			'type' => 'DATE',
			'null' => FALSE,
			'default' => '0000-00-00',
		),
		'izin_waktu_m' => array(
			'type' => 'TIME',
			'null' => FALSE,
		),
		'izin_waktu_s' => array(
			'type' => 'TIME',
			'null' => FALSE,
		),
	);

	/**
	 * Install this migration
	 *
	 * @return void
	 */
	public function up()
	{
		$this->dbforge->add_field($this->fields);
		$this->dbforge->add_key('id', true);
		$this->dbforge->create_table($this->table_name);
	}

	//--------------------------------------------------------------------

	/**
	 * Uninstall this migration
	 *
	 * @return void
	 */
	public function down()
	{
		$this->dbforge->drop_table($this->table_name);
	}

	//--------------------------------------------------------------------

}