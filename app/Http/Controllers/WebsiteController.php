<?php

namespace App\Http\Controllers;
use App\File;
use App\Semister;
use App\StudentType;
use App\Subject;
use App\User;
use App\Video;
use Auth;
use Illuminate\Http\Request;
use Session;

class WebsiteController extends Controller {
	public function index() {
		return view('semister.semister1');
	}
	public function student1() {
		return view('semister.student1');
	}
	public function student2() {
		return view('semister.student2');
	}

	public function semister() {
		return view('semister.semister');
	}
	public function subject($id) {

		$semister = Semister::findOrFail($id);

		if (Auth::user()->st_type == 1 || Auth::user()->st_type == 0) {

			$sub = Subject::where('semister_id', $semister['id'])->where('st_type', 1)->get();

			return view('semister.subject', compact('sub'));
		}

	}
	public function subject2($id) {

		$semister = Semister::findOrFail($id);

		if (Auth::user()->st_type == 2 || Auth::user()->st_type == 0) {

			$sub = Subject::where('semister_id', $semister['id'])->where('st_type', 2)->get();

			return view('semister.subject', compact('sub'));
		}
	}
	public function file() {
		$all_semester = Semister::all();
		$st_type = StudentType::get();

		return view('semister.file', compact('all_semester', 'st_type'));
	}

	public function video(Request $request) {
		$video = explode('/', $request->video);
		$vieo3 = explode('=', $video[3]);
		$embed = "https://www.youtube.com/embed/" . $vieo3[1];
		$insert = new Video;
		$insert->semister = $request->semister;
		$insert->subject = $request->subject;
		$insert->st_type = $request->st_type;
		$insert->video_title = $request->video_title;
		$insert->video = $embed;
		$insert->save();
		if ($insert) {
			Session::flash('success', 'SuccessFully Added');
			return redirect()->back();
		}
	}
	public function file_up(Request $request) {

		dd($request->all());
		$this->validate($request, [
			'image' => 'mimes:jpg,png,jpeg',
			'file' => 'mimes:pdf,ppt,docx,pptx',
		]);
		$insert = new File;
		$insert->semister = $request->semister;
		$insert->subject = $request->subject;
		$insert->st_type = $request->st_type;

		if ($request->hasFile('file')) {
			$fileName = 'file-' . '-' . $request->file->getClientOriginalName();
			$request->file->move(public_path('uploads/file'), $fileName);
			$insert->file = $fileName;

		}
		if ($request->hasFile('image')) {
			$fileName = 'Questine-' . time() . '-' . '.' . $request->image->getClientOriginalExtension();
			$request->image->move(public_path('uploads/image'), $fileName);
			$insert->image = $fileName;

		}

		$insert->save();
		if ($insert) {
			Session::flash('success', 'SuccessFully Added');
			return redirect()->back();
		}
	}

	public function content($id) {
		$subject = Subject::findOrFail($id);
		$sub_id = $subject['id'];
		$subject_name = $subject['sub_name'];
		$email = Auth::user()->email;
		$student = Auth::user()->st_type;

		dd($subject_name, $email, $sub_id, $student);

		return view('semister.content', compact('sub_id', 'subject_name', 'a'));

	}

	public function stFile($id) {
		$subject = Subject::findOrFail($id);
		if ((Auth::user()->st_type == 1 || Auth::user()->st_type == 0) && $subject['st_type'] == 1) {
			$file = file::where('subject', $subject['id'])
				->where('st_type', $subject['st_type'])
				->whereNotNull('file')
				->paginate(10);
			return view('website.st_file', compact('file'));
		}

		if ((Auth::user()->st_type == 2 || Auth::user()->st_type == 0) && $subject['st_type'] == 2) {
			$file = File::where('subject', $subject['id'])
				->where('st_type', $subject['st_type'])
				->whereNotNull('file')
				->paginate(10);
			return view('website.st_file', compact('file'));
		}

	}

	public function stImage($id) {

		$subject = Subject::findOrFail($id);
		if ((Auth::user()->st_type == 1 || Auth::user()->st_type == 0) && $subject['st_type'] == 1) {
			$image = File::where('subject', $subject['id'])->where('st_type', $subject['st_type'])
				->whereNotNull('image')
				->paginate(10);
			return view('website.st_image', compact('image'));
		}

		if ((Auth::user()->st_type == 2 || Auth::user()->st_type == 0) && $subject['st_type'] == 2) {
			$image = File::where('subject', $subject['id'])
				->where('st_type', $subject['st_type'])
				->whereNotNull('image')
				->paginate(10);
			return view('website.st_image', compact('image'));
		}

	}
	public function stVideo($id) {
		$subject = Subject::findOrFail($id);
		if ((Auth::user()->st_type == 1 || Auth::user()->st_type == 0) && $subject['st_type'] == 1) {
			$video = Video::where('subject', $subject['id'])->where('st_type', $subject['st_type'])->paginate(12);
			return view('website.st_video', compact('video'));
		}

		if ((Auth::user()->st_type == 2 || Auth::user()->st_type == 0) && $subject['st_type'] == 2) {
			$video = Video::where('subject', $subject['id'])->where('st_type', $subject['st_type'])->paginate(10);
			return view('website.st_video', compact('video'));
		}

	}

}
