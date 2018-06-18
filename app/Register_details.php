<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Register_details extends Model
{
    protected $fillable = ['user_id','type_of_relationship','height','want_children','smoking','drink','ethnicities','religion','interests','looking_something_specific','bio','bonus_chances_to_find_match','member_spotlight','sounds_most_like'];
}
