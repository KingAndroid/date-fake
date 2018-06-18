<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Auth;
use App\Register_details;

class RegisterDetailsController extends Controller
{
    public function index()
    {
		if(\Auth::check()){
			return view('dat-reg');
		}else{
			return redirect('/login');
		}
    }
	
	public function ajaxUpdate(Request $request){
		//return json_encode($request->input('data'));
		if(\Auth::check()){			
			if($request->input('data')){
				$userId = Auth::id();
				$array=array();
				foreach($request->input('data') as $key => $value){
					if(is_array($value)){
						$value=json_encode($value);
					}
					$array[$key]=$value;
				}
				if (Register_details::where('user_id', '=', $userId)->count() > 0) {
					Register_details::where('user_id', $userId)->update($array);
				}else{
					Register_details::insert(
						array(
							'user_id' => $userId
						)
					);
					Register_details::where('user_id', $userId)->update($array);  // update the record in the DB. 
				}
			}
		}
	}
}