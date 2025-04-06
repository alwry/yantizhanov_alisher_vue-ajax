<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    protected $table = 'students';
    protected $fillable = ['fname', 'lname', 'email', 'major'];
    public $timestamps = false;
}
