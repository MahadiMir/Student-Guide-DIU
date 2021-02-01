<?php

namespace App\Http\Controllers;

use App\File;
use App\Subject;
use App\User;
use App\Video;
use Auth;
use Illuminate\Http\Request;
use Session;

class UserController extends Controller {

	public function index() {
		$user = User::join('usrer_types', 'users.category', '=', 'usrer_types.id')
			->join('student_types', 'users.st_type', '=', 'student_types.id')
			->select('users.*', 'student_types.name_cat', 'usrer_types.name')
			->get();
		return view('users.index', compact('user'));
	}

	public function create() {
		//
	}

	public function store(Request $request) {
		//
	}

	public function show($id) {
		//
	}

	public function destroy($id) {
		//
	}
	public function delete($id) {

		$delete = User::findOrFail($id);
		User::where('id', $delete['id'])->delete();
		Session::flash('success', 'Successfully Deleted');
		return redirect()->back();

	}

	public function allSubject() {
		$allSubject = Subject::join('semisters', 'subjects.semister_id', '=', 'semisters.id')
			->join('student_types', 'subjects.st_type', '=', 'student_types.id')
			->select('subjects.*', 'semisters.semister_name', 'student_types.name_cat')
			->paginate(10);
		return view('admin.all-subject', compact('allSubject'));

	}

	public function subDelete($id) {
		$delete = Subject::findOrFail($id);
		if ($delete) {
			Subject::where('id', $delete['id'])->delete();
			Session::flash('success', 'Successfully Deleted');
			return redirect()->back();
		} else {
			Session::flash('err', 'Something Went rong');
			return redirect()->back();
		}
	}

	public function allImage() {
		$allImage = File::join('semisters', 'files.semister', '=', 'semisters.id')
			->join('subjects', 'files.subject', '=', 'subjects.id')
			->join('student_types', 'files.st_type', '=', 'student_types.id')
			->whereNotNull('image')
			->select('files.*', 'semisters.semister_name', 'student_types.name_cat', 'subjects.sub_name')
			->paginate(10);

		return view('admin.all-image', compact('allImage'));

	}
	public function ImageDelete($id) {
		$delete = Subject::findOrFail($id);
		if ($delete) {
			Subject::where('id', $delete['id'])->delete();
			Session::flash('success', 'Successfully Deleted');
			return redirect()->back();
		} else {
			Session::flash('err', 'Something Went rong');
			return redirect()->back();
		}
	}

	public function allFile() {
		$allFile = File::join('semisters', 'files.semister', '=', 'semisters.id')
			->join('subjects', 'files.subject', '=', 'subjects.id')
			->join('student_types', 'files.st_type', '=', 'student_types.id')
			->whereNotNull('file')
			->select('files.*', 'semisters.semister_name', 'student_types.name_cat', 'subjects.sub_name')
			->paginate(10);

		return view('admin.all-file', compact('allFile'));

	}
	public function allVideo() {
		$allVideo = Video::join('semisters', 'videos.semister', '=', 'semisters.id')
			->join('subjects', 'videos.subject', '=', 'subjects.id')
			->join('student_types', 'videos.st_type', '=', 'student_types.id')
			->select('videos.*', 'semisters.semister_name', 'student_types.name_cat', 'subjects.sub_name')
			->paginate(10);

		return view('admin.all-video', compact('allVideo'));

	}
	public function videoDelete($id) {
		$delete = Video::findOrFail($id);
		if ($delete) {
			Video::where('id', $delete['id'])->delete();
			Session::flash('success', 'Successfully Deleted');
			return redirect()->back();
		} else {
			Session::flash('err', 'Something Went rong');
			return redirect()->back();
		}

	}

	public function edit($id) {
		if (Auth::user()->id == $id) {
			$user = User::findOrFail($id);
			return view('users.update', compact('user'));
		} else {
			return redirect()->back();
		}
	}

	public function update(Request $request, $id) {
		$user = User::findOrFail($id);

		$user->st_type = $request->St_type;
		$user->category = $request->category;
		$user->save();

		if ($user) {
			Session::flash('success', 'your Profile succe Updated');
			return redirect()->back();
		}
	}

}
