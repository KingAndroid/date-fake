<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRegisterDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('register_details', function (Blueprint $table) {
            $table->increments('id');
			$table->integer('user_id')->nullable();
			$table->string('type_of_relationship')->nullable();
			$table->float('height')->nullable();
			$table->string('want_children')->nullable();
			$table->string('smoking')->nullable();
			$table->string('drink')->nullable();
			$table->text('ethnicities')->nullable();
			$table->string('religion')->nullable();
			$table->text('interests')->nullable();
			$table->text('looking_something_specific')->nullable();
			$table->text('bio')->nullable();
			$table->boolean('bonus_chances_to_find_match')->default(false);
			$table->boolean('member_spotlight')->default(false);
			$table->string('sounds_most_like')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('register_details');
    }
}
