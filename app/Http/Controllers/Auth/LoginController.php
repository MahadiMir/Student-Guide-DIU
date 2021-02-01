<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Auth;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class LoginController extends Controller {
	/*
		    |--------------------------------------------------------------------------
		    | Login Controller
		    |--------------------------------------------------------------------------
		    |
		    | This controller handles authenticating users for the application and
		    | redirecting them to your home screen. The controller uses a trait
		    | to conveniently provide its functionality to your applications.
		    |
	*/

	use AuthenticatesUsers;

	/**
	 * Where to redirect users after login.
	 *
	 * @var string
	 */
	protected $redirectTo = '/dashbord';

	/**
	 * Create a new controller instance.
	 *
	 * @return void
	 */
	public function __construct() {

		// if (Auth::check() && Auth::user()->userType->id <= 2 && Auth::user()->st_type->id == 0) {
		// 	$this->redirectTo = route('admin.teacher');
		// } elseif (Auth::check() && Auth::user()->st_type->id == 1 && Auth::user()->userType->id == 3) {
		// 	$this->redirectTo = route('admin.student1');
		// } else {
		// 	$this->redirectTo = route('admin.student2');
		// }
		$this->middleware('guest')->except('logout');
	}
}
