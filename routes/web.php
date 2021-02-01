<?php

use App\Subject;

Route::get('/', function () {
	return view('welcome');
});

Auth::routes(['verify' => true]);
Route::group(['middleware' => 'auth'],
	function () {
		Route::get('/home', 'HomeController@index')->name('home');
		Route::get('/dashbord', 'WebsiteController@index')->name('admin.teacher')->middleware('verified');
		Route::get('/dashbord/student/day', 'WebsiteController@student1')->name('admin.student1')->middleware('verified');
		Route::get('/dashbord/student/evening', 'WebsiteController@student2')->name('admin.student2')->middleware('verified');
		Route::get('dashbord/semister', 'WebsiteController@semister')->name('admin.teacher');
		Route::get('dashbord/semister', 'WebsiteController@semister')->name('');
		Route::get('dashbord/subject/{id}', 'WebsiteController@subject')->name('');

		Route::get('dashbord/subject2/{id}', 'WebsiteController@subject2')->name('');
		Route::post('dashbord/subject3/{id}', 'WebsiteController@subject3')->name('profile.update');
//video and file upload

		Route::get('/ajax-semister-data', function () {

			$a = Input::get('a');
			$subject = Subject::where('semister_id', $a)->get();
			return Response::json($subject);
		});

		Route::get('dashbord/file', 'WebsiteController@file')->name('');

		Route::post('dashbord/file/video', 'WebsiteController@video')->name('dashbord.video');
		Route::post('dashbord/file/file', 'WebsiteController@file_up')->name('dashbord.file');
//subject wise asbe
		Route::get('dashbord/content/{id}', 'WebsiteController@content')->name('');
		Route::resource('dashbord/admin/subject', 'Admin\SubjectController')->middleware('admin');
		Route::post('dashbord/admin/subject/store1', 'Admin\SubjectController@store1')->middleware('admin');
		Route::post('dashbord/admin/subject/store1', 'Admin\SubjectController@store1')->middleware('admin');
		//user file video and image
		Route::get('dashbord/st-file/{id}', 'WebsiteController@stFile')->name('');
		Route::get('dashbord/st-video/{id}', 'WebsiteController@stVideo')->name('');
		Route::get('dashbord/st-image/{id}', 'WebsiteController@stImage')->name('');

		//profile change /dashbord/profile/update

		Route::get('dashbord/profile/edit/{id}', 'UserController@edit')->name('');
		Route::post('dashbord/profile/update/{id}', 'UserController@update')->name('profile.update');
	});
Route::group(['prefix' => 'admin', 'middleware' => ['auth', 'admin']],
	function () {
		Route::resource('/index', 'UserController');
		Route::get('/index/delete/{id}', 'UserController@delete')->name('admin.delete');
		Route::get('/all-subject', 'UserController@allSubject');
		Route::get('/all-subject/{id}', 'UserController@subDelete')->name('admin.subDelete');
		Route::get('/all-video', 'UserController@allVideo');
		Route::get('/all-video/delete/{id}', 'UserController@videoDelete')->name('admin.videoDelete');
		Route::get('/all-file', 'UserController@allFile');
		Route::get('/all-image', 'UserController@allImage');
		Route::get('/all-image{id}', 'UserController@imageDelete')->name('admin.imageDelete');
	});