<?php

namespace App;

use Illuminate\Auth\Authenticatable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Passwords\CanResetPassword;
use Illuminate\Foundation\Auth\Access\Authorizable;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Contracts\Auth\Access\Authorizable as AuthorizableContract;
use Illuminate\Contracts\Auth\CanResetPassword as CanResetPasswordContract;
use Zizaco\Entrust\Traits\EntrustUserTrait;

class Event extends Model implements AuthenticatableContract, CanResetPasswordContract
{
    use Authenticatable;
    use CanResetPassword;
    use EntrustUserTrait;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'events';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'status',
        'eventType',
        'min_members',
        'max_members',
        'title',
        'start',
        'endDate',
        'eventLocation',
        'lat',
        'lng',
        'description',
        'youtube_video',
        'eventPrice',
        'image'
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    //protected $hidden = ['password', 'remember_token'];
}