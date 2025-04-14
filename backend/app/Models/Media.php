<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Media extends Model
{
    protected $fillable = ['student_id', 'media_url', 'media_name'];

    public function student()
    {
        return $this->belongsTo(\App\Models\Student::class);
    }
}
