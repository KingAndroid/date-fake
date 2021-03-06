<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\UserFriendship;
use App\UserBlocks;

use App\Notification;
use Auth;
use DB;

class UserFriendshipController extends Controller
{

    public function myfriendsPage(){

        return \View::make('user.my_friends');

    }


    public function myfriendsGet(Request $request){
        $id = (!empty($request->input('id'))) ? $request->input('id') : Auth::id();

        $friendship = UserFriendship::where('user_id', $id)->get();
        $friendship->load('userFriend');

        $filtered = [];
        
        foreach ($friendship as $value) {
            $is_blocked = UserBlocks::where('user_id', $id)->where('user_blocked_id', $value->userFriend->id)->count();

            if(empty($is_blocked)){
                $filtered[] = $value;
            }

        }

        return response()->json($filtered);

    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $id = Auth::user()->id;
        $arr = array(
            'user_id'=>$id,
            'friend_id'=>$request->id
        );

        $data = UserFriendship::create($arr);

        //add to notifications
        $arr = array(
            'user_id'=>$request->id,
            'from_id'=>$id,
            'type'=>'add_friend'
        );
        Notification::create($arr);
        
        return response()->json($data);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $id = Auth::user()->id;
        $u = UserFriendship::where('user_id',$request->id)->where('friend_id',$id)->delete();
        $u = UserFriendship::where('friend_id',$request->id)->where('user_id',$id)->delete();
        return response()->json(['id'=>$id]);
    }
}
