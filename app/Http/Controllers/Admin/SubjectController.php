<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Semister;
use App\Subject;
use Illuminate\Http\Request;
use Session;

class SubjectController extends Controller {
	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index() {

	}

	public function create() {
		$all_semester = Semister::all();
		return view('admin.subject_add', compact('all_semester'));
	}

	public function store(Request $request) {

	}
	public function store1(Request $request) {

		$sub = new Subject;
		$sub->semister_id = $request->semester;
		$sub->sub_name = $request->name;
		$sub->st_type = $request->St_type;
		$sub->credit = $request->credit;
		$sub->save();
		if ($sub) {
			Session::flash('success', 'successfully added');
			return redirect()->back();
		}

	}

	public function show($id) {
		//
	}
	public function edit($id) {
		//
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function update(Request $request, $id) {
		//
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function destroy($id) {
		//
	}
}
