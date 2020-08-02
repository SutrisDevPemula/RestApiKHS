<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Khs extends Model
{
    //
    use Notifiable;

    protected $fillable = [
        'name', 'nim', 'semster','prodi','fakultas','kurikulum','jumlah_sks','ip_semster','max_sks'
    ];
}
