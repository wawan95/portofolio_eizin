<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Migration_Install_pegawai extends Migration
{
	/**
	 * The name of the database table
	 *
	 * @var String
	 */
	private $table_name = 'pegawai';

	/**
	 * The table's fields
	 *
	 * @var Array
	 */
	private $fields = array(
		'pg_id' => array(
			'type' => 'INT',
			'constraint' => 11,
			'auto_increment' => TRUE,
		),
		'pg_nama' => array(
			'type' => 'VARCHAR',
			'constraint' => 50,
			'null' => FALSE,
		),
		'pg_divisi' => array(
			'type' => 'VARCHAR',
			'constraint' => 50,
			'null' => FALSE,
		),
		'pg_alamat' => array(
			'type' => 'VARCHAR',
			'constraint' => 200,
			'null' => FALSE,
		),
		'pg_telefon' => array(
			'type' => 'VARCHAR',
			'constraint' => 16,
			'null' => FALSE,
		),
		'pg_foto' => array(
			'type' => 'VARCHAR',
			'constraint' => 200,
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
		$this->dbforge->add_key('pg_id', true);
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