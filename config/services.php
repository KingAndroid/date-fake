<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Stripe, Mailgun, Mandrill, and others. This file provides a sane
    | default location for this type of information, allowing packages
    | to have a conventional place to find your various credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
    ],

    'mandrill' => [
        'secret' => env('MANDRILL_SECRET'),
    ],

    'ses' => [
        'key'    => env('SES_KEY'),
        'secret' => env('SES_SECRET'),
        'region' => 'us-east-1',
    ],
    'stripe' => [
        'model'  => App\User::class,
        'key'    => env('STRIPE_KEY'),
        'secret' => env('STRIPE_SECRET'),
    ],
    'paypal' => [
        'client_id' => 'AaivAj4QurhZr5PClsyF46lavA9DmA2B2w81YFH4SuGSqWUuFpVVYynupBUqkBTBLfqTi_uO1nohfU-s',
        'secret' => 'EF2VLAx_9Mj7BeGXrA8D33gOniZRG48YPzhzNxP1VZ7dI3TlHR1SwfJlQfbOOWc5TnZT-FaZRAssuyDK'
    ],
    'facebook' => [
        'app_id' => env('FB_APP_ID'),
        'app_secret' => env('FB_APP_SECRET'),
        'secret' => env('FB_REDIRECT_URL'),
    ],
    'google' => [
        'client_id' => '381263025113-66mqfudggv8jkq6m8sbohikgbor9o0r0.apps.googleusercontent.com',
        'client_secret' => '',
    ],
];
