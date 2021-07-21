<?php

defined('BASEPATH') or exit('No direct script access allowed');

/**
 * dikembangkan oleh andhika putra pratama.
 */
class Home_model extends CI_Model
{
    public $table_lowongan = 'lowongan';
    public $table_event = 'event';
    public $table_group = 'users_groups';
    public $table_profil = 'profil';
    public $table_lulusan='referensi_tahun';
    public $table_status = 'status_alumni';
    public $table_user = 'users';

    public $id = 'id';
    public $tahun_lulus='tahun_lulus';
    public $group_id = '2';
    public $order = 'DESC';

    public function __construct()
    {
        parent::__construct();
    }

   

    public function count_alumni()
    {
        $this->db->where('group_id', $this->group_id);

        return $this->db->count_all_results($this->table_group);
    }
    public function count_lowongan()
    {
        $this->db->where('group_id', $this->group_id);

        return $this->db->count_all_results($this->table_group);
    }
    // public function count_lulusan_alumni()
    // {
    //     $this->db->select('id_user, tahun_lulus')->get_compiled_select();
    //     // $this->db->count_all('id_user');
    //     $this->db->group_by('tahun_lulus', $this->tahun_lulus);
    //     return $this->db->count_all_results($this->table_profil);
    // }

    public function count_lulusan_alumni(){
        $this->db->group_by('tahun_lulus');
        $this->db->select('tahun_lulus');
        $this->db->select("count(*) as jum_alumni");
        return $this->db->from('profil')
        ->get()
        ->result();
    }

    // public function count_status_alumni(){
    //     $this->db->group_by('status_alumni');
    //     $this->db->join('users', 'profil.id_user = users.id');
    //     $this->db->join('status_alumni', 'profil.id_user = status_alumni.id_user');
    //     $this->db->select("count(*) as jum_alumni");

    //     return $this->db->get($this->table_profil)->result();

    // }

}
